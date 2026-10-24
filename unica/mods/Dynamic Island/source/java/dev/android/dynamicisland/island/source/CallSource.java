package dev.android.dynamicisland.island.source;

import android.app.Notification;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Handler;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.detect.CallDetector;
import dev.android.dynamicisland.island.detect.IconContrast;
import dev.android.dynamicisland.island.detect.NotificationText;
import dev.android.dynamicisland.island.graphics.Glyphs;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.XLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/**
 * Calls the system call chip does not know about: voice chat and VoIP apps that keep an ongoing
 * "in call" notification. They get the same call card (caller, running time, end button).
 */
public final class CallSource {
    private static final int CALL_GREEN = 0xFF30D158;

    private final Context ctx;
    private final Handler main;
    private final Runnable onChange;
    private final Map<String, IslandItem> items = new LinkedHashMap<>();
    private final Map<String, Long> starts = new HashMap<>();
    // a VoIP app may update its notification every second: icons, labels and avatars are worked out once
    private final Map<String, String> labels = new HashMap<>();
    private final Map<String, Drawable.ConstantState> appIcons = new HashMap<>();
    private final Map<String, Object[]> avatars = new HashMap<>(); // key -> {large Icon, readable Drawable, Boolean personal}

    public CallSource(Context ctx, Handler main, Runnable onChange) {
        this.ctx = ctx;
        this.main = main;
        this.onChange = onChange;
    }

    /** Called on System UI's main thread every time the notification list was rebuilt. */
    public void update(List<StatusBarNotification> snapshot) {
        Map<String, IslandItem> fresh = new LinkedHashMap<>();
        for (StatusBarNotification sbn : snapshot) {
            IslandItem it = build(sbn);
            if (it != null) {
                fresh.put(it.key, it);
            }
        }
        List<String> live = keysOf(fresh);
        starts.keySet().retainAll(live);
        avatars.keySet().retainAll(live);
        boolean changed = fresh.size() != items.size();
        if (!changed) {
            for (Map.Entry<String, IslandItem> e : fresh.entrySet()) {
                IslandItem old = items.get(e.getKey());
                IslandItem now = e.getValue();
                if (old == null || old.chronoBase != now.chronoBase || !String.valueOf(old.title).equals(String.valueOf(now.title))
                        || !String.valueOf(old.subtitle).equals(String.valueOf(now.subtitle))) {
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
        main.post(onChange);
    }

    /** The notification keys of the given call cards, without the {@code callx:} prefix. */
    private static List<String> keysOf(Map<String, IslandItem> m) {
        List<String> out = new ArrayList<>();
        for (IslandItem it : m.values()) {
            out.add(it.key.substring("callx:".length()));
        }
        return out;
    }

    /** Adds the third-party call cards unless the system already shows its own call card. */
    public void collect(List<IslandItem> out, String foregroundPackage) {
        if (items.isEmpty() || !ModuleSettings.thirdPartyCalls()) {
            return;
        }
        for (IslandItem it : out) {
            if (it.kind == IslandItem.Kind.CALL) {
                return; // the system's own call card is already there
            }
        }
        for (IslandItem it : items.values()) {
            if (it.packageName != null && it.packageName.equals(foregroundPackage)) {
                continue;
            }
            out.add(it);
        }
    }

    /** The call card for a notification that looks like a running VoIP call, or null. */
    IslandItem build(StatusBarNotification sbn) {
        Notification n = sbn.getNotification();
        String pkg = sbn.getPackageName();
        if (n == null || n.extras == null || pkg == null || CallDetector.NATIVE_PACKAGES.contains(pkg)
                || pkg.equals("android") || pkg.equals("com.android.systemui") || pkg.equals(ctx.getPackageName())) {
            return null;
        }
        boolean ongoing = (n.flags & (Notification.FLAG_ONGOING_EVENT | Notification.FLAG_FOREGROUND_SERVICE)) != 0
                || !sbn.isClearable();
        if (!ongoing) {
            return null;
        }
        // a real media session is a player, not a call
        if (n.extras.containsKey(Notification.EXTRA_MEDIA_SESSION)) {
            return null;
        }
        List<String> actionTitles = new ArrayList<>();
        if (n.actions != null) {
            for (Notification.Action a : n.actions) {
                if (a.title != null) {
                    actionTitles.add(a.title.toString().trim());
                }
            }
        }
        long chronometer = 0;
        if (n.extras.getBoolean(Notification.EXTRA_SHOW_CHRONOMETER, false)
                && !n.extras.getBoolean(Notification.EXTRA_CHRONOMETER_COUNT_DOWN, false) && n.when > 0) {
            chronometer = n.when;
        }
        boolean discord = CallDetector.DISCORD_PACKAGES.contains(pkg.toLowerCase(Locale.ROOT));
        boolean voiceChannel = discord && "mediaConnections".equalsIgnoreCase(n.getChannelId());
        CallDetector.Verdict verdict = CallDetector.classify(true, Notification.CATEGORY_CALL.equals(n.category), voiceChannel, discord,
                NotificationText.parts(n), actionTitles, chronometer);
        if (verdict == null) {
            return null;
        }

        long now = System.currentTimeMillis();
        Long known = starts.get(sbn.getKey());
        long start;
        if (verdict.explicitStartMillis > 0) {
            start = verdict.explicitStartMillis;
        } else if (known != null) {
            start = known;
        } else if (verdict.elapsedMillis >= 0) {
            start = now - verdict.elapsedMillis;
        } else {
            start = sbn.getPostTime() > 0 ? sbn.getPostTime() : now;
        }
        start = Math.max(0, Math.min(start, now));
        starts.put(sbn.getKey(), start);

        Bundle extras = n.extras;
        CharSequence title = extras.getCharSequence(Notification.EXTRA_TITLE);
        CharSequence text = extras.getCharSequence(Notification.EXTRA_TEXT);
        String appName = label(pkg);

        IslandItem it = new IslandItem("callx:" + sbn.getKey());
        it.kind = IslandItem.Kind.CALL;
        it.packageName = pkg;
        it.appName = appName;
        it.title = title != null ? title : appName;
        it.subtitle = text != null ? text : appName;
        it.accent = CALL_GREEN;
        it.contentIntent = n.contentIntent;
        it.postTime = Long.MAX_VALUE;
        it.trailing = IslandItem.Trailing.CHRONOMETER;
        it.chronoBase = start;
        it.chronoCountDown = false;
        Drawable appIcon = appIcon(pkg);
        Icon largeIcon = n.getLargeIcon();
        Drawable avatar;
        boolean personal;
        Object[] cached = avatars.get(sbn.getKey());
        if (cached != null && cached[0] == largeIcon) {
            avatar = (Drawable) cached[1];
            personal = (Boolean) cached[2];
        } else {
            Drawable large = largeIcon != null ? load(largeIcon) : null;
            avatar = large != null ? IconContrast.readable(ctx, large, appIcon) : null;
            personal = avatar != null && avatar != appIcon; // not swapped for the app icon
            if (!personal) {
                avatar = null;
            }
            avatars.put(sbn.getKey(), new Object[]{largeIcon, avatar, personal});
        }
        it.icon = appIcon;
        it.iconIsImage = true;
        it.cardImage = avatar != null ? avatar : appIcon;
        it.cardImageIsImage = true;
        it.cardImageRound = personal;
        // the same round glyph buttons as the system call card: speaker, one extra, hang up
        Notification.Action end = null;
        Notification.Action speaker = null;
        Notification.Action extra = null;
        if (n.actions != null) {
            for (Notification.Action a : n.actions) {
                if (a.actionIntent == null || a.title == null || CallDetector.isAnswerAction(a.title)) {
                    continue;
                }
                if (CallDetector.isEndAction(a.title)) {
                    if (end == null) {
                        end = a;
                    }
                } else if (OaSource.isSpeakerTitle(a.title)) {
                    if (speaker == null) {
                        speaker = a;
                    }
                } else if (extra == null && !OaSource.isMuteTitle(a.title)) {
                    extra = a;
                }
            }
        }
        if (speaker != null) {
            IslandItem.Action b = new IslandItem.Action(speaker.title, null, speaker.actionIntent, null, false);
            b.glyph = Glyphs.SPEAKER;
            it.actions.add(b);
        }
        if (extra != null) {
            Drawable icon = extra.getIcon() != null ? load(extra.getIcon()) : null;
            it.actions.add(new IslandItem.Action(extra.title, icon, extra.actionIntent, null, false));
        }
        if (end != null) {
            IslandItem.Action b = new IslandItem.Action(end.title, null, end.actionIntent, null, true);
            b.glyph = Glyphs.HANGUP;
            it.actions.add(b);
        }
        return it;
    }

    private Drawable load(Icon icon) {
        try {
            Drawable d = icon.loadDrawable(ctx);
            return d == null ? null : d.mutate();
        } catch (Throwable t) {
            XLog.once("CallSource.icon", t);
            return null;
        }
    }

    private Drawable appIcon(String pkg) {
        try {
            Drawable.ConstantState cs = appIcons.get(pkg);
            if (cs != null) {
                return cs.newDrawable().mutate();
            }
            Drawable d = ctx.getPackageManager().getApplicationIcon(pkg);
            if (d.getConstantState() != null) {
                appIcons.put(pkg, d.getConstantState());
            }
            return d;
        } catch (Throwable t) {
            return null;
        }
    }

    private String label(String pkg) {
        String cached = labels.get(pkg);
        if (cached != null) {
            return cached;
        }
        String label = pkg;
        try {
            PackageManager pm = ctx.getPackageManager();
            label = String.valueOf(pm.getApplicationLabel(pm.getApplicationInfo(pkg, 0)));
        } catch (Throwable t) {
            // unknown package: its name is the best we have
        }
        labels.put(pkg, label);
        return label;
    }

    /** For tests. */
    List<IslandItem> snapshot() {
        return new ArrayList<>(items.values());
    }
}
