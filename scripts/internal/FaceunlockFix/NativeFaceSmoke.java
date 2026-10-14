package com.un1ca.face.smoketest;

import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import com.samsung.android.bio.face.IFaceDaemon;
import com.samsung.android.bio.face.IFaceDaemonCallback;
import java.nio.charset.StandardCharsets;

/**
 * Read-only/initialization-only native Binder smoke test from app_process.
 *
 * NEVER calls enroll, authenticate, resetLockout or modifies templates.
 * Binds to the genuine Samsung native IFaceDaemon and exercises HAL open,
 * setActiveGroup and preEnroll; all returned authentication data stays private.
 * A production service must use the correct SELinux domain/permissions.
 */
public final class NativeFaceSmoke {
    private static final String SERVICE =
            "com.samsung.android.bio.face.IFaceDaemon";
    private static final int USER = 0;

    private static final IFaceDaemonCallback CALLBACK =
            new IFaceDaemonCallback.Stub() {
                @Override public void onEnrollResult(long device, int faceId,
                        int groupId, int progress) {
                    System.out.println("Native enrollment callback received (unexpected in smoke test)");
                }
                @Override public void onAcquired(long device, int acquired) {
                    System.out.println("Native acquired callback received");
                }
                @Override public void onAuthenticated(long device, int faceId,
                        int groupId, byte[] originalHat, byte[] originalFido) {
                    // Do not print/store hardware authentication tokens.
                    System.out.println("Native authentication callback received (unexpected)");
                }
                @Override public void onError(long device, int code) {
                    System.out.println("Native error callback: " + code);
                }
                @Override public void onRemoved(long device, int faceId, int groupId) {
                    System.out.println("Native removal callback received (unexpected)");
                }
                @Override public void onEnumerate(long device, int[] faceIds,
                        int[] groupIds) {
                    System.out.println("Native enumeration callback size: "
                            + (faceIds == null ? -1 : faceIds.length));
                }
            };

    public static void main(String[] args) throws Exception {
        System.out.println("Noble read-only smoke: starting");
        IBinder binder = ServiceManager.checkService(SERVICE);
        if (binder == null || !binder.isBinderAlive()
                || !SERVICE.equals(binder.getInterfaceDescriptor())) {
            System.out.println("BLOCK native daemon absent (normal when not started)");
            return;
        }
        IFaceDaemon face = IFaceDaemon.Stub.asInterface(binder);
        boolean opened = false;
        try {
            face.init(CALLBACK);
            long device = face.openHal();
            opened = device != 0;
            if (!opened) throw new IllegalStateException("Native openHal did not succeed");
            System.out.println("PASS native openHal returned genuine nonzero device pointer");
            byte[] path = ("/data/system/users/" + USER + "/bio/fr")
                    .getBytes(StandardCharsets.UTF_8);
            int status = face.setActiveGroup(USER, path);
            if (status != 0) {
                throw new IllegalStateException("setActiveGroup status=" + status);
            }
            System.out.println("PASS native setActiveGroup for current user");
            if (args.length > 0 && "--authid".equals(args[0])) {
                // Optional isolated diagnostic. Noble stock requests this
                // only for a user already known to have actual templates.
                // Caller accepts that old native code may crash the daemon.
                long authId = face.getAuthenticatorId();
                System.out.println("Native getAuthenticatorId after active user: "
                        + (authId == 0 ? "no enrolled template" : "nonzero native ID"));
            }
            long challenge = face.preEnroll();
            if (challenge == 0) {
                throw new IllegalStateException("Native preEnroll returned zero");
            }
            System.out.println("PASS genuine Trustonic preEnroll challenge");
            // Do NOT call getAuthenticatorId until a native template is known
            // enrolled. Stock Noble FaceService has this exact safety guard.
            System.out.println("Native smoke completed without any enrollment.");
        } finally {
            if (opened) {
                try {
                    face.closeHal();
                    System.out.println("Native HAL closed");
                } catch (RemoteException ex) {
                    System.out.println("Native closeHal reported daemon death");
                }
            }
        }
    }
}
