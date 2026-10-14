package com.android.server.biometrics.sensors.face.faceunlockfix;

import java.nio.ByteBuffer;

/**
 * Packs Android Camera2 YUV_420_888 planes into tightly packed NV21 (Y + VU).
 * Supports arbitrary row/pixel strides and interleaved or planar UV buffers.
 * There are no Android dependencies, so stride handling can be tested on a JDK.
 */
public final class Nv21Packer {
    private Nv21Packer() {}

    public static byte[] pack(int width, int height,
            ByteBuffer y, int yRowStride, int yPixelStride,
            ByteBuffer u, int uRowStride, int uPixelStride,
            ByteBuffer v, int vRowStride, int vPixelStride) {
        if (width <= 0 || height <= 0 || (width & 1) != 0 || (height & 1) != 0) {
            throw new IllegalArgumentException("NV21 requires positive even dimensions");
        }
        long pixels = (long) width * height;
        if (pixels > Integer.MAX_VALUE / 3L * 2L) {
            throw new IllegalArgumentException("NV21 frame too large");
        }
        int ySize = (int) pixels;
        byte[] packed = new byte[ySize + ySize / 2];

        ByteBuffer yy = checked(y, height, width, yRowStride, yPixelStride);
        ByteBuffer uu = checked(u, height / 2, width / 2, uRowStride, uPixelStride);
        ByteBuffer vv = checked(v, height / 2, width / 2, vRowStride, vPixelStride);
        int yStart = yy.position();
        int uStart = uu.position();
        int vStart = vv.position();

        int offset = 0;
        for (int row = 0; row < height; row++) {
            int start = yStart + row * yRowStride;
            for (int col = 0; col < width; col++) {
                packed[offset++] = yy.get(start + col * yPixelStride);
            }
        }
        // NV21 chroma order is V followed by U for each 2x2 luma block.
        for (int row = 0; row < height / 2; row++) {
            int vRow = vStart + row * vRowStride;
            int uRow = uStart + row * uRowStride;
            for (int col = 0; col < width / 2; col++) {
                packed[offset++] = vv.get(vRow + col * vPixelStride);
                packed[offset++] = uu.get(uRow + col * uPixelStride);
            }
        }
        return packed;
    }

    private static ByteBuffer checked(ByteBuffer input, int rows, int columns,
            int rowStride, int pixelStride) {
        if (input == null || rows <= 0 || columns <= 0 || rowStride <= 0
                || pixelStride <= 0) {
            throw new IllegalArgumentException("Missing YUV plane or invalid strides");
        }
        ByteBuffer view = input.duplicate();
        long last = (long) (rows - 1) * rowStride
                + (long) (columns - 1) * pixelStride;
        if (last >= view.remaining()) {
            throw new IllegalArgumentException("Truncated YUV plane");
        }
        return view;
    }
}
