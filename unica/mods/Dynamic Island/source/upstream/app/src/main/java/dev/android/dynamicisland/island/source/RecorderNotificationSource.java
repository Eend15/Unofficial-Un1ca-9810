package dev.android.dynamicisland.island.source;

import android.app.Notification;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.SystemClock;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.IslandText;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.xposed.XLog;
import dev.android.dynamicisland.settings.ModuleSettings;
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
    private final Context ctx;
    private volatile IslandItem item;
    private volatile Set<String> shownOriginals = Collections.emptySet();
    private final Runnable onChange;
    private Runnable onShownChanged = () -> { };
    private final RecordingClock clock = new RecordingClock();
    private final java.util.function.LongSupplier wallTime;
    private final java.util.function.LongSupplier elapsedTime;
    private java.util.function.Function<String, CastSource.RecorderLifecycle> lifecycleSession = pkg -> null;
    private String loggedKey;
    private String activeRecorderSession;
    private String activeCardKey;
    private String selectedKey;
    private long lifecycleToken;
    private long lifecycleStartToken;
    private long lastSeen;
    private int sessionGeneration;
    private boolean present;

    public RecorderNotificationSource(Context ctx, Runnable onChange) {
        this(ctx, onChange, System::currentTimeMillis, SystemClock::elapsedRealtime);
    }

    RecorderNotificationSource(Context ctx, Runnable onChange, java.util.function.LongSupplier wallTime,
            java.util.function.LongSupplier elapsedTime) {
        this.ctx = ctx;
        this.apps = new AppLook(ctx);
        this.onChange = onChange;
        this.wallTime = wallTime;
        this.elapsedTime = elapsedTime;
    }

    /** Positive tokens identify an observed continuous recording lifecycle; zero means unknown. */
    public void setLifecycleSession(java.util.function.Function<String, CastSource.RecorderLifecycle> supplier) {
        lifecycleSession = supplier;
    }

    /** True for the ongoing notification of a screen recorder. */
    static boolean isRecorder(StatusBarNotification sbn) {
        Notification n = sbn == null ? null : sbn.getNotification();
        if (n == null || (n.flags & Notification.FLAG_GROUP_SUMMARY) != 0
                || (n.flags & (Notification.FLAG_ONGOING_EVENT | Notification.FLAG_FOREGROUND_SERVICE)) == 0) {
            return false;
        }
        String channel = n.getChannelId() == null ? "" : n.getChannelId().toLowerCase(Locale.ROOT);
        return (channel.contains("screen") && channel.contains("record")) || channel.contains("screenrecord")
                || SMART_CAPTURE.equals(sbn.getPackageName())
                || (ModuleSettings.experimentalRecovery() && recorderPackage(sbn.getPackageName()));
    }

    private static boolean recorderPackage(String pkg) {
        String name = pkg == null ? "" : pkg.toLowerCase(Locale.ROOT);
        return name.contains("screenrecord") || name.contains("screen_recorder");
    }

    public synchronized void update(List<StatusBarNotification> snapshot) {
        java.util.TreeSet<String> unmatched = new java.util.TreeSet<>();
        StatusBarNotification recorder = null;
        for (StatusBarNotification sbn : snapshot) {
            Notification n = sbn == null ? null : sbn.getNotification();
            if (isRecorder(sbn)) {
                if (recorder == null || preferred(sbn, recorder)) {
                    recorder = sbn;
                }
            } else if (n != null && (n.flags & (Notification.FLAG_ONGOING_EVENT | Notification.FLAG_FOREGROUND_SERVICE)) != 0
                    && unmatched.size() < 8) {
                unmatched.add(sbn.getPackageName() + " channel=" + n.getChannelId());
            }
        }
        dev.android.dynamicisland.xposed.Diagnostics.fact("ongoing not carded", unmatched.isEmpty() ? "none" : String.join(" | ", unmatched));
        IslandItem fresh = null;
        if (recorder != null) {
            long wall = wallTime.getAsLong();
            long elapsed = elapsedTime.getAsLong();
            String session = recorder.getUserId() + "|" + recorder.getPackageName();
            Notification n = recorder.getNotification();
            Bundle extras = n.extras == null ? new Bundle() : n.extras;
            boolean systemClock = extras.getBoolean(Notification.EXTRA_SHOW_CHRONOMETER, false)
                    && n.when > 0L && n.when <= wall + 500L;
            CastSource.RecorderLifecycle lifecycle = lifecycleSession.apply(recorder.getPackageName());
            long token = lifecycle == null ? 0L : lifecycle.generation;
            long startToken = lifecycle == null ? 0L : lifecycle.start;
            boolean sameLifecycle = token > 0L && token == lifecycleToken;
            boolean sameStart = startToken > 0L && startToken == lifecycleStartToken;
            boolean bridge = sameLifecycle || sameStart
                    || (elapsed - lastSeen <= 2000L && systemClock && clock.matchesSystemBase(n.when));
            boolean continuing = session.equals(activeRecorderSession) && (present || bridge);
            if (startToken > 0L && lifecycleStartToken > 0L && startToken != lifecycleStartToken) {
                continuing = false;
            }
            if (!continuing) {
                activeRecorderSession = session;
                lifecycleStartToken = startToken;
                activeCardKey = session + "|" + (++sessionGeneration);
                long initial = systemClock ? n.when : recorder.getPostTime();
                clock.start(initial > 0L ? initial : wall, systemClock, wall, elapsed);
            } else if (systemClock) {
                clock.update(n.when, wall, elapsed);
            }
            lifecycleToken = token;
            // Unknown observations must not erase the last positively observed start generation.
            if (startToken > 0L) lifecycleStartToken = startToken;
            selectedKey = recorder.getKey();
            present = true;
            lastSeen = elapsed;
            fresh = build(recorder, activeCardKey, clock.base(wall, elapsed));
            if (!recorder.getKey().equals(loggedKey)) {
                loggedKey = recorder.getKey();
                XLog.event("screen recorder notification " + loggedKey + " channel=" + n.getChannelId()
                        + " flags=" + n.flags + " systemClock=" + systemClock + " when=" + n.when
                        + " post=" + recorder.getPostTime() + " base=" + fresh.chronoBase);
            }
        } else {
            // Hide missing content immediately; never keep a stale Stop PendingIntent alive.
            // A short gap is bridged only with a matching system start or observed lifecycle token.
            present = false;
        }
        IslandItem old = item;
        item = fresh;
        if ((old == null) != (fresh == null) || (old != null && fresh != null
                && (!old.key.equals(fresh.key) || !old.sourceKey.equals(fresh.sourceKey) || old.chronoBase != fresh.chronoBase))) {
            onChange.run();
        }
    }

    private boolean preferred(StatusBarNotification candidate, StatusBarNotification current) {
        int a = priority(candidate);
        int b = priority(current);
        return a > b || (a == b && candidate.getKey().compareTo(current.getKey()) < 0);
    }

    private int priority(StatusBarNotification sbn) {
        Notification n = sbn.getNotification();
        String channel = n.getChannelId() == null ? "" : n.getChannelId().toLowerCase(Locale.ROOT);
        int score = channel.contains("screen") && channel.contains("record") ? 8 : 0;
        if (sbn.getKey().equals(selectedKey)) score += 4;
        if (n.extras != null && n.extras.getBoolean(Notification.EXTRA_SHOW_CHRONOMETER, false) && n.when > 0L) score++;
        return score;
    }

    /** Adds the card unless a recording card is already there. */
    public synchronized void collect(List<IslandItem> out) {
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
        card.chronoBase = clock.base(wallTime.getAsLong(), elapsedTime.getAsLong());
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

    private IslandItem build(StatusBarNotification sbn, String session, long chronoBase) {
        Notification n = sbn.getNotification();
        Bundle extras = n.extras == null ? new Bundle() : n.extras;
        String pkg = sbn.getPackageName();
        IslandItem it = new IslandItem("rec:" + session);
        it.sourceKey = sbn.getKey();
        it.kind = IslandItem.Kind.RECORDING;
        it.accent = RED;
        it.pulsingDot = true;
        it.packageName = pkg;
        CharSequence title = extras.getCharSequence(Notification.EXTRA_TITLE);
        it.title = title != null ? title : IslandText.get(ctx, "island_screen_recording");
        it.appName = it.title;
        it.subtitle = extras.getCharSequence(Notification.EXTRA_TEXT);
        it.contentIntent = n.contentIntent;
        it.postTime = Long.MAX_VALUE - 1;
        it.trailing = IslandItem.Trailing.CHRONOMETER;
        it.chronoBase = chronoBase;
        it.chronoUsesElapsedRealtime = true;
        it.chronoElapsedBase = clock.elapsedBase();
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
            it.actions.add(new IslandItem.Action(IslandText.get(ctx, "island_stop"),
                    null, n.contentIntent, null, true));
            it.subtitle = IslandText.get(ctx, "island_recording"); // the notification's own text says "tap to stop", which the button does now
            it.contentIntent = null; // tapping the card must not stop the recording
        }
        return it;
    }
}
