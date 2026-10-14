package com.android.server.biometrics.sensors.face.faceunlockfix;

import java.nio.ByteBuffer;
import java.util.Arrays;

/** Verifies genuine Samsung stock raw buffer concatenation (no biometric samples). */
public final class FaceunlockFixPlanePayloadTest {
    private static void expected(byte[] actual, byte... bytes) {
        if (!Arrays.equals(actual, bytes)) {
            throw new AssertionError("FaceunlockFix plane payload mismatch");
        }
    }

    public static void main(String[] args) {
        ByteBuffer y = ByteBuffer.wrap(new byte[]{0, 11, 12, 99, 13});
        y.position(1);
        ByteBuffer u = ByteBuffer.wrap(new byte[]{21, 22});
        ByteBuffer v = ByteBuffer.wrap(new byte[]{31, 32, 33});
        expected(FaceunlockFixPlanePayload.copy(new ByteBuffer[]{y, u, v}),
                (byte) 11, (byte) 12, (byte) 99, (byte) 13,
                (byte) 21, (byte) 22, (byte) 31, (byte) 32, (byte) 33);
        if (y.position() != 1 || u.position() != 0 || v.position() != 0) {
            throw new AssertionError("Original image buffers were mutated");
        }
        boolean invalid = false;
        try {
            FaceunlockFixPlanePayload.copy(new ByteBuffer[]{y, u});
        } catch (IllegalArgumentException expected) {
            invalid = true;
        }
        if (!invalid) throw new AssertionError("Accepted missing native image plane");
        invalid = false;
        try {
            FaceunlockFixPlanePayload.copy(new ByteBuffer[]{
                    ByteBuffer.allocate(2 * 1024 * 1024), u, v});
        } catch (IllegalArgumentException expected) {
            invalid = true;
        }
        if (!invalid) throw new AssertionError("Accepted implausibly large camera payload");
        System.out.println("PASS FaceunlockFix raw plane order/padding/positions/size guard");
    }
}
