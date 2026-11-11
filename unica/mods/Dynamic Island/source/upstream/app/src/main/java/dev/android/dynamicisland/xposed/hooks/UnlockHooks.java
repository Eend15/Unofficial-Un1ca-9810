package dev.android.dynamicisland.xposed.hooks;

import dev.android.dynamicisland.island.source.UnlockSource;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;

/**
 * Remembers System UI's {@code KeyguardUpdateMonitor} for the unlock notice. The hook only stores the instance when
 * the phone starts waking up (a method System UI calls on every wake-up); it changes nothing.
 */
final class UnlockHooks {
    private static final String MONITOR = "com.android.keyguard.KeyguardUpdateMonitor";

    private UnlockHooks() { }

    static void install(ClassLoader loader) {
        int hooked = Refl.hookAll(loader, MONITOR, "dispatchStartedWakingUp",
                SafeHook.after("unlock notice monitor", p -> UnlockSource.rememberMonitor(p.thisObject)));
        Diagnostics.fact("unlock notice", hooked > 0 ? "keyguard monitor hooked" : "keyguard monitor not found; the card says PIN");
    }
}
