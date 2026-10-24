package dev.android.dynamicisland.island;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import android.view.DisplayCutout;
import android.view.View;
import dev.android.dynamicisland.island.feedback.AudioLevels;
import dev.android.dynamicisland.island.view.IslandHost;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.island.window.ExitAnimationBridge;
import dev.android.dynamicisland.island.window.IslandWindow;
import dev.android.dynamicisland.island.window.StatusBarIconFader;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.XLog;
import java.util.LinkedHashSet;
import java.util.Set;

/**
 * Where the island lives: creates the overlay window once the status bar exists, keeps its
 * geometry in step with the display and decides from the System UI state whether the island may be
 * visible at all.
 */
final class IslandPlacement {
    /** If the status bar never reports attaching, the window is created without it after this long. */
    private static final long WINDOW_FALLBACK_MS = 15_000L;
    /** After unlocking, the island stays hidden this long and then reveals itself with an animation. */
    private static final long UNLOCK_REVEAL_DELAY_MS = 200;

    // StatusBarState values as reported by SystemUI.
    private static final int BAR_STATE_SHADE = 0;
    private static final int BAR_STATE_KEYGUARD = 1;
    private static final int BAR_STATE_SHADE_LOCKED = 2;

    /** The camera hole is only used when its centre is this close (dp) to the screen centre. */
    private static final float CUTOUT_CENTER_TOLERANCE_DP = 10.0f;
    /** The visible part of the camera hole as a fraction of its bounding box. */
    private static final float CUTOUT_VISIBLE_RATIO = 0.78f;
    /** Screens at least this wide (dp, short side) are treated as tablets. */
    /** How far in from the edge the island sits for the left and right positions, as a fraction of the screen width. */
    private static final float PILL_SIDE_FRACTION = 0.25f;
    private static final float TABLET_MIN_WIDTH_DP = 600.0f;
    /** Phones in landscape (wider than this aspect ratio) hide the island. */
    private static final float LANDSCAPE_ASPECT = 1.2f;
    /** Extra window height (dp) below the status bar centre so the resting pill and its shadow fit. */
    private static final float WINDOW_EXTRA_HEIGHT_DP = 55.0f;
    private static final float FALLBACK_STATUS_BAR_HEIGHT_DP = 30.0f;
    /** Vertical centre of the pill inside the status bar, as a fraction of its height. */
    private static final float STATUS_BAR_CENTER_RATIO = 0.53f;
    // Fallbacks (dp) for the exit-animation targets before the real geometry is known.
    private static final float MIN_EXIT_TARGET_WIDTH_DP = 90.0f;
    private static final float MIN_EXIT_TARGET_HEIGHT_DP = 30.0f;
    private static final float FALLBACK_CENTER_Y_PORTRAIT_DP = 22.0f;
    private static final float FALLBACK_CENTER_Y_LANDSCAPE_DP = 15.0f;

    private final Context ctx;
    private final float density;
    private final Handler main;
    private final IslandHost host;
    private final IslandWindow.Listener windowListener;
    private final ExitAnimationBridge exit;
    private final StatusBarIconFader fader;
    private final AudioLevels audio;

    // Null until the status bar exists.
    private View statusBarView;
    private IslandView view;
    private IslandWindow window;

    // System UI state that decides whether the island may be shown.
    private int barState;
    private boolean dozing;
    private boolean lastSuppressed;
    private int statusBarWindowState;
    private boolean landscapeSuppressed;
    /** Unlock just happened: the island stays hidden until the reveal timer fires. */
    private boolean revealPending;

    private int neededHeight;
    private float centerYPortrait = -1.0f;
    private float centerYLandscape = -1.0f;
    /** Packages whose chips the launcher animates into the island, from the last refresh. */
    private Set<String> exitPackages = new LinkedHashSet<>();
    private final RectF scratch = new RectF();
    private final int[] screenPos = new int[2];

    private final Runnable revealTimer = this::onRevealDelayElapsed;
    private final View.OnLayoutChangeListener statusBarLayoutListener;

    IslandPlacement(Context ctx, Handler main, ClassLoader classLoader, IslandHost host,
            IslandWindow.Listener windowListener, AudioLevels audio) {
        this.ctx = ctx;
        this.main = main;
        this.host = host;
        this.windowListener = windowListener;
        this.audio = audio;
        statusBarLayoutListener = (v, l, t, r, b, ol, ot, or, ob) -> main.post(this::updateGeometry);
        density = ctx.getResources().getDisplayMetrics().density;
        exit = new ExitAnimationBridge(classLoader);
        fader = new StatusBarIconFader(density);
    }

    // ---- accessors -----------------------------------------------------------------------------

    IslandView view() {
        return view;
    }

    IslandWindow window() {
        return window;
    }

    View statusBar() {
        return statusBarView;
    }

    /** True when both the window and its view exist. */
    boolean ready() {
        return window != null && view != null;
    }

    // ---- status bar and window -----------------------------------------------------------------

    void scheduleFallbackWindow() {
        main.postDelayed(this::createWindowWithoutStatusBar, WINDOW_FALLBACK_MS);
    }

    private void createWindowWithoutStatusBar() {
        if (window == null) {
            XLog.i("status bar view never attached, creating the island window without it");
            Diagnostics.fact("window", "created by fallback timer (status bar view not seen)");
            ensureWindow(true);
        }
    }

    void statusBarAttached(View statusBar) {
        if (statusBarView == statusBar) {
            return;
        }
        if (statusBarView != null) {
            statusBarView.removeOnLayoutChangeListener(statusBarLayoutListener);
        }
        statusBarView = statusBar;
        statusBar.addOnLayoutChangeListener(statusBarLayoutListener);
        fader.attach(statusBar);
        ensureWindow(false);
        updateGeometry();
    }

    void statusBarDetached(View statusBar) {
        if (statusBarView != statusBar) {
            return;
        }
        statusBar.removeOnLayoutChangeListener(statusBarLayoutListener);
        fader.detach();
        statusBarView = null;
    }

    void ensureWindow(boolean withoutStatusBar) {
        if (window != null || (statusBarView == null && !withoutStatusBar)) {
            return;
        }
        try {
            window = new IslandWindow(ctx, host, windowListener);
            view = window.view;
            window.setShown(false);
            updateGeometry();
            window.attach();
            if (!window.isAdded()) {
                XLog.event("island window could not be added, retrying on the next refresh");
                window = null;
                view = null;
                return;
            }
            updateSuppression();
            Diagnostics.fact("window", "created");
        } catch (Throwable t) {
            XLog.e("island window creation failed", t);
            window = null;
            view = null;
        }
    }

    // ---- system state --------------------------------------------------------------------------

    /** @param state SystemUI StatusBarState: 0 shade, 1 keyguard, 2 locked shade */
    void setBarState(int state) {
        if (barState == state) {
            return;
        }
        boolean wasLocked = barState == BAR_STATE_KEYGUARD || barState == BAR_STATE_SHADE_LOCKED;
        XLog.event("status bar state " + barState + " -> " + state);
        barState = state;
        if (wasLocked && state == BAR_STATE_SHADE) {
            revealPending = true;
            main.removeCallbacks(revealTimer);
            main.postDelayed(revealTimer, UNLOCK_REVEAL_DELAY_MS);
        }
        updateSuppression();
    }

    void setDozing(boolean value) {
        if (dozing != value) {
            XLog.event("dozing " + value);
            dozing = value;
            updateSuppression();
        }
    }

    void setStatusBarWindowState(int state) {
        if (statusBarWindowState != state) {
            statusBarWindowState = state;
            updateSuppression();
        }
    }

    private void onRevealDelayElapsed() {
        revealPending = false;
        updateSuppression();
        if (view != null) {
            view.reveal();
        }
    }

    void updateSuppression() {
        if (view == null) {
            return;
        }
        boolean locked = barState == BAR_STATE_KEYGUARD || barState == BAR_STATE_SHADE_LOCKED;
        boolean fullscreen = statusBarWindowState != 0;
        boolean suppressed = locked || dozing || fullscreen || landscapeSuppressed || revealPending;
        if (suppressed != lastSuppressed) {
            lastSuppressed = suppressed;
            XLog.event("island " + (suppressed ? "hidden" : "shown") + " (keyguard=" + locked + " dozing=" + dozing + " fullscreen=" + fullscreen
                    + " landscape=" + landscapeSuppressed + " unlockReveal=" + revealPending + ")");
        }
        view.setSuppressed(suppressed);
        onFrame();
    }

    // ---- geometry ------------------------------------------------------------------------------

    void updateGeometry() {
        if (window == null) {
            return;
        }
        Rect bounds = window.windowBounds();
        int width = bounds.width();
        int height = bounds.height();
        if (width <= 0 || height <= 0) {
            return;
        }
        float centerX = pillCenterX(width);
        float centerY = pillCenterY();
        // where the camera hole is: found from the cutout, or set by hand (then the island grows from that spot)
        boolean onHole = ModuleSettings.pillAnchor() == ModuleSettings.ANCHOR_AUTO && ModuleSettings.pillXDp() == 0 && ModuleSettings.pillYDp() == 0;
        boolean manualHole = ModuleSettings.holeMode() == ModuleSettings.HOLE_MANUAL;
        float holeCenterX = (width / 2.0f) + (manualHole ? ModuleSettings.holeXDp() * density : 0.0f);
        float holeCenterY = statusBarCenterY() + (manualHole ? ModuleSettings.holeYDp() * density : 0.0f);
        if (onHole && manualHole) {
            centerX = holeCenterX;
            centerY = holeCenterY;
        }
        boolean landscape = width > height;
        if (landscape) {
            centerYLandscape = centerY;
        } else {
            centerYPortrait = centerY;
        }
        boolean tablet = Math.min(width, height) / density >= TABLET_MIN_WIDTH_DP;
        landscapeSuppressed = !tablet && width > height * LANDSCAPE_ASPECT;
        // the island hugs the camera hole only where it sits on it; moved anywhere else it is a plain pill
        float holeD = 0.0f;
        if (onHole) {
            switch (ModuleSettings.holeMode()) {
                case ModuleSettings.HOLE_MANUAL:
                    holeD = ModuleSettings.holeDiameterDp() * density;
                    break;
                case ModuleSettings.HOLE_NONE:
                    break;
                default:
                    holeD = cameraHoleDiameter(centerX);
                    break;
            }
        }
        view.setPillSize(ModuleSettings.pillHeightPercent(), ModuleSettings.pillMinWidthDp(), ModuleSettings.pillMaxWidthDp());
        view.setGeometry(width, centerX, centerY, holeD, tablet);
        // while the settings page is open the hole set by hand is drawn as a ring, to line it up with the real camera
        boolean marker = manualHole && ModuleSettings.placementPreviewActive();
        view.setHoleMarker(marker ? holeCenterX : -1.0f, holeCenterY, ModuleSettings.holeDiameterDp() * density);
        applyWindowHeight();
        updateSuppression();
        pushExitTargets(false);
    }

    /** Where the island's centre is horizontally: the middle, a quarter in from either side, plus the user's shift. */
    private float pillCenterX(int width) {
        float base;
        switch (ModuleSettings.pillAnchor()) {
            case ModuleSettings.ANCHOR_LEFT:
                base = width * PILL_SIDE_FRACTION;
                break;
            case ModuleSettings.ANCHOR_RIGHT:
                base = width * (1.0f - PILL_SIDE_FRACTION);
                break;
            default:
                base = width / 2.0f;
                break;
        }
        return base + (ModuleSettings.pillXDp() * density);
    }

    /** The status bar's centre line plus the user's vertical shift. */
    private float pillCenterY() {
        return statusBarCenterY() + (ModuleSettings.pillYDp() * density);
    }

    /** Diameter of the visible camera hole when it sits at the screen centre, else 0. */
    private float cameraHoleDiameter(float screenCenterX) {
        DisplayCutout cutout = window.cutout();
        Rect top = cutout == null ? null : cutout.getBoundingRectTop();
        if (top == null || top.isEmpty()
                || Math.abs(top.exactCenterX() - screenCenterX) >= density * CUTOUT_CENTER_TOLERANCE_DP) {
            return 0.0f;
        }
        return Math.min(top.width(), top.height()) * CUTOUT_VISIBLE_RATIO;
    }

    /** Vertical centre of the status bar contents (where the camera hole is), in screen pixels. */
    private float statusBarCenterY() {
        if (statusBarView != null) {
            int id = statusBarView.getResources().getIdentifier("status_bar_contents", "id", "com.android.systemui");
            View contents = id == 0 ? null : statusBarView.findViewById(id);
            if (contents != null && contents.getHeight() > 0 && contents.isAttachedToWindow()) {
                contents.getLocationOnScreen(screenPos);
                return screenPos[1] + contents.getHeight() / 2.0f;
            }
        }
        int resId = ctx.getResources().getIdentifier("status_bar_height", "dimen", "android");
        float barHeight = resId != 0 ? ctx.getResources().getDimension(resId) : FALLBACK_STATUS_BAR_HEIGHT_DP * density;
        return STATUS_BAR_CENTER_RATIO * barHeight;
    }

    void setNeededHeight(int px) {
        neededHeight = px;
        applyWindowHeight();
    }

    private void applyWindowHeight() {
        if (window == null) {
            return;
        }
        int height = Math.max(neededHeight, Math.round(pillCenterY() + density * WINDOW_EXTRA_HEIGHT_DP));
        if (view != null && view.isExpanded()) {
            height = Math.max(height, window.windowBounds().height());
        }
        window.setWindowHeight(height);
    }

    // ---- launcher exit animation ---------------------------------------------------------------

    void setOngoingActivityController(Object controller) {
        exit.setOngoingActivityController(controller);
        exitPackages = new LinkedHashSet<>();
    }

    /** Remembers the packages of the latest refresh and tells the launcher when they changed. */
    void updateExitPackages(Set<String> packages) {
        if (!packages.equals(exitPackages)) {
            exitPackages = packages;
            pushExitTargets(false);
        }
    }

    /** Tells the launcher where the island rests (portrait and landscape), see {@link ExitAnimationBridge}. */
    void pushExitTargets(boolean force) {
        if (!ready()) {
            return;
        }
        Rect bounds = window.windowBounds();
        int shortSide = Math.min(bounds.width(), bounds.height());
        int longSide = Math.max(bounds.width(), bounds.height());
        view.getRestingPillBounds(scratch);
        float pillWidth = Math.max(scratch.width(), density * MIN_EXIT_TARGET_WIDTH_DP);
        float pillHeight = Math.max(scratch.height(), density * MIN_EXIT_TARGET_HEIGHT_DP);
        float portraitY = centerYPortrait > 0.0f ? centerYPortrait : FALLBACK_CENTER_Y_PORTRAIT_DP * density;
        float landscapeY = centerYLandscape > 0.0f ? centerYLandscape : FALLBACK_CENTER_Y_LANDSCAPE_DP * density;
        exit.push(exitPackages, pillRect(shortSide, portraitY, pillWidth, pillHeight),
                pillRect(longSide, landscapeY, pillWidth, pillHeight), force);
    }

    private static Rect pillRect(float screenWidth, float centerY, float pillWidth, float pillHeight) {
        float halfW = pillWidth / 2.0f;
        float halfH = pillHeight / 2.0f;
        return new Rect(Math.round(screenWidth / 2.0f - halfW), Math.round(centerY - halfH),
                Math.round(screenWidth / 2.0f + halfW), Math.round(halfH + centerY));
    }

    // ---- per frame -----------------------------------------------------------------------------

    /** After every island frame: keeps the touch region, status-bar icon fading and audio capture in sync. */
    void onFrame() {
        try {
            syncFrame();
        } catch (Throwable t) {
            XLog.once("IslandController.onIslandFrame", t);
        }
    }

    private void syncFrame() {
        if (!ready()) {
            return;
        }
        window.invalidateTouchRegion();
        boolean hidden = view.isFullyHidden();
        window.setShown(true);
        if (!view.shadePulled()) {
            view.getCoverageBounds(scratch);
            fader.update(scratch, !hidden && view.visibleAlpha() > 0.3f);
        }
        audio.setActive(view.needsAudio());
    }
}
