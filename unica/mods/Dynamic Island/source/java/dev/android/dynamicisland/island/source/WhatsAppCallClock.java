package dev.android.dynamicisland.island.source;

import android.app.Notification;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.detect.CallDetector;
import dev.android.dynamicisland.xposed.Diagnostics;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/** Provisional WhatsApp connection gate, shared by the system-chip and notification call sources. */
public final class WhatsAppCallClock {
    private record Clock(long start, long waitingAt, long reportedStart) { }
    private Map<String, Clock> clocks = new HashMap<>();

    public static boolean applies(String pkg) {
        return "com.whatsapp".equals(pkg) || "com.whatsapp.w4b".equals(pkg);
    }

    /** Keep only current call notifications; no caller names or notification text are retained. */
    boolean update(List<StatusBarNotification> snapshot) {
        Map<String, Clock> next = new HashMap<>();
        long now = System.currentTimeMillis();
        for (StatusBarNotification sbn : snapshot) {
            if (sbn == null || !applies(sbn.getPackageName())) continue;
            Notification n = sbn.getNotification();
            if (n == null || n.extras == null || !(Notification.CATEGORY_CALL.equals(n.category)
                    || Notification.CallStyle.class.getName().equals(n.extras.getString(Notification.EXTRA_TEMPLATE)))) continue;
            if ((n.flags & (Notification.FLAG_ONGOING_EVENT | Notification.FLAG_FOREGROUND_SERVICE)) == 0
                    && sbn.isClearable()) continue;
            next.put(sbn.getKey(), read(n, clocks.get(sbn.getKey()), now));
        }
        boolean changed = clocks.size() != next.size();
        for (Map.Entry<String, Clock> entry : next.entrySet()) {
            Clock before = clocks.get(entry.getKey());
            if (before == null || before.start != entry.getValue().start) changed = true;
        }
        clocks = next;
        return changed;
    }

    public long start(String key) {
        Clock clock = clocks.get(key);
        long start = clock == null ? 0 : clock.start;
        Diagnostics.fact("WhatsApp call timer", start > 0 ? "notification clock confirmed" : "waiting for notification clock");
        return start;
    }

    private static Clock read(Notification n, Clock previous, long now) {
        List<String> status = new ArrayList<>(), actions = new ArrayList<>();
        // The title normally contains the contact name, which must not be parsed as a call state/duration.
        for (String key : new String[]{Notification.EXTRA_TEXT, Notification.EXTRA_BIG_TEXT,
                Notification.EXTRA_SUB_TEXT, Notification.EXTRA_INFO_TEXT}) {
            CharSequence text = n.extras.getCharSequence(key);
            if (text != null) status.add(text.toString().trim());
        }
        if (n.actions != null) for (Notification.Action action : n.actions)
            if (action.title != null) actions.add(action.title.toString().trim());
        int type = n.extras.getInt("android.callType", -1);
        if (type == 1 || type == 3 || CallDetector.isPending(status, actions) || CallDetector.isEnded(status))
            return new Clock(0, now, 0);

        boolean chronometer = n.extras.getBoolean(Notification.EXTRA_SHOW_CHRONOMETER, false)
                && !n.extras.getBoolean(Notification.EXTRA_CHRONOMETER_COUNT_DOWN, false) && n.when > 0;
        long elapsed = CallDetector.elapsedMillis(status);
        long waitingAt = previous == null ? 0 : previous.waitingAt;
        if (!chronometer && elapsed < 0) {
            if (previous != null && previous.start > 0) return previous;
            return new Clock(0, now, 0); // CallStyle "ongoing" or a hang-up button alone is not a connection signal.
        }
        long reported = chronometer ? n.when : 0;
        if (previous != null && previous.start > 0 && (!chronometer || previous.reportedStart == reported)) return previous;
        long start = elapsed >= 0 ? now - elapsed : reported;
        // WhatsApp may keep the outgoing notification's when after enabling its connected clock.
        if (elapsed < 0 && waitingAt > 0 && start <= waitingAt) start = now;
        start = Math.max(1, Math.min(start, now));
        return new Clock(start, waitingAt, reported);
    }
}
