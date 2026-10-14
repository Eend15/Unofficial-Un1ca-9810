// FaceunlockFix source; compiled into the explicit Android16 experimental
// services.jar candidate, NOT silently activated by normal ROM builds.
// Uses the exact original Samsung IFaceDaemon and IFaceDaemonCallback AIDL.
// All biometric operations call the genuine /system/bin/faced binary. Its
// optional FaceunlockFix test-image init service is named faceunlockfixd.
package com.android.server.biometrics.sensors.face.faceunlockfix;

import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import com.samsung.android.bio.face.IFaceDaemon;
import com.samsung.android.bio.face.IFaceDaemonCallback;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

public final class FaceunlockFixNativeBackend implements AutoCloseable {
    private static final String SERVICE = "com.samsung.android.bio.face.IFaceDaemon";
    private static final int HAT_SIZE = 69;

    // This interface is the input for the genuine HIDL callback adapter.
    // No method is allowed to synthesize success, a face ID, or a token.
    public interface Events {
        void onEnrollResult(long deviceId, int faceId, int user, int remaining);
        void onAcquired(long deviceId, int acquiredInfo);
        void onAuthenticated(long deviceId, int faceId, int user,
                             byte[] originalHat, byte[] originalFido);
        void onError(long deviceId, int nativeCode);
        void onRemoved(long deviceId, int faceId, int user);
        void onEnumerate(long deviceId, int[] faceIds, int[] groups);
        void onNativeDied();
    }

    private final IFaceDaemon daemon;
    private final IBinder nativeBinder;
    private final Events events;
    private final long deviceId;
    private int activeUser = -1;
    private boolean activeOperation;
    // A cancelled/completed operation must not be cleared by an older Binder
    // start call finally returning after another operation has begun.
    private long operationEpoch;
    // Hidl reserves a native start BEFORE releasing its operation lock.
    // A cancel during that handoff either prevents dispatch or is
    // compensated after the genuine Binder authenticate() reply.
    private final FaceunlockFixAuthStartGate authStart =
            new FaceunlockFixAuthStartGate();
    private final FaceunlockFixAuthStartGate enrollStart =
            new FaceunlockFixAuthStartGate();
    private boolean closed;

    private final IBinder.DeathRecipient death;

    private final IFaceDaemonCallback callbacks = new IFaceDaemonCallback.Stub() {
        @Override
        public void onEnrollResult(long dev, int face, int group, int remaining) {
            if (!isValidUser(group) || !isActive()) return;
            events.onEnrollResult(dev, face, group, remaining);
        }

        @Override
        public void onAcquired(long dev, int acquiredInfo) {
            if (!isActive()) return;
            events.onAcquired(dev, acquiredInfo);
        }

        @Override
        public void onAuthenticated(long dev, int face, int group, byte[] hat,
                                    byte[] fido) {
            if (!isValidUser(group) || !isActive()) return;
            // Android16's converter would otherwise call success with null
            // HAT for positive face IDs and a short token. Reject that case.
            if (face > 0 && (hat == null || hat.length != HAT_SIZE)) {
                events.onError(dev, 2); // transport/hardware unavailable
                return;
            }
            events.onAuthenticated(dev, face, group,
                    hat == null ? null : Arrays.copyOf(hat, hat.length),
                    fido == null ? null : Arrays.copyOf(fido, fido.length));
        }

        @Override
        public void onError(long dev, int error) {
            synchronized (FaceunlockFixNativeBackend.this) {
                activeOperation = false;
                operationEpoch++;
                // Native error may arrive *inside* daemon.authenticate()
                // before that synchronous Binder request has returned.
                authStart.terminalCallback();
                enrollStart.terminalCallback();
            }
            events.onError(dev, error);
        }

        @Override
        public void onRemoved(long dev, int face, int group) {
            if (!isValidUser(group)) return;
            events.onRemoved(dev, face, group);
        }

        @Override
        public void onEnumerate(long dev, int[] faces, int[] groups) {
            if (faces == null || groups == null || faces.length != groups.length)
                return;
            for (int group : groups) if (!isValidUser(group)) return;
            events.onEnumerate(dev, Arrays.copyOf(faces, faces.length),
                    Arrays.copyOf(groups, groups.length));
        }
    };

    private FaceunlockFixNativeBackend(IFaceDaemon daemon, IBinder binder,
                                Events events) throws RemoteException {
        this.daemon = daemon;
        this.nativeBinder = binder;
        this.events = events;
        this.death = () -> {
            synchronized (FaceunlockFixNativeBackend.this) {
                closed = true;
                activeOperation = false;
            }
            this.events.onNativeDied();
        };
        binder.linkToDeath(death, 0);
        boolean success = false;
        long opened = 0;
        try {
            daemon.init(callbacks);
            opened = daemon.openHal();
            if (opened == 0) throw new RemoteException("FaceunlockFix native openHal=0");
            success = true;
        } finally {
            if (!success) {
                if (opened != 0) daemon.closeHal();
                binder.unlinkToDeath(death, 0);
            }
        }
        this.deviceId = opened;
    }

    public static FaceunlockFixNativeBackend connect(Events events)
            throws RemoteException {
        // This is an optional experimental daemon. A missing service must
        // not block system_server's FaceProvider on a wait-for-service path.
        IBinder binder = ServiceManager.checkService(SERVICE);
        if (binder == null || !SERVICE.equals(binder.getInterfaceDescriptor()))
            throw new RemoteException("No genuine stock IFaceDaemon");
        return new FaceunlockFixNativeBackend(IFaceDaemon.Stub.asInterface(binder),
                binder, events);
    }

    private synchronized boolean isActive() {
        return !closed && activeOperation;
    }

    private synchronized boolean isValidUser(int user) {
        return !closed && activeUser == user;
    }

    public synchronized long getDeviceId() {
        return closed ? 0 : deviceId;
    }

    public synchronized void setActiveUser(int userId) throws RemoteException {
        requireOpen();
        if (activeOperation || authStart.isBusy() || enrollStart.isBusy()
                || userId < 0)
            throw new RemoteException("Invalid active user transition");
        String dir = "/data/system/users/" + userId + "/bio/fr";
        int result = daemon.setActiveGroup(userId,
                dir.getBytes(StandardCharsets.UTF_8));
        if (result != 0) throw new RemoteException("setActiveGroup=" + result);
        activeUser = userId;
    }

    public synchronized long preEnroll() throws RemoteException {
        requireOpen();
        return daemon.preEnroll();
    }

    public int enroll(byte[] actualHat, int timeout, int flags)
            throws RemoteException {
        long ticket = reserveEnrollment();
        return ticket == 0L ? -19
                : enrollReserved(ticket, actualHat, timeout, flags);
    }

    public synchronized long reserveEnrollment() throws RemoteException {
        requireOpen();
        if (activeUser < 0 || activeOperation || authStart.isBusy()
                || enrollStart.isBusy()) return 0L;
        long ticket = enrollStart.reserve();
        if (ticket != 0L) {
            activeOperation = true;
            operationEpoch++;
        }
        return ticket;
    }

    public int enrollReserved(long ticket, byte[] actualHat, int timeout, int flags)
            throws RemoteException {
        final int user;
        synchronized (this) {
            requireOpen();
            if (activeUser < 0 || actualHat == null || actualHat.length != HAT_SIZE)
                throw new RemoteException("Missing real enrollment HAT/user");
            user = activeUser;
            if (!activeOperation || !enrollStart.beginNative(ticket))
                return -19; // cancelled before native dispatch
        }
        // NEVER hold this monitor across a native Binder transaction: faced
        // can synchronously call back on another Binder thread before replying.
        // The callback must be able to inspect operation state immediately.
        try {
            int rc = daemon.enroll(Arrays.copyOf(actualHat, HAT_SIZE),
                    user, timeout, flags);
            FaceunlockFixAuthStartGate.StartResult result =
                    enrollStart.finishNative(ticket, rc);
            if (result == FaceunlockFixAuthStartGate.StartResult.CANCEL_NATIVE) {
                finishNativeEnrollCancellation(ticket);
                return -19;
            }
            if (result != FaceunlockFixAuthStartGate.StartResult.ACCEPTED) {
                synchronized (this) {
                    if (!enrollStart.isBusy()) activeOperation = false;
                }
                return rc == 0 ? -19 : rc;
            }
            return rc;
        } catch (RemoteException | RuntimeException failure) {
            enrollStart.nativeStartException(ticket);
            synchronized (this) {
                if (!enrollStart.isBusy()) activeOperation = false;
            }
            throw failure;
        }
    }

    public int authenticate(long opId, int securityLevel,
                                         byte[] actualFido)
            throws RemoteException {
        // Compatibility entry point for existing in-process callers. The
        // HIDL owner MUST reserve while holding its own operation lock to
        // close the camera-warmup/cancel handoff race.
        long ticket = reserveAuthentication();
        return ticket == 0L ? -19
                : authenticateReserved(ticket, opId, securityLevel, actualFido);
    }

    /**
     * Called while FaceunlockFixHidl holds its operation lock. Returning 0
     * leaves the existing operation untouched and does not send any RPC.
     */
    public synchronized long reserveAuthentication() throws RemoteException {
        requireOpen();
        if (activeUser < 0 || activeOperation || authStart.isBusy()
                || enrollStart.isBusy())
            return 0L;
        long ticket = authStart.reserve();
        if (ticket != 0L) {
            activeOperation = true;
            operationEpoch++;
        }
        return ticket;
    }

    public int authenticateReserved(long ticket, long opId, int securityLevel,
                                    byte[] actualFido) throws RemoteException {
        final int user;
        synchronized (this) {
            requireOpen();
            user = activeUser;
            if (user < 0 || !activeOperation || !authStart.beginNative(ticket))
                return -19; // cancelled before native dispatch: NEVER call faced
        }
        // No Java lock spans this synchronous Binder RPC. A native callback
        // can arrive while it is in progress and mark terminal state.
        try {
            int rc = daemon.authenticate(opId, user, securityLevel, actualFido);
            FaceunlockFixAuthStartGate.StartResult result =
                    authStart.finishNative(ticket, rc);
            if (result == FaceunlockFixAuthStartGate.StartResult.CANCEL_NATIVE) {
                // Cancel was requested while the *start RPC* was in-flight.
                // Sending it earlier would have raced ahead of authenticate().
                finishNativeAuthCancellation(ticket);
                return -19;
            }
            if (result != FaceunlockFixAuthStartGate.StartResult.ACCEPTED) {
                synchronized (this) {
                    if (!authStart.isBusy()) activeOperation = false;
                }
                return rc == 0 ? -19 : rc;
            }
            return rc;
        } catch (RemoteException | RuntimeException failure) {
            authStart.nativeStartException(ticket);
            synchronized (this) {
                if (!authStart.isBusy()) activeOperation = false;
            }
            throw failure;
        }
    }

    public int processFrontImage(byte[] frame, int width, int height,
                                              int rotation, int imageType)
            throws RemoteException {
        synchronized (this) {
            requireOpen();
            if (!activeOperation || frame == null || frame.length == 0)
                throw new RemoteException("Frame without real active operation");
        }
        // Camera2 caller must pass the original exact Samsung plane packing.
        // No Java lock may be held while faced issues acquired/auth callbacks.
        return daemon.processFrontImage(frame, width, height, rotation, imageType);
    }

    /** Called only by the HIDL owner after a genuine terminal callback or
     *  explicit error. Releases local operation ownership for the next session.
     *  It neither changes enrollment templates nor emits biometric results.
     */
    public synchronized void completeCallbackOperation() {
        activeOperation = false;
        operationEpoch++;
        authStart.terminalCallback();
        enrollStart.terminalCallback();
    }

    public int cancelAuthentication() throws RemoteException {
        final long ticket;
        final FaceunlockFixAuthStartGate.CancelAction action;
        synchronized (this) {
            requireOpen();
            ticket = authStart.currentTicket();
            action = authStart.cancel();
            if (!authStart.isBusy()) {
                activeOperation = false;
                operationEpoch++;
            }
        }
        if (action != FaceunlockFixAuthStartGate.CancelAction.SEND_NATIVE)
            return 0;
        return finishNativeAuthCancellation(ticket);
    }

    private int finishNativeAuthCancellation(long ticket) throws RemoteException {
        boolean accepted = false;
        try {
            int status = daemon.cancelAuthentication();
            accepted = status == 0;
            return status;
        } finally {
            authStart.nativeCancelFinished(ticket, accepted);
            synchronized (this) {
                if (!authStart.isBusy()) {
                    activeOperation = false;
                    operationEpoch++;
                }
            }
        }
    }

    public int cancelEnrollment() throws RemoteException {
        final long ticket;
        final FaceunlockFixAuthStartGate.CancelAction action;
        synchronized (this) {
            requireOpen();
            ticket = enrollStart.currentTicket();
            action = enrollStart.cancel();
            if (!enrollStart.isBusy()) {
                activeOperation = false;
                operationEpoch++;
            }
        }
        if (action != FaceunlockFixAuthStartGate.CancelAction.SEND_NATIVE)
            return 0;
        return finishNativeEnrollCancellation(ticket);
    }

    private int finishNativeEnrollCancellation(long ticket) throws RemoteException {
        boolean accepted = false;
        try {
            int status = daemon.cancelEnrollment();
            accepted = status == 0;
            return status;
        } finally {
            enrollStart.nativeCancelFinished(ticket, accepted);
            synchronized (this) {
                if (!enrollStart.isBusy()) {
                    activeOperation = false;
                    operationEpoch++;
                }
            }
        }
    }

    public int cancelEnumeration() throws RemoteException {
        synchronized (this) {
            requireOpen();
            activeOperation = false;
            operationEpoch++;
        }
        return daemon.cancelEnumeration();
    }

    public int enumerate() throws RemoteException {
        synchronized (this) {
            requireOpen();
            if (activeUser < 0)
                throw new RemoteException("Native enumerate without active user");
        }
        return daemon.enumerate();
    }

    /**
     * Original Samsung FaceService.checkIntegrity() queries IFaceDaemon's
     * FACE_REQUEST_ENUMERATE (11) with a ten-byte output buffer. Unlike the
     * daemon.enumerate() asynchronous request, the stock integrity check
     * consumes actual native template identifiers synchronously. Use only
     * strictly decoded NONEMPTY native data; null means "unproven", never
     * "the native store is empty".
     */
    public int[] readVerifiedNativeTemplateIds() throws RemoteException {
        synchronized (this) {
            requireOpen();
            if (activeUser < 0 || activeOperation || authStart.isBusy()
                    || enrollStart.isBusy())
                throw new RemoteException("Native template query busy or user unavailable");
        }
        byte[] output = new byte[FaceunlockFixNativeEnumeration.MAX_NATIVE_ID_BYTES];
        try {
            int returned = daemon.request(11, new byte[0], output, 0);
            int[] ids = FaceunlockFixNativeEnumeration.positiveTemplateIds(output, returned);
            if (ids != null) return ids;
            // A successful native zero-count alone is ambiguous. Confirm the
            // selected, unlocked store is readable and empty. The stock daemon
            // retains its cached authenticator ID after genuine removal, so
            // that cache is not evidence of a persisted template. Missing or
            // unreadable storage is never
            // interpreted as an empty biometric store.
            if (returned == 0) {
                final int user;
                synchronized (this) { user = activeUser; }
                java.io.File store = new java.io.File(
                        "/data/system/users/" + user + "/bio/fr");
                if (FaceunlockFixNativeEnumeration.confirmedEmptyStore(store, returned))
                    return new int[0];
            }
            return null;
        } finally {
            Arrays.fill(output, (byte) 0);
        }
    }

    public int remove(int faceId) throws RemoteException {
        final int user;
        synchronized (this) {
            requireOpen();
            if (activeUser < 0) throw new RemoteException("Native remove without active user");
            user = activeUser;
        }
        return daemon.remove(faceId, user);
    }

    public synchronized long getAuthenticatorId() throws RemoteException {
        requireOpen();
        // Samsung stock FaceService only queries this after setActiveGroup AND
        // confirming at least one real face template. The native function
        // dereferences a null user path when called prematurely (observed
        // isolated ADB crash), so this additional guard is critical.
        if (activeUser < 0) throw new RemoteException("AuthenticatorId without active user");
        return daemon.getAuthenticatorId();
    }

    public synchronized int postEnroll() throws RemoteException {
        requireOpen();
        return daemon.postEnroll();
    }

    public synchronized int request(int cmd, byte[] input, byte[] output, int arg)
            throws RemoteException {
        requireOpen();
        return daemon.request(cmd, input, output, arg);
    }

    private void requireOpen() throws RemoteException {
        if (closed || !nativeBinder.isBinderAlive() || deviceId == 0)
            throw new RemoteException("Genuine Samsung face daemon unavailable");
    }

    @Override
    public synchronized void close() throws RemoteException {
        if (closed) return;
        closed = true;
        activeOperation = false;
        try {
            daemon.closeHal();
        } finally {
            nativeBinder.unlinkToDeath(death, 0);
        }
    }
}
