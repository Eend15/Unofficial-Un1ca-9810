package dev.android.dynamicisland.island.source;

import android.app.Notification;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import android.widget.RemoteViews;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.hooks.HideDuplicated;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/**
 * Builds the {@link IslandItem} for one ongoing activity from its System UI data object. Finished
 * items are kept per data object, so a refresh that changed nothing reuses the same item.
 */
final class OaCardBuilder {
    /** {@code mChronometerPosition} value that puts the clock on the secondary line. */
    private static final int CLOCK_ON_SECONDARY_LINE = 2;
    private static final int MAX_BUTTONS = 3;
    /** Stopwatch bases are only pruned once the map grows past this many entries. */
    private static final int STOPWATCH_PRUNE_SIZE = 16;

    private final IconLoader icons;
    private final OaViews views;
    private final ProgressBinder progress;
    private final Map<Object, IslandItem> built = new WeakHashMap<>();
    /** Chronometer base per item key, so a paused stopwatch can still show its exact elapsed time. */
    private final Map<String, Long> stopwatchBases = new HashMap<>();

    OaCardBuilder(IconLoader icons, OaViews views, ProgressBinder progress) {
        this.icons = icons;
        this.views = views;
        this.progress = progress;
    }

    /** The item for an activity, built on first use. */
    IslandItem cardFor(OaActivity activity) {
        IslandItem item = built.get(activity.data);
        if (item == null) {
            item = build(activity);
            built.put(activity.data, item);
        }
        return item;
    }

    /** Forgets the stopwatch bases of items that are no longer on the island. */
    void pruneStopwatches(List<IslandItem> liveItems) {
        if (stopwatchBases.size() > STOPWATCH_PRUNE_SIZE) {
            Set<String> keys = new HashSet<>();
            for (IslandItem item : liveItems) {
                keys.add(item.key);
            }
            stopwatchBases.keySet().retainAll(keys);
        }
    }

    static IslandItem.Kind kindOf(Notification n, String pkg) {
        String category = n == null ? null : n.category;
        if ("navigation".equals(category)) {
            return IslandItem.Kind.NAVIGATION;
        }
        if ("stopwatch".equals(category) || "alarm".equals(category) || "com.sec.android.app.clockpackage".equals(pkg)) {
            return IslandItem.Kind.TIMER;
        }
        if ("com.sec.android.app.voicenote".equals(pkg)) {
            return IslandItem.Kind.RECORDING;
        }
        return "call".equals(category) ? IslandItem.Kind.CALL : IslandItem.Kind.LIVE;
    }

    private IslandItem build(OaActivity a) {
        Object data = a.data;
        Notification n = a.notification;
        String pkg = a.pkg;
        Bundle extras = n != null ? n.extras : new Bundle();

        IslandItem it = new IslandItem("oa:" + a.key);
        it.packageName = pkg;
        it.userId = Refl.getInt(data, "mUserId", 0);
        it.progressStyle = OaActivity.isProgressStyle(n);
        it.kind = kindOf(n, pkg);
        it.transfer = n != null && (Notification.CATEGORY_PROGRESS.equals(n.category)
                || (it.kind == IslandItem.Kind.LIVE && !it.progressStyle && extras.getInt(Notification.EXTRA_PROGRESS_MAX, 0) > 0));
        bindPillIcon(it, data, n, pkg);
        it.leftImage = icons.load((Icon) Refl.get(data, "mFirstIcon"), pkg);
        it.rightImage = icons.load((Icon) Refl.get(data, "mSecondIcon"), pkg);
        String chipScore = adoptChipTeams(it, data);
        it.pillColor = 0;

        OaViews.Chrono chrono = views.readChrono(data, n);
        progress.bindBar(it, data, extras, pkg);
        bindTrailing(it, a, chrono, chipScore, (CharSequence) Refl.get(data, "mExpandedChipText"),
                extras.getCharSequence("android.shortCriticalText"));

        it.appName = (String) Refl.get(data, "mAppName");
        String title = firstFilled((String) Refl.get(data, "mPrimaryInfo"), (String) Refl.get(data, "mNowbarPrimaryInfo"),
                text(extras, "android.title"));
        String subtitle = firstFilled((String) Refl.get(data, "mSecondaryInfo"), (String) Refl.get(data, "mNowbarSecondaryInfo"),
                text(extras, "android.text"));
        it.title = title;
        it.subtitle = subtitle;
        if (it.progressStyle) {
            // a ProgressStyle card shows the notification's own words
            CharSequence ownTitle = extras.getCharSequence("android.title");
            CharSequence ownText = extras.getCharSequence("android.text");
            if (hasText(ownTitle)) {
                it.title = ownTitle;
            }
            if (hasText(ownText)) {
                it.subtitle = ownText;
            }
            progress.bindStyle(it, extras, pkg);
        }

        bindDescription(it, data, subtitle, pkg);
        Object when = Refl.get(data, "mWhen");
        if (when instanceof Long && (Long) when > 0) {
            it.whenMillis = (Long) when;
        }
        it.profileBadge = icons.profileBadge(it.userId);
        bindImages(it, data, n, pkg);
        it.contentIntent = a.pendingIntent;
        it.remoteView = expandedView(data, n);
        it.actionType = Refl.getObjectInt(data, "mActionType", -1);
        it.primaryActionIndex = Refl.getObjectInt(data, "mPrimaryActionIndex", -1);
        bindButtonColors(it, data);
        bindButtons(it, data, pkg);
        return it;
    }

    /** Pill icon, and the accent taken from the chip / card background (or the notification colour). */
    private void bindPillIcon(IslandItem it, Object data, Notification n, String pkg) {
        Icon icon = (Icon) Refl.get(data, "mChipIcon");
        if (icon == null) {
            icon = (Icon) Refl.get(data, "mCardIcon");
        }
        it.icon = icons.load(icon, pkg);

        int color = Refl.getInt(data, "mChipBackground", 0);
        if (color == 0) {
            Object cardBg = Refl.get(data, "mCardIconBg");
            color = cardBg instanceof Integer ? (Integer) cardBg : 0;
        }
        if (color == 0 && n != null) {
            color = n.color;
        }
        it.accent = color == 0 ? -1 : Colors.readableOnBlack(color);
    }

    /** Takes team badges from the expanded chip layout when the data has none; returns the chip's text. */
    private String adoptChipTeams(IslandItem it, Object data) {
        if (it.hasTeams()) {
            return null;
        }
        OaViews.Chip chip = views.readChip((RemoteViews) Refl.get(data, "mExpandedChipView"));
        if (chip == null) {
            return null;
        }
        if (chip.left != null) {
            it.leftImage = chip.left;
            it.rightImage = chip.right;
        }
        return chip.text;
    }

    /** Decides what the collapsed pill shows after the title, in System UI's order of preference. */
    private void bindTrailing(IslandItem it, OaActivity a, OaViews.Chrono chrono, String chipScore,
            CharSequence chipText, CharSequence criticalText) {
        Notification n = a.notification;
        boolean frozen = chrono != null && chrono.isFrozen();
        if (chrono != null && !frozen) {
            // recorded whatever the pill shows, so cards can place a live clock
            it.chronoBase = chrono.base;
            it.chronoCountDown = chrono.countDown;
            it.chronoPosition = Refl.getObjectInt(a.data, "mChronometerPosition", 0);
            it.chronoMillis = !it.chronoCountDown && isStopwatch(n);
            if (it.chronoMillis) {
                stopwatchBases.put(it.key, it.chronoBase);
            }
        }
        if (hasText(chipScore)) {
            showText(it, chipScore);
        } else if (hasText(chipText)) {
            showText(it, chipText);
        } else if (frozen) {
            // a paused clock must not keep counting: freeze on the text System UI shows
            showText(it, frozenClockText(it.key, n, a.sbn, chrono));
        } else if (chrono != null) {
            it.trailing = IslandItem.Trailing.CHRONOMETER;
        } else if (hasText(criticalText)) {
            showText(it, criticalText);
        } else if (it.progress >= 0.0f || it.progressIndeterminate) {
            it.trailing = IslandItem.Trailing.PROGRESS_RING;
        } else {
            String primary = (String) Refl.get(a.data, "mPrimaryInfo");
            if (hasText(primary)) {
                showText(it, primary);
            }
        }
    }

    private static void showText(IslandItem it, CharSequence text) {
        it.trailing = IslandItem.Trailing.TEXT;
        it.trailingText = text;
    }

    /** A stopwatch that was paused shows the time elapsed when it was stopped, to the hundredth. */
    private CharSequence frozenClockText(String key, Notification n, StatusBarNotification sbn, OaViews.Chrono chrono) {
        Long base = isStopwatch(n) ? stopwatchBases.get(key) : null;
        if (base != null && sbn != null && sbn.getPostTime() >= base) {
            return IslandView.formatTimeCentis(sbn.getPostTime() - base);
        }
        return chrono.frozenText;
    }

    private void bindDescription(IslandItem it, Object data, String subtitle, String pkg) {
        Object description = Refl.get(data, "mDescription");
        if (description instanceof CharSequence && !description.toString().trim().isEmpty()) {
            it.description = description.toString().trim();
            return;
        }
        // System UI shows the secondary icon only next to a real secondary line or clock
        boolean hasSecondaryLine = subtitle != null && !subtitle.trim().isEmpty();
        if (hasSecondaryLine || (it.chronoPosition == CLOCK_ON_SECONDARY_LINE && it.hasChronometer())) {
            it.secondaryIcon = icons.load((Icon) Refl.get(data, "mSecondaryInfoIcon"), pkg);
        }
    }

    /** App icon (the pill icon too when it has none), card image and the mirrored-app detail line. */
    private void bindImages(IslandItem it, Object data, Notification n, String pkg) {
        Drawable appIcon = icons.load((Icon) Refl.get(data, "mAppIcon"));
        if (appIcon == null) {
            appIcon = icons.appIcon(pkg);
        }
        it.cardImage = appIcon;
        if (it.progressStyle && n != null && n.getLargeIcon() != null) {
            Drawable large = icons.load(n.getLargeIcon(), pkg);
            if (large != null) {
                it.cardImage = large;
            }
        }
        it.cardImageIsImage = true;
        if (it.icon == null) {
            it.icon = appIcon;
            it.iconIsImage = true;
        }
        it.cardIcon = icons.mirroredAppIcon(pkg, n);
        if (it.cardIcon != null) {
            CharSequence detail = HideDuplicated.originalSubText(
                    n.extras.getCharSequence("android.title"), n.extras.getCharSequence("android.subText"));
            if (detail != null && !detail.toString().equals(String.valueOf(it.subtitle))) {
                it.detail = detail;
            }
        }
    }

    /** The app's custom expanded card, falling back to the notification's own big or content view. */
    private static RemoteViews expandedView(Object data, Notification n) {
        RemoteViews custom = (RemoteViews) Refl.get(data, "mCustomExpandedCardView");
        if (custom == null) {
            custom = (RemoteViews) Refl.get(data, "mNowbarExpandRemoteView");
        }
        if (custom == null && n != null) {
            custom = n.bigContentView != null ? n.bigContentView : n.contentView;
        }
        return custom;
    }

    private static void bindButtonColors(IslandItem it, Object data) {
        if (!(Refl.get(data, "mActionBgColors") instanceof List)) {
            return;
        }
        List<?> colors = (List<?>) Refl.get(data, "mActionBgColors");
        it.actionBgColors = new int[colors.size()];
        for (int i = 0; i < it.actionBgColors.length; i++) {
            Object color = colors.get(i);
            it.actionBgColors[i] = color instanceof Integer ? (Integer) color : 0;
        }
    }

    private void bindButtons(IslandItem it, Object data, String pkg) {
        Object actions = Refl.get(data, "mActions");
        if (!(actions instanceof List)) {
            return;
        }
        for (Object o : (List<?>) actions) {
            if (!(o instanceof Notification.Action)) {
                continue;
            }
            Notification.Action action = (Notification.Action) o;
            if (action.actionIntent == null || action.title == null) {
                continue;
            }
            it.actions.add(new IslandItem.Action(action.title, icons.load(action.getIcon(), pkg),
                    action.actionIntent, null, ActionWords.isDestructive(action.title)));
            if (it.actions.size() == MAX_BUTTONS) {
                break;
            }
        }
    }

    private static boolean isStopwatch(Notification n) {
        if (n == null) {
            return false;
        }
        String channel = n.getChannelId();
        return "stopwatch".equals(n.category) || (channel != null && channel.contains("stopwatch"));
    }

    /** First non-empty candidate; when all are empty, the last one (the notification's own text). */
    private static String firstFilled(String preferred, String second, String last) {
        if (hasText(preferred)) {
            return preferred;
        }
        return hasText(second) ? second : last;
    }

    private static String text(Bundle extras, String key) {
        CharSequence value = extras.getCharSequence(key);
        return value == null ? null : value.toString();
    }

    static boolean hasText(CharSequence s) {
        return s != null && s.length() > 0;
    }
}
