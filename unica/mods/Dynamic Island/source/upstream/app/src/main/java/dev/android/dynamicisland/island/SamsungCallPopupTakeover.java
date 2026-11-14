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

/** Dismiss Samsung's app-owned mini call window independently of the island's presentation. Main thread only. */
final class SamsungCallPopupTakeover {
    static final String PACKAGE = "com.samsung.android.incallui";
    static final String HIDE_ACTION = "com.samsung.rcs.intent.action.ACTION_HIDE_MINI_MODE_CALL_VIEW";
    private static final long[] ATTEMPTS_MS = {0, 150, 500, 1000};
    private final Handler main;
    private final Sender sender;
    private final Map<Integer, Target> targets = new HashMap<>();

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

    /** Start from the native call notification, before any card has to be built, opened or drawn. */
    void setNotifications(List<StatusBarNotification> notifications) {
        Map<Integer, Map<String, Long>> calls = new HashMap<>();
        for (StatusBarNotification sbn : notifications) {
            if (!isSamsungCall(sbn)) continue;
            int user = sbn.getUserId();
            if (user < 0 || user > Integer.MAX_VALUE / 100_000) continue;
            calls.computeIfAbsent(user, ignored -> new HashMap<>()).put(sbn.getKey(), sbn.getPostTime());
        }
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
            if (targets.get(userId) != this) return;
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
