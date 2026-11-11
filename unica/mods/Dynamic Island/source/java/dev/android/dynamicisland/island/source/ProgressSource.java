package dev.android.dynamicisland.island.source;

import android.app.Notification;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.detect.NotificationText;
import dev.android.dynamicisland.island.detect.TextProgress;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.rules.RuleStore;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Ordinary progress notifications (downloads, file copies, app updates, uploads) shown as progress
 * cards. One UI only promotes apps that opt in to "live notifications"; everything else with a
 * progress bar was invisible to the island.
 */
public final class ProgressSource {
    private static final String TASK_PREFIX = "task:";
    private static final int MAX_ITEMS = 4;
    private static final long NOTIFY_INTERVAL_MS = 500;
    private static final int MAX_ACTIONS = 3;
    private static final int DEFAULT_ACCENT = 0xFF0A84FF;

    private static final Set<String> IGNORED = new HashSet<>(Arrays.asList(
            "android", "com.android.systemui", "dev.android.dynamicisland"));

    private final AppLook apps;
    private final Handler main;
    private final Runnable onChange;
    /** This source's own delayed refresh: sharing {@code onChange} would let another source cancel it. */
    private final Runnable tick = new Runnable() {
        @Override
        public void run() {
            onChange.run();
        }
    };
    private final Map<String, IslandItem> items = new LinkedHashMap<>();
    private long lastNotify;
    /** Keys of the notifications whose card is on the island right now; read from the list builder. */
    private volatile Set<String> shownOriginals = Collections.emptySet();
    /** Asked to rebuild the shade list when {@link #shownOriginals} changed. */
    private Runnable onShownChanged = () -> { };

    public ProgressSource(Context ctx, Handler main, Runnable onChange) {
        this.apps = new AppLook(ctx);
        this.main = main;
        this.onChange = onChange;
    }

    /** Called on System UI's main thread every time the notification list was rebuilt. At most one card per app. */
    public void update(List<StatusBarNotification> snapshot) {
        Map<String, IslandItem> fresh = new LinkedHashMap<>();
        Set<String> packages = new HashSet<>();
        for (StatusBarNotification sbn : snapshot) {
            if (fresh.size() >= MAX_ITEMS) {
                break;
            }
            IslandItem it = !ModuleSettings.experimentalRecovery() && PromotedSource.enabled() && PromotedSource.isPromoted(sbn) ? null : build(sbn);
            if (it != null && packages.add(sbn.getPackageName())) {
                fresh.put(it.key, it);
            }
        }
        boolean changed = fresh.size() != items.size();
        if (!changed) {
            for (Map.Entry<String, IslandItem> e : fresh.entrySet()) {
                IslandItem old = items.get(e.getKey());
                if (old == null || old.progressIndeterminate != e.getValue().progressIndeterminate || old.progress != e.getValue().progress || !String.valueOf(old.title).equals(String.valueOf(e.getValue().title))
                        || !String.valueOf(old.subtitle).equals(String.valueOf(e.getValue().subtitle))) {
                    changed = true;
                    break;
                }
            }
        }
        if (!changed) {
            return;
        }
        items.clear();
        items.putAll(fresh);
        java.util.TreeSet<String> packagesShown = new java.util.TreeSet<>();
        for (IslandItem item : items.values()) packagesShown.add(item.packageName + (item.progressIndeterminate ? " (indeterminate)" : ""));
        dev.android.dynamicisland.xposed.Diagnostics.fact("progress cards", packagesShown.isEmpty() ? "none" : String.join(" | ", packagesShown));
        notifyChanged();
    }

    /** Refreshes the island, but at most every {@link #NOTIFY_INTERVAL_MS}: apps report progress very often. */
    private void notifyChanged() {
        long now = SystemClock.uptimeMillis();
        long wait = lastNotify + NOTIFY_INTERVAL_MS - now;
        if (wait <= 0) {
            lastNotify = now;
            onChange.run();
        } else {
            main.removeCallbacks(tick);
            lastNotify = now + wait;
            main.postDelayed(tick, wait);
        }
    }

    /** A real, determinate progress bar in the notification's own fields. */
    static boolean hasBar(Bundle extras) {
        return extras != null && !extras.getBoolean(Notification.EXTRA_PROGRESS_INDETERMINATE, false)
                && extras.getInt(Notification.EXTRA_PROGRESS_MAX, 0) > 0 && extras.getInt(Notification.EXTRA_PROGRESS, 0) >= 0;
    }

    /**
     * An ordinary notification (one that is not ongoing) with a real progress bar, which the "progress of ordinary
     * notifications" option turns into a progress card. Such a notification is no message popup then.
     */
    public static boolean takesOrdinary(StatusBarNotification sbn) {
        Notification n = sbn == null ? null : sbn.getNotification();
        if (n == null || n.extras == null || !ModuleSettings.progressAny() || !ModuleSettings.progressNotifications()
                || IGNORED.contains(sbn.getPackageName())) {
            return false;
        }
        boolean ongoing = (n.flags & (Notification.FLAG_ONGOING_EVENT | Notification.FLAG_FOREGROUND_SERVICE)) != 0;
        return !ongoing && (n.flags & Notification.FLAG_GROUP_SUMMARY) == 0 && hasBar(n.extras) && !isSpecial(sbn, n, n.extras);
    }

    private static String liveSource(IslandItem live) {
        if (!(live.key.startsWith("oa:") || live.key.startsWith("live:"))) return null;
        if (live.sourceKey != null) return live.sourceKey;
        return live.key.startsWith("oa:") ? live.key.substring(3) : null;
    }

    /** Adds the progress cards, except for the foreground app and those One UI already shows as live notification. */
    public void collect(List<IslandItem> out, String foregroundPackage) {
        if (items.isEmpty() || !ModuleSettings.progressNotifications()) {
            publishShown(Collections.emptySet());
            return;
        }
        Set<String> withBar = new HashSet<>();
        if (ModuleSettings.progressAny()) {
            // a card with a real bar beats the live card of the same notification, which usually has none
            for (IslandItem it : items.values()) {
                if (it.progress >= 0.0f || it.progressIndeterminate) withBar.add(it.key.substring(TASK_PREFIX.length()));
            }
            out.removeIf(live -> withBar.contains(liveSource(live)));
        }
        Set<String> promoted = new HashSet<>();
        for (IslandItem it : out) {
            if (it.key.startsWith("oa:") || it.key.startsWith("live:")) {
                if (it.sourceKey != null) promoted.add(it.sourceKey);
                else if (it.key.startsWith("oa:")) promoted.add(it.key.substring(3));
            }
        }
        Set<String> shown = new HashSet<>();
        for (IslandItem it : items.values()) {
            if (it.packageName != null && it.packageName.equals(foregroundPackage) && !ModuleSettings.progressForeground()) {
                continue;
            }
            if (promoted.contains(it.key.substring(TASK_PREFIX.length()))) {
                continue; // already shown as a live notification
            }
            out.add(it);
            shown.add(it.key.substring(TASK_PREFIX.length()));
        }
        publishShown(shown);
    }

    /** True when the card of this notification is on the island, so its shade row is redundant. */
    public boolean isShownOnIsland(String notificationKey) {
        return shownOriginals.contains(notificationKey);
    }

    public void setOnShownChanged(Runnable listener) {
        onShownChanged = listener;
    }

    private void publishShown(Set<String> shown) {
        if (!shown.equals(shownOriginals)) {
            shownOriginals = shown;
            onShownChanged.run();
        }
    }

    /** @return the card for a progress notification, or null when this notification is not one. */
    IslandItem build(StatusBarNotification sbn) {
        Notification n = sbn.getNotification();
        String pkg = sbn.getPackageName();
        if (n == null || IGNORED.contains(pkg)) {
            return null;
        }
        Bundle extras = n.extras;
        if (extras == null) {
            return null;
        }
        boolean ongoing = (n.flags & (Notification.FLAG_ONGOING_EVENT | Notification.FLAG_FOREGROUND_SERVICE)) != 0;
        if (!(ongoing || takesOrdinary(sbn)) || (n.flags & Notification.FLAG_GROUP_SUMMARY) != 0) {
            return null;
        }
        if (isSpecial(sbn, n, extras)) {
            return null;
        }
        int max = extras.getInt(Notification.EXTRA_PROGRESS_MAX, 0);
        int progress = extras.getInt(Notification.EXTRA_PROGRESS, 0);
        boolean indeterminate = extras.getBoolean(Notification.EXTRA_PROGRESS_INDETERMINATE, false);
        boolean determinate = max > 0 && progress >= 0 && !indeterminate;
        float fraction = determinate ? Math.max(0.0f, Math.min(1.0f, progress / (float) max)) : -1.0f;
        if (!determinate) {
            // no progress bar of its own: a percentage in the text ("Downloading update 73%") still counts
            // chat, mail and news apps quote percentages all the time ("sales up 25%"); they have no downloads
            int percent = RuleStore.current().blockedSourcePackages.contains(pkg.toLowerCase(java.util.Locale.ROOT)) ? -1
                    : TextProgress.detect(NotificationText.joined(n));
            if (percent >= 0) {
                determinate = true;
                indeterminate = false;
                fraction = percent / 100.0f;
            }
        }
        if (!determinate && !(indeterminate && (Notification.CATEGORY_PROGRESS.equals(n.category) || ModuleSettings.experimentalRecovery()))) {
            return null;
        }
        CharSequence title = extras.getCharSequence(Notification.EXTRA_TITLE);
        CharSequence text = extras.getCharSequence(Notification.EXTRA_TEXT);
        if (text == null) {
            text = extras.getCharSequence(Notification.EXTRA_SUB_TEXT);
        }
        if (title == null && text == null) {
            return null;
        }

        IslandItem it = new IslandItem(TASK_PREFIX + sbn.getKey());
        it.sourceKey = sbn.getKey();
        it.kind = IslandItem.Kind.TASK;
        it.packageName = pkg;
        it.appName = apps.label(pkg);
        it.title = title != null ? title : it.appName;
        it.subtitle = text;
        it.contentIntent = n.contentIntent;
        it.postTime = sbn.getPostTime();
        it.accent = n.color != 0 ? Colors.readableOnBlack(n.color) : DEFAULT_ACCENT;
        if (determinate) {
            it.progress = fraction;
        } else {
            it.progressIndeterminate = true;
        }
        it.trailing = IslandItem.Trailing.PROGRESS_RING;
        Drawable appIcon = apps.icon(pkg);
        it.icon = appIcon;
        it.iconIsImage = true;
        it.cardImage = appIcon;
        it.cardImageIsImage = true;
        it.actionType = 1;
        if (n.actions != null) {
            for (Notification.Action a : n.actions) {
                if (a.actionIntent != null && a.title != null && it.actions.size() < MAX_ACTIONS) {
                    it.actions.add(new IslandItem.Action(a.title, null, a.actionIntent, null, OaSource.isDestructive(a.title)));
                }
            }
        }
        return it;
    }

    /**
     * Media, calls, conversations and system notifications that merely carry a progress bar. An Android 16
     * ProgressStyle notification is a progress notification and stays here, unless another source already makes a card
     * of it: One UI's own live ones (the ongoing-activity extras below) and the promoted ones of the live source.
     */
    private static boolean isSpecial(StatusBarNotification sbn, Notification n, Bundle extras) {
        String template = extras.getString(Notification.EXTRA_TEMPLATE);
        if (template != null && (template.endsWith("$MediaStyle") || template.endsWith("$DecoratedMediaCustomViewStyle")
                || template.endsWith("$CallStyle"))) {
            return true;
        }
        if (!ModuleSettings.experimentalRecovery() && template != null && template.endsWith("$ProgressStyle") && PromotedSource.enabled() && PromotedSource.isPromoted(sbn)) {
            return true;
        }
        if (extras.containsKey(Notification.EXTRA_MEDIA_SESSION) || Notification.CATEGORY_CALL.equals(n.category)
                || Notification.CATEGORY_TRANSPORT.equals(n.category) || Notification.CATEGORY_NAVIGATION.equals(n.category)) {
            return true;
        }
        for (String key : extras.keySet()) {
            if (key.startsWith("android.ongoingActivityNoti")) {
                return true; // One UI already promotes this one
            }
        }
        return false;
    }

    /** For tests. */
    List<IslandItem> snapshot() {
        return new ArrayList<>(items.values());
    }
}
