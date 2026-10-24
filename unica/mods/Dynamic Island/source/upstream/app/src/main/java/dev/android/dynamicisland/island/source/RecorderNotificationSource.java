package dev.android.dynamicisland.island.source;

import android.app.Notification;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.xposed.XLog;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/**
 * The screen recorder's own ongoing notification as a recording card, for builds where System UI does not report
 * the recording through its chip model (so {@link CastSource} has nothing to show). Used only while no chip-based
 * recording card exists.
 */
public final class RecorderNotificationSource {
    private static final int RED = -50384;
    private static final int MAX_ACTIONS = 3;
    private static final String SMART_CAPTURE = "com.samsung.android.app.smartcapture";

    private final AppLook apps;
    private volatile IslandItem item;
    private volatile Set<String> shownOriginals = Collections.emptySet();
    private final Runnable onChange;
    private Runnable onShownChanged = () -> { };
    private String loggedKey;

    public RecorderNotificationSource(Context ctx, Runnable onChange) {
        this.apps = new AppLook(ctx);
        this.onChange = onChange;
    }

    /** True for the ongoing notification of a screen recorder. */
    static boolean isRecorder(StatusBarNotification sbn) {
        Notification n = sbn == null ? null : sbn.getNotification();
        if (n == null || (n.flags & (Notification.FLAG_ONGOING_EVENT | Notification.FLAG_FOREGROUND_SERVICE)) == 0) {
            return false;
        }
        String channel = n.getChannelId() == null ? "" : n.getChannelId().toLowerCase(Locale.ROOT);
        return (channel.contains("screen") && channel.contains("record")) || channel.contains("screenrecord")
                || SMART_CAPTURE.equals(sbn.getPackageName());
    }

    public void update(List<StatusBarNotification> snapshot) {
        IslandItem fresh = null;
        for (StatusBarNotification sbn : snapshot) {
            if (isRecorder(sbn)) {
                fresh = build(sbn);
                if (!sbn.getKey().equals(loggedKey)) {
                    loggedKey = sbn.getKey();
                    XLog.event("screen recorder notification " + sbn.getKey() + " channel=" + sbn.getNotification().getChannelId());
                }
                break;
            }
        }
        IslandItem old = item;
        item = fresh;
        if ((old == null) != (fresh == null) || (old != null && !old.key.equals(fresh.key))) {
            onChange.run();
        }
    }

    /** Adds the card unless a recording card is already there. */
    public void collect(List<IslandItem> out) {
        IslandItem card = item;
        boolean covered = false;
        for (IslandItem it : out) {
            if (it.kind == IslandItem.Kind.RECORDING && !it.key.startsWith("rec:")) {
                covered = true;
                break;
            }
        }
        if (card == null || covered) {
            publish(Collections.emptySet());
            return;
        }
        out.add(card);
        publish(Collections.singleton(card.sourceKey));
    }

    public boolean isShownOnIsland(String notificationKey) {
        return shownOriginals.contains(notificationKey);
    }

    public void setOnShownChanged(Runnable listener) {
        onShownChanged = listener;
    }

    private void publish(Set<String> shown) {
        if (!shown.equals(shownOriginals)) {
            shownOriginals = new HashSet<>(shown);
            onShownChanged.run();
        }
    }

    private IslandItem build(StatusBarNotification sbn) {
        Notification n = sbn.getNotification();
        Bundle extras = n.extras == null ? new Bundle() : n.extras;
        String pkg = sbn.getPackageName();
        IslandItem it = new IslandItem("rec:" + sbn.getKey());
        it.sourceKey = sbn.getKey();
        it.kind = IslandItem.Kind.RECORDING;
        it.accent = RED;
        it.pulsingDot = true;
        it.packageName = pkg;
        CharSequence title = extras.getCharSequence(Notification.EXTRA_TITLE);
        it.title = title != null ? title : "Screen recording";
        it.appName = it.title;
        it.subtitle = extras.getCharSequence(Notification.EXTRA_TEXT);
        it.contentIntent = n.contentIntent;
        it.postTime = Long.MAX_VALUE - 1;
        it.trailing = IslandItem.Trailing.CHRONOMETER;
        it.chronoBase = extras.getBoolean(Notification.EXTRA_SHOW_CHRONOMETER, false) && n.when > 0 ? n.when : sbn.getPostTime();
        Drawable icon = apps.icon(pkg);
        it.icon = icon;
        it.iconIsImage = true;
        it.cardImage = icon;
        it.cardImageIsImage = true;
        it.actionType = 1;
        if (n.actions != null) {
            for (Notification.Action a : n.actions) {
                if (a.actionIntent != null && a.title != null && it.actions.size() < MAX_ACTIONS) {
                    it.actions.add(new IslandItem.Action(a.title, null, a.actionIntent, null, OaSource.isDestructive(a.title)));
                }
            }
        }
        if (it.actions.isEmpty() && n.contentIntent != null) {
            // the recorder stops when its notification is tapped ("tap to stop"): the card gets that as a stop button
            boolean ko = "ko".equals(Locale.getDefault().getLanguage());
            it.actions.add(new IslandItem.Action(ko ? "중지" : "Stop", null, n.contentIntent, null, true));
            it.subtitle = ko ? "녹화 중" : "Recording"; // the notification's own text says "tap to stop", which the button does now
            it.contentIntent = null; // tapping the card must not stop the recording
        }
        return it;
    }
}
