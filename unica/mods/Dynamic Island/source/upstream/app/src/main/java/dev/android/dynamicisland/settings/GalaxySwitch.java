package dev.android.dynamicisland.settings;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import android.view.View;
import android.view.ViewParent;
import android.widget.Switch;

/** Galaxy-style visuals on the framework Switch: native touch, thumb animation, RTL and accessibility stay intact. */
final class GalaxySwitch extends Switch {
    private static final int BLUE = 0xFF3D7BFF;
    private final float density;

    GalaxySwitch(Context context) {
        super(context);
        density = getResources().getDisplayMetrics().density;
        boolean dark = (getResources().getConfiguration().uiMode & Configuration.UI_MODE_NIGHT_MASK)
                == Configuration.UI_MODE_NIGHT_YES;
        setShowText(false);
        setSplitTrack(false);
        setSwitchMinWidth(dp(36));
        setSwitchPadding(0);
        setThumbTextPadding(0);
        setThumbTintList(null);
        setTrackTintList(null);
        setTrackDrawable(new Track(dark));
        setThumbDrawable(new Thumb());
        setGravity(Gravity.CENTER_VERTICAL);
        setPadding(dp(6), 0, dp(6), 0);
        setMinWidth(dp(48));
        setMinHeight(dp(48));
    }

    private int dp(float value) { return Math.round(value * density); }

    /** Dependent rows already dim their entire contents; avoid fading their switches a second time. */
    private float disabledOpacity() {
        if (isEnabled()) return 1;
        if (getAlpha() < 1) return 1;
        ViewParent parent = getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (view.getAlpha() < 1) return 1;
            parent = view.getParent();
        }
        return .4f;
    }

    private abstract class Part extends Drawable {
        final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        int alpha = 255;
        @Override public void setAlpha(int value) { alpha = value; invalidateSelf(); }
        @Override public void setColorFilter(ColorFilter value) { paint.setColorFilter(value); invalidateSelf(); }
        @Override public int getOpacity() { return PixelFormat.TRANSLUCENT; }
        @Override public boolean isStateful() { return true; }
        @Override protected boolean onStateChange(int[] state) { invalidateSelf(); return true; }
        void colour(int value) {
            paint.setColor(value);
            paint.setAlpha(Math.round(alpha * disabledOpacity()));
        }
    }

    private final class Track extends Part {
        private final int off;
        Track(boolean dark) { off = dark ? 0xFF636368 : 0xFF8F8F94; }
        @Override public int getIntrinsicWidth() { return dp(36); }
        @Override public int getIntrinsicHeight() { return dp(20); }
        @Override public boolean getPadding(Rect padding) { padding.set(dp(2), 0, dp(2), 0); return true; }
        @Override public void draw(Canvas canvas) {
            colour(isChecked() ? BLUE : off);
            Rect r = getBounds();
            canvas.drawRoundRect(r.left, r.top, r.right, r.bottom, r.height() / 2f, r.height() / 2f, paint);
        }
    }

    private final class Thumb extends Part {
        @Override public int getIntrinsicWidth() { return dp(16); }
        // Match the track's full height for framework layout; draw the smaller circle inside it.
        @Override public int getIntrinsicHeight() { return dp(20); }
        @Override public void draw(Canvas canvas) {
            colour(0xFFFAFAFA);
            Rect r = getBounds();
            float radius = Math.min(dp(8), Math.min(r.width(), r.height()) / 2f);
            canvas.drawCircle(r.exactCenterX(), r.exactCenterY(), radius, paint);
        }
    }
}
