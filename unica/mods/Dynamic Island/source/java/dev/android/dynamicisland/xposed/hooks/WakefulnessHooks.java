package dev.android.dynamicisland.xposed.hooks;

import dev.android.dynamicisland.island.IslandController;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;
import java.lang.reflect.Method;

/** Observe power transitions before keyguard/doze hides the status-bar overlay. No display-policy changes. */
final class WakefulnessHooks {
    private enum Event { SLEEP, ASLEEP, WAKE }
    private static final class Source { volatile boolean enabled; }
    private static boolean observed, sleeping, asleep;

    private WakefulnessHooks() { }

    static void install(ClassLoader loader) {
        for (String name : new String[]{"com.android.systemui.keyguard.WakefulnessLifecycle",
                "com.android.keyguard.KeyguardUpdateMonitor"}) {
            if (!Refl.hasClass(name, loader)) continue;
            Class<?> type = Refl.findClass(name, loader);
            String sleep = method(type, "dispatchStartedGoingToSleep", "handleStartedGoingToSleep");
            String wake = method(type, "dispatchStartedWakingUp", "handleStartedWakingUp");
            if (sleep == null || wake == null) continue;
            Source source = new Source();
            int sleepHooks = hook(type, sleep, Event.SLEEP, source);
            int wakeHooks = hook(type, wake, Event.WAKE, source);
            if (sleepHooks == 0 || wakeHooks == 0) continue;
            int attached = sleepHooks + wakeHooks;
            String finish = method(type, "dispatchFinishedGoingToSleep", "handleFinishedGoingToSleep");
            if (finish != null) attached += hook(type, finish, Event.ASLEEP, source);
            source.enabled = true;
            Diagnostics.fact("sleep transition", "early " + type.getSimpleName() + " hooks " + attached);
            return; // One ordered lifecycle, not duplicate dispatcher/handler events from two providers.
        }
        Diagnostics.fact("sleep transition", "dozing callback fallback");
    }

    private static String method(Class<?> type, String... names) {
        for (String name : names) for (Method method : type.getDeclaredMethods())
            if (method.getName().equals(name)) return name;
        return null;
    }

    private static int hook(Class<?> type, String name, Event event, Source source) {
        for (Method method : type.getDeclaredMethods()) {
            if (method.getName().equals(name)) {
                return Refl.hookAll(type, name, SafeHook.before("island sleep " + name, p -> {
                    if (source.enabled) dispatch(event);
                }));
            }
        }
        return 0; // Optional vendor symbol; absence is not a broken hook.
    }

    private static synchronized void dispatch(Event event) {
        IslandController controller = IslandController.get();
        if (event == Event.SLEEP) {
            if (observed && sleeping) return;
            observed = true; sleeping = true; asleep = false;
            if (controller != null) controller.setSleeping(true);
        } else if (event == Event.ASLEEP) {
            if (!sleeping || asleep) return; // Ignore a late finish from a cancelled sleep.
            asleep = true;
            if (controller != null) controller.finishSleeping();
        } else {
            if (observed && !sleeping) return;
            observed = true; sleeping = false; asleep = false;
            if (controller != null) controller.setSleeping(false);
        }
    }

    static synchronized void applyInitialState(IslandController controller) {
        if (!observed) return;
        controller.setSleeping(sleeping);
        if (asleep) controller.finishSleeping();
    }
}
