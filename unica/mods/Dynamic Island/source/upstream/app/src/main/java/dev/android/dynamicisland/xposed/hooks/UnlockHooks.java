package dev.android.dynamicisland.xposed.hooks;

import dev.android.dynamicisland.island.source.UnlockSource;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;

/**
 * Feeds the unlock notice: remembers System UI's {@code KeyguardUpdateMonitor} when the phone starts waking up, and
 * notes when a face or a fingerprint is accepted, from the monitor and from {@code BiometricUnlockController}, which
 * is told the kind of biometric by its name. They run before System UI's own method: the keyguard is dismissed inside
 * that method, so a note made after it returns would come after the unlock. The hooks only read; they change nothing.
 */
final class UnlockHooks {
    private static final String MONITOR = "com.android.keyguard.KeyguardUpdateMonitor";
    private static final String UNLOCK_CONTROLLER = "com.android.systemui.statusbar.phone.BiometricUnlockController";

    private UnlockHooks() { }

    static void install(ClassLoader loader) {
        int hooked = Refl.hookAll(loader, MONITOR, "dispatchStartedWakingUp",
                SafeHook.after("unlock notice monitor", p -> UnlockSource.rememberMonitor(p.thisObject)));
        int face = Refl.hookAll(loader, MONITOR, "onFaceAuthenticated",
                SafeHook.before("unlock notice face", p -> UnlockSource.biometricAuthenticated(true)));
        int finger = Refl.hookAll(loader, MONITOR, "onFingerprintAuthenticated",
                SafeHook.before("unlock notice fingerprint", p -> UnlockSource.biometricAuthenticated(false)));
        // onBiometricAuthenticated(userId, BiometricSourceType, isStrong): the same call on every phone, the kind by name
        int controller = Refl.hookAll(loader, UNLOCK_CONTROLLER, "onBiometricAuthenticated",
                SafeHook.before("unlock notice biometric", p -> biometricAccepted(p.args)));
        Diagnostics.fact("unlock notice", (hooked > 0 ? "keyguard monitor hooked (face " + face + ", fingerprint " + finger + ")"
                : "keyguard monitor not found") + "; unlock controller " + controller);
    }

    /** The kind of biometric in the arguments of onBiometricAuthenticated, by the name of its enum constant. */
    static Boolean faceOrFingerprint(Object[] args) {
        if (args == null) return null;
        for (Object arg : args) {
            String name = arg == null || arg instanceof Number || arg instanceof Boolean ? null : arg.toString();
            if ("FACE".equals(name)) return Boolean.TRUE;
            if ("FINGERPRINT".equals(name) || "IRIS".equals(name)) return Boolean.FALSE;
        }
        return null;
    }

    private static void biometricAccepted(Object[] args) {
        Boolean face = faceOrFingerprint(args);
        if (face != null) UnlockSource.biometricAuthenticated(face);
    }
}
