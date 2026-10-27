package android.view;

import android.graphics.Rect;
import java.util.concurrent.Executor;

/**
 * Compile-only signatures for the hidden framework API. The device framework (or Robolectric's
 * android-all) supplies the implementation; this class must never be packaged with the app.
 */
public abstract class CompositionSamplingListener {
    public CompositionSamplingListener(Executor executor) {
        throw new UnsupportedOperationException("Compile-only framework stub");
    }

    public abstract void onSampleCollected(float sample);

    public void destroy() {
        throw new UnsupportedOperationException("Compile-only framework stub");
    }

    public static void register(CompositionSamplingListener listener, int displayId,
            SurfaceControl stopLayer, Rect samplingArea) {
        throw new UnsupportedOperationException("Compile-only framework stub");
    }

    public static void unregister(CompositionSamplingListener listener) {
        throw new UnsupportedOperationException("Compile-only framework stub");
    }
}
