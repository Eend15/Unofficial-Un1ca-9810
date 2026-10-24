package dev.android.dynamicisland.island.window;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.TextView;

/**
 * Hides only the date part of the status-bar clock (from {@link #splitX} to the right edge) by
 * erasing it with a DST_OUT foreground drawable. The drawable and the hardware layer it needs are
 * installed on the clock only while a fade is in progress.
 */
final class ClockDateEraser extends Drawable {
    private final TextView clock;
    private final Paint eraser = new Paint();
    private ValueAnimator running;
    private boolean installed;
    /** How visible the date is, 1 = fully. */
    private float visibility = 1.0f;
    private float target = 1.0f;
    /** X offset inside the clock where the date starts. */
    private float splitX;

    ClockDateEraser(TextView clock) {
        this.clock = clock;
        eraser.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    void setSplit(float x) {
        splitX = x;
    }

    boolean isHiding() {
        return target == 0.0f;
    }

    void animateTo(float newTarget) {
        if (newTarget == target) {
            return;
        }
        target = newTarget;
        if (running != null) {
            running.cancel();
        }
        if (visibility == newTarget) {
            return;
        }
        install();
        running = FadeTiming.animator(visibility, newTarget, this::onStep);
        running.start();
    }

    /** Cancels any fade and restores the untouched clock. */
    void reset() {
        if (running != null) {
            running.cancel();
        }
        visibility = 1.0f;
        target = 1.0f;
        uninstall();
    }

    private void onStep(ValueAnimator animator) {
        visibility = (Float) animator.getAnimatedValue();
        clock.invalidate();
        if (visibility == 1.0f && target == 1.0f) {
            uninstall();
        }
    }

    private void install() {
        if (!installed) {
            installed = true;
            clock.setLayerType(View.LAYER_TYPE_HARDWARE, null);
            clock.setForeground(this);
        }
    }

    private void uninstall() {
        if (installed) {
            installed = false;
            if (clock.getForeground() == this) {
                clock.setForeground(null);
            }
            clock.setLayerType(View.LAYER_TYPE_NONE, null);
        }
    }

    @Override
    public void draw(Canvas canvas) {
        if (visibility >= 1.0f) {
            return;
        }
        eraser.setAlpha(Math.round((1.0f - visibility) * 255.0f));
        canvas.drawRect(splitX, 0.0f, clock.getWidth(), clock.getHeight(), eraser);
    }

    @Override
    public void setAlpha(int alpha) {
        // driven by the animation
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        // not supported
    }

    @Override
    public int getOpacity() {
        return PixelFormat.TRANSLUCENT;
    }
}
