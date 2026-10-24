package dev.android.dynamicisland.xposed.hooks;

import android.service.notification.StatusBarNotification;
import de.robv.android.xposed.XC_MethodHook;
import dev.android.dynamicisland.island.IslandController;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;
import dev.android.dynamicisland.xposed.XLog;

/**
 * Takes over the stock heads-up banner. {@code HeadsUpManagerImpl.shouldHeadsUpBecomePinned} is the
 * single place that decides whether a heads-up notification is actually shown on top of the screen
 * (it is the same switch System UI flips when the shade is open); answering "not pinned" keeps the
 * notification in the shade and keeps its sound, but no banner appears, because the island shows it.
 * The island only claims notifications it is ready to display right now, everything else stays stock.
 */
public final class HeadsUpHooks {
    private static final String MANAGER = "com.android.systemui.statusbar.notification.headsup.HeadsUpManagerImpl|com.android.systemui.statusbar.phone.HeadsUpManagerPhone";

    /** The heads-up manager, kept so that a banner that already came up can be taken away again. */
    private static volatile Object manager;
    private static final int MAX_ASKED_LOGS = 10;
    private static int askedLogs;

    private HeadsUpHooks() {
    }

    static void install(ClassLoader cl) {
        Refl.hookAll(cl, MANAGER, "shouldHeadsUpBecomePinned", SafeHook.after("heads-up to island", HeadsUpHooks::afterPinDecision));
        // Android 17 also pins from a delayed runnable (several banners in a row) without asking the method above again
        Refl.hookAll(cl, MANAGER, "setEntryPinned", SafeHook.before("heads-up pin to island", HeadsUpHooks::beforeSetPinned));
    }

    /** Removes the stock banner of {@code key} when it is up: the island shows the notification now. */
    public static String dismissStock(String key) {
        Object heads = manager;
        if (heads == null || key == null) {
            return "no heads-up manager seen yet";
        }
        try {
            // One UI 9 / Android 17: removeNotification(String key, String reason, boolean releaseImmediately)
            if (Refl.method(heads.getClass(), "removeNotification", 3) != null) {
                Refl.call(heads, "removeNotification", key, "dynamic island", Boolean.TRUE);
                return "removeNotification(key, reason, immediately) called";
            }
            if (Refl.method(heads.getClass(), "removeNotification", 2) != null) {
                Refl.call(heads, "removeNotification", key, Boolean.TRUE);
                return "removeNotification(key, immediately) called";
            }
            return "no removeNotification with 2 or 3 parameters";
        } catch (Throwable t) {
            XLog.once("HeadsUpHooks.dismissStock", t);
            return "failed: " + t.getClass().getSimpleName();
        }
    }

    /** Before {@code setEntryPinned(entry, status, reason)}: a system pin the island takes over becomes "not pinned". */
    private static void beforeSetPinned(XC_MethodHook.MethodHookParam p) {
        if (p.args.length < 2 || p.args[0] == null || p.args[1] == null || !"PinnedBySystem".equals(String.valueOf(p.args[1]))) {
            return;
        }
        Object notificationEntry = Refl.get(p.args[0], "mEntry");
        Object sbn = notificationEntry == null ? null : Refl.get(notificationEntry, "mSbn");
        Object notPinned = Refl.getStatic(p.args[1].getClass(), "NotPinned");
        IslandController controller = IslandController.get();
        if (notPinned != null && controller != null && sbn instanceof StatusBarNotification
                && controller.peekHeadsUp((StatusBarNotification) sbn)) {
            if (askedLogs < MAX_ASKED_LOGS) {
                askedLogs++;
                XLog.event("heads-up pin by system taken over: " + ((StatusBarNotification) sbn).getPackageName());
            }
            p.args[1] = notPinned;
        }
    }

    private static void afterPinDecision(XC_MethodHook.MethodHookParam p) {
        manager = p.thisObject;
        if (askedLogs < MAX_ASKED_LOGS) {
            askedLogs++;
            Object entry = p.args.length > 0 ? p.args[0] : null;
            Object sbnForLog = entry == null ? null : Refl.get(entry, "mSbn");
            XLog.event("heads-up pin decision asked: " + (sbnForLog instanceof StatusBarNotification ? ((StatusBarNotification) sbnForLog).getPackageName() : "?") + " -> " + p.getResult());
        }
        if (p.hasThrowable() || !Boolean.TRUE.equals(p.getResult()) || p.args.length < 1 || p.args[0] == null) {
            return;
        }
        Object sbn = Refl.get(p.args[0], "mSbn");
        IslandController controller = IslandController.get();
        if (controller != null && sbn instanceof StatusBarNotification && controller.peekHeadsUp((StatusBarNotification) sbn)) {
            p.setResult(false);
        }
    }
}
