package dev.android.dynamicisland.island.view.media;

import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.graphics.Easing;

/** Per-item paint/shader cache. Geometry changes update only the reusable shader matrix. */
final class WaveformGradient {
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.DITHER_FLAG);
    private final Matrix bounds = new Matrix();
    private final int[] colors = new int[3];
    private LinearGradient shader;
    private float shaderLeft = Float.NaN;
    private float shaderWidth = Float.NaN;

    Paint paint(int first, int middle, int last, float left, float width, float alpha) {
        if (first == middle && middle == last) {
            paint.setShader(null);
            paint.setColor(Colors.withAlpha(first, alpha));
            return paint;
        }
        if (shader == null || colors[0] != first || colors[1] != middle || colors[2] != last) {
            colors[0] = first;
            colors[1] = middle;
            colors[2] = last;
            // A single gradient across ALL four bars; never one gradient per bar. Shader construction
            // copies the private stop values. A static palette reuses this shader indefinitely.
            shader = new LinearGradient(0.0f, 0.0f, 1.0f, 0.0f, colors, null, Shader.TileMode.CLAMP);
            shaderLeft = Float.NaN;
        }
        // Check bounds on EVERY draw, including two representations of one item in a single frame.
        // Avoid setLocalMatrix for static bounds: it can invalidate the shader's native cache.
        if (shaderLeft != left || shaderWidth != width) {
            bounds.setScale(width, 1.0f);
            bounds.postTranslate(left, 0.0f);
            shader.setLocalMatrix(bounds);
            shaderLeft = left;
            shaderWidth = width;
        }
        paint.setShader(shader);
        paint.setColor(Colors.WHITE);
        paint.setAlpha(Math.round(255.0f * Easing.clamp01(alpha)));
        return paint;
    }
}
