package dev.android.dynamicisland.island.window;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;

/** Drives the transition alpha of one status-bar view towards 0 (covered) or 1 (visible). */
final class IconAlphaFade {
    private final View view;
    private float target = 1.0f;
    private ValueAnimator running;

    IconAlphaFade(View view) {
        this.view = view;
    }

    boolean isHiding() {
        return target == 0.0f;
    }

    void animateTo(float newTarget) {
        // an idle fade whose view was changed behind our back (alpha != target) is also re-driven
        boolean drifted = running == null && view.getTransitionAlpha() != newTarget;
        if (newTarget == target && !drifted) {
            return;
        }
        target = newTarget;
        cancel();
        float from = view.getTransitionAlpha();
        if (from == newTarget) {
            return;
        }
        ValueAnimator animator = FadeTiming.animator(from, newTarget, a -> view.setTransitionAlpha((Float) a.getAnimatedValue()));
        animator.addListener(new AnimatorListenerAdapter() {
            @Override
            public void onAnimationEnd(Animator finished) {
                // a finished fade is idle again, so that an alpha changed behind our back is noticed (see animateTo)
                if (running == finished) {
                    running = null;
                }
            }
        });
        running = animator;
        animator.start();
    }

    void cancel() {
        if (running != null) {
            running.cancel();
            running = null;
        }
    }
}
