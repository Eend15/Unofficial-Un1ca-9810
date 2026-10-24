package dev.android.dynamicisland.island.source;

import android.app.Notification;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.xposed.XLog;
import java.util.Collection;
import java.util.List;
import java.util.Set;

/**
 * Turns Samsung One UI System UI's ongoing-activity data (the Now Bar / live notification model) into
 * {@link IslandItem} cards, and builds the in-call card from System UI's ongoing-call controller.
 *
 * <p>The data is read by reflection ({@link OaReader}), so every field name has to match the
 * framework exactly. The work is split by concern: {@link OaActivity} (what one data object says),
 * {@link OaCardBuilder} (data to item), {@link ProgressBinder}, {@link OaViews}, {@link IconLoader},
 * {@link ActionWords} and {@link CallCardBuilder}. Used by the island controller on the main thread only.
 */
public final class OaSource {
    /** Delay before refreshing after a speaker toggle, so the audio route has settled. */
    private static final long SPEAKER_REFRESH_DELAY_MS = 500;

    /** System UI's ongoing-call controller, set by the hooks once it exists. */
    public Object callController;
    /** Run on the main thread when the call card changed without a notification update (speaker route). */
    public Runnable onChanged;

    private final Handler main = new Handler(Looper.getMainLooper());
    private final OaReader reader;
    private final ProgressBinder progress;
    private final OaCardBuilder cards;
    private final CallCardBuilder calls;

    public OaSource(Context ctx, ClassLoader cl) {
        reader = new OaReader(cl);
        IconLoader icons = new IconLoader(ctx);
        progress = new ProgressBinder(icons);
        cards = new OaCardBuilder(icons, new OaViews(ctx), progress);
        calls = new CallCardBuilder(ctx, icons, reader, this::refreshSoon);
    }

    /** Package of the app on screen, or null when unknown. */
    public String foregroundPackage() {
        return reader.available() ? reader.foregroundPackage() : null;
    }

    /**
     * Adds a card per mirrored ongoing activity plus the call card. Packages that own an activity are
     * added to {@code packages}; keys of cards whose app is on screen go to {@code hiddenByForeground}.
     */
    public void collect(List<IslandItem> out, Set<String> hiddenByForeground, Collection<String> packages) {
        if (!reader.available()) {
            return;
        }
        String foreground = foregroundPackage();
        Set<String> pip = reader.pipPackages();
        int order = 0;
        for (Object data : reader.activities()) {
            order = collectOne(data, order, out, foreground, pip, hiddenByForeground, packages);
        }
        calls.collect(callController, out, packages, hiddenByForeground);
        cards.pruneStopwatches(out);
    }

    /** Adds the card of one activity to {@code out}; returns the next sort order. */
    private int collectOne(Object data, int order, List<IslandItem> out, String foreground, Set<String> pip,
            Set<String> hiddenByForeground, Collection<String> packages) {
        if (data == null) {
            return order;
        }
        try {
            OaActivity a = new OaActivity(data);
            if (a.isMedia() || a.key == null || a.pkg == null) {
                return order;
            }
            if (a.isGroupSummary() || a.isNowBarStyle() || a.isCallStyle() || a.isDemoted()) {
                return order;
            }
            String target = a.targetPackage();
            String appPkg = target != null ? target : a.pkg;
            packages.add(a.pkg);
            if (target != null) {
                packages.add(target);
            }
            if (pip.contains(appPkg) || pip.contains(a.pkg)) {
                return order;
            }
            if (foreground != null && (foreground.equals(appPkg) || foreground.equals(a.pkg))) {
                hiddenByForeground.add("oa:" + a.key);
                return order;
            }
            IslandItem item = cards.cardFor(a);
            item.postTime = Long.MAX_VALUE - order;
            out.add(item);
            return order + 1;
        } catch (Throwable t) {
            XLog.e("OA item failed", t);
            return order + 1;
        }
    }

    /** Card for the shade's live notification with this key, or null when it is not a plain ongoing activity. */
    public IslandItem itemForKey(String notificationKey) {
        if (!reader.available() || notificationKey == null) {
            return null;
        }
        try {
            Object data = reader.findByNotificationKey(notificationKey);
            return data == null ? null : shadeCard(new OaActivity(data));
        } catch (Throwable t) {
            XLog.e("OA shade item failed", t);
            return null;
        }
    }

    private IslandItem shadeCard(OaActivity a) {
        if (a.isMedia() || a.pkg == null || a.isNowBarStyle()) {
            return null;
        }
        Notification n = a.notification;
        boolean handledElsewhere = n != null && (a.isGroupSummary() || a.isCallStyle()
                || n.extras.containsKey("android.mediaSession"));
        if (handledElsewhere || OaCardBuilder.kindOf(n, a.pkg) == IslandItem.Kind.CALL) {
            return null;
        }
        return cards.cardFor(a);
    }

    /** Fills the segments, milestones and progress of an Android 16 ProgressStyle notification. */
    void bindProgressStyle(IslandItem it, Bundle extras, String pkg) {
        progress.bindStyle(it, extras, pkg);
    }

    private void refreshSoon() {
        if (onChanged != null) {
            main.postDelayed(onChanged, SPEAKER_REFRESH_DELAY_MS);
        }
    }

    /** True when the button title marks it as ending or cancelling something. */
    static boolean isDestructive(CharSequence title) {
        return ActionWords.isDestructive(title);
    }

    static boolean isSpeakerTitle(CharSequence title) {
        return ActionWords.isSpeaker(title);
    }

    static boolean isMuteTitle(CharSequence title) {
        return ActionWords.isMute(title);
    }
}
