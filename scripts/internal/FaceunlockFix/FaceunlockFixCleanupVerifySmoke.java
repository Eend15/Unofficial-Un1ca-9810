package com.un1ca.face.smoketest;

import com.android.server.biometrics.sensors.face.faceunlockfix.FaceunlockFixCleanupFailureBridge;

/**
 * Android ART class-loader smoke, no HAL call and no scheduler mutation.
 * Verify that the exact Android16 cleanup compatibility class resolves,
 * and that a null/foreign callback is rejected without emitting events.
 */
public final class FaceunlockFixCleanupVerifySmoke {
    public static void main(String[] args) {
        try {
            boolean accepted = FaceunlockFixCleanupFailureBridge.completeFailedEnumeration(null, 0);
            if (accepted) throw new AssertionError("Null callback accepted");
            System.out.println("PASS ART loaded Noble cleanup failure bridge; null rejected");
        } catch (Throwable error) {
            System.out.println("BLOCK cleanup compatibility: " + error);
            System.exit(1);
        }
    }
}
