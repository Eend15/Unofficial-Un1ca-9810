package dev.android.dynamicisland.island.window;

import android.animation.ValueAnimator;
import android.view.animation.PathInterpolator;

/** Shared timing of the status-bar icon fades: quick and early going out, slower and delayed coming back. */
final class FadeTiming {
    private static final long OUT_DURATION_MS = 130L;
    private static final long IN_DURATION_MS = 200L;
    private static final long IN_DELAY_MS = 40L;
    private static final PathInterpolator OUT_CURVE = new PathInterpolator(0.4f, 0.0f, 1.0f, 1.0f);
    private static final PathInterpolator IN_CURVE = new PathInterpolator(0.0f, 0.0f, 0.2f, 1.0f);

    private FadeTiming() {
    }

    /** Builds (but does not start) the animator that takes a value from {@code from} to {@code to}. */
    static ValueAnimator animator(float from, float to, ValueAnimator.AnimatorUpdateListener listener) {
        boolean hiding = to == 0.0f;
        ValueAnimator animator = ValueAnimator.ofFloat(from, to);
        animator.setDuration(hiding ? OUT_DURATION_MS : IN_DURATION_MS);
        animator.setStartDelay(hiding ? 0L : IN_DELAY_MS);
        animator.setInterpolator(hiding ? OUT_CURVE : IN_CURVE);
        animator.addUpdateListener(listener);
        return animator;
    }
}
