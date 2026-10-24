package dev.android.dynamicisland.xposed.hooks;

import android.app.Application;
import android.app.Instrumentation;
import android.content.pm.PackageInfo;
import android.content.res.Resources;
import android.os.Build;
import android.view.View;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import dev.android.dynamicisland.island.IslandController;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;
import dev.android.dynamicisland.xposed.XLog;
import java.util.Set;

/**
 * Wires System UI to the island. It captures the stock controllers the island reads (ongoing
 * activities, calls, cast), forwards shade / lock-screen / window state, and keeps Samsung's own
 * ongoing-activity chips from appearing, since the island replaces them. Controllers that were built
 * before {@link IslandController} exists are kept in static fields and handed over when it is created.
 * Entry point: {@link #install(ClassLoader)}, called once from the module entry in the System UI process.
 */
public final class SystemUiHooks {
    private static final String SUI = "com.android.systemui";
    private static final String OA = SUI + ".statusbar.phone.ongoingactivity.";
    private static final String OA_CONTROLLER = OA + "OngoingActivityController";
    private static final String OA_DATA_HELPER = OA + "OngoingActivityDataHelper";
    private static final String CHIP_ANIMATION_CONTROLLER = OA + "ChipAnimationController";
    private static final String CALL_PACKAGE = SUI + ".statusbar.phone.ongoingcall.";
    private static final String SAMSUNG_CALL_CONTROLLER = CALL_PACKAGE + "SamsungOngoingCallController";
    private static final String AOSP_CALL_CONTROLLER = CALL_PACKAGE + "OngoingCallController";
    private static final String STATUS_BAR_BINDER = SUI + ".statusbar.pipeline.shared.ui.binder.HomeStatusBarViewBinderImpl";
    private static final String STATUS_BAR_FRAGMENT = SUI + ".statusbar.phone.fragment.CollapsedStatusBarFragment";
    private static final String STATUS_BAR_VIEW_CONTROLLER = SUI + ".statusbar.phone.PhoneStatusBarViewController";
    private static final String CAST_PACKAGE = SUI + ".statusbar.phone.ongoingcast.";
    /** Call controller methods after which the call chip state may have changed. */
    private static final String[] CALL_CHANGE_METHODS = {"sendStateChangeEvent", "updateChip", "removeChipInfo"};
    /** {@code OngoingActivityController} methods that add, update or remove an activity. */
    private static final String[] OA_CONTROLLER_CHANGES = {"onAsyncInflationFinished", "OaDataListChanged", "add$1", "update", "update$1$1", "remove", "updateMediaChipData", "removeOngoingActivityData", "killGhost"};
    private static final String[] OA_DATA_HELPER_CHANGES = {"removeOngoingActivityByKey", "updateOngoingList", "notifyUpdateItemNowbarObservers", "notifyRemoveItemNowbarObservers", "setBaseActivityComponentName", "notifyRankingStateChanged"};

    // State captured before the island controller exists; every writer also forwards to the controller.
    private static volatile int barState;
    private static volatile boolean dozing;
    private static volatile int windowState;
    private static volatile Object oaController;
    private static volatile Object callController;
    private static volatile Object castBundle;
    private static volatile Object castController;
    private static volatile Object flashlightController;

    /** Resource ids of the stock chip views, resolved once the System UI resources are available. */
    private static int idCapsule;
    private static int idCapsuleContainer;
    private static int idChipsContainer;
    private static int idCastChip;
    private static int idCallChip;

    private SystemUiHooks() {
    }

    public static void install(ClassLoader cl) {
        // every group on its own: one that cannot attach on a System UI build must not take the others with it
        runGroup("init", () -> hookInit(cl));
        runGroup("status bar view", () -> hookStatusBarView(cl));
        // One UI 8 and 9 hide the chips through the status bar binder; One UI 7 has none and its own chip controllers
        boolean binderStyle = Refl.hasClass(STATUS_BAR_BINDER, cl);
        Diagnostics.fact("chip style", binderStyle ? "binder (One UI 8+)" : "fragment (One UI 7)");
        runGroup("capsule hiding", () -> {
            if (binderStyle) {
                hookCapsuleHiding(cl);
            } else {
                hookCapsuleHidingOneUi7(cl);
            }
        });
        runGroup("data changes", () -> hookDataChanges(cl));
        runGroup("calls", () -> hookCalls(cl));
        runGroup("cast", () -> hookCast(cl));
        runGroup("flashlight", () -> hookFlashlight(cl));
        runGroup("signals", () -> hookSignals(cl));
        // Android 16 only: newer System UI builds (One UI 9 / SDK 37) ship the AOSP chip classes too,
        // but hooking them there is exactly what the original module avoided.
        // One UI 7 has no Samsung call controller either: it uses the same AOSP one
        if (Build.VERSION.SDK_INT == 36 || !binderStyle) {
            runGroup("aosp call chips", () -> hookAndroid16Chips(cl));
        }
        // AOSP-style System UI (Nothing OS): no Samsung ongoing-activity classes, the stock chips are the duplicates
        if (!Refl.hasClass(OA_CONTROLLER, cl) && AospChips.present(cl)) {
            Diagnostics.fact("stock chips", "AOSP chip bundle");
            castBundle = AospChips.feed(); // the island reads the models from it once it exists
            runGroup("aosp stock chips", () -> AospChips.install(cl, () -> callController != null));
        }
        runGroup("shade performance", () -> ShadePerf.install(cl));
        runGroup("shade live cards", () -> ShadeLiveCards.install(cl));
        runGroup("duplicate originals", () -> HideDuplicated.install(cl));
        // the blurred shade cards and the media player takeover are built on rows that One UI 8 introduced
        boolean blurRows = declares(cl, "com.android.systemui.statusbar.notification.row.ActivatableNotificationView", "isBlurBackground");
        Diagnostics.fact("shade rows", blurRows ? "blur cards (One UI 8+)" : "stock rows (One UI 7): card theme and media takeover off");
        if (blurRows) {
            runGroup("shade card theme", () -> ShadeCardTheme.install(cl));
            runGroup("shade media player", () -> ShadeMediaPlayer.install(cl));
        }
        runGroup("heads-up", () -> HeadsUpHooks.install(cl));
        reportUnattached();
    }

    /** Tells {@link AospChips} whether the island shows the call, so that the stock call chip can go. */
    interface CallCoverage {
        boolean covered();
    }

    /** True when {@code className} exists and declares a method called {@code method}. */
    private static boolean declares(ClassLoader cl, String className, String method) {
        Class<?> cls = Refl.hasClass(className, cl) ? Refl.findClass(className, cl) : null;
        if (cls == null) {
            return false;
        }
        for (java.lang.reflect.Method m : cls.getDeclaredMethods()) {
            if (m.getName().equals(method)) {
                return true;
            }
        }
        return false;
    }

    private static void reportUnattached() {
        Set<String> failed = Refl.hookFailures();
        Diagnostics.fact("hooks not attached", failed.isEmpty() ? "none" : failed.toString());
        Set<String> older = Refl.fallbacksUsed();
        Diagnostics.fact("older names used", older.isEmpty() ? "none" : older.toString());
        String installed = "SystemUI hooks installed (SDK " + Build.VERSION.SDK_INT + ")";
        XLog.i(failed.isEmpty() ? installed : installed + ", " + failed.size() + " hook(s) did not attach: " + failed);
    }

    /** Runs one hook group; a failure is recorded for the diagnostics and does not reach the next group. */
    private static void runGroup(String name, Runnable group) {
        String stage = "hook group: " + name;
        try {
            group.run();
            Diagnostics.stage(stage, true, null);
        } catch (Throwable t) {
            Diagnostics.stage(stage, false, t);
            XLog.e("hook group " + name + " failed", t);
        }
    }

    /** Asks the island to re-read the stock ongoing-activity state, if it is already running. */
    public static void refresh() {
        IslandController island = IslandController.get();
        if (island != null) {
            island.requestRefresh();
        }
    }

    // ---- island start-up -----------------------------------------------------------------------

    /**
     * Creates the {@link IslandController} when the System UI application is about to start (it needs a
     * live Application) and gives it everything the hooks below captured earlier.
     */
    private static void hookInit(ClassLoader cl) {
        XposedBridge.hookAllMethods(Instrumentation.class, "callApplicationOnCreate",
                SafeHook.before("app onCreate", param -> startIsland(cl, param)));
    }

    private static void startIsland(ClassLoader cl, XC_MethodHook.MethodHookParam p) {
        if (!(p.args[0] instanceof Application)) {
            return;
        }
        Application app = (Application) p.args[0];
        if (!SUI.equals(app.getPackageName())) {
            return;
        }
        resolveIds(app.getResources());
        describeSystemUi(app);
        IslandController island = IslandController.init(app, cl);
        Diagnostics.stage("controller", true, null);
        Diagnostics.publish(app);
        if (oaController != null) {
            island.setOngoingActivityController(oaController);
        }
        if (callController != null) {
            island.setCallController(callController);
        }
        if (castController != null) {
            island.setCastController(castController);
        }
        if (castBundle != null) {
            island.setCastBundle(castBundle);
        }
        if (flashlightController != null) {
            island.setFlashlightController(flashlightController);
        }
        island.setBarState(barState);
        island.setDozing(dozing);
        island.setStatusBarWindowState(windowState);
    }

    /** Records which System UI build the module runs in, for the report. */
    private static void describeSystemUi(Application app) {
        Diagnostics.fact("one ui", oneUiVersion() + " (android sdk " + Build.VERSION.SDK_INT + ")");
        try {
            PackageInfo info = app.getPackageManager().getPackageInfo(SUI, 0);
            Diagnostics.fact("system ui", info.versionName + " (" + info.getLongVersionCode() + ")");
        } catch (Throwable t) {
            Diagnostics.fact("system ui", "unknown: " + t.getClass().getSimpleName());
        }
    }

    /** The One UI version Samsung keeps in a system property as a number (80000 = 8.0, 70100 = 7.1), or "unknown". */
    private static String oneUiVersion() {
        try {
            Object value = Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class)
                    .invoke(null, "ro.build.version.oneui", "");
            String text = String.valueOf(value);
            if (text.matches("\\d{5,6}")) {
                int number = Integer.parseInt(text);
                return (number / 10000) + "." + ((number % 10000) / 100) + " (" + text + ")";
            }
        } catch (Throwable ignored) {
            // not a Samsung build, or the property is hidden
        }
        return "unknown";
    }

    private static void resolveIds(Resources res) {
        idCapsule = res.getIdentifier("ongoing_activity_capsule", "id", SUI);
        idCapsuleContainer = res.getIdentifier("samsung_ongoing_activity_chip_container", "id", SUI);
        idChipsContainer = res.getIdentifier("samsung_status_bar_chips_container", "id", SUI);
        idCastChip = res.getIdentifier("samsung_ongoing_cast_chip", "id", SUI);
        idCallChip = res.getIdentifier("ongoing_call_chip", "id", SUI);
    }

    // ---- status bar view -----------------------------------------------------------------------

    /** The island positions itself relative to the status bar view, so it is told when one comes and goes. */
    private static void hookStatusBarView(ClassLoader cl) {
        Refl.hookAll(cl, STATUS_BAR_VIEW_CONTROLLER, "onViewAttached",
                SafeHook.after("onViewAttached", param -> {
                    View bar = statusBarViewOf(param);
                    IslandController island = IslandController.get();
                    if (bar != null && island != null) {
                        island.onStatusBarViewAttached(bar);
                    }
                }));
        Refl.hookAll(cl, STATUS_BAR_VIEW_CONTROLLER, "onViewDetached",
                SafeHook.after("onViewDetached", param -> {
                    View bar = statusBarViewOf(param);
                    IslandController island = IslandController.get();
                    if (bar != null && island != null) {
                        island.onStatusBarViewDetached(bar);
                    }
                }));
    }

    private static View statusBarViewOf(XC_MethodHook.MethodHookParam p) {
        Object view = Refl.get(p.thisObject, "mView");
        return view instanceof View ? (View) view : null;
    }

    // ---- hiding the stock chips ----------------------------------------------------------------

    /**
     * Keeps Samsung's ongoing-activity chip and the animations that would reveal it out of the status
     * bar: the island shows the same information, so the stock chip would be a duplicate.
     */
    private static void hookCapsuleHiding(ClassLoader cl) {
        Refl.hookAll(cl, STATUS_BAR_BINDER, "adjustVisibility",
                SafeHook.before("adjustVisibility", param -> goneIfChipView(param, idCapsuleContainer, idChipsContainer, idCastChip, idCallChip)));
        Refl.hookAll(cl, OA_CONTROLLER, "updateParentViewVisibility", SafeHook.before("updateParentViewVisibility", SystemUiHooks::keepChipParentGone));
        Refl.hookAll(cl, OA_CONTROLLER, "isChipExpandCondition", SafeHook.before("isChipExpandCondition", param -> param.setResult(Boolean.FALSE)));
        for (String animation : new String[]{"handleOnGoingActivityChipAnimation", "clockViewNudgeAnimation", "handleOnGoingCallChipAnimation"}) {
            Refl.hookAll(cl, CHIP_ANIMATION_CONTROLLER, animation, SafeHook.before(animation, param -> param.setResult(null)));
        }
        Refl.hookAll(cl, CHIP_ANIMATION_CONTROLLER, "animateChipShow", SafeHook.before("animateChipShow", SystemUiHooks::keepCapsuleGone));
        Refl.hookAll(cl, OA_CONTROLLER, "sendChipInfoForAppExitAnimation", SafeHook.before("sendChipInfoForAppExitAnimation", SystemUiHooks::redirectExitAnimation));
    }

    /**
     * One UI 7 and 8.0: the capsule shows when {@code OngoingActivityController.shouldVisible} says so (the status bar fragment
     * asks it) and is animated in by the chip animation controller, so both are stopped for the capsule view.
     */
    private static void hookCapsuleHidingOneUi7(ClassLoader cl) {
        Refl.hookAll(cl, OA_CONTROLLER, "shouldVisible", SafeHook.before("shouldVisible", param -> param.setResult(Boolean.FALSE)));
        for (String show : new String[]{"animateChipShow", "showView"}) {
            Refl.hookAll(cl, CHIP_ANIMATION_CONTROLLER, show, SafeHook.before(show, SystemUiHooks::keepCapsuleGone));
        }
        for (String nudge : new String[]{"nudgeAnimation", "clockViewNudgeAnimation"}) {
            Refl.hookAll(cl, CHIP_ANIMATION_CONTROLLER, nudge, SafeHook.before(nudge, param -> param.setResult(null)));
        }
        // One UI 8.0 has no status bar binder either, but its controller sets the capsule's parent visible from many places
        // (media changes, heads-up, state and configuration changes) without asking shouldVisible
        Refl.hookAll(cl, OA_CONTROLLER, "updateParentViewVisibility", SafeHook.before("updateParentViewVisibility", SystemUiHooks::keepChipParentGone));
    }

    /**
     * For hooks on {@code fn(view, ...)}: when the first argument is a view with one of the given stock
     * chip ids, its animation is cancelled, it is forced {@code GONE} and the original call is skipped.
     */
    private static void goneIfChipView(XC_MethodHook.MethodHookParam p, int... chipIds) {
        if (p.args.length < 1 || !(p.args[0] instanceof View)) {
            return;
        }
        View view = (View) p.args[0];
        if (view.getId() == View.NO_ID) {
            return;
        }
        for (int chipId : chipIds) {
            if (view.getId() == chipId) {
                view.animate().cancel();
                view.setVisibility(View.GONE);
                p.setResult(null);
                return;
            }
        }
    }

    /**
     * Replaces {@code OngoingActivityController.updateParentViewVisibility}: the chip's parent stays
     * hidden, the controller's "chip showing" flow is told "no", and the island re-reads the state.
     */
    private static void keepChipParentGone(XC_MethodHook.MethodHookParam p) {
        Object parent = Refl.get(p.thisObject, "mParentView");
        if (parent instanceof View) {
            View parentView = (View) parent;
            parentView.animate().cancel();
            parentView.setVisibility(View.GONE);
        }
        Object showingFlow = Refl.get(p.thisObject, "showingOAChip");
        if (showingFlow != null) {
            Refl.call(showingFlow, "updateState", null, Boolean.FALSE);
        }
        p.setResult(null);
        refresh();
    }

    /** Replaces {@code ChipAnimationController.animateChipShow(view)} for the capsule view, which stays gone. */
    private static void keepCapsuleGone(XC_MethodHook.MethodHookParam p) {
        if (p.args.length > 0 && p.args[0] instanceof View && ((View) p.args[0]).getId() == idCapsule) {
            ((View) p.args[0]).setVisibility(View.GONE);
            p.setResult(null);
        }
    }

    /**
     * Replaces {@code sendChipInfoForAppExitAnimation}: the launcher would fly the app window into the
     * hidden chip, so the island is asked for the exit targets instead.
     */
    private static void redirectExitAnimation(XC_MethodHook.MethodHookParam p) {
        oaController = p.thisObject;
        IslandController island = IslandController.get();
        if (island != null) {
            island.onExitTargetsRequested();
            p.setResult(null);
        }
    }

    /** Android 16: the status bar fragment animates the cast and call chips in, and the AOSP call controller is used. */
    private static void hookAndroid16Chips(ClassLoader cl) {
        Refl.hookAll(cl, STATUS_BAR_FRAGMENT, "animateShow",
                SafeHook.before("animateShow (A16)", param -> goneIfChipView(param, idCapsule, idCapsuleContainer, idChipsContainer, idCastChip, idCallChip)));
        Refl.hookConstructors(cl, AOSP_CALL_CONTROLLER, SafeHook.after("call ctor (A16)", SystemUiHooks::captureCallController));
        refreshAfter(cl, AOSP_CALL_CONTROLLER, "call change (A16)", CALL_CHANGE_METHODS);
    }

    // ---- captured controllers ------------------------------------------------------------------

    /** Hooks each method so the island re-reads the stock state once it has run. */
    private static void refreshAfter(ClassLoader cl, String className, String label, String... methods) {
        SafeHook hook = SafeHook.after(label, param -> refresh());
        for (String method : methods) {
            Refl.hookAll(cl, className, method, hook);
        }
    }

    /** Captures {@code OngoingActivityController} and follows every change to the stock activity list. */
    private static void hookDataChanges(ClassLoader cl) {
        Refl.hookConstructors(cl, OA_CONTROLLER, SafeHook.after("OA ctor", param -> {
            oaController = param.thisObject;
            IslandController island = IslandController.get();
            if (island != null) {
                island.setOngoingActivityController(param.thisObject);
            }
        }));
        refreshAfter(cl, OA_CONTROLLER, "OA change", OA_CONTROLLER_CHANGES);
        refreshAfter(cl, OA_DATA_HELPER, "OA change", OA_DATA_HELPER_CHANGES);
    }

    /** Captures Samsung's flashlight controller: it sets the torch level and remembers it for the quick settings tile. */
    private static void hookFlashlight(ClassLoader cl) {
        String controller = SUI + ".statusbar.policy.SecFlashlightControllerImpl";
        if (!Refl.hasClass(controller, cl)) {
            return; // the island then sets the level through the camera service itself
        }
        Refl.hookConstructors(cl, controller, SafeHook.after("flashlight ctor", param -> {
            flashlightController = param.thisObject;
            IslandController island = IslandController.get();
            if (island != null) {
                island.setFlashlightController(param.thisObject);
            }
        }));
    }

    /** Captures Samsung's call controller and follows its call chip. */
    private static void hookCalls(ClassLoader cl) {
        if (!Refl.hasClass(SAMSUNG_CALL_CONTROLLER, cl)) {
            return; // One UI 7 and Android 16 builds without it use the AOSP call controller (see hookAndroid16Chips)
        }
        Refl.hookConstructors(cl, SAMSUNG_CALL_CONTROLLER, SafeHook.after("call ctor", SystemUiHooks::captureCallController));
        refreshAfter(cl, SAMSUNG_CALL_CONTROLLER, "call change", CALL_CHANGE_METHODS);
    }

    private static void captureCallController(XC_MethodHook.MethodHookParam p) {
        callController = p.thisObject;
        IslandController island = IslandController.get();
        if (island != null) {
            island.setCallController(p.thisObject);
        }
    }

    /** Captures the cast chip bundle and controller so the island can show and stop screen casting. */
    private static void hookCast(ClassLoader cl) {
        Refl.hookConstructors(cl, CAST_PACKAGE + "SamsungOngoingCastViewModel$SamsungCastChipBundle", SafeHook.after("cast bundle", param -> {
            castBundle = param.thisObject;
            IslandController island = IslandController.get();
            if (island != null) {
                island.setCastBundle(param.thisObject);
            }
        }));
        Refl.hookConstructors(cl, CAST_PACKAGE + "SamsungOngoingCastController", SafeHook.after("cast ctor", param -> {
            castController = param.thisObject;
            IslandController island = IslandController.get();
            if (island != null) {
                island.setCastController(param.thisObject);
            }
        }));
    }

    // ---- state listeners -----------------------------------------------------------------------

    /**
     * Registers listeners on the shade, the status bar state controller and the status bar window state
     * controller as soon as each is constructed. They are dynamic proxies because the listener
     * interfaces are System UI classes.
     */
    private static void hookSignals(ClassLoader cl) {
        Refl.hookConstructors(cl, "com.android.systemui.shade.ShadeExpansionStateManager", SafeHook.after("shade ctor", param -> listenToShade(cl, param)));
        Refl.hookConstructors(cl, "com.android.systemui.statusbar.StatusBarStateControllerImpl", SafeHook.after("state ctor", param -> listenToBarState(cl, param)));
        Refl.hookConstructors(cl, "com.android.systemui.statusbar.window.StatusBarWindowStateController", SafeHook.after("window state ctor", param -> listenToWindowState(cl, param)));
    }

    private static void listenToShade(ClassLoader cl, XC_MethodHook.MethodHookParam p) {
        Class<?> listener = Refl.findClass("com.android.systemui.shade.ShadeExpansionListener", cl);
        if (listener == null) {
            return;
        }
        Object proxy = Refl.proxy(listener, (self, method, args) -> {
            if ("onPanelExpansionChanged".equals(method.getName()) && args != null && args.length == 1) {
                Object fraction = Refl.get(args[0], "fraction");
                IslandController island = IslandController.get();
                if (fraction instanceof Float && island != null) {
                    island.setShadeExpansion((Float) fraction);
                }
            }
            return null;
        });
        Refl.call(p.thisObject, "addExpansionListener", proxy);
    }

    private static void listenToBarState(ClassLoader cl, XC_MethodHook.MethodHookParam p) {
        Class<?> listener = Refl.findClass("com.android.systemui.plugins.statusbar.StatusBarStateController$StateListener", cl);
        if (listener == null) {
            return;
        }
        Object proxy = Refl.proxy(listener, (self, method, args) -> {
            boolean oneArg = args != null && args.length == 1;
            IslandController island = IslandController.get();
            if (oneArg && "onStateChanged".equals(method.getName()) && args[0] instanceof Integer) {
                barState = (Integer) args[0];
                if (island != null) {
                    island.setBarState(barState);
                }
            } else if (oneArg && "onDozingChanged".equals(method.getName())) {
                dozing = Boolean.TRUE.equals(args[0]);
                if (island != null) {
                    island.setDozing(dozing);
                }
            }
            return null;
        });
        Refl.call(p.thisObject, "addCallback", proxy);
        Object current = Refl.get(p.thisObject, "mState");
        if (current instanceof Integer) {
            barState = (Integer) current;
        }
    }

    /** Only the controller of the primary display (first constructor argument 0) is observed. */
    private static void listenToWindowState(ClassLoader cl, XC_MethodHook.MethodHookParam p) {
        if (p.args.length == 0 || !Integer.valueOf(0).equals(p.args[0])) {
            return;
        }
        Class<?> listener = Refl.findClass("com.android.systemui.statusbar.window.StatusBarWindowStateListener", cl);
        Object listeners = Refl.get(p.thisObject, "listeners");
        if (listener == null || !(listeners instanceof Set)) {
            return;
        }
        Object proxy = Refl.proxy(listener, (self, method, args) -> {
            if ("onStatusBarWindowStateChanged".equals(method.getName()) && args != null && args.length == 1 && args[0] instanceof Integer) {
                windowState = (Integer) args[0];
                IslandController island = IslandController.get();
                if (island != null) {
                    island.setStatusBarWindowState(windowState);
                }
            }
            return null;
        });
        @SuppressWarnings("unchecked")
        Set<Object> registered = (Set<Object>) listeners;
        registered.add(proxy);
    }
}
