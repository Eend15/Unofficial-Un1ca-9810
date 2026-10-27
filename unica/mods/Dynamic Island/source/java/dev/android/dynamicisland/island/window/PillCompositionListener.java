package dev.android.dynamicisland.island.window;

import android.graphics.Rect;
import android.view.CompositionSamplingListener;
import android.view.Display;
import android.view.SurfaceControl;
import java.util.concurrent.Executor;
import java.util.function.Consumer;

/**
 * Thin bridge to the device framework, resolved only when the sampling owner creates it.
 * The owner handles unavailable/blocked APIs and native failures, including constructor failures.
 */
final class PillCompositionListener extends CompositionSamplingListener {
    private final Consumer<Float> onSample;

    PillCompositionListener(Executor executor, Consumer<Float> onSample) {
        super(executor);
        this.onSample = onSample;
    }

    @Override
    public void onSampleCollected(float rawValue) {
        // Composition's encoded weighted mean is not WCAG relative luminance.
        onSample.accept(rawValue);
    }

    void start(SurfaceControl stopLayer, Rect samplingArea) {
        register(this, Display.DEFAULT_DISPLAY, stopLayer, samplingArea);
    }

    void stop() {
        unregister(this);
    }
}
