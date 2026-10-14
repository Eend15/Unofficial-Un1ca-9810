package com.android.server.biometrics.sensors.face.faceunlockfix;

import java.nio.ByteBuffer;

/**
 * Original Samsung FrCamCtrl camera payload, byte-for-byte plane concatenation.
 *
 * FrCamCtrl.java:364-379 copies Image.Plane[0], [1], [2] via ByteBuffer.get,
 * INCLUDING any camera-vendor plane padding. The native IFaceDaemon also gets
 * the original image-type flag: 0=ImageFormat.NV21 (17),
 * 2=ImageFormat.YUV_420_888 (35). It does not receive row/pixel strides.
 *
 * This is intentionally distinct from a stride-correct NV21 repacker, which
 * must NOT be supplied with the YUV_420_888 native imageType=2 contract.
 */
public final class FaceunlockFixPlanePayload {
    private static final int MAX_FRAME_BYTES = 2 * 1024 * 1024;

    private FaceunlockFixPlanePayload() {}

    public static byte[] copy(ByteBuffer[] planes) {
        if (planes == null || planes.length != 3) {
            throw new IllegalArgumentException("Original Samsung face engine requires three planes");
        }
        ByteBuffer[] sources = new ByteBuffer[3];
        int length = 0;
        for (int i = 0; i < sources.length; i++) {
            if (planes[i] == null) throw new IllegalArgumentException("Missing camera plane");
            sources[i] = planes[i].duplicate();
            int size = sources[i].remaining();
            if (size <= 0 || size > MAX_FRAME_BYTES - length)
                throw new IllegalArgumentException("Invalid native frame payload");
            length += size;
        }
        byte[] payload = new byte[length];
        int position = 0;
        for (ByteBuffer source : sources) {
            int count = source.remaining();
            source.get(payload, position, count);
            position += count;
        }
        return payload;
    }
}
