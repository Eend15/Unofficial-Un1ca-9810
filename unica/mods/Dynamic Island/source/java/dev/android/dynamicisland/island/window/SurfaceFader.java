package dev.android.dynamicisland.island.window;

import android.view.SurfaceControl;
import android.view.View;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.XLog;

/**
 * Fade and scale of a whole window surface, applied through a {@link SurfaceControl.Transaction}.
 * Keeps the requested values so they can be re-applied when the surface is recreated. After the
 * first failure it stays {@link #failed} and does nothing more.
 */
final class SurfaceFader {
    private final SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
    private float alpha = 1.0f;
    private float scale = 1.0f;
    /** Pivot of the scale, in window pixels. */
    private float pivotX;
    private float pivotY;
    private boolean failed;

    boolean hasFailed() {
        return failed;
    }

    /** True when the stored state is the identity (fully opaque, unscaled), so nothing needs re-applying. */
    boolean isNeutral() {
        return alpha == 1.0f && scale == 1.0f;
    }

    /** Stores a new state; returns false when it equals the stored one. */
    boolean set(float newAlpha, float newScale, float px, float py) {
        if (newAlpha == alpha && newScale == scale && px == pivotX && py == pivotY) {
            return false;
        }
        alpha = newAlpha;
        scale = newScale;
        pivotX = px;
        pivotY = py;
        return true;
    }

    /** Pushes the stored state to the surface of the window that hosts {@code root}. */
    void apply(View root) {
        if (failed) {
            return;
        }
        try {
            Object viewRoot = root.getRootSurfaceControl();
            Object surface = viewRoot == null ? null : Refl.call(viewRoot, "getSurfaceControl", new Object[0]);
            if (surface instanceof SurfaceControl && ((SurfaceControl) surface).isValid()) {
                SurfaceControl control = (SurfaceControl) surface;
                transaction.setAlpha(control, alpha);
                transaction.setScale(control, scale, scale);
                // scaling happens about the surface origin; shift it so the pivot stays put
                transaction.setPosition(control, pivotX * (1.0f - scale), pivotY * (1.0f - scale));
                transaction.apply();
            }
        } catch (Throwable t) {
            failed = true;
            XLog.e("surface fade failed", t);
        }
    }
}
