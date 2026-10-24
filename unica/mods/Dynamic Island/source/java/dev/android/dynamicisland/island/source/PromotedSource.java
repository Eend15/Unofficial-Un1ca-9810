package dev.android.dynamicisland.island.source;

import android.app.Notification;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.Refl;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Android 16 "live" (promoted ongoing) notifications as island cards, for System UI builds that have no Samsung
 * ongoing-activity list: the stock status bar chip for them is taken out, the island replaces it.
 */
public final class PromotedSource {
    private static final String PREFIX = "live:";
    private static final int MAX_ITEMS = 3;
    private static final int MAX_ACTIONS = 3;
    private static final int DEFAULT_ACCENT = 0xFF0A84FF;
    private static final String EXTRA_REQUEST_PROMOTED = "android.requestPromotedOngoing";
    private static final String EXTRA_SHORT_CRITICAL_TEXT = "android.shortCriticalText";
    private static final Set<String> IGNORED = new HashSet<>(Arrays.asList(
            "android", "com.android.systemui", "dev.android.dynamicisland"));

    /** Set by the hooks on System UI builds that have no Samsung ongoing-activity list; elsewhere the OA source shows these. */
    private static volatile boolean enabled;

    private final AppLook apps;
    private final Runnable onChange;
    private final Map<String, IslandItem> items = new LinkedHashMap<>();
    private volatile Set<String> shownOriginals = Collections.emptySet();
    private Runnable onShownChanged = () -> { };

    public PromotedSource(Context ctx, Handler main, Runnable onChange) {
        this.apps = new AppLook(ctx);
        this.onChange = onChange;
    }

    public static void setEnabled(boolean on) {
        enabled = on;
    }

    public static boolean enabled() {
        return enabled;
    }

    /** True for a live notification the island makes a card of (calls and media have their own sources). */
    public static boolean isPromoted(StatusBarNotification sbn) {
        Notification n = sbn == null ? null : sbn.getNotification();
        if (n == null || n.extras == null || IGNORED.contains(sbn.getPackageName())) {
            return false;
        }
        if ((n.flags & Notification.FLAG_GROUP_SUMMARY) != 0) {
            return false;
        }
        String template = n.extras.getString(Notification.EXTRA_TEMPLATE);
        if (template != null && (template.endsWith("$MediaStyle") || template.endsWith("$CallStyle")
                || template.endsWith("$DecoratedMediaCustomViewStyle"))) {
            return false;
        }
        if (Notification.CATEGORY_CALL.equals(n.category) || n.extras.containsKey(Notification.EXTRA_MEDIA_SESSION)) {
            return false;
        }
        Object system = Refl.call(n, "isPromotedOngoing");
        return system instanceof Boolean ? (Boolean) system : n.extras.getBoolean(EXTRA_REQUEST_PROMOTED, false);
    }

    /** Called on System UI's main thread every time the notification list was rebuilt. */
    public void update(List<StatusBarNotification> snapshot) {
        if (!enabled) {
            return;
        }
        Map<String, IslandItem> fresh = new LinkedHashMap<>();
        for (StatusBarNotification sbn : snapshot) {
            if (fresh.size() >= MAX_ITEMS) {
                break;
            }
            IslandItem it = isPromoted(sbn) ? build(sbn) : null;
            if (it != null) {
                fresh.put(it.key, it);
            }
        }
        boolean changed = fresh.size() != items.size();
        for (Map.Entry<String, IslandItem> e : fresh.entrySet()) {
            IslandItem old = items.get(e.getKey());
            IslandItem now = e.getValue();
            if (old == null || old.progress != now.progress || old.chronoBase != now.chronoBase
                    || !String.valueOf(old.title).equals(String.valueOf(now.title))
                    || !String.valueOf(old.subtitle).equals(String.valueOf(now.subtitle))
                    || !String.valueOf(old.trailingText).equals(String.valueOf(now.trailingText))) {
                changed = true;
            }
        }
        if (changed) {
            items.clear();
            items.putAll(fresh);
            onChange.run();
        }
    }

    public void collect(List<IslandItem> out, String foregroundPackage) {
        if (items.isEmpty() || !ModuleSettings.progressNotifications()) {
            publishShown(Collections.emptySet());
            return;
        }
        Set<String> shown = new HashSet<>();
        for (IslandItem it : items.values()) {
            if (it.packageName != null && it.packageName.equals(foregroundPackage)) {
                continue;
            }
            out.add(it);
            shown.add(it.sourceKey);
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

    private IslandItem build(StatusBarNotification sbn) {
        Notification n = sbn.getNotification();
        Bundle extras = n.extras;
        String pkg = sbn.getPackageName();
        CharSequence title = extras.getCharSequence(Notification.EXTRA_TITLE);
        CharSequence text = extras.getCharSequence(Notification.EXTRA_TEXT);
        if (text == null) {
            text = extras.getCharSequence(Notification.EXTRA_SUB_TEXT);
        }
        CharSequence critical = extras.getCharSequence(EXTRA_SHORT_CRITICAL_TEXT);
        if (title == null && text == null && critical == null) {
            return null;
        }
        IslandItem it = new IslandItem(PREFIX + sbn.getKey());
        it.sourceKey = sbn.getKey();
        it.kind = IslandItem.Kind.LIVE;
        it.packageName = pkg;
        it.appName = apps.label(pkg);
        it.title = title != null ? title : it.appName;
        it.subtitle = text;
        it.contentIntent = n.contentIntent;
        it.postTime = sbn.getPostTime();
        it.accent = n.color != 0 ? Colors.readableOnBlack(n.color) : DEFAULT_ACCENT;
        Drawable appIcon = apps.icon(pkg);
        it.icon = appIcon;
        it.iconIsImage = true;
        it.cardImage = appIcon;
        it.cardImageIsImage = true;
        it.actionType = 1;
        int max = extras.getInt(Notification.EXTRA_PROGRESS_MAX, 0);
        int progress = extras.getInt(Notification.EXTRA_PROGRESS, 0);
        if (max > 0 && !extras.getBoolean(Notification.EXTRA_PROGRESS_INDETERMINATE, false)) {
            it.progress = Math.max(0.0f, Math.min(1.0f, progress / (float) max));
        }
        if (extras.getBoolean(Notification.EXTRA_SHOW_CHRONOMETER, false) && n.when > 0) {
            it.trailing = IslandItem.Trailing.CHRONOMETER;
            it.chronoBase = n.when;
            it.chronoCountDown = extras.getBoolean(Notification.EXTRA_CHRONOMETER_COUNT_DOWN, false);
        } else if (critical != null) {
            it.trailing = IslandItem.Trailing.TEXT;
            it.trailingText = critical;
        } else if (it.progress >= 0.0f) {
            it.trailing = IslandItem.Trailing.PROGRESS_RING;
        }
        if (n.actions != null) {
            for (Notification.Action a : n.actions) {
                if (a.actionIntent != null && a.title != null && it.actions.size() < MAX_ACTIONS) {
                    it.actions.add(new IslandItem.Action(a.title, null, a.actionIntent, null, OaSource.isDestructive(a.title)));
                }
            }
        }
        return it;
    }

    /** For tests. */
    List<IslandItem> snapshot() {
        return new ArrayList<>(items.values());
    }
}
