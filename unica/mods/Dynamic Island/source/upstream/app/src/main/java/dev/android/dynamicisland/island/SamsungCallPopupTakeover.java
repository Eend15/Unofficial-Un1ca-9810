package dev.android.dynamicisland.island;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.XLog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.BooleanSupplier;

/** Dismiss Samsung's app-owned mini call window independently of the island's presentation. Main thread only. */
final class SamsungCallPopupTakeover {
    static final String PACKAGE = "com.samsung.android.incallui";
    static final String HIDE_ACTION = "com.samsung.rcs.intent.action.ACTION_HIDE_MINI_MODE_CALL_VIEW";
    private static final long[] ATTEMPTS_MS = {0, 150, 500, 1000, 2000, 3500, 5000};
    private final Handler main;
    private final Sender sender;
    private final Map<Integer, Target> targets = new HashMap<>();
    /** While this says true Samsung's window is left alone, whatever the call notification looks like. */
    private BooleanSupplier hold = () -> false;

    interface Sender { void hide(int userId); }

    /** Runs in SystemUI with the host's cross-user broadcast permission. */
    @android.annotation.SuppressLint("MissingPermission")
    SamsungCallPopupTakeover(Context context, Handler main) {
        this(main, userId -> {
            Intent intent = new Intent(HIDE_ACTION).setPackage(PACKAGE).addFlags(Intent.FLAG_RECEIVER_FOREGROUND);
            context.sendBroadcastAsUser(intent, UserHandle.getUserHandleForUid(userId * 100_000));
        });
    }

    SamsungCallPopupTakeover(Handler main, Sender sender) {
        this.main = main;this.sender = sender;
    }

    /**
     * Samsung's window stays for as long as {@code hold} says true (the phone rings and the island's incoming-call card
     * is switched off). This is decided by the state of the phone, not by the shape of the call notification: Samsung
     * posts ringing notifications that look like a call in progress (call type 2 or 3, or a running clock), and those
     * used to close the window even with the card switched off.
     */
    void holdWhile(BooleanSupplier hold) {
        this.hold = hold == null ? () -> false : hold;
    }

    /** Start from the native call notification, before any card has to be built, opened or drawn. */
    void setNotifications(List<StatusBarNotification> notifications) {
        setNotifications(notifications, sbn -> true);
    }

    /**
     * As {@link #setNotifications(List)}, for the calls {@code replaceable} accepts: Samsung's window goes only when
     * the island takes the call over, so that a call is never left with neither.
     */
    void setNotifications(List<StatusBarNotification> notifications, java.util.function.Predicate<StatusBarNotification> replaceable) {
        Map<Integer, Map<String, Long>> calls = new HashMap<>();
        for (StatusBarNotification sbn : notifications) {
            if (!isSamsungCall(sbn) || !replaceable.test(sbn)) continue;
            int user = sbn.getUserId();
            if (user < 0 || user > Integer.MAX_VALUE / 100_000) continue;
            calls.computeIfAbsent(user, ignored -> new HashMap<>()).put(sbn.getKey(), sbn.getPostTime());
        }
        // Asked only when there is a call to act on. Held: no new burst, and a burst already running is dropped below.
        if (!calls.isEmpty() && hold.getAsBoolean()) calls.clear();
        Iterator<Map.Entry<Integer, Target>> old = targets.entrySet().iterator();
        while (old.hasNext()) {
            Map.Entry<Integer, Target> entry = old.next();
            if (entry.getValue().postings.equals(calls.get(entry.getKey()))) continue;
            main.removeCallbacks(entry.getValue());old.remove();
        }
        for (Map.Entry<Integer, Map<String, Long>> entry : calls.entrySet()) {
            if (targets.containsKey(entry.getKey())) continue;
            Target target = new Target(entry.getKey(), entry.getValue());
            targets.put(entry.getKey(), target);main.post(target);
        }
    }

    /**
     * Whether the island takes this call over from Samsung's window. A ringing call needs a card it can build, a call
     * in progress or being screened needs only an island that is showing; an older notification that says nothing of
     * the call type counts as ringing unless it runs a clock.
     */
    static boolean replaceable(Notification notification, boolean cardBuilt, boolean islandShowing) {
        if (!islandShowing || notification == null) return false;
        int type = notification.extras == null ? -1 : notification.extras.getInt("android.callType", -1);
        if (type == 1) return cardBuilt;
        if (type == 2 || type == 3) return true;
        boolean clock = notification.extras != null && notification.extras.getBoolean(Notification.EXTRA_SHOW_CHRONOMETER, false);
        return cardBuilt || clock;
    }

    private static boolean isSamsungCall(StatusBarNotification sbn) {
        if (sbn == null || !PACKAGE.equals(sbn.getPackageName())) return false;
        Notification notification = sbn.getNotification();
        return notification != null && (Notification.CATEGORY_CALL.equals(notification.category)
                || notification.extras != null && Notification.CallStyle.class.getName()
                .equals(notification.extras.getString(Notification.EXTRA_TEMPLATE)));
    }

    /** The hide action is package-wide: one burst per user also covers call waiting/multiple call notifications. */
    private final class Target implements Runnable {
        final int userId;
        final Map<String, Long> postings;
        int attempt;

        Target(int userId, Map<String, Long> postings) {
            this.userId = userId;this.postings = postings;
        }

        @Override public void run() {
            if (targets.get(userId) != this || hold.getAsBoolean()) return;
            try {
                sender.hide(userId);
                Diagnostics.fact("stock call mini popup", "Samsung hide request sent on call notification; user "
                        + userId + "; attempt " + (attempt + 1) + "/" + ATTEMPTS_MS.length);
            } catch (RuntimeException | LinkageError failure) {
                Diagnostics.fact("stock call mini popup", "request failed: " + failure.getClass().getSimpleName());
                XLog.once("Samsung call mini popup hide", failure);return;
            }
            if (++attempt < ATTEMPTS_MS.length)
                main.postDelayed(this, ATTEMPTS_MS[attempt] - ATTEMPTS_MS[attempt - 1]);
        }
    }
}
