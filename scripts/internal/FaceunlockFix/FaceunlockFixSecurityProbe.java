package com.un1ca.face.smoketest;

import com.android.server.biometrics.sensors.face.faceunlockfix.FaceunlockFixNativeBackend;
import java.util.Arrays;

/**
 * Read-only genuine Noble daemon request protocol probe. It starts no camera,
 * enrollment or authentication, never saves a frame/token, and does not set
 * any Android biometric strength. Compare with Noble FaceService.getDaemonAIDL.
 */
public final class FaceunlockFixSecurityProbe {
    public static void main(String[] args) {
        final FaceunlockFixNativeBackend.Events noop = new FaceunlockFixNativeBackend.Events() {
            public void onEnrollResult(long d, int f, int u, int progress) {}
            public void onAcquired(long d, int info) {}
            public void onAuthenticated(long d, int f, int u, byte[] hat, byte[] fido) {}
            public void onError(long d, int code) {}
            public void onRemoved(long d, int f, int u) {}
            public void onEnumerate(long d, int[] faces, int[] groups) {}
            public void onNativeDied() {}
        };
        byte[] cameraInfo = new byte[256];
        try (FaceunlockFixNativeBackend backend = FaceunlockFixNativeBackend.connect(noop)) {
            backend.setActiveUser(0);
            int supported = backend.request(10001, new byte[0], cameraInfo, 0);
            int level = backend.request(10002, new byte[0], new byte[0], 0);
            System.out.println("REAL request GET_CAMERA_INFO(10001) status=" + supported);
            System.out.println("REAL request GET_SECURITY_LEVEL(10002) status=" + level);
            System.out.println("STOCK Noble rule: cameraInfo != 1 => fallback native level 2");
        } catch (Exception error) {
            System.out.println("BLOCK genuine request probe: " + error.getClass().getName());
        } finally {
            Arrays.fill(cameraInfo, (byte) 0);
        }
    }
}
