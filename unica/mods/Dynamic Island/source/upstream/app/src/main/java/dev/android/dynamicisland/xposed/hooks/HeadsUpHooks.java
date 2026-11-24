package dev.android.dynamicisland.xposed.hooks;

import android.service.notification.StatusBarNotification;
import java.lang.reflect.Method;
import java.util.Arrays;
import de.robv.android.xposed.XC_MethodHook;
import dev.android.dynamicisland.island.IslandController;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.Diagnostics;
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

    private HeadsUpHooks() {
    }

    static void install(ClassLoader cl) {
        int decision = Refl.hookAll(cl, MANAGER, "shouldHeadsUpBecomePinned", SafeHook.after("heads-up to island", HeadsUpHooks::afterPinDecision));
        int listener = Refl.hookAll(cl, MANAGER, "addListener", SafeHook.after("heads-up manager", p -> { manager = p.thisObject; called(LISTENER, null); }));
        int update = Refl.hookAll(cl, MANAGER, "updateNotificationInternal", SafeHook.after("heads-up manager", p -> { manager = p.thisObject; called(UPDATE, null); }));
        // Android 17 also pins from a delayed runnable (several banners in a row) without asking the method above again
        int pin = Refl.hookAll(cl, MANAGER, "setEntryPinned", SafeHook.before("heads-up pin to island", HeadsUpHooks::beforeSetPinned));
        Class<?> type = Refl.findClass(MANAGER, cl);
        Diagnostics.fact("heads-up hooks", (type == null ? "no manager class" : type.getName()) + ": shouldHeadsUpBecomePinned x" + decision
                + ", setEntryPinned x" + pin + ", updateNotificationInternal x" + update + ", addListener x" + listener);
        Diagnostics.fact("heads-up manager methods", describe(type), 1600);
        Diagnostics.fact("heads-up calls", "none yet");
        // Samsung's Edge Lighting popup (the small brief one, which opens into the detailed one) is its own window. It
        // stays away only while the entry's banner is pinned, and a banner the island took is not pinned.
        if (Refl.hasClass(EDGE_CONDITIONS, cl)) {
            Refl.hookAll(cl, EDGE_CONDITIONS, "isRowPinned", SafeHook.after("edge lighting popup", HeadsUpHooks::afterEdgeRowPinned));
        }
        // With the pop-up style "Brief" (and the app allowed for Edge Lighting) System UI makes no heads-up at all: this
        // filter suppresses it, the brief popup of Edge Lighting is shown instead, and nothing ever asks the island.
        int suppressor = Refl.hasClass(EDGE_SUPPRESSOR, cl)
                ? Refl.hookAll(cl, EDGE_SUPPRESSOR, "shouldSuppress", SafeHook.after("edge lighting suppressor", HeadsUpHooks::afterEdgeSuppress)) : -1;
        // The banner decision asks every filter; what the island does with Edge Lighting follows its final answer.
        int decisions = 0;
        for (String method : new String[]{"makeAndLogHeadsUpDecision", "makeUnloggedHeadsUpDecision"}) {
            decisions += Refl.hookAll(cl, DECISION_PROVIDER, method, SafeHook.before("banner decision", HeadsUpHooks::beforeDecision));
            decisions += Refl.hookAll(cl, DECISION_PROVIDER, method, SafeHook.after("banner decision", HeadsUpHooks::afterDecision));
        }
        Diagnostics.fact("brief pop-up suppressor", (suppressor < 0 ? "this System UI has none" : "shouldSuppress x" + suppressor)
                + ", banner decision hooks x" + decisions);
    }

    private static final String DECISION_PROVIDER = "com.android.systemui.statusbar.notification.interruption.VisualInterruptionDecisionProviderImpl";

    /** The banner decision running on this thread: {entry, the method that began it, whether the island claims it (once asked)}. */
    private static final ThreadLocal<Object[]> DECIDING = new ThreadLocal<>();

    private static void beforeDecision(XC_MethodHook.MethodHookParam p) {
        if (DECIDING.get() == null && p.args.length > 0 && p.args[0] != null) DECIDING.set(new Object[]{p.args[0], p.method, null});
    }

    /** After the banner decision: when System UI will make a banner and the island takes it, Edge Lighting's popup is not wanted. */
    private static void afterDecision(XC_MethodHook.MethodHookParam p) {
        Object[] state = DECIDING.get();
        if (state == null || state[1] != p.method) return; // an inner call of the decision that is already being followed
        DECIDING.remove();
        if (p.hasThrowable() || p.getResult() == null) return;
        Object entry = state[0];
        Object sbn = Refl.get(entry, "mSbn");
        if (!(sbn instanceof StatusBarNotification) || !Boolean.TRUE.equals(Refl.get(p.getResult(), "shouldInterrupt"))) return;
        IslandController controller = IslandController.get();
        if (controller == null || ModuleSettings.systemPopupStyle() || blockedByDoNotDisturb(entry)) return;
        boolean claimed = state[2] != null ? Boolean.TRUE.equals(state[2])
                : controller.claimsNotification((StatusBarNotification) sbn, importanceOf(entry));
        if (claimed) expect(((StatusBarNotification) sbn).getKey(), android.os.SystemClock.uptimeMillis());
    }

    /** Keys System UI is going to make a banner for and the island takes: Edge Lighting's popup stays away from these. */
    private static final java.util.Map<String, Long> EXPECTED = new java.util.HashMap<>();
    static final long EXPECTED_MS = 6000L;

    static synchronized void expect(String key, long now) {
        if (key == null) return;
        EXPECTED.values().removeIf(at -> now - at >= EXPECTED_MS);
        EXPECTED.put(key, now);
    }

    static synchronized boolean expected(String key, long now) {
        Long at = key == null ? null : EXPECTED.get(key);
        return at != null && now - at < EXPECTED_MS;
    }

    static synchronized void forgetExpected() {
        EXPECTED.clear();
    }

    /** The result of the Edge Lighting filter for a notification whose banner decision is running. */
    static boolean flippedSuppression(boolean original, boolean systemPopupStyle, boolean insideItsDecision, boolean blocked, boolean claimed) {
        return original && !(!systemPopupStyle && insideItsDecision && !blocked && claimed);
    }

    /** Whether Edge Lighting is told the notification already has its banner (so it shows no popup of its own). */
    static boolean holdsBackPopup(boolean expected, boolean islandHasIt) {
        return expected || islandHasIt;
    }

    private static boolean blockedByDoNotDisturb(Object entry) {
        Object ranking = entry == null ? null : Refl.get(entry, "mRanking");
        return ranking instanceof android.service.notification.NotificationListenerService.Ranking
                && HideDuplicated.blockedByDoNotDisturb((android.service.notification.NotificationListenerService.Ranking) ranking);
    }
    private static final String EDGE_SUPPRESSOR = "com.android.systemui.statusbar.notification.interruption.EdgeLightingSuppressor";

    /**
     * After {@code EdgeLightingSuppressor.shouldSuppress(entry)}: with the "Brief" pop-up style it says yes, so no banner
     * is made and the island is never asked. For a notification the island will show, say no: System UI then makes its
     * ordinary banner, the island takes it over as usual, and Edge Lighting's popup is held back once System UI's
     * final answer is that the banner is made (see {@link #afterDecision}). Only inside the banner decision of that
     * same entry: the cover screen asks this filter for its own brief popup, and that stays as it is.
     */
    private static void afterEdgeSuppress(XC_MethodHook.MethodHookParam p) {
        if (p.hasThrowable() || !Boolean.TRUE.equals(p.getResult()) || p.args.length < 1 || p.args[0] == null) {
            return;
        }
        Object[] state = DECIDING.get();
        boolean inside = state != null && state[0] == p.args[0];
        IslandController controller = IslandController.get();
        Object sbn = Refl.get(p.args[0], "mSbn");
        if (controller == null || !(sbn instanceof StatusBarNotification)) return;
        boolean claimed = inside && !ModuleSettings.systemPopupStyle() && !blockedByDoNotDisturb(p.args[0])
                && controller.claimsNotification((StatusBarNotification) sbn, importanceOf(p.args[0]));
        if (inside) state[2] = claimed; // the banner decision that follows does not ask again
        if (!flippedSuppression(true, ModuleSettings.systemPopupStyle(), inside, blockedByDoNotDisturb(p.args[0]), claimed)) {
            p.setResult(false);
            XLog.event("brief pop-up style: banner allowed so the island can take it: " + ((StatusBarNotification) sbn).getPackageName());
        }
    }

    /** How the system rates a notification entry, or null when the entry does not say. */
    private static Integer importanceOf(Object entry) {
        Object ranking = entry == null ? null : Refl.get(entry, "mRanking");
        return ranking instanceof android.service.notification.NotificationListenerService.Ranking
                ? ((android.service.notification.NotificationListenerService.Ranking) ranking).getImportance() : null;
    }

    // ---- what this System UI really calls (for the report: the hooks attach on builds that no longer call them) --------

    private static final int DECISION = 0, PIN = 1, UPDATE = 2, LISTENER = 3;
    private static final String[] CALL_NAMES = {"decision", "pin", "update", "listener"};
    private static final int[] CALLS = new int[CALL_NAMES.length];
    private static final String[] LAST = new String[CALL_NAMES.length];

    /** Counts a call of a hooked manager method and keeps what the last one was about. */
    static synchronized void called(int which, String detail) {
        CALLS[which]++;
        if (detail != null) LAST[which] = detail;
        StringBuilder all = new StringBuilder();
        for (int i = 0; i < CALL_NAMES.length; i++) {
            if (i > 0) all.append("; ");
            all.append(CALL_NAMES[i]).append(" x").append(CALLS[i]);
            if (LAST[i] != null) all.append(" (last: ").append(LAST[i]).append(')');
        }
        Diagnostics.fact("heads-up calls", all.toString(), 700);
    }

    /** Whether the notification of a manager argument can be read, the way the hooks read it and by the wider search. */
    private static String readable(Object direct, Object argument) {
        if (direct instanceof StatusBarNotification) return ((StatusBarNotification) direct).getPackageName();
        StatusBarNotification found = argument == null ? null : notificationOf(argument);
        return "notification not read from " + (argument == null ? "null" : argument.getClass().getSimpleName())
                + (found == null ? "" : ", the wider search finds " + found.getPackageName());
    }

    /** The manager's methods that pin, show or update a banner, with their parameter types. */
    static String describe(Class<?> type) {
        if (type == null) return "none";
        java.util.TreeSet<String> found = new java.util.TreeSet<>();
        for (Class<?> level = type; level != null && level != Object.class; level = level.getSuperclass()) {
            Method[] methods;
            try {
                methods = level.getDeclaredMethods();
            } catch (Throwable unavailable) {
                continue;
            }
            for (Method method : methods) {
                String name = method.getName().toLowerCase(java.util.Locale.ROOT);
                if (!name.contains("pin") && !name.contains("shownotification") && !name.contains("updatenotification")) continue;
                StringBuilder line = new StringBuilder(method.getName()).append('(');
                Class<?>[] parameters = method.getParameterTypes();
                for (int i = 0; i < parameters.length; i++) {
                    if (i > 0) line.append(',');
                    line.append(parameters[i].getSimpleName());
                }
                found.add(line.append("):").append(method.getReturnType().getSimpleName()).toString());
            }
        }
        return found.isEmpty() ? "none" : String.join(" ", found);
    }

    private static final String EDGE_CONDITIONS = "com.android.systemui.edgelighting.SystemUIConditionListenerService$1";

    /** After {@code isRowPinned(key)}: a notification the island has or takes counts as pinned, so Edge Lighting skips it. */
    private static void afterEdgeRowPinned(XC_MethodHook.MethodHookParam p) {
        if (p.hasThrowable() || Boolean.TRUE.equals(p.getResult()) || p.args.length < 1 || !(p.args[0] instanceof String)) {
            return;
        }
        // A native heads-up may already be accepted while its asynchronously inflated row is not pinned yet.
        // Never predict ownership from an island eligibility rule in the independent popup mode.
        if (ModuleSettings.systemPopupStyle()) {
            if (nativePopupPending((String) p.args[0])) p.setResult(true);
            return;
        }
        // Hold the popup back only for what is certain: System UI said it makes the banner and the island takes it
        // (see afterDecision), or the island already has the notification. A guess that a banner will come loses the
        // message when one of System UI's other filters says no, so there is none.
        String key = (String) p.args[0];
        IslandController controller = IslandController.get();
        boolean has = controller != null && controller.showingNotification(key);
        if (holdsBackPopup(expected(key, android.os.SystemClock.uptimeMillis()), has)) {
            p.setResult(true);
            XLog.event("edge lighting popup held back for the island: " + key);
        }
    }

    /** Only dismiss a banner while the matching posting is still actually displayed by our overlay. */
    private static boolean owned(String key) {
        IslandController controller = IslandController.get();
        return controller != null && controller.ownsHeadsUp(key);
    }

    /** Accepted by the real manager, including the short bind-before-pin interval. */
    public static boolean nativePopupPending(String key) {
        return manager != null && key != null && Boolean.TRUE.equals(status(manager, key));
    }

    private static Object owner(String key) {
        IslandController controller = IslandController.get();
        return controller == null ? null : controller.headsUpOwner(key);
    }

    public static String dismissStock(String key) {
        if (ModuleSettings.systemPopupStyle()) return "system popup retains its native lifetime";
        if (ModuleSettings.experimentalRecovery()) return dismissStockCompat(key);
        Object heads = manager;
        if (heads == null || key == null || !owned(key)) return "not currently owned by the island";
        Object posting = owner(key);
        try {
            if (!remove(heads, key)) return "unsupported removal API";
            Boolean up = status(heads, key);
            if (Boolean.FALSE.equals(up)) return "stock banner removed";
            for (long delay : new long[]{150, 500}) {
                new dev.android.dynamicisland.xposed.GuardedHandler(android.os.Looper.getMainLooper()).postDelayed(() -> {
                    if (ModuleSettings.systemPopupStyle() || manager != heads || posting == null || owner(key) != posting || Boolean.FALSE.equals(status(heads, key))) return;
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
        Object posting = owner(key);
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
            retryCompatLater(heads, removal, key, posting, 150L);
            retryCompatLater(heads, removal, key, posting, 500L);
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
    private static void retryCompatLater(Object heads, Method removal, String key, Object posting, long delayMs) {
        try {
            new dev.android.dynamicisland.xposed.GuardedHandler(android.os.Looper.getMainLooper()).postDelayed(() -> {
                if (ModuleSettings.systemPopupStyle() || !ModuleSettings.experimentalRecovery() || manager != heads || posting == null || owner(key) != posting) return;
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
        Object pinnedEntry = p.args.length > 0 && p.args[0] != null ? Refl.get(p.args[0], "mEntry") : null;
        called(PIN, "status " + (p.args.length > 1 ? String.valueOf(p.args[1]) : "missing")
                + (p.args.length > 2 ? ", reason " + p.args[2] : "") + ", " + p.args.length + " arguments, "
                + readable(pinnedEntry == null ? null : Refl.get(pinnedEntry, "mSbn"), p.args.length > 0 ? p.args[0] : null));
        if (ModuleSettings.systemPopupStyle()) return;
        if (p.args.length < 2 || p.args[0] == null || p.args[1] == null || !"PinnedBySystem".equals(String.valueOf(p.args[1]))) {
            return;
        }
        Object notificationEntry = Refl.get(p.args[0], "mEntry");
        Object sbn = notificationEntry == null ? null : Refl.get(notificationEntry, "mSbn");
        Object notPinned = Refl.getStatic(p.args[1].getClass(), "NotPinned");
        IslandController controller = IslandController.get();
        if (notPinned != null && controller != null && sbn instanceof StatusBarNotification
                && controller.peekHeadsUp((StatusBarNotification) sbn)) {
            XLog.event("heads-up pin by system taken over: " + ((StatusBarNotification) sbn).getPackageName());
            p.args[1] = notPinned;
        }
    }

    private static void afterPinDecision(XC_MethodHook.MethodHookParam p) {
        manager = p.thisObject;
        Object asked = p.args.length > 0 ? p.args[0] : null;
        called(DECISION, (p.hasThrowable() ? "failed" : String.valueOf(p.getResult())) + " for "
                + readable(asked == null ? null : Refl.get(asked, "mSbn"), asked));
        if (ModuleSettings.systemPopupStyle()) return;
        Object entry = p.args.length > 0 ? p.args[0] : null;
        Object sbn = entry == null ? null : Refl.get(entry, "mSbn");
        String app = sbn instanceof StatusBarNotification ? ((StatusBarNotification) sbn).getPackageName() : "?";
        if (p.hasThrowable() || !Boolean.TRUE.equals(p.getResult()) || entry == null) {
            XLog.event("heads-up pin decision: " + app + " -> " + (p.hasThrowable() ? "failed" : p.getResult()) + " (not pinned by the system)");
            return;
        }
        IslandController controller = IslandController.get();
        boolean taken = controller != null && sbn instanceof StatusBarNotification && controller.peekHeadsUp((StatusBarNotification) sbn);
        if (taken) {
            p.setResult(false);
        }
        XLog.event("heads-up pin decision: " + app + " -> " + (taken ? "taken by the island" : "left to the stock banner"));
    }
}
