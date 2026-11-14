package dev.android.dynamicisland.island.graphics;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

/** Horizontal battery glyph for the wide charging pill: a rounded body filled to the level, with a small cap on the right. */
public final class BatteryBar {
    /** Width of the glyph relative to its height. */
    public static final float ASPECT = 1.6f;
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final RectF body = new RectF();
    private final RectF fill = new RectF();

    /** Draws the glyph with its right edge at {@code right}, centred on {@code midY}. */
    public void draw(Canvas canvas, float right, float midY, float height, int percent, int colour, float alpha) {
        if (height <= 0) return;
        float cap = height * 0.12f;
        float capGap = height * 0.06f;
        float width = height * ASPECT;
        float left = right - width;
        float bodyRight = right - cap - capGap;
        body.set(left, midY - height / 2f, bodyRight, midY + height / 2f);
        float radius = height * 0.3f;
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(Colors.withAlpha(colour, alpha * 0.28f));
        canvas.drawRoundRect(body, radius, radius, paint);
        float level = Math.max(0, Math.min(100, percent)) / 100f;
        if (level > 0f) {
            float inset = height * 0.0f;
            fill.set(body.left + inset, body.top + inset, body.left + inset + (body.width() - 2 * inset) * level, body.bottom - inset);
            int save = canvas.save();
            canvas.clipRect(fill);
            paint.setColor(Colors.withAlpha(colour, alpha));
            canvas.drawRoundRect(body, radius, radius, paint);
            canvas.restoreToCount(save);
        }
        paint.setColor(Colors.withAlpha(colour, alpha * 0.32f));
        float capH = height * 0.36f;
        canvas.drawRoundRect(bodyRight + capGap, midY - capH / 2f, right, midY + capH / 2f, cap / 2f, cap / 2f, paint);
    }
}
