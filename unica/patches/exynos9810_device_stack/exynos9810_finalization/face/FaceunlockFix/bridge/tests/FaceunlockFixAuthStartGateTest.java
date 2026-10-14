package com.android.server.biometrics.sensors.face.faceunlockfix;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/**
 * Standalone deterministic concurrency tests (plain JDK, no Android/ADB).
 *
 * Covers the exact prewarmed-camera -> native authenticate handoff:
 * cancel/timeout before dispatch, cancel during a blocking Binder RPC,
 * native terminal callback while the synchronous RPC is still blocked,
 * late stale tickets, duplicate cancel, and failed remote cancellation.
 */
public final class FaceunlockFixAuthStartGateTest {
    private static void require(boolean condition, String message) {
        if (!condition) throw new AssertionError(message);
    }

    private static void await(CountDownLatch signal) {
        try {
            require(signal.await(5, TimeUnit.SECONDS), "timed out waiting for latch");
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new AssertionError(e);
        }
    }

    private static void cancelBeforeNativeDispatch() {
        FaceunlockFixAuthStartGate gate = new FaceunlockFixAuthStartGate();
        long ticket = gate.reserve();
        require(ticket > 0, "reservation failed");
        require(gate.cancel() == FaceunlockFixAuthStartGate.CancelAction.NONE,
                "a native cancel must NOT be issued before real authenticate");
        require(!gate.beginNative(ticket), "canceled start was sent to native");
        require(!gate.isBusy(), "pre-dispatch cancel leaked the operation");
        long next = gate.reserve();
        require(next > ticket, "operation epoch must advance on next unlock");
        require(!gate.beginNative(ticket), "stale invocation started a new session");
        require(gate.cancel() == FaceunlockFixAuthStartGate.CancelAction.NONE,
                "new reservation not canceled");
    }

    private static void cancelDuringBlockingNativeStart(boolean timeoutStyle) {
        FaceunlockFixAuthStartGate gate = new FaceunlockFixAuthStartGate();
        long ticket = gate.reserve();
        CountDownLatch enteredNative = new CountDownLatch(1);
        CountDownLatch allowNativeReply = new CountDownLatch(1);
        AtomicInteger starts = new AtomicInteger();
        AtomicInteger nativeCancels = new AtomicInteger();
        AtomicReference<Throwable> exception = new AtomicReference<>();
        Thread worker = new Thread(() -> {
            try {
                if (gate.beginNative(ticket)) {
                    starts.incrementAndGet();
                    enteredNative.countDown();
                    await(allowNativeReply);
                    FaceunlockFixAuthStartGate.StartResult result =
                            gate.finishNative(ticket, 0);
                    if (result == FaceunlockFixAuthStartGate.StartResult.CANCEL_NATIVE) {
                        nativeCancels.incrementAndGet();
                        gate.nativeCancelFinished(ticket, true);
                    } else {
                        require(result == FaceunlockFixAuthStartGate.StartResult.ACCEPTED,
                                "unexpected start result " + result);
                    }
                }
            } catch (Throwable e) {
                exception.set(e);
            }
        }, "simulated-native-binder");
        worker.start();
        await(enteredNative);
        require(starts.get() == 1, "native invocation never began");
        // Both explicit cancel and the capture watchdog must defer until the
        // in-flight authenticate reply. A native cancel NOW would run first.
        require(gate.cancel() == FaceunlockFixAuthStartGate.CancelAction.DEFERRED,
                "native cancel was sent ahead of authenticate reply");
        require(nativeCancels.get() == 0, "early native cancel happened");
        require(gate.isBusy(), "operation released before native cancel completed");
        allowNativeReply.countDown();
        try { worker.join(5000); } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new AssertionError(e);
        }
        require(!worker.isAlive(), "stuck Binder / cancellation race");
        require(exception.get() == null, "worker failed: " + exception.get());
        require(nativeCancels.get() == 1, "missing compensating native cancel");
        require(!gate.isBusy(), "compensated cancel leaked operation");
    }

    private static void synchronousTerminalCallback() {
        FaceunlockFixAuthStartGate gate = new FaceunlockFixAuthStartGate();
        long ticket = gate.reserve();
        require(gate.beginNative(ticket), "cannot enter native start");
        // Native onAuthenticated/onError may arrive on Binder callback thread
        // while the synchronous daemon.authenticate() call remains blocked.
        gate.terminalCallback();
        require(gate.finishNative(ticket, 0)
                        == FaceunlockFixAuthStartGate.StartResult.SKIPPED,
                "callback-completed operation resurrected at native reply");
        require(!gate.isBusy(), "terminal callback leaked operation ownership");
    }

    private static void synchronousTerminalAfterRequestedCancel() {
        FaceunlockFixAuthStartGate gate = new FaceunlockFixAuthStartGate();
        long ticket = gate.reserve();
        require(gate.beginNative(ticket), "cannot start");
        require(gate.cancel() == FaceunlockFixAuthStartGate.CancelAction.DEFERRED,
                "cancel was not deferred");
        gate.terminalCallback(); // authentic terminal callback before reply
        require(gate.finishNative(ticket, 0)
                        == FaceunlockFixAuthStartGate.StartResult.SKIPPED,
                "a finished native operation received a late second cancel");
        require(!gate.isBusy(), "terminal result was not released");
    }

    private static void cancelAfterAcceptedNativeStart() {
        FaceunlockFixAuthStartGate gate = new FaceunlockFixAuthStartGate();
        long ticket = gate.reserve();
        require(gate.beginNative(ticket), "cannot begin");
        require(gate.finishNative(ticket, 0)
                        == FaceunlockFixAuthStartGate.StartResult.ACCEPTED,
                "native success not accepted");
        require(gate.cancel() == FaceunlockFixAuthStartGate.CancelAction.SEND_NATIVE,
                "accepted auth must trigger one genuine native cancel");
        require(gate.cancel() == FaceunlockFixAuthStartGate.CancelAction.NONE,
                "duplicate native cancel issued");
        require(gate.isBusy(), "released operation before cancel RPC finished");
        gate.nativeCancelFinished(ticket, true);
        require(!gate.isBusy(), "cancel success did not release ownership");
    }

    private static void failedCancelPoisonsNativeSession() {
        FaceunlockFixAuthStartGate gate = new FaceunlockFixAuthStartGate();
        long ticket = gate.reserve();
        require(gate.beginNative(ticket), "cannot start");
        require(gate.finishNative(ticket, 0)
                        == FaceunlockFixAuthStartGate.StartResult.ACCEPTED,
                "native start missing");
        require(gate.cancel() == FaceunlockFixAuthStartGate.CancelAction.SEND_NATIVE,
                "native cancel missing");
        gate.nativeCancelFinished(ticket, false);
        require(gate.reserve() == 0, "unknown failed cancellation allowed new unlock");
        require(gate.stateForTest() == FaceunlockFixAuthStartGate.State.POISONED,
                "failed cancellation did not fail closed");
    }

    private static void failedTransportWithPendingCancelPoisonsSession() {
        FaceunlockFixAuthStartGate gate = new FaceunlockFixAuthStartGate();
        long ticket = gate.reserve();
        require(gate.beginNative(ticket), "cannot start");
        require(gate.cancel() == FaceunlockFixAuthStartGate.CancelAction.DEFERRED,
                "cancel must be pending");
        gate.nativeStartException(ticket);
        require(gate.reserve() == 0,
                "start transport failure with uncertain native state allowed overlap");
    }

    private static void failedTransportWithoutCancelAlsoPoisonsSession() {
        FaceunlockFixAuthStartGate gate = new FaceunlockFixAuthStartGate();
        long ticket = gate.reserve();
        require(gate.beginNative(ticket), "cannot start");
        gate.nativeStartException(ticket);
        require(gate.stateForTest() == FaceunlockFixAuthStartGate.State.POISONED,
                "uncertain native Binder outcome allowed another unlock");
    }

    private static void rejectedStartNeedsNoLateCancel() {
        FaceunlockFixAuthStartGate gate = new FaceunlockFixAuthStartGate();
        long ticket = gate.reserve();
        require(gate.beginNative(ticket), "cannot start enrollment");
        require(gate.cancel() == FaceunlockFixAuthStartGate.CancelAction.DEFERRED,
                "native enrollment cancel was not deferred");
        require(gate.finishNative(ticket, -19)
                        == FaceunlockFixAuthStartGate.StartResult.SKIPPED,
                "native-enrollment refusal incorrectly triggered cancel RPC");
        require(!gate.isBusy(), "rejected operation did not release state");
    }

    private static void oldNativeReplyCannotAffectNextReservation() {
        FaceunlockFixAuthStartGate gate = new FaceunlockFixAuthStartGate();
        long old = gate.reserve();
        require(gate.cancel() == FaceunlockFixAuthStartGate.CancelAction.NONE,
                "old reservation cancellation failed");
        long current = gate.reserve();
        require(current > old, "no new epoch");
        require(gate.finishNative(old, 0)
                        == FaceunlockFixAuthStartGate.StartResult.SKIPPED,
                "stale start reply accepted");
        require(gate.isTicketLive(current), "old reply damaged new operation");
        require(gate.cancel() == FaceunlockFixAuthStartGate.CancelAction.NONE,
                "next reservation cannot be canceled");
    }

    public static void main(String[] args) {
        cancelBeforeNativeDispatch();
        cancelDuringBlockingNativeStart(false);
        cancelDuringBlockingNativeStart(true);
        synchronousTerminalCallback();
        synchronousTerminalAfterRequestedCancel();
        cancelAfterAcceptedNativeStart();
        failedCancelPoisonsNativeSession();
        failedTransportWithPendingCancelPoisonsSession();
        failedTransportWithoutCancelAlsoPoisonsSession();
        rejectedStartNeedsNoLateCancel();
        oldNativeReplyCannotAffectNextReservation();
        System.out.println("PASS FaceunlockFixAuthStartGateTest: 11 deterministic cases");
    }
}
