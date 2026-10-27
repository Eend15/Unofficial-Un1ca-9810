package dev.android.dynamicisland.xposed.hooks;

import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;

/** Suppresses the status bar battery's expanding charging chip, without changing battery data. */
final class ChargingAnimation {
    private static final String TRANSITION = "com.android.systemui.statusbar.pipeline.shared.domain.interactor.SamsungHomeStatusBarInteractor$shouldHideStatusBarForChargingVI$2";
    private static final String SCHEDULER = "com.android.systemui.statusbar.events.SystemStatusAnimationSchedulerImpl";
    private static final String BATTERY_EVENT = "com.android.systemui.statusbar.events.BatteryEvent";

    private ChargingAnimation() { }

    static void install(ClassLoader cl) throws ReflectiveOperationException {
        int compose = 0;
        int events = 0;
        if (Refl.hasClass(TRANSITION, cl)) {
            // This runningFold produces Pair(current, previous) for the charging VI only.
            // Its next filter accepts a false -> true transition. Returning false/false prevents
            // both the Compose chip AND hiding the normal battery/status icons. The upstream
            // isBatteryCharging, battery percentage, charging sound and other power UI stay real.
            Class<?> pair = Class.forName("kotlin.Pair", false, cl);
            Object idle = pair.getConstructor(Object.class, Object.class).newInstance(false, false);
            SafeHook gate = SafeHook.after("battery charging transition", p -> {
                if (!p.hasThrowable()) {
                    p.setResult(transitionResult(p.getResult(), idle, ModuleSettings.stockChargingAnimation()));
                }
            });
            // runningFold calls Function3.invoke; also cover the coroutine body, without relying
            // on that small body remaining a separate call inside an ART-compiled invoke bridge.
            compose = Refl.hookAll(cl, TRANSITION, "invoke", gate)
                    + Refl.hookAll(cl, TRANSITION, "invokeSuspend", gate);
        }
        if (Refl.hasClass(SCHEDULER, cl) && Refl.hasClass(BATTERY_EVENT, cl)) {
            Class<?> batteryEvent = Refl.findClass(BATTERY_EVENT, cl);
            // View-based One UI uses a shared scheduler. Reject only BatteryEvent before it
            // queues a chip or hides icons; camera/mic/privacy events still use this scheduler.
            events = Refl.hookAll(cl, SCHEDULER, "onStatusEvent", SafeHook.before("battery charging event", p -> {
                if (p.args.length == 1 && suppressEvent(p.args[0], batteryEvent, ModuleSettings.stockChargingAnimation())) {
                    p.setResult(null);
                }
            }));
        }
        Diagnostics.fact("stock charging animation", "status bar: compose=" + compose + " events=" + events);
    }

    static Object transitionResult(Object original, Object idle, boolean showStock) {
        return showStock ? original : idle;
    }

    static boolean suppressEvent(Object event, Class<?> batteryEvent, boolean showStock) {
        return !showStock && batteryEvent.isInstance(event);
    }
}
