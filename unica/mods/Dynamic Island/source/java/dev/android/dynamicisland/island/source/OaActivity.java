package dev.android.dynamicisland.island.source;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.xposed.Refl;

/**
 * One {@code OngoingActivityData} object with the handful of fields every decision needs already
 * read: the notification it came from, its key, the owning package and the tap target.
 */
final class OaActivity {
    /** Ongoing-activity styles from this value up are Now Bar cards that the island does not mirror. */
    private static final int FIRST_NOWBAR_STYLE = 2;

    final Object data;
    final String key;
    final String pkg;
    final PendingIntent pendingIntent;
    /** System UI's notification entry, null when the activity has none. */
    final Object entry;
    final StatusBarNotification sbn;
    final Notification notification;

    OaActivity(Object data) {
        this.data = data;
        key = (String) Refl.get(data, "mNotiID");
        pkg = (String) Refl.get(data, "mPackageName");
        pendingIntent = (PendingIntent) Refl.get(data, "mPendingIntent");
        entry = Refl.get(data, "mNotificationEntry");
        sbn = entry == null ? null : (StatusBarNotification) Refl.get(entry, "mSbn");
        notification = sbn == null ? null : sbn.getNotification();
    }

    boolean isMedia() {
        return Refl.getBool(data, "mIsMediaOngoingData", false);
    }

    boolean isGroupSummary() {
        return notification != null && (notification.flags & Notification.FLAG_GROUP_SUMMARY) != 0;
    }

    /** The card style asks for the full Now Bar treatment, which the island leaves to System UI. */
    boolean isNowBarStyle() {
        return styleOf(notification) >= FIRST_NOWBAR_STYLE || Refl.getInt(data, "mStyle", 0) >= FIRST_NOWBAR_STYLE;
    }

    boolean isCallStyle() {
        return notification != null && templateEndsWith(notification, "$CallStyle");
    }

    /** True when System UI itself no longer promotes this notification (demoted or its bind was cut off). */
    boolean isDemoted() {
        if (entry == null) {
            return false;
        }
        Object promoted = Refl.call(entry, "isPromotedState", new Object[0]);
        return Boolean.FALSE.equals(promoted) || Boolean.TRUE.equals(Refl.get(entry, "mIsBindCutOff"));
    }

    /** Package the tap would open: the component or package of the pending intent, else its creator. */
    String targetPackage() {
        if (pendingIntent == null) {
            return null;
        }
        try {
            Object intent = Refl.call(pendingIntent, "getIntent", new Object[0]);
            if (intent instanceof Intent) {
                ComponentName component = ((Intent) intent).getComponent();
                if (component != null) {
                    return component.getPackageName();
                }
                if (((Intent) intent).getPackage() != null) {
                    return ((Intent) intent).getPackage();
                }
            }
        } catch (Throwable t) {
            // hidden getIntent() unavailable: the creator is the next best guess
        }
        return pendingIntent.getCreatorPackage();
    }

    /** Samsung's {@code android.ongoingActivityNoti.style} extra, which may be stored as a number or a string. */
    static int styleOf(Notification n) {
        if (n == null) {
            return 0;
        }
        Object raw = n.extras.get("android.ongoingActivityNoti.style");
        if (raw instanceof Number) {
            return ((Number) raw).intValue();
        }
        if (raw instanceof String) {
            try {
                return Integer.parseInt(((String) raw).trim());
            } catch (NumberFormatException e) {
                return 0;
            }
        }
        return 0;
    }

    static boolean isProgressStyle(Notification n) {
        return n != null && (templateEndsWith(n, "$ProgressStyle")
                || n.extras.getString("androidx.core.app.extra.COMPAT_TEMPLATE") != null
                && n.extras.getString("androidx.core.app.extra.COMPAT_TEMPLATE").endsWith("$ProgressStyle"));
    }

    private static boolean templateEndsWith(Notification n, String suffix) {
        String template = n.extras.getString("android.template");
        return template != null && template.endsWith(suffix);
    }
}
