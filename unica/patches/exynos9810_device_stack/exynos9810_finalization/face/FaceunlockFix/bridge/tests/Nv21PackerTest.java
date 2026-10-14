package com.android.server.biometrics.sensors.face.faceunlockfix;

import java.nio.ByteBuffer;
import java.util.Arrays;

/** Pure-JDK tests for Camera2 stride/plane handling (no device needed). */
public final class Nv21PackerTest {
    private static final byte[] EXPECTED = {1, 2, 3, 4, 5, 6, 7, 8, 31, 21, 32, 22};

    private static void eq(byte[] result) {
        if (!Arrays.equals(result, EXPECTED)) {
            throw new AssertionError("NV21 mismatch: " + Arrays.toString(result));
        }
    }

    public static void main(String[] ignored) {
        ByteBuffer yPadded = ByteBuffer.wrap(new byte[]{
                1, 2, 3, 4, 0, 0,
                5, 6, 7, 8, 0, 0});
        ByteBuffer uPlanar = ByteBuffer.wrap(new byte[]{21, 22});
        ByteBuffer vPlanar = ByteBuffer.wrap(new byte[]{31, 32});
        eq(Nv21Packer.pack(4, 2, yPadded, 6, 1,
                uPlanar, 2, 1, vPlanar, 2, 1));

        // Pixel stride 2, shared interleaved VU chroma memory, U starts at +1.
        ByteBuffer vu = ByteBuffer.wrap(new byte[]{31, 21, 32, 22});
        ByteBuffer uInterleaved = vu.duplicate();
        uInterleaved.position(1);
        eq(Nv21Packer.pack(4, 2, yPadded, 6, 1,
                uInterleaved, 4, 2, vu, 4, 2));

        if (yPadded.position() != 0 || vu.position() != 0
                || uInterleaved.position() != 1) {
            throw new AssertionError("Packer modified source buffer positions");
        }

        boolean rejected = false;
        try {
            Nv21Packer.pack(4, 2, ByteBuffer.allocate(7), 4, 1,
                    uPlanar, 2, 1, vPlanar, 2, 1);
        } catch (IllegalArgumentException expected) {
            rejected = true;
        }
        if (!rejected) throw new AssertionError("Truncated Y plane accepted");
        System.out.println("PASS planar, padded, interleaved, position and truncation cases");
    }
}
