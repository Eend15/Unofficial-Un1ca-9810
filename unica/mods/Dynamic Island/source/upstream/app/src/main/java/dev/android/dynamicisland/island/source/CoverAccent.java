package dev.android.dynamicisland.island.source;

import android.graphics.Bitmap;
import dev.android.dynamicisland.island.graphics.ArtworkPalette;

/** Samples cover art once per art update; the extraction itself is Android-independent. */
final class CoverAccent {
    private static final int SAMPLE_SIZE = 24;

    private CoverAccent() {
    }

    /** Existing callers retain the same dominant-accent API. */
    static int of(Bitmap cover) {
        return palette(cover).primary;
    }

    /** A small software sample, never recycling the caller's bitmap (even for 24x24 input). */
    static ArtworkPalette palette(Bitmap cover) {
        Bitmap sample = null;
        Bitmap software = null;
        try {
            if (cover == null || cover.isRecycled()) {
                return ArtworkPalette.fromPixels(null);
            }
            // Scaling hardware art first avoids copying a full-resolution cover to software.
            sample = Bitmap.createScaledBitmap(cover, SAMPLE_SIZE, SAMPLE_SIZE, true);
            Bitmap readable = sample;
            if (sample.getConfig() == Bitmap.Config.HARDWARE) {
                software = sample.copy(Bitmap.Config.ARGB_8888, false);
                readable = software;
            }
            if (readable == null) {
                return ArtworkPalette.fromPixels(null);
            }
            int width = readable.getWidth();
            int height = readable.getHeight();
            int[] pixels = new int[width * height];
            readable.getPixels(pixels, 0, width, 0, 0, width, height);
            return ArtworkPalette.fromPixels(pixels);
        } catch (Throwable t) {
            // A recycled/racing bitmap or failed hardware readback must not break the player.
            return ArtworkPalette.fromPixels(null);
        } finally {
            recycleOwned(software, cover);
            if (sample != software) {
                recycleOwned(sample, cover);
            }
        }
    }

    private static void recycleOwned(Bitmap bitmap, Bitmap input) {
        if (bitmap != null && bitmap != input) {
            try {
                if (!bitmap.isRecycled()) {
                    bitmap.recycle();
                }
            } catch (Throwable ignored) {
                // Best effort cleanup, including when the input is being released concurrently.
            }
        }
    }
}
