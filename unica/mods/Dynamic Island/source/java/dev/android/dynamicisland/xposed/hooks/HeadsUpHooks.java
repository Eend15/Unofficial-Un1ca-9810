package dev.android.dynamicisland.xposed.hooks;

import android.service.notification.StatusBarNotification;
import java.lang.reflect.Method;
import java.util.Arrays;
import de.robv.android.xposed.XC_MethodHook;
import dev.android.dynamicisland.island.IslandController;
import dev.android.dynamicisland.settings.ModuleSettings;
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
        Refl.hookAll(cl, MANAGER, "addListener", SafeHook.after("heads-up manager", p -> manager = p.thisObject));
        Refl.hookAll(cl, MANAGER, "updateNotificationInternal", SafeHook.after("heads-up manager", p -> manager = p.thisObject));
        // Android 17 also pins from a delayed runnable (several banners in a row) without asking the method above again
        Refl.hookAll(cl, MANAGER, "setEntryPinned", SafeHook.before("heads-up pin to island", HeadsUpHooks::beforeSetPinned));
    }

    /** Only dismiss a banner while the matching posting is still actually displayed by our overlay. */
    private static boolean owned(String key) {
        IslandController controller = IslandController.get();
        return controller != null && controller.ownsHeadsUp(key);
    }

    public static String dismissStock(String key) {
        if (ModuleSettings.experimentalRecovery()) return dismissStockCompat(key);
        Object heads = manager;
        if (heads == null || key == null || !owned(key)) return "not currently owned by the island";
        try {
            if (!remove(heads, key)) return "unsupported removal API";
            Boolean up = status(heads, key);
            if (Boolean.FALSE.equals(up)) return "stock banner removed";
            for (long delay : new long[]{150, 500}) {
                new dev.android.dynamicisland.xposed.GuardedHandler(android.os.Looper.getMainLooper()).postDelayed(() -> {
                    if (manager != heads || !owned(key) || Boolean.FALSE.equals(status(heads, key))) return;
                    try { remove(heads, key); }
                    catch (Throwable t) { XLog.once("heads-up retry", t); }
                }, delay);
            }
            return up == null ? "removal requested; state unknown" : "removal requested; retrying";
        } catch (Throwable t) {
            XLog.once("HeadsUpHooks.dismissStock", t);
            return "failed: " + t.getClass().getSimpleName();
        }
    }

    // Alternate One UI 8 notification handling, selected only by the existing recovery option.
    private static String dismissStockCompat(String key) {
        Object heads = manager;
        if (heads == null || key == null) {
            return "no heads-up manager seen yet";
        }
        Method removal = removalMethod(heads.getClass());
        if (removal == null) return "no supported removeNotification signature";
        try {
            remove(heads, removal, key);
            if (!stillUpCompat(heads, key)) {
                return "stock banner removed";
            }
            // It said it removed it and did not: try again now, and once more shortly after, because the
            // entry may only be registered a moment after the banner is shown.
            remove(heads, removal, key);
            if (!stillUpCompat(heads, key)) {
                return "removed on the second call";
            }
            retryCompatLater(heads, removal, key, 150L);
            retryCompatLater(heads, removal, key, 500L);
            return "still up after two calls; retrying";
        } catch (Throwable t) {
            XLog.once("HeadsUpHooks.dismissStock", t);
            return "failed: " + t.getClass().getSimpleName();
        }
    }

    private static void remove(Object heads, Method method, String key) throws ReflectiveOperationException {
        Class<?>[] types = method.getParameterTypes();
        Object[] args = types.length == 2 ? new Object[]{key, true}
                : types[1] == boolean.class ? new Object[]{key, true, "dynamic island"}
                : new Object[]{key, "dynamic island", true};
        method.invoke(heads, args);
    }

    /** One more attempt after {@code delayMs}, on the main thread. */
    private static void retryCompatLater(Object heads, Method removal, String key, long delayMs) {
        try {
            new dev.android.dynamicisland.xposed.GuardedHandler(android.os.Looper.getMainLooper()).postDelayed(() -> {
                if (!ModuleSettings.experimentalRecovery()) return;
                try {
                    if (stillUpCompat(heads, key)) {
                        remove(heads, removal, key);
                        if (stillUpCompat(heads, key)) {
                            XLog.event("stock banner still up after retry: " + key);
                        }
                    }
                } catch (Throwable t) {
                    XLog.once("HeadsUpHooks.dismissStock retry", t);
                }
            }, delayMs);
        } catch (Throwable ignored) {
            // no main looper here: the two immediate attempts stand
        }
    }

    /** True while the heads-up manager still holds this notification, by whichever accessor it has. */
    private static boolean stillUpCompat(Object heads, String key) {
        try {
            Object entry = Refl.call(heads, "getHeadsUpEntry", key);
            if (entry != null) {
                return true;
            }
        } catch (Throwable ignored) {
            // no such accessor on this build: fall through to the lists
        }
        for (String name : new String[]{"getHeadsUpEntryList", "getAllEntries"}) {
            try {
                Object list = Refl.call(heads, name);
                if (list instanceof Iterable) {
                    for (Object entry : (Iterable<?>) list) {
                        Object sbn = entry == null ? null : Refl.get(entry, "mSbn");
                        if (sbn instanceof android.service.notification.StatusBarNotification
                                && key.equals(((android.service.notification.StatusBarNotification) sbn).getKey())) {
                            return true;
                        }
                    }
                    return false; // the list exists and does not hold it
                }
            } catch (Throwable ignored) {
                // try the next accessor
            }
        }
        return false; // no way to tell: do not claim it is stuck
    }

    /** Match types, not arity: Samsung and AOSP/Nothing order the reason and immediate flag differently. */
    private static Method removalMethod(Class<?> type) {
        Class<?>[][] supported = {
                {String.class, String.class, boolean.class},
                {String.class, boolean.class, String.class},
                {String.class, boolean.class}
        };
        for (Class<?>[] signature : supported) {
            for (Class<?> level = type; level != null; level = level.getSuperclass()) {
                for (Method method : level.getDeclaredMethods()) {
                    if (method.getName().equals("removeNotification")
                            && Arrays.equals(method.getParameterTypes(), signature)) {
                        method.setAccessible(true);
                        return method;
                    }
                }
            }
        }
        return null;
    }

    private static boolean remove(Object heads, String key) throws ReflectiveOperationException {
        Method method = removalMethod(heads.getClass());
        if (method == null) return false;
        remove(heads, method, key);
        return true;
    }

    /** null means the build has no readable accessor, never a proven removal. */
    static Boolean status(Object heads, String key) {
        if (Refl.method(heads.getClass(), "getHeadsUpEntry", 1) != null) {
            try { return Refl.method(heads.getClass(), "getHeadsUpEntry", 1).invoke(heads, key) != null; }
            catch (ReflectiveOperationException | RuntimeException unreadable) { return null; }
        }
        for (String accessor : new String[]{"getHeadsUpEntryList", "getAllEntries"}) {
            if (Refl.method(heads.getClass(), accessor, 0) == null) continue;
            Object entries;
            try { entries = Refl.method(heads.getClass(), accessor, 0).invoke(heads); }
            catch (ReflectiveOperationException | RuntimeException unreadable) { continue; }
            if (entries instanceof java.util.Map) entries = ((java.util.Map<?, ?>) entries).values();
            if (!(entries instanceof Iterable)) continue;
            boolean readable = true;
            for (Object entry : (Iterable<?>) entries) {
                StatusBarNotification notification = notificationOf(entry);
                if (notification == null) readable = false;
                else if (key.equals(notification.getKey())) return true;
            }
            if (readable) return false;
        }
        return null;
    }

    private static StatusBarNotification notificationOf(Object entry) {
        for (int depth = 0; entry != null && depth < 3; depth++) {
            if (entry instanceof StatusBarNotification) return (StatusBarNotification) entry;
            if (Refl.method(entry.getClass(), "getSbn", 0) != null) {
                Object value = Refl.call(entry, "getSbn");
                if (value instanceof StatusBarNotification) return (StatusBarNotification) value;
            }
            Object nested = null;
            for (String name : new String[]{"mSbn", "mEntry", "entry"}) {
                if (Refl.field(entry.getClass(), name) != null) {
                    Object value = Refl.get(entry, name);
                    if (value != null) { nested = value; break; }
                }
            }
            entry = nested;
        }
        return null;
    }

    /** Before {@code setEntryPinned(entry, status, reason)}: a system pin the island takes over becomes "not pinned". */
    private static void beforeSetPinned(XC_MethodHook.MethodHookParam p) {
        manager = p.thisObject;
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
