package dev.android.dynamicisland.island.source;

import android.graphics.Bitmap;
import android.graphics.Color;
import dev.android.dynamicisland.island.graphics.Colors;

/** Picks the accent colour of a media card from its cover art. */
final class CoverAccent {
    /** Covers are scaled down to this many pixels per side before sampling. */
    private static final int SAMPLE_SIZE = 24;
    private static final int HUE_BUCKETS = 12;
    private static final float BUCKET_WIDTH = 360f / HUE_BUCKETS;
    /** Pixels less saturated or darker than this are ignored. */
    private static final float MIN_SATURATION = 0.22f;
    private static final float MIN_VALUE = 0.3f;
    /** A hue bucket needs at least this much weighted colour to count as the cover's colour. */
    private static final float MIN_WEIGHT = 0.5f;
    private static final float SATURATION_BOOST = 1.15f;
    private static final float LIFTED_VALUE = 0.85f;

    private CoverAccent() {
    }

    /**
     * The weighted average colour of the strongest hue bucket (weight = saturation * value), lifted so
     * it reads on black. -1 (white) when the cover is grey or dark, or cannot be sampled.
     */
    static int of(Bitmap cover) {
        try {
            Bitmap sample = Bitmap.createScaledBitmap(cover, SAMPLE_SIZE, SAMPLE_SIZE, true);
            float[] weight = new float[HUE_BUCKETS];
            float[] red = new float[HUE_BUCKETS];
            float[] green = new float[HUE_BUCKETS];
            float[] blue = new float[HUE_BUCKETS];
            float[] hsv = new float[3];
            for (int y = 0; y < sample.getHeight(); y++) {
                for (int x = 0; x < sample.getWidth(); x++) {
                    int pixel = sample.getPixel(x, y);
                    Color.colorToHSV(pixel, hsv);
                    if (hsv[1] < MIN_SATURATION || hsv[2] < MIN_VALUE) {
                        continue;
                    }
                    float w = hsv[1] * hsv[2];
                    int bucket = Math.min(HUE_BUCKETS - 1, (int) (hsv[0] / BUCKET_WIDTH));
                    weight[bucket] += w;
                    red[bucket] += Color.red(pixel) * w;
                    green[bucket] += Color.green(pixel) * w;
                    blue[bucket] += Color.blue(pixel) * w;
                }
            }
            if (sample != cover) {
                sample.recycle();
            }
            int top = 0;
            for (int i = 1; i < HUE_BUCKETS; i++) {
                if (weight[i] > weight[top]) {
                    top = i;
                }
            }
            if (weight[top] <= MIN_WEIGHT) {
                return -1;
            }
            int average = Color.rgb(Math.round(red[top] / weight[top]), Math.round(green[top] / weight[top]),
                    Math.round(blue[top] / weight[top]));
            Color.colorToHSV(average, hsv);
            hsv[1] = Math.min(1.0f, hsv[1] * SATURATION_BOOST);
            hsv[2] = Math.max(LIFTED_VALUE, hsv[2]);
            return Colors.readableOnBlack(Color.HSVToColor(hsv));
        } catch (Throwable t) {
            return -1;
        }
    }
}
