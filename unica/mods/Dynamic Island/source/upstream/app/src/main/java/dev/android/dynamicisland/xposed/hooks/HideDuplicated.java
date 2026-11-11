package dev.android.dynamicisland.xposed.hooks;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.service.notification.StatusBarNotification;
import de.robv.android.xposed.XC_MethodHook;
import dev.android.dynamicisland.island.IslandController;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;
import dev.android.dynamicisland.xposed.XLog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/**
 * Hides notifications that the LiveBridge companion app ({@code com.locnall.KimGiSa}) mirrors as a
 * live copy, so the shade shows one row instead of two: the island already shows the copy, and the
 * original is filtered out of System UI's notification list while a copy stands for it. A short grace
 * period after the copy disappears avoids flicker when a copy is replaced.
 * State is only touched from the System UI main thread, where the list builder runs.
 */
public final class HideDuplicated {
    private static final String BUILDER = "com.android.systemui.statusbar.notification.collection.ShadeListBuilder";
    private static final String ENTRY = "com.android.systemui.statusbar.notification.collection.NotificationEntry";
    /** How long an original stays hidden after its copy disappeared, so the two rows do not flicker. */
    private static final long GRACE_MS = 2500;
    private static final long REBUILD_SLACK_MS = 50;
    private static final String LIVEBRIDGE_PKG = "com.locnall.KimGiSa";
    private static final String COPY_CHANNEL_PREFIX = "livebridge_";
    private static final String CAPSULE_CHANNEL_PREFIX = "livebridge_notification_capsule";
    private static final String CLEAR_KEYS_ACTION = "com.kakao.taxi.action.CLEAR_NOTIFICATION_CAPSULE_KEYS";
    private static final String CLEAR_KEYS_EXTRA = "notification_keys";
    private static final String ONGOING_DELETE_INTENT = "com.nowbar.ongoing.DELETE_INTENT";
    private static final String EXTRA_TITLE = "android.title";
    private static final String EXTRA_SUB_TEXT = "android.subText";
    private static final String EXTRA_ONGOING_STYLE = "android.ongoingActivityNoti.style";
    private static final int ONGOING_STYLE_CAPSULE = 2;

    /** Keys of original notifications (and fully covered summaries) that a live copy stands for. */
    private static final Set<String> REPRESENTED = new HashSet<>();
    /** The original notification behind a copy, by "title\nsubText" of the copy; recovers the original sub text. */
    private static final Map<String, Notification> ORIGINAL_BY_COPY_TEXT = new HashMap<>();
    /** For each original key, the keys of the live copies that stand for it. */
    private static final Map<String, Set<String>> COPIES_OF = new HashMap<>();
    /** Original key to the uptime at which it was last hidden, for the grace period. */
    private static final Map<String, Long> LAST_HIDDEN = new HashMap<>();
    private static final Map<String, String> APP_LABELS = new HashMap<>();
    private static final Handler MAIN = new dev.android.dynamicisland.xposed.GuardedHandler(Looper.getMainLooper());

    private static Class<?> entryClass;
    /** One of the list builder's pre-group filters, kept to ask the builder for a rebuild. */
    private static WeakReference<Object> anyFilter;
    private static String lastMatchSummary;

    private HideDuplicated() {
    }

    static void install(ClassLoader cl) {
        entryClass = Refl.findClass(ENTRY, cl);
        if (entryClass == null) {
            return;
        }
        Refl.hookAll(cl, BUILDER, "filterNotifs", SafeHook.before("duplicate copies", HideDuplicated::onFilterNotifs));
        Refl.hookAll(cl, BUILDER, "applyFilters", SafeHook.after("duplicate originals", HideDuplicated::onApplyFilters));
    }

    /**
     * Before {@code ShadeListBuilder.filterNotifs}, on the pass that runs the pre-group filters:
     * snapshots all entries to work out which originals have a live copy, and hands the same snapshot to
     * the island.
     */
    private static void onFilterNotifs(XC_MethodHook.MethodHookParam p) {
        boolean preGroupPass = p.args.length > 2 && p.args[2] == Refl.get(p.thisObject, "mNotifPreGroupFilters");
        if (preGroupPass && p.args[0] instanceof Collection) {
            takeSnapshot((Collection<?>) p.args[0]);
        }
    }

    /**
     * After {@code ShadeListBuilder.applyFilters(entry, ..., filters)}: when the stock filters kept the
     * entry, drops it if it is an original that a copy stands for. Also remembers a filter object so
     * {@link #rebuild} can invalidate the list later.
     */
    private static void onApplyFilters(XC_MethodHook.MethodHookParam p) {
        if (p.hasThrowable() || Boolean.TRUE.equals(p.getResult())) {
            return;
        }
        if (anyFilter == null && p.args[2] instanceof List && !((List<?>) p.args[2]).isEmpty()) {
            anyFilter = new WeakReference<>(((List<?>) p.args[2]).get(0));
        }
        if (shouldHide(p.args[0])) {
            p.setResult(true);
        }
    }

    private static void takeSnapshot(Collection<?> entries) {
        List<StatusBarNotification> snapshot = new ArrayList<>();
        for (Object entry : entries) {
            StatusBarNotification sbn = entryClass.isInstance(entry) ? sbn(entry) : null;
            if (sbn != null) {
                snapshot.add(sbn);
            }
        }
        refresh(snapshot);
        IslandController island = IslandController.get();
        if (island != null) {
            island.onNotificationsSnapshot(snapshot);
        }
    }

    // ---- matching originals to copies ----------------------------------------------------------

    /**
     * Recomputes which sources are represented, from the current notifications. A source is represented
     * when a copy lists its key, when a copy's id is derived from its key ({@link #mirrorId}), or - for
     * copies that do neither - when {@link #matches} says they look alike. A group summary is represented
     * once all its children are.
     */
    static void refresh(List<StatusBarNotification> snapshot) {
        List<StatusBarNotification> copies = new ArrayList<>();
        Set<String> present = new HashSet<>();
        for (StatusBarNotification sbn : snapshot) {
            present.add(sbn.getKey());
            if (isLiveCopy(sbn)) {
                copies.add(sbn);
            }
        }
        Map<StatusBarNotification, Set<String>> listedKeys = new HashMap<>();
        Map<StatusBarNotification, String> derivedSource = new HashMap<>();
        for (StatusBarNotification copy : copies) {
            listedKeys.put(copy, representedKeys(copy.getNotification()));
            String source = sourceByDerivedId(snapshot, copy);
            if (source != null) {
                derivedSource.put(copy, source);
            }
        }

        REPRESENTED.clear();
        COPIES_OF.clear();
        ORIGINAL_BY_COPY_TEXT.clear();
        LAST_HIDDEN.keySet().retainAll(present);
        for (StatusBarNotification source : snapshot) {
            if (isCopy(source) || isSummary(source.getNotification())) {
                continue;
            }
            for (StatusBarNotification copy : copies) {
                boolean listed = copy.getUserId() == source.getUserId() && listedKeys.get(copy).contains(source.getKey());
                if (listed || copyMatchesSource(copy, source, derivedSource.get(copy))) {
                    link(source, copy);
                }
            }
        }
        for (StatusBarNotification summary : snapshot) {
            if (!isCopy(summary) && isSummary(summary.getNotification()) && allChildrenRepresented(snapshot, summary)) {
                REPRESENTED.add(summary.getKey());
            }
        }

        String matchSummary = copies.size() + " mirrors, " + REPRESENTED.size() + " represented source rows";
        if (!matchSummary.equals(lastMatchSummary)) {
            lastMatchSummary = matchSummary;
            XLog.i("duplicate matching: " + matchSummary);
        }
    }

    /** Key of the first plain source whose {@link #mirrorId} is this copy's id, or null. */
    private static String sourceByDerivedId(List<StatusBarNotification> snapshot, StatusBarNotification copy) {
        for (StatusBarNotification source : snapshot) {
            boolean plain = !isCopy(source) && !isSummary(source.getNotification());
            if (plain && source.getUserId() == copy.getUserId() && copy.getId() == mirrorId(source.getKey())) {
                return source.getKey();
            }
        }
        return null;
    }

    /** A copy whose id points at one source belongs to that source only; otherwise fall back to the heuristic. */
    private static boolean copyMatchesSource(StatusBarNotification copy, StatusBarNotification source, String derivedSourceKey) {
        if (derivedSourceKey != null) {
            return derivedSourceKey.equals(source.getKey());
        }
        return matches(source, copy);
    }

    private static void link(StatusBarNotification source, StatusBarNotification copy) {
        REPRESENTED.add(source.getKey());
        COPIES_OF.computeIfAbsent(source.getKey(), k -> new HashSet<>()).add(copy.getKey());
        Bundle copyExtras = copy.getNotification().extras;
        String copyText = copyExtras.getCharSequence(EXTRA_TITLE) + "\n" + copyExtras.getCharSequence(EXTRA_SUB_TEXT);
        ORIGINAL_BY_COPY_TEXT.put(copyText, source.getNotification());
    }

    /** True when the summary has at least one child (same user, app and group) and every child is represented. */
    private static boolean allChildrenRepresented(List<StatusBarNotification> snapshot, StatusBarNotification summary) {
        boolean any = false;
        for (StatusBarNotification child : snapshot) {
            boolean sibling = !isSummary(child.getNotification()) && !isCopy(child)
                    && child.getUserId() == summary.getUserId()
                    && child.getPackageName().equals(summary.getPackageName())
                    && child.getGroupKey().equals(summary.getGroupKey());
            if (!sibling) {
                continue;
            }
            any = true;
            if (!REPRESENTED.contains(child.getKey())) {
                return false;
            }
        }
        return any;
    }

    /** True for a notification posted by the LiveBridge app on one of its mirror channels. */
    private static boolean isCopy(StatusBarNotification sbn) {
        String channel = sbn.getNotification().getChannelId();
        return LIVEBRIDGE_PKG.equals(sbn.getPackageName()) && channel != null && channel.startsWith(COPY_CHANNEL_PREFIX);
    }

    /** A mirror that is a real notification copy, not the status bar capsule (ongoing activity) variant. */
    private static boolean isLiveCopy(StatusBarNotification sbn) {
        if (!isCopy(sbn)) {
            return false;
        }
        Notification n = sbn.getNotification();
        boolean capsule = n.extras.getInt(EXTRA_ONGOING_STYLE, 0) == ONGOING_STYLE_CAPSULE
                || n.getChannelId().startsWith(CAPSULE_CHANNEL_PREFIX);
        return !capsule;
    }

    /** Source keys a copy names explicitly in its delete / action intents. */
    private static Set<String> representedKeys(Notification n) {
        Set<String> keys = new HashSet<>();
        collectKeys(n.deleteIntent, keys);
        Object ongoingDelete = n.extras.get(ONGOING_DELETE_INTENT);
        if (ongoingDelete instanceof PendingIntent) {
            collectKeys((PendingIntent) ongoingDelete, keys);
        }
        if (n.actions != null) {
            for (Notification.Action action : n.actions) {
                collectKeys(action.actionIntent, keys);
            }
        }
        return keys;
    }

    private static void collectKeys(PendingIntent pending, Set<String> keys) {
        if (pending == null || !LIVEBRIDGE_PKG.equals(pending.getCreatorPackage())) {
            return;
        }
        Object intent = Refl.call(pending, "getIntent", new Object[0]);
        if (intent instanceof Intent) {
            collectKeys((Intent) intent, keys);
        }
    }

    /** Reads the source notification keys carried by a copy's "clear" intent. */
    static void collectKeys(Intent intent, Set<String> keys) {
        if (!CLEAR_KEYS_ACTION.equals(intent.getAction())) {
            return;
        }
        ArrayList<String> sourceKeys = intent.getStringArrayListExtra(CLEAR_KEYS_EXTRA);
        if (sourceKeys == null) {
            return;
        }
        for (String key : sourceKeys) {
            if (key != null && !key.trim().isEmpty()) {
                keys.add(key.trim());
            }
        }
    }

    /**
     * Heuristic for copies that do not name their source. Same user, and then either the id derived
     * from the source key, or the same title together with the same content intent or the same app
     * label, or (with the same content intent) a shared action intent.
     */
    static boolean matches(StatusBarNotification source, StatusBarNotification copy) {
        if (!isLiveCopy(copy) || LIVEBRIDGE_PKG.equals(source.getPackageName()) || source.getUserId() != copy.getUserId()) {
            return false;
        }
        Notification original = source.getNotification();
        Notification mirror = copy.getNotification();
        if (isSummary(original)) {
            return false;
        }
        if (copy.getId() == mirrorId(source.getKey())) {
            return true;
        }
        String title = normalized(original.extras.getCharSequence(EXTRA_TITLE));
        boolean sameTitle = !title.isEmpty() && title.equals(normalized(mirror.extras.getCharSequence(EXTRA_TITLE)));
        boolean sameIntent = original.contentIntent != null && original.contentIntent.equals(mirror.contentIntent);
        if (sameTitle && sameIntent) {
            return true;
        }
        String mirrorApp = normalized(mirror.extras.getCharSequence(EXTRA_SUB_TEXT));
        if (sameTitle && mirrorApp.equals(normalized(label(source.getPackageName())))) {
            return true;
        }
        return sameIntent && sharesActionIntent(original, mirror);
    }

    private static boolean sharesActionIntent(Notification a, Notification b) {
        if (a.actions == null || b.actions == null) {
            return false;
        }
        for (Notification.Action actionA : a.actions) {
            if (actionA.actionIntent == null) {
                continue;
            }
            for (Notification.Action actionB : b.actions) {
                if (actionA.actionIntent.equals(actionB.actionIntent)) {
                    return true;
                }
            }
        }
        return false;
    }

    /** Text with non-breaking spaces turned into spaces, whitespace runs collapsed and the ends trimmed. */
    private static String normalized(CharSequence text) {
        return text == null ? "" : text.toString().replace(' ', ' ').trim().replaceAll("\\s+", " ");
    }

    /** The id LiveBridge gives the copy of a source notification: the absolute hash of its key. */
    private static int mirrorId(String key) {
        int hash = key.hashCode();
        return hash == Integer.MIN_VALUE ? 0 : Math.abs(hash);
    }

    private static boolean isSummary(Notification n) {
        return (n.flags & Notification.FLAG_GROUP_SUMMARY) != 0;
    }

    /**
     * A group summary that is marked as a live notification (Samsung's ongoing-activity style). System UI folds the
     * live cards of one app (the Google sports matches) into a stack under such a summary; without it they come
     * out of the shade as separate cards. The summary itself is not cancelled, it only leaves the shade list.
     */
    static boolean isLiveSummary(Notification n) {
        return isSummary(n) && n.extras != null && n.extras.containsKey(EXTRA_ONGOING_STYLE);
    }

    // ---- hiding --------------------------------------------------------------------------------

    /** True when the list entry is an original that must stay out of the shade right now. */
    private static boolean shouldHide(Object entry) {
        StatusBarNotification sbn = sbn(entry);
        if (sbn == null || LIVEBRIDGE_PKG.equals(sbn.getPackageName())) {
            return false;
        }
        if (isLiveSummary(sbn.getNotification())) {
            return true;
        }
        String key = sbn.getKey();
        long now = SystemClock.uptimeMillis();
        if (REPRESENTED.contains(key)) {
            if (LAST_HIDDEN.put(key, now) == null) {
                XLog.i("duplicated original hidden: " + key);
            }
            return true;
        }
        IslandController island = IslandController.get();
        if (island != null && island.hidesOriginal(key)) {
            return true;
        }
        Long hiddenAt = LAST_HIDDEN.get(key);
        if (hiddenAt == null) {
            return false;
        }
        long sinceHidden = now - hiddenAt;
        if (sinceHidden < GRACE_MS) {
            MAIN.postDelayed(HideDuplicated::rebuild, GRACE_MS - sinceHidden + REBUILD_SLACK_MS);
            return true;
        }
        LAST_HIDDEN.remove(key);
        XLog.i("duplicated original shown: " + key);
        return false;
    }

    /** Keys of the LiveBridge copies that stand for the notification with this key (empty when none). */
    public static Set<String> copyKeysOf(String notificationKey) {
        Set<String> keys = COPIES_OF.get(notificationKey);
        return keys == null ? Collections.emptySet() : keys;
    }

    /** The sub text (app name line) of the original behind a copy with this title and source label, or null. */
    public static CharSequence originalSubText(CharSequence title, CharSequence source) {
        if (title == null || source == null) {
            return null;
        }
        Notification original = ORIGINAL_BY_COPY_TEXT.get(title + "\n" + source);
        CharSequence subText = original == null ? null : original.extras.getCharSequence(EXTRA_SUB_TEXT);
        boolean useful = subText != null && subText.length() > 0 && !subText.toString().equals(source.toString());
        return useful ? subText : null;
    }

    /** Asks the list builder to re-run its filters, e.g. after a copy went away. */
    public static void rebuild() {
        Object filter = anyFilter == null ? null : anyFilter.get();
        if (filter != null) {
            Refl.call(filter, "invalidateList", "duplicate copy gone");
        }
    }

    /** The launcher label of a package, cached; the package name itself when it cannot be resolved. */
    private static String label(String pkg) {
        String cached = APP_LABELS.get(pkg);
        if (cached != null) {
            return cached;
        }
        String label;
        try {
            Context ctx = (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication").invoke(null);
            PackageManager pm = Objects.requireNonNull(ctx).getPackageManager();
            label = String.valueOf(pm.getApplicationLabel(pm.getApplicationInfo(pkg, 0)));
        } catch (Throwable t) {
            label = pkg;
        }
        APP_LABELS.put(pkg, label);
        return label;
    }

    private static StatusBarNotification sbn(Object entry) {
        Object sbn = Refl.get(entry, "mSbn");
        return sbn instanceof StatusBarNotification ? (StatusBarNotification) sbn : null;
    }
}
