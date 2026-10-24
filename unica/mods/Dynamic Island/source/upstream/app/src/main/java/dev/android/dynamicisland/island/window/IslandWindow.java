package dev.android.dynamicisland.island.window;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.Region;
import android.hardware.display.DisplayManager;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.Gravity;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.FrameLayout;
import dev.android.dynamicisland.island.view.IslandHost;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.xposed.XLog;
import java.lang.reflect.Field;

/**
 * The overlay window that hosts the island: a {@code TYPE_STATUS_BAR_ADDITIONAL} window inside the
 * SystemUI process containing a blur layer, the {@link IslandView} and a layer for remote views.
 *
 * <p>The window is as tall as the island currently needs and only the island's own region takes
 * touches (see {@link TouchableRegionHook}). Whole-window fade/scale is done on the surface ({@link SurfaceFader}) so
 * the exit animation does not need a re-layout. Main thread only.
 */
public final class IslandWindow {
    /** Hidden WindowManager.LayoutParams.privateFlags: show for all users | no move animation | trusted overlay. */
    private static final int PRIVATE_FLAGS = (1 << 4) | (1 << 6) | (1 << 29);
    /** Window flags: not focusable | not touch modal | layout in screen | split touch | hardware accelerated. */
    private static final int WINDOW_FLAGS = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
            | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL
            | WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN
            | WindowManager.LayoutParams.FLAG_SPLIT_TOUCH
            | WindowManager.LayoutParams.FLAG_HARDWARE_ACCELERATED;
    /** WindowManager.LayoutParams.TYPE_STATUS_BAR_ADDITIONAL (hidden): above the status bar. */
    private static final int TYPE_STATUS_BAR_ADDITIONAL = 2041;

    final Context context;
    public final IslandView view;
    private final WindowManager windowManager;
    private final WindowManager.LayoutParams params;
    private final Root root;
    /** Region (window coordinates) that takes touches; everything else falls through to the app below. */
    private final Region touchRegion = new Region();
    private final Region latestRegion = new Region();
    private final SurfaceFader surfaceFader = new SurfaceFader();
    /** Whether the root view has been added to the WindowManager. */
    private boolean added;
    private boolean watchingOutside;
    private int requestedHeight;

    /** Callbacks for changes the window cannot handle itself. */
    public interface Listener {
        void onWindowConfigurationChanged();

        void onWindowInsetsChanged();
    }

    public IslandWindow(Context systemUiContext, IslandHost host, Listener listener) {
        context = createWindowContext(systemUiContext);
        windowManager = context.getSystemService(WindowManager.class);

        view = new IslandView(context, host);
        BlurLayer blur = new BlurLayer(context);
        view.setBlurSink(blur);
        FrameLayout remoteLayer = new FrameLayout(context);
        remoteLayer.setClipChildren(false);
        view.setRemoteLayer(remoteLayer);

        root = new Root(context, listener);
        root.setClipChildren(false);
        root.addView(blur, matchParent());
        root.addView(view, matchParent());
        root.addView(remoteLayer, matchParent());

        params = createLayoutParams();
        TouchableRegionHook.install(root, touchRegion);
        root.getViewTreeObserver().addOnPreDrawListener(this::onPreDraw);
    }

    private static Context createWindowContext(Context systemUiContext) {
        Display display = systemUiContext.getSystemService(DisplayManager.class).getDisplay(Display.DEFAULT_DISPLAY);
        try {
            return systemUiContext.createWindowContext(display, TYPE_STATUS_BAR_ADDITIONAL, null);
        } catch (Throwable t) {
            XLog.e("createWindowContext failed, falling back to display context", t);
            return systemUiContext.createDisplayContext(display);
        }
    }

    private static FrameLayout.LayoutParams matchParent() {
        return new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
    }

    private static WindowManager.LayoutParams createLayoutParams() {
        WindowManager.LayoutParams lp = new WindowManager.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 1, TYPE_STATUS_BAR_ADDITIONAL, WINDOW_FLAGS, PixelFormat.TRANSLUCENT);
        lp.gravity = Gravity.TOP | Gravity.LEFT;
        lp.layoutInDisplayCutoutMode = WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_ALWAYS;
        lp.setFitInsetsTypes(0);
        lp.windowAnimations = 0;
        lp.setTitle("DynamicIsland");
        try {
            Field privateFlags = WindowManager.LayoutParams.class.getField("privateFlags");
            privateFlags.setInt(lp, privateFlags.getInt(lp) | PRIVATE_FLAGS);
        } catch (Throwable t) {
            XLog.e("privateFlags not set", t);
        }
        return lp;
    }

    // ---- lifecycle -----------------------------------------------------------------------------

    public void attach() {
        if (added) {
            return;
        }
        try {
            windowManager.addView(root, params);
            added = true;
            XLog.i("island window added, height=" + params.height);
        } catch (Throwable t) {
            XLog.e("addView failed", t);
        }
    }

    public boolean isAdded() {
        return added;
    }

    void detach() {
        if (!added) {
            return;
        }
        try {
            windowManager.removeViewImmediate(root);
        } catch (Throwable t) {
            XLog.e("removeView failed", t);
        }
        added = false;
    }

    boolean isAttached() {
        return added;
    }

    public void setShown(boolean shown) {
        int visibility = shown ? View.VISIBLE : View.GONE;
        if (root.getVisibility() != visibility) {
            root.setVisibility(visibility);
        }
    }

    // ---- window geometry and touch -------------------------------------------------------------

    /** Resizes the window to the island's current extent (at least 1 px so the window stays valid). */
    public void setWindowHeight(int height) {
        if (height == requestedHeight) {
            return;
        }
        requestedHeight = height;
        params.height = Math.max(1, height);
        pushLayout();
    }

    public void setWatchOutsideTouch(boolean watch) {
        if (watchingOutside == watch) {
            return;
        }
        watchingOutside = watch;
        if (watch) {
            params.flags |= WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH;
        } else {
            params.flags &= ~WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH;
        }
        pushLayout();
    }

    /** Call when the island's shape changed; re-reads the touchable region on the next frame. */
    public void invalidateTouchRegion() {
        view.getTouchRegion(latestRegion);
        if (!latestRegion.equals(touchRegion)) {
            touchRegion.set(latestRegion);
            root.invalidate();
        }
    }

    private void pushLayout() {
        if (!added) {
            return;
        }
        try {
            windowManager.updateViewLayout(root, params);
        } catch (Throwable t) {
            XLog.e("updateViewLayout failed", t);
        }
    }

    // ---- reply bar -----------------------------------------------------------------------------

    private ReplyBar replyBar;

    /** What the reply bar reports; see {@link ReplyBar}. */
    public interface ReplyListener extends ReplyBar.Listener {
    }

    /** Shows the text field for answering below the island's cards; false when the window cannot be added. */
    public boolean showReply(CharSequence hint, CharSequence sendLabel, ReplyListener listener) {
        hideReply();
        try {
            ReplyBar bar = new ReplyBar(context, hint, sendLabel, listener);
            float density = context.getResources().getDisplayMetrics().density;
            int margin = Math.round(density * 12.0f);
            WindowManager.LayoutParams lp = new WindowManager.LayoutParams(
                    windowBounds().width() - (2 * margin), ViewGroup.LayoutParams.WRAP_CONTENT, TYPE_STATUS_BAR_ADDITIONAL,
                    WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL | WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN
                            | WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH | WindowManager.LayoutParams.FLAG_HARDWARE_ACCELERATED,
                    PixelFormat.TRANSLUCENT);
            // like the input line of a chat app: at the bottom, riding on top of the keyboard where it is seen
            lp.gravity = Gravity.BOTTOM | Gravity.CENTER_HORIZONTAL;
            lp.y = Math.round(density * 8.0f);
            lp.setFitInsetsTypes(WindowInsets.Type.ime() | WindowInsets.Type.navigationBars());
            lp.softInputMode = WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE | WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_VISIBLE;
            lp.windowAnimations = 0;
            lp.setTitle("DynamicIslandReply");
            Field privateFlags = WindowManager.LayoutParams.class.getField("privateFlags");
            privateFlags.setInt(lp, privateFlags.getInt(lp) | PRIVATE_FLAGS);
            windowManager.addView(bar, lp);
            replyBar = bar;
            bar.post(bar::focusField);
            return true;
        } catch (Throwable t) {
            XLog.e("reply bar not shown", t);
            replyBar = null;
            return false;
        }
    }

    public void hideReply() {
        ReplyBar bar = replyBar;
        replyBar = null;
        if (bar != null) {
            try {
                windowManager.removeViewImmediate(bar);
            } catch (Throwable t) {
                XLog.e("reply bar not removed", t);
            }
        }
    }

    public boolean isReplying() {
        return replyBar != null;
    }

    // ---- surface fade --------------------------------------------------------------------------

    /**
     * Fades and scales the whole window surface about the pivot (px, py).
     *
     * @return false if the surface transaction is unavailable (the caller should fade another way)
     */
    public boolean setSurfaceFade(float alpha, float scale, float px, float py) {
        if (surfaceFader.set(alpha, scale, px, py)) {
            applySurfaceFade();
        }
        return !surfaceFader.hasFailed();
    }

    void applySurfaceFade() {
        if (added) {
            surfaceFader.apply(root);
        }
    }

    /** Re-applies the surface fade before each frame: the surface can be recreated and lose it. */
    public boolean onPreDraw() {
        if (!surfaceFader.isNeutral()) {
            applySurfaceFade();
        }
        return true;
    }

    // ---- display info --------------------------------------------------------------------------

    public Rect windowBounds() {
        return windowManager.getCurrentWindowMetrics().getBounds();
    }

    public DisplayCutout cutout() {
        WindowInsets insets = root.getRootWindowInsets();
        if (insets != null && insets.getDisplayCutout() != null) {
            return insets.getDisplayCutout();
        }
        try {
            Display display = context.getDisplay();
            return display != null ? display.getCutout() : null;
        } catch (Throwable ignored) {
            return null;
        }
    }

    int rotation() {
        try {
            Display display = context.getDisplay();
            return display != null ? display.getRotation() : Surface.ROTATION_0;
        } catch (Throwable ignored) {
            return Surface.ROTATION_0;
        }
    }

    /** Root view of the window; forwards configuration and inset changes to the {@link Listener}. */
    private static final class Root extends FrameLayout {
        private final Listener listener;

        Root(Context context, Listener listener) {
            super(context);
            this.listener = listener;
        }

        @Override
        protected void onConfigurationChanged(Configuration newConfig) {
            super.onConfigurationChanged(newConfig);
            listener.onWindowConfigurationChanged();
        }

        @Override
        public WindowInsets onApplyWindowInsets(WindowInsets insets) {
            WindowInsets result = super.onApplyWindowInsets(insets);
            post(listener::onWindowInsetsChanged);
            return result;
        }
    }
}
