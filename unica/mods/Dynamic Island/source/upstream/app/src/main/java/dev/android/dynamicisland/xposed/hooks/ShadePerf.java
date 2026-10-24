package dev.android.dynamicisland.xposed.hooks;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;
import dev.android.dynamicisland.xposed.XLog;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/**
 * Small System UI performance hooks that keep the shade smooth while the island runs: no repeated
 * frame-rate or blur calls, no GPU cache trimming each time the shade closes, remembered tile
 * animation frames and less log spam. Each hook only skips work that would be redone for nothing.
 * Hooks run on whichever thread System UI calls them from; shared state is thread-safe or main-thread only.
 */
public final class ShadePerf {
    private static final int MAX_FRAMES = 32;
    /** Frames larger than this (either side, in pixels) are not worth keeping. */
    private static final int MAX_FRAME_PX = 512;
    /** {@code ComponentCallbacks2.TRIM_MEMORY_UI_HIDDEN}. */
    private static final int TRIM_MEMORY_UI_HIDDEN = 20;
    private static final String BLUR_VIEW = "com.android.systemui.blur.SecQSNewBlurView";

    /** System UI log tags that are chatty enough to drop at the native log call. */
    private static final Set<String> NOISY_TAGS = new HashSet<>(Arrays.asList(
        "QuickPanelLog", "PanelSplitOpenAnimator", "View", "QuickTile", "SwipeToCollapseViewModel",
        "NowBarCardViewModel", "KeyguardUpdateMonitor", "NowBarGradientBlurController",
        "PluginLockMediatorImpl", "ShadeExpansionStateManager", "SecQuickSettingScene", "EditableContainer",
        "SecQpBlurController", "SpannableGrid", "BackgroundBlurDrawable", "SecPanelWindowBlurInteractor",
        "SecPanelWindowBlurBinder", "ExpandableNotifRow", "{OngoingActivityDataHelper}",
        "SecPanelSplitHelper", "{OngoingActivityController}", "ImmersiveScrollAnimator",
        "collectAsStateWithControl", "HoneySpace.OnGoingChip", "NotificationIconManager",
        "PriorityNotiScenarioManager", "LocalImageResolver", "NotificationPanelView", "KeyguardVisible",
        "StackScrollerController", "Tile.CustomTile", "LockscreenNotificationIconsOnlyController",
        "AODNotificationManager", "SamsungMumButtonViewModel", "NowBarUtils", "CentralSurfaces",
        "SamsungHomeStatusBarViewModelExt", "StackScroller", "SystemUIAnalytics",
        "SecPanelExpansionStateRepository", "SecMultiSIMPreferredBarViewModel", "ScrimController",
        "QuickTileBox", "PanelTransitionAnimator", "SamsungHomeStatusBarInteractor", "Highlights", "Bubbles",
        "SatelliteModeObserver", "TileLifecycleManager", "NavBarStateManager",
        "ImmersiveScrollPopOverAnimator", "KeyguardSecIndicationPolicy",
        "SecNotificationsQSContainerController", "HotspotTile", "BackActionInteractor",
        "BLASTBufferQueue_Java", "MultiWindowEdgeDetector", "ImeFocusController"));
    private static final String[] NOISY_TAG_PREFIXES = {"VRI[", "NowBarItemManager", "SamsungAnalytics", "QuickTile["};

    /** Blur views whose blur info is already cleared, so clearing again can be skipped. */
    private static final Map<View, Boolean> BLUR_CLEARED = new WeakHashMap<>();
    /** Small tile frames by "file#density", least recently used evicted first. */
    private static final Map<String, Drawable.ConstantState> FRAMES =
            new LinkedHashMap<String, Drawable.ConstantState>(16, 0.75f, true) {
                @Override
                protected boolean removeEldestEntry(Map.Entry<String, Drawable.ConstantState> eldest) {
                    return size() > MAX_FRAMES;
                }
            };
    /** Counts skipped UI_HIDDEN trims; only the first one is logged. */
    private static int skippedTrims;

    private ShadePerf() {
    }

    static void install(ClassLoader cl) {
        skipUnchangedFrameRate();
        keepGpuCachesOnShadeClose();
        dropDebugStacks(cl);
        dropLogNoise();
        skipRepeatedBlurReset();
        rememberTileFrames();
    }

    /** {@code View.setRequestedFrameRate} with the value the view already has only re-triggers frame-rate voting. */
    private static void skipUnchangedFrameRate() {
        try {
            XposedBridge.hookMethod(View.class.getDeclaredMethod("setRequestedFrameRate", Float.TYPE),
                    SafeHook.before("frame rate", p -> {
                        float requested = (Float) p.args[0];
                        if (Float.compare(requested, ((View) p.thisObject).getRequestedFrameRate()) == 0) {
                            p.setResult((Object) null);
                        }
                    }));
        } catch (Throwable t) {
            XLog.e("frame rate hook failed", t);
        }
    }

    /**
     * Swallows {@code WindowManagerGlobal.trimMemory(TRIM_MEMORY_UI_HIDDEN)}: System UI gets it each time
     * the shade closes and would free the GPU caches, which the next shade open must rebuild.
     */
    private static void keepGpuCachesOnShadeClose() {
        Refl.hookAll(Refl.findClass("android.view.WindowManagerGlobal", null), "trimMemory", SafeHook.before("ui hidden trim", p -> {
            if (!Integer.valueOf(TRIM_MEMORY_UI_HIDDEN).equals(p.args[0])) {
                return;
            }
            if (skippedTrims++ == 0) {
                XLog.i("skipping UI_HIDDEN trims");
            }
            p.setResult((Object) null);
        }));
    }

    /** Stubs out the QS animation's debug-caller stack capture and the panel state logger, costly on every shade frame. */
    private static void dropDebugStacks(ClassLoader cl) {
        Refl.hookAll(cl, "com.android.systemui.qs.animator.QSAnimView", "nowWithDebugCallers", SafeHook.before("qs debug callers", p -> p.setResult("")));
        Refl.hookAll(cl, "com.android.systemui.log.QuickPanelLoggerHelper$PanelStateLogger", "log", SafeHook.before("panel state log", p -> p.setResult(null)));
    }

    private static boolean isNoisy(String tag) {
        if (NOISY_TAGS.contains(tag)) {
            return true;
        }
        for (String prefix : NOISY_TAG_PREFIXES) {
            if (tag.startsWith(prefix)) {
                return true;
            }
        }
        return false;
    }

    /** {@code Log.println_native(bufId, priority, tag, msg)}: lines of info priority or lower from a noisy tag are dropped. */
    private static void dropLogNoise() {
        Refl.hookAll(Log.class, "println_native", SafeHook.before("log noise", p -> {
            boolean droppable = p.args.length >= 4
                    && p.args[1] instanceof Integer && (Integer) p.args[1] <= Log.INFO
                    && p.args[2] instanceof String && isNoisy((String) p.args[2]);
            if (droppable) {
                p.setResult(0);
            }
        }));
    }

    /** Clearing the QS blur view's blur info again ({@code semSetBlurInfo(null)}) forces a relayout for nothing. */
    private static void skipRepeatedBlurReset() {
        int hooked = Refl.hookAll(View.class, "semSetBlurInfo", SafeHook.before("blur reset", p -> {
            if (p.args.length != 1 || !BLUR_VIEW.equals(p.thisObject.getClass().getName())) {
                return;
            }
            View blurView = (View) p.thisObject;
            if (p.args[0] != null) {
                BLUR_CLEARED.remove(blurView);
            } else if (BLUR_CLEARED.put(blurView, Boolean.TRUE) != null) {
                p.setResult((Object) null);
            }
        }));
        if (hooked == 0) {
            XLog.i("semSetBlurInfo not found");
        }
    }

    /** Keeps the constant state of small {@code .webp} frames that {@code ResourcesImpl.loadDrawable} decodes. */
    private static void rememberTileFrames() {
        Class<?> resourcesImpl = Refl.findClass("android.content.res.ResourcesImpl", null);
        if (Refl.hookAll(resourcesImpl, "loadDrawable", SafeHook.after("tile frames", ShadePerf::keepFrame)) == 0) {
            XLog.i("ResourcesImpl.loadDrawable not found");
        }
    }

    private static void keepFrame(XC_MethodHook.MethodHookParam p) {
        if (!(p.getResult() instanceof BitmapDrawable)) {
            return;
        }
        TypedValue value = null;
        for (Object arg : p.args) {
            if (arg instanceof TypedValue) {
                value = (TypedValue) arg;
            }
        }
        if (value == null || value.string == null || !value.string.toString().endsWith(".webp")) {
            return;
        }
        BitmapDrawable frame = (BitmapDrawable) p.getResult();
        if (frame.getBitmap() == null || frame.getBitmap().getWidth() > MAX_FRAME_PX || frame.getBitmap().getHeight() > MAX_FRAME_PX) {
            return;
        }
        Drawable.ConstantState state = frame.getConstantState();
        if (state != null) {
            synchronized (FRAMES) {
                FRAMES.put(value.string + "#" + value.density, state);
            }
        }
    }
}
