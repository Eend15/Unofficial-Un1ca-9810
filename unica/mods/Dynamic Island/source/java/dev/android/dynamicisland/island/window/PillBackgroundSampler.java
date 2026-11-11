package dev.android.dynamicisland.island.window;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.view.Display;
import android.view.SurfaceControl;
import android.view.View;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.XLog;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.function.Consumer;

/** Event-driven compositor luma BELOW the island's own surface; never screenshots or theme guesses. */
public final class PillBackgroundSampler {
    interface Backend {
        void start(SurfaceControl stopLayer, Rect bounds);
        void stop();
        void destroy();
    }
    interface BackendFactory { Backend create(Executor executor, Consumer<Float> sample); }
    interface SurfaceAccess {
        SurfaceControl current(View view) throws Exception;
        boolean valid(SurfaceControl surface);
        SurfaceControl copy(SurfaceControl surface) throws Exception;
        boolean same(SurfaceControl a, SurfaceControl b) throws Exception;
        void release(SurfaceControl surface);
    }

    private final View view;
    private final Consumer<Float> consumer;
    private final BackendFactory factory;
    private final SurfaceAccess surfaces;
    private final Handler main = new dev.android.dynamicisland.xposed.GuardedHandler(Looper.getMainLooper());
    private final Rect bounds = new Rect();
    private final Rect registeredBounds = new Rect();
    private final Point displaySize = new Point();
    private Backend backend;
    private SurfaceControl ownedStopLayer;
    private boolean enabled, destroyed, failed, registered, notified;
    private long generation;
    private Float lastLuma;
    private final View.OnAttachStateChangeListener attach = new View.OnAttachStateChangeListener() {
        @Override public void onViewAttachedToWindow(View v) { refresh(); }
        @Override public void onViewDetachedFromWindow(View v) { release(); emit(null); }
    };

    public PillBackgroundSampler(View view, Consumer<Float> consumer) {
        this(view, consumer, PillBackgroundSampler::frameworkBackend, new FrameworkSurfaces());
    }

    PillBackgroundSampler(View view, Consumer<Float> consumer, BackendFactory factory, SurfaceAccess surfaces) {
        this.view = Objects.requireNonNull(view);
        this.consumer = Objects.requireNonNull(consumer);
        this.factory = Objects.requireNonNull(factory);
        this.surfaces = Objects.requireNonNull(surfaces);
        onMain(() -> { if (!destroyed) { view.addOnAttachStateChangeListener(attach); emit(null); } });
    }

    /** Called by the window's pre-draw; bounds are display pixels, not view-local coordinates. */
    public void update(Rect screenBounds, boolean enabled) {
        Rect copy = screenBounds == null ? new Rect() : new Rect(screenBounds);
        onMain(() -> {
            if (destroyed) return;
            this.enabled = enabled && !copy.isEmpty() && copy.left >= 0 && copy.top >= 0;
            bounds.set(copy);
            refresh();
        });
    }

    public void destroy() {
        onMain(() -> {
            if (destroyed) return;
            destroyed = true;
            enabled = false;
            view.removeOnAttachStateChangeListener(attach);
            release();
            emit(null);
        });
    }

    private void onMain(Runnable action) {
        if (Looper.myLooper() == Looper.getMainLooper()) action.run();
        else main.post(action);
    }

    private void refresh() {
        if (destroyed || failed || !enabled || !view.isAttachedToWindow() || !view.isShown()
                || view.getWindowVisibility() != View.VISIBLE || view.getDisplay() == null
                || view.getDisplay().getDisplayId() != Display.DEFAULT_DISPLAY) {
            release();
            emit(null);
            return;
        }
        try {
            view.getDisplay().getRealSize(displaySize);
            if (bounds.right > displaySize.x || bounds.bottom > displaySize.y) {
                release();
                emit(null); // Invalid sample areas must not be interpreted as a black background.
                return;
            }
            SurfaceControl root = surfaces.current(view);
            if (!surfaces.valid(root)) { release(); emit(null); return; }
            if (backend != null && (!surfaces.same(root, ownedStopLayer) || !registeredBounds.equals(bounds))) {
                release(); // New surface/region gets a distinct listener epoch: queued samples cannot leak across.
                emit(null);
            }
            if (backend == null) {
                // Own a copy: ViewRoot may replace the native handle of its Java SurfaceControl.
                ownedStopLayer = surfaces.copy(root);
                if (!surfaces.valid(ownedStopLayer) || !surfaces.same(root, ownedStopLayer)) {
                    throw new IllegalStateException("unverified pill sampling stop layer");
                }
                long epoch = ++generation;
                backend = factory.create(command -> main.post(command), raw -> onMain(() -> deliver(epoch, raw)));
            }
            if (!registered || !registeredBounds.equals(bounds)) {
                registered = false;
                backend.stop();
                if (!surfaces.valid(ownedStopLayer)) throw new IllegalStateException("invalid stop layer");
                backend.start(ownedStopLayer, new Rect(bounds));
                registeredBounds.set(bounds);
                registered = true;
                Diagnostics.fact("pill background sampling", "compositor below island surface");
            }
        } catch (Throwable t) {
            failed = true; // Unsupported/blocked APIs fail closed; no reflection retries on every frame.
            release();
            emit(null);
            Diagnostics.fact("pill background sampling", "unavailable; outline retained in auto");
            XLog.once("pill background sampling", t);
        }
    }

    private void deliver(long epoch, Float raw) {
        if (destroyed || failed || !enabled || !registered || backend == null || epoch != generation) return;
        try {
            SurfaceControl root = surfaces.current(view);
            if (!view.isAttachedToWindow() || !view.isShown() || view.getWindowVisibility() != View.VISIBLE || !surfaces.valid(root)
                    || !surfaces.valid(ownedStopLayer) || !surfaces.same(root, ownedStopLayer)) {
                release();
                emit(null);
                return;
            }
            emit(raw != null && !Float.isNaN(raw) && !Float.isInfinite(raw) && raw >= 0f && raw <= 1f ? raw : null);
        } catch (Throwable t) {
            release();
            emit(null);
        }
    }

    private void release() {
        ++generation;
        registered = false;
        registeredBounds.setEmpty();
        Backend old = backend;
        backend = null;
        if (old != null) {
            try { old.stop(); } catch (Throwable ignored) { }
            try { old.destroy(); } catch (Throwable ignored) { }
        }
        SurfaceControl owned = ownedStopLayer;
        ownedStopLayer = null;
        if (owned != null) {
            try { surfaces.release(owned); } catch (Throwable ignored) { }
        }
    }

    private void emit(Float luma) {
        if (notified && Objects.equals(lastLuma, luma)) return;
        notified = true;
        lastLuma = luma;
        try { consumer.accept(luma); }
        catch (Throwable t) { XLog.once("pill background callback", t); }
    }

    private static Backend frameworkBackend(Executor executor, Consumer<Float> sample) {
        // The hidden superclass is resolved only here, inside refresh's guarded creation path.
        PillCompositionListener listener = new PillCompositionListener(executor, sample);
        return new Backend() {
            @Override public void start(SurfaceControl stopLayer, Rect bounds) { listener.start(stopLayer, bounds); }
            @Override public void stop() { listener.stop(); }
            @Override public void destroy() { listener.destroy(); }
        };
    }

    private static final class FrameworkSurfaces implements SurfaceAccess {
        private Method viewRoot, rootSurface, same;
        private Class<?> rootType;
        private Constructor<SurfaceControl> copy;

        @Override public SurfaceControl current(View view) throws Exception {
            if (viewRoot == null) viewRoot = View.class.getMethod("getViewRootImpl");
            Object root = viewRoot.invoke(view);
            if (root == null) return null;
            if (rootType != root.getClass()) {
                rootType = root.getClass();
                rootSurface = rootType.getMethod("getSurfaceControl");
            }
            return (SurfaceControl) rootSurface.invoke(root);
        }

        @Override public boolean valid(SurfaceControl surface) { return surface != null && surface.isValid(); }

        @Override public SurfaceControl copy(SurfaceControl surface) throws Exception {
            if (copy == null) copy = SurfaceControl.class.getConstructor(SurfaceControl.class, String.class);
            return copy.newInstance(surface, "DynamicIsland background sampling stop layer");
        }

        @Override public boolean same(SurfaceControl a, SurfaceControl b) throws Exception {
            if (a == null || b == null) return false;
            if (same == null) same = SurfaceControl.class.getMethod("isSameSurface", SurfaceControl.class);
            return Boolean.TRUE.equals(same.invoke(a, b));
        }

        @Override public void release(SurfaceControl surface) { surface.release(); }
    }
}
