package dev.android.dynamicisland.island.view.media;

import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.view.IslandView;

/**
 * Shaders of the music card glow for one accent colour and card height: a vertical gradient for the base
 * and one radial gradient per blob (the accent, a warmer and a cooler neighbour hue). Rebuilt by
 * {@link MediaFx} when the accent or height changes. Main thread only.
 */
final class ToneSet {
    private static final int BLOB_COUNT = 3;
    /** Hue shifts (degrees) of the warm and cool blob relative to the accent. */
    private static final float WARM_HUE_SHIFT = 28.0f;
    private static final float COOL_HUE_SHIFT = 332.0f;
    private static final float BLOB_PEAK_ALPHA = 0.85f;

    int accent;
    /** Gradient over the lower 60% of the card. */
    Shader base;
    final Shader[] blobs;
    /** Card height the shaders were built for; negative until built. */
    float h;

    ToneSet() {
        blobs = new Shader[BLOB_COUNT];
        h = -1.0f;
    }

    void build(int accent, float h) {
        this.accent = accent;
        this.h = h;
        float[] hsv = new float[3];
        Color.colorToHSV(accent, hsv);
        float hue = hsv[0];
        int warm = Color.HSVToColor(new float[]{(WARM_HUE_SHIFT + hue) % 360.0f, Math.min(1.0f, hsv[1] + 0.05f), 1.0f});
        int cool = Color.HSVToColor(new float[]{(COOL_HUE_SHIFT + hue) % 360.0f, hsv[1], Math.max(0.7f, hsv[2])});
        int[] tones = {Colors.blend(accent, Colors.WHITE, 0.12f), warm, cool};
        int baseTop = Colors.withAlpha(Colors.blend(accent, Colors.BLACK, 0.45f), 0.0f);
        int baseBottom = Colors.withAlpha(Colors.blend(accent, Colors.BLACK, 0.25f), 0.5f);
        base = new LinearGradient(0.0f, h * 0.4f, 0.0f, h, baseTop, baseBottom, Shader.TileMode.CLAMP);
        for (int i = 0; i < BLOB_COUNT; i++) {
            // unit-radius gradient (the canvas is scaled when drawing) whose alpha falls off towards the rim
            int[] colors = new int[IslandView.BLOB_STOPS];
            float[] stops = new float[IslandView.BLOB_STOPS];
            for (int stop = 0; stop < IslandView.BLOB_STOPS; stop++) {
                float radius = stop / (float) (IslandView.BLOB_STOPS - 1);
                stops[stop] = radius;
                colors[stop] = Colors.withAlpha(tones[i], BLOB_PEAK_ALPHA * IslandView.blobFalloff(radius));
            }
            blobs[i] = new RadialGradient(0.0f, 0.0f, 1.0f, colors, stops, Shader.TileMode.CLAMP);
        }
    }
}
