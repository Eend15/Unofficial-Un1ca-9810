package com.un1ca.face.smoketest;

import android.app.ActivityThread;
import android.content.Context;
import android.hardware.biometrics.face.V1_0.OptionalUint64;
import android.hardware.biometrics.face.V1_0.IBiometricsFace;
import android.os.Looper;
import com.android.server.biometrics.sensors.face.faceunlockfix.FaceunlockFixHidl;
import com.android.server.biometrics.sensors.face.faceunlockfix.FaceunlockFixProbe;

/**
 * Real, standalone bridge initialization smoke test; never authenticates,
 * enrolls or manufactures a token. Load from a temporary app_process
 * CLASSPATH that includes the OFFLINE services.jar preview.
 */
public final class FaceunlockFixHidlSmoke {
    public static void main(String[] args) {
        System.out.println("Noble Java HIDL bridge smoke: begin");
        try {
            // Unlike system_server, app_process does not prepare a main
            // message Looper. ActivityThread.systemMain() requires one.
            Looper.prepareMainLooper();
            Context context = ActivityThread.systemMain().getSystemContext();
            if (context == null) {
                System.out.println("BLOCK missing Android system context");
                return;
            }
            IBiometricsFace acquired = FaceunlockFixProbe.tryAcquire(context);
            if (!(acquired instanceof FaceunlockFixHidl)) {
                System.out.println("BLOCK opt-in FaceunlockFixProbe did not return genuine Noble HIDL");
                return;
            }
            try (FaceunlockFixHidl hal = (FaceunlockFixHidl) acquired) {
                System.out.println("PASS genuine Noble HIDL Java object opened");
                int activeStatus = hal.setActiveUser(0, "");
                if (activeStatus != 0) {
                    System.out.println("BLOCK native setActiveUser error: " + activeStatus);
                    return;
                }
                System.out.println("PASS HIDL setActiveUser->native setActiveGroup");
                final int[] level = {-1, -1};
                hal.sehGetSecurityLevel((status, vendorLevel) -> {
                    level[0] = status;
                    level[1] = vendorLevel;
                });
                if (level[0] != 0 || level[1] != 2) {
                    System.out.println("BLOCK legacy Noble security level: "
                            + level[0] + "/" + level[1]);
                    return;
                }
                System.out.println("PASS genuine Noble stock camera protocol exposes legacy level 2"
                        + " (platform face remains weak)");
                OptionalUint64 authId = hal.getAuthenticatorId();
                if (authId.status != 0 || authId.value != 0) {
                    System.out.println("BLOCK unverified authenticator ID");
                    return;
                }
                System.out.println("PASS HIDL queried native auth ID safely after selecting user");
                OptionalUint64 challenge = hal.generateChallenge();
                if (challenge.status != 0 || challenge.value == 0) {
                    System.out.println("BLOCK native preEnroll unavailable");
                    return;
                }
                System.out.println("PASS HIDL generateChallenge -> genuine Trustonic preEnroll");
                int revoked = hal.revokeChallenge();
                System.out.println("HIDL postEnroll status: " + revoked);
                System.out.println("Native HIDL smoke completed without enrollment or auth");
            }
        } catch (Throwable failure) {
            System.out.println("BLOCK isolated bridge test: "
                    + failure.getClass().getName() + ": " + failure.getMessage());
        }
    }
}
