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
 * Optional "unlocked with ..." card. Nothing is hooked to learn the method: when the keyguard goes away, System UI's
 * own {@code KeyguardUpdateMonitor} is asked who unlocked (face, any biometric, a trusted device); what is left is
 * the PIN, pattern or password. The monitor is only remembered by a hook on a method System UI calls anyway.
 */
public final class UnlockSource {
    public enum Method { FINGERPRINT, FACE, TRUSTED, PIN }

    /** The card lasts this long, plus the moment the island needs to come back after the unlock. */
    private static final long SHOW_MS = 2_600;
    private static final long REVEAL_SLACK_MS = 400;
    private static volatile WeakReference<Object> monitor = new WeakReference<>(null);

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

    /** The keyguard just went away (the lock screen was dismissed). */
    public void onUnlocked() {
        if (!ModuleSettings.unlockNotice() || !secure()) return;
        try {
            Method method = read(monitor.get(), currentUser());
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
        item.icon = GlyphIcon.of(method == Method.FACE ? GlyphIcon.Kind.FACE
                : method == Method.FINGERPRINT ? GlyphIcon.Kind.FINGERPRINT : GlyphIcon.Kind.PIN);
        item.accent = 0xFF30D158;
        long now = SystemClock.uptimeMillis();
        item.postTime = now;
        item.expiresAtUptime = now + REVEAL_SLACK_MS + SHOW_MS;
        card = item;
        main.removeCallbacks(expire);
        main.postDelayed(expire, REVEAL_SLACK_MS + SHOW_MS);
        onChange.run();
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
