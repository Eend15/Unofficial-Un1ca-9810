package com.android.server.biometrics.sensors.face.faceunlockfix;

/**
 * Pure-Java state machine for one genuine native authentication RPC.
 *
 * Cancellation can occur after the camera is prewarmed but before daemon
 * authenticate() is actually sent. Never issue cancel() before a pending
 * native start: that would leave the later authenticate() orphaned.
 *
 * No monitor is held across a Binder RPC, so a synchronous native callback
 * can safely mark the operation terminal before the RPC returns.
 */
final class FaceunlockFixAuthStartGate {
    enum State {
        IDLE, RESERVED, STARTING, ACTIVE, CANCEL_AFTER_START,
        CANCELING, TERMINAL_DURING_START, POISONED
    }
    enum CancelAction { NONE, DEFERRED, SEND_NATIVE }
    enum StartResult { ACCEPTED, SKIPPED, CANCEL_NATIVE }

    private State state = State.IDLE;
    private long epoch;

    synchronized long reserve() {
        if (state != State.IDLE) return 0L;
        state = State.RESERVED;
        return ++epoch;
    }

    synchronized boolean beginNative(long ticket) {
        if (ticket != epoch || state != State.RESERVED) return false;
        state = State.STARTING;
        return true;
    }

    synchronized StartResult finishNative(long ticket, int nativeStatus) {
        if (ticket != epoch) return StartResult.SKIPPED;
        if (state == State.TERMINAL_DURING_START) {
            state = State.IDLE;
            return StartResult.SKIPPED; // real callback already completed
        }
        if (state != State.STARTING && state != State.CANCEL_AFTER_START)
            return StartResult.SKIPPED;
        boolean deferredCancel = state == State.CANCEL_AFTER_START;
        if (nativeStatus != 0) {
            state = State.IDLE; // native refused; nothing is left to cancel
            return StartResult.SKIPPED;
        }
        if (deferredCancel) {
            state = State.CANCELING;
            return StartResult.CANCEL_NATIVE;
        }
        state = State.ACTIVE;
        return StartResult.ACCEPTED;
    }

    synchronized CancelAction cancel() {
        switch (state) {
            case RESERVED:
                state = State.IDLE; // beginNative(ticket) now fails
                return CancelAction.NONE;
            case STARTING:
                state = State.CANCEL_AFTER_START;
                return CancelAction.DEFERRED;
            case ACTIVE:
                state = State.CANCELING;
                return CancelAction.SEND_NATIVE;
            case CANCEL_AFTER_START:
                return CancelAction.DEFERRED;
            default:
                return CancelAction.NONE;
        }
    }

    synchronized void terminalCallback() {
        switch (state) {
            case STARTING:
            case CANCEL_AFTER_START:
                state = State.TERMINAL_DURING_START;
                break;
            case ACTIVE:
                state = State.IDLE;
                break;
            default:
                // In particular, do not clear a new RESERVED operation on
                // account of an old async callback.
                break;
        }
    }

    synchronized void nativeStartException(long ticket) {
        if (ticket != epoch) return;
        if (state == State.TERMINAL_DURING_START) {
            state = State.IDLE;
        } else if (state == State.STARTING || state == State.CANCEL_AFTER_START) {
            // Even with no cancel request, a Binder transport exception does
            // not prove whether the secure daemon accepted the operation.
            // Never permit a second start on this unproven native session.
            state = State.POISONED;
        }
    }

    synchronized void nativeCancelFinished(long ticket, boolean accepted) {
        if (ticket == epoch && state == State.CANCELING)
            state = accepted ? State.IDLE : State.POISONED;
    }

    synchronized boolean isBusy() {
        return state != State.IDLE;
    }

    synchronized boolean isTicketLive(long ticket) {
        return ticket == epoch && state != State.IDLE && state != State.POISONED;
    }

    synchronized long currentTicket() {
        return epoch;
    }

    synchronized State stateForTest() {
        return state;
    }
}
