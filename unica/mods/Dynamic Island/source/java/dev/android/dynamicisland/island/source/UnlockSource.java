package dev.android.dynamicisland.island.source;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import dev.android.dynamicisland.island.IslandText;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.XLog;
import java.lang.ref.WeakReference;
import java.util.List;

/**
 * Optional "unlocked with ..." card. Two passive hooks on System UI's {@code KeyguardUpdateMonitor} note when a face or
 * a fingerprint was accepted (System UI forgets that before the keyguard has gone, so it cannot be asked afterwards),
 * and remember the monitor itself. When the keyguard goes away the card says the recent biometric, else what the
 * monitor still reports (a trusted device), and otherwise it was the PIN, pattern or password.
 */
public final class UnlockSource {
    public enum Method { FINGERPRINT, FACE, TRUSTED, PIN }

    /** The card lasts this long, plus the moment the island needs to come back after the unlock. */
    private static final long SHOW_MS = 2_600;
    private static final long REVEAL_SLACK_MS = 400;
    /** A biometric accepted this recently counts as the way the phone was unlocked. */
    private static final long BIOMETRIC_RECENT_MS = 20_000;
    private static volatile WeakReference<Object> monitor = new WeakReference<>(null);
    private static volatile long biometricAt;
    private static volatile boolean biometricWasFace;

    private final Context ctx;
    private final Handler main;
    private final Runnable onChange;
    private IslandItem card;
    private final Runnable expire = new Runnable() {
        @Override public void run() { card = null; onChange.run(); }
    };

    public UnlockSource(Context ctx, Handler main, Runnable onChange) {
        this.ctx = ctx;
        this.main = main;
        this.onChange = onChange;
    }

    /** Called by the hook on {@code KeyguardUpdateMonitor}: the instance System UI keeps the unlock state in. */
    public static void rememberMonitor(Object instance) {
        if (instance != null && monitor.get() != instance) monitor = new WeakReference<>(instance);
    }

    /** Called by the hooks when System UI accepts a face or a fingerprint. */
    public static void biometricAuthenticated(boolean face) {
        biometricWasFace = face;
        biometricAt = SystemClock.uptimeMillis();
        Diagnostics.event("unlock: " + (face ? "face" : "fingerprint") + " accepted");
    }

    /** For tests: no biometric has been accepted. */
    static void forgetBiometric() {
        biometricAt = 0;
    }

    /** The keyguard just went away (the lock screen was dismissed). */
    public void onUnlocked() {
        if (!ModuleSettings.unlockNotice() || !secure()) return;
        try {
            Method method = decide(monitor.get(), currentUser(), SystemClock.uptimeMillis());
            biometricAt = 0;
            Diagnostics.event("unlock notice: " + method);
            show(method);
        } catch (RuntimeException error) {
            XLog.once("UnlockSource.onUnlocked", error);
        }
    }

    /** The user using the phone; System UI itself runs as user 0, so the activity manager is asked (hidden call). */
    private static int currentUser() {
        Object user = Refl.callStatic(ActivityManager.class, "getCurrentUser");
        return user instanceof Integer ? (Integer) user : 0;
    }

    private boolean secure() {
        try {
            KeyguardManager keyguards = ctx.getSystemService(KeyguardManager.class);
            return keyguards != null && keyguards.isDeviceSecure();
        } catch (RuntimeException error) {
            return false;
        }
    }

    /** The recent biometric if there was one, else what the monitor reports. */
    static Method decide(Object keyguardMonitor, int user, long now) {
        long at = biometricAt;
        boolean recent = at > 0 && now - at <= BIOMETRIC_RECENT_MS;
        if (recent) {
            Diagnostics.fact("unlock notice read", (biometricWasFace ? "face" : "fingerprint") + " accepted " + (now - at) + " ms before");
            return biometricWasFace ? Method.FACE : Method.FINGERPRINT;
        }
        return read(keyguardMonitor, user);
    }

    /** Which way the phone was unlocked; PIN when System UI reports none of the others (or cannot be asked). */
    static Method read(Object keyguardMonitor, int user) {
        boolean face = ask(keyguardMonitor, "getUserUnlockedWithFace", user);
        boolean biometric = ask(keyguardMonitor, "getUserUnlockedWithBiometric", user);
        boolean trusted = ask(keyguardMonitor, "getUserHasTrust", user);
        Diagnostics.fact("unlock notice read", "face=" + face + " biometric=" + biometric + " trust=" + trusted
                + (keyguardMonitor == null ? " (keyguard monitor not seen yet)" : ""));
        if (face) return Method.FACE;
        if (biometric) return Method.FINGERPRINT;
        if (trusted) return Method.TRUSTED;
        return Method.PIN;
    }

    private static boolean ask(Object keyguardMonitor, String name, int user) {
        if (keyguardMonitor == null) return false;
        try {
            return Boolean.TRUE.equals(Refl.call(keyguardMonitor, name, user));
        } catch (RuntimeException ignored) {
            return false;
        }
    }

    private void show(Method method) {
        IslandItem item = new IslandItem("event:unlock");
        item.kind = IslandItem.Kind.EVENT;
        item.eventLayout = IslandItem.EventLayout.STATUS;
        item.title = IslandText.get(ctx, titleKey(method));
        item.trailing = IslandItem.Trailing.TEXT; // the right half of the pill says how
        item.trailingText = IslandText.get(ctx, labelKey(method));
        item.icon = GlyphIcon.of(method == Method.FACE ? GlyphIcon.Kind.FACE
                : method == Method.FINGERPRINT ? GlyphIcon.Kind.FINGERPRINT : GlyphIcon.Kind.PIN);
        item.accent = 0xFF30D158;
        long now = SystemClock.uptimeMillis();
        item.postTime = now;
        long shown = Math.max(SHOW_MS, ModuleSettings.popupMillis());
        item.expiresAtUptime = now + REVEAL_SLACK_MS + shown;
        item.transientPopup = true;
        card = item;
        main.removeCallbacks(expire);
        main.postDelayed(expire, REVEAL_SLACK_MS + shown);
        onChange.run();
    }

    static String labelKey(Method method) {
        switch (method) {
            case FACE: return "island_unlock_label_face";
            case FINGERPRINT: return "island_unlock_label_fingerprint";
            case TRUSTED: return "island_unlock_label_trusted";
            default: return "island_unlock_label_pin";
        }
    }

    static String titleKey(Method method) {
        switch (method) {
            case FACE: return "island_unlocked_face";
            case FINGERPRINT: return "island_unlocked_fingerprint";
            case TRUSTED: return "island_unlocked_trusted";
            default: return "island_unlocked_pin";
        }
    }

    public void collect(List<IslandItem> out) {
        IslandItem current = card;
        if (current != null && ModuleSettings.unlockNotice() && current.expiresAtUptime > SystemClock.uptimeMillis()) out.add(current);
    }
}
