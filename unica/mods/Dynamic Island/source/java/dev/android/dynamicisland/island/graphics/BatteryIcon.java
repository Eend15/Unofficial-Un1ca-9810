package dev.android.dynamicisland.island.graphics;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/** Circular battery pictogram. Other island pictograms retain their existing renderer. */
public final class BatteryIcon {
    private BatteryIcon() { }

    public static Drawable load(Context host, int percent, boolean charging) {
        dev.android.dynamicisland.xposed.Diagnostics.fact("battery icon source", "circular gauge");
        return new Ring(Math.max(0, Math.min(100, percent)), charging);
    }

    private static final class Ring extends Drawable {
        private final BatteryGauge gauge = new BatteryGauge();
        private final int level;
        private final boolean charging;
        private int alpha = 255;
        Ring(int level, boolean charging) { this.level = level; this.charging = charging; }
        @Override public void draw(Canvas canvas) {
            Rect b = getBounds();
            gauge.draw(canvas, b.exactCenterX(), b.exactCenterY(), Math.min(b.width(), b.height()), level,
                    charging ? 0xFF30D158 : level <= 20 ? Colors.DESTRUCTIVE_RED : Colors.WHITE,
                    alpha / 255f, false, charging);
        }
        @Override public void setAlpha(int value) { alpha = value; invalidateSelf(); }
        @Override public void setColorFilter(ColorFilter filter) { gauge.setColorFilter(filter); invalidateSelf(); }
        @Override public int getOpacity() { return PixelFormat.TRANSLUCENT; }
        @Override public int getIntrinsicWidth() { return 24; }
        @Override public int getIntrinsicHeight() { return 24; }
    }
}
