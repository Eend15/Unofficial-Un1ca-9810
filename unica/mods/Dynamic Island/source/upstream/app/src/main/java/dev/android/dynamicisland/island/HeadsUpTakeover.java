package dev.android.dynamicisland.island;

import android.app.Notification;
import android.os.SystemClock;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.detect.OtpDetector;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.source.PeekSource;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.XLog;
import dev.android.dynamicisland.xposed.hooks.HeadsUpHooks;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Decides which heads-up banners and which fresh verification codes become a temporary card on the
 * island, and remembers what already got one so nothing is shown twice.
 */
final class HeadsUpTakeover {
    /** How long a heads-up card stays open unless the item asks for something else. */
    private static final long DEFAULT_PEEK_MS = 5000;
    /** Wait before the stock heads-up entry of a notification the island took is removed (it is added right after the decision). */
    /**
     * When the island looks again for the system's banner of a card it opened. The list snapshot that opens a card
     * comes before System UI has bound the banner's view, so the banner can appear a few hundred ms later, after the
     * first look found nothing to remove.
     */
    private static final long[] STOCK_WATCH_MS = {120, 350, 700, 1200, 2000};
    /** A verification code is "fresh" (worth a card) for this long after its notification was posted. */
    private static final long OTP_FRESH_MS = 20000;
    /** A notification is "new" for the all-notifications pass for this long after it was posted. */
    private static final long ALL_FRESH_MS = 8000;
    /** Notifications dated this far in the future are still accepted (clock differences between processes). */
    private static final long OTP_CLOCK_SKEW_MS = 5000;
    /** The same code arriving again within this time is ignored. */
    private static final long OTP_REPEAT_WINDOW_MS = 120000;
    /** An app re-posting the same message (Telegram does it on read, sync and edit) is not news for this long. */
    private static final long REPEAT_QUIET_MS = 180_000;
    /** A notification that asked to alert only once (a battery level, a download) is not news again for this long. */
    private static final long ALERT_ONCE_QUIET_MS = 600_000;
    /** Bounds of the "already seen" caches; they are simply cleared when exceeded. */
    private static final int MAX_PEEKED = 32;
    private static final int MAX_OTP_CHECKED = 128;
    /** Only the first few card decisions are logged, to keep the log readable. */
    private static final int MAX_OTP_LOGS = 20;

    private final IslandSources sources;
    private final IslandPlacement placement;
    /** Rebuilds the island list immediately (a card is a source item). */
    private final Runnable refreshNow;

    /** Notification key to post time of the posting that already got a card. */
    private final Map<String, Long> peeked = new HashMap<>();
    /** Notification key to what its last card said and when: a re-post of the same content gets no new card. */
    private final Map<String, Shown> shown = new HashMap<>();
    private final Set<String> otpChecked = new HashSet<>();
    /** Postings the "all notifications" pass already looked at. */
    private final Set<String> allChecked = new HashSet<>();
    private List<StatusBarNotification> snapshot = java.util.Collections.emptyList();
    private Map<String, Integer> importance = java.util.Collections.emptyMap();
    private Set<String> blocked = java.util.Collections.emptySet();
    private int otpLogs;
    private String lastOtpCode;
    private long lastOtpAt;

    HeadsUpTakeover(IslandSources sources, IslandPlacement placement, Runnable refreshNow) {
        this.sources = sources;
        this.placement = placement;
        this.refreshNow = refreshNow;
    }

    /** How the system rates each notification of the list (by key); a key it did not rate counts as not silent. */
    void setImportance(Map<String, Integer> importance) {
        this.importance = importance == null ? java.util.Collections.emptyMap() : new HashMap<>(importance);
    }

    /** The keys Do Not Disturb keeps from popping up; the island leaves them out as well. */
    void setBlocked(Set<String> blocked) {
        this.blocked = blocked == null ? java.util.Collections.emptySet() : new HashSet<>(blocked);
    }

    /** No sound, no banner: the system does not pop it up, so the island does not either. */
    static boolean silent(Integer importance) {
        return importance != null && importance < android.app.NotificationManager.IMPORTANCE_DEFAULT;
    }

    void setSnapshot(List<StatusBarNotification> notifications) {
        snapshot = new java.util.ArrayList<>(notifications);
        Set<String> live = new HashSet<>();
        for (StatusBarNotification sbn : notifications) if (sbn != null) live.add(sbn.getKey());
        shown.keySet().retainAll(live);
        peeked.keySet().retainAll(live);
    }

    Object owner(String key) { return owns(key) ? sources.peeks.showing() : null; }

    boolean owns(String key) {
        if (ModuleSettings.systemPopupStyle()) return false;
        IslandItem item = sources.peeks.showing();
        if (item == null || !item.key.equals("peek:" + key) || !placement.view().isShowingCard(item)) return false;
        if (item.otpCode == null && !ModuleSettings.appAllowed(item.packageName)) return false;
        if (item.otpCode != null ? !ModuleSettings.otpCard() : !(ModuleSettings.headsUpIsland() || ModuleSettings.allNotifications())) return false;
        for (StatusBarNotification notification : snapshot) {
            if (notification.getKey().equals(key)) {
                Shown claim = shown.get(key);
                if (notification.getPostTime() != item.postTime || (claim != null && !claim.content.equals(contentOf(notification)))) return false;
            }
        }
        return true;
    }

    private boolean foregroundBlocked(StatusBarNotification sbn) {
        return !ModuleSettings.foregroundNotifications() && sbn.getPackageName().equals(sources.foregroundPackage());
    }

    /** @return true when the island took the banner (the stock one must stay away) */
    boolean take(StatusBarNotification sbn) {
        if (ModuleSettings.systemPopupStyle()) return false;
        try {
            IslandView view = placement.view();
            if (sbn == null || !placement.ready()) {
                return false;
            }
            // Pin decisions can precede the next list snapshot. Invalidate ownership of an older posting immediately.
            List<StatusBarNotification> observed = new java.util.ArrayList<>(snapshot);
            observed.removeIf(previous -> previous.getKey().equals(sbn.getKey()));
            observed.add(sbn);
            snapshot = observed;
            IslandItem code = sources.peeks.buildOtp(sbn);
            if (code == null && !ModuleSettings.appAllowed(sbn.getPackageName())) {
                reject("banner of " + sbn.getPackageName() + ": the app is kept out of the island");
                return false; // the user keeps this app out of the island: its banner stays stock
            }
            if (isOnIslandNow(sbn) || recentlyShown(sbn)) {
                return true; // already on the island, or the same message just was: the banner stays away
            }
            if (view.isSuppressedNow() || !PeekSource.eligible(sbn)
                    || (!ModuleSettings.experimentalRecovery()
                    && (foregroundBlocked(sbn) || !PeekSource.preferred(sbn, snapshot)))) {
                reject("banner of " + sbn.getPackageName() + ": " + (view.isSuppressedNow() ? "island hidden" : !PeekSource.eligible(sbn) ? "not an ordinary notification" : "its app is open"));
                return false;
            }
            // a code card is shown whatever the "notifications in the island" setting and even over an open card
            if (code != null) {
                if (isRepeat(code.otpCode)) {
                    // the same code again (re-posted, or mirrored by another app): one card is enough
                    IslandItem showing = sources.peeks.showing();
                    return showing != null && code.otpCode.equals(showing.otpCode);
                }
                boolean shown = show(sbn, code);
                log(shown ? "shown with its heads-up" : "not shown: the island could not open");
                return shown;
            }
            if (!(ModuleSettings.headsUpIsland() || ModuleSettings.allNotifications())) {
                reject("banner of " + sbn.getPackageName() + ": " + (view.isExpanded() ? "a card is open" : "the notification settings are off"));
                return false;
            }
            IslandItem message = sources.peeks.buildMessage(sbn);
            boolean taken = message != null && show(sbn, message);
            note("banner of " + sbn.getPackageName() + (taken ? " taken by the island" : " left to the stock banner: no card could be built or opened"));
            return taken;
        } catch (Throwable t) {
            XLog.once("IslandController.peekHeadsUp", t);
            return false;
        }
    }

    /**
     * Whether the island has this notification or will take it from the stock banner. Nothing is shown or changed
     * here: Samsung's other popups (Edge Lighting) ask, because they stay away only while a stock banner is up.
     */
    boolean claims(StatusBarNotification sbn) {
        return claims(sbn, null);
    }

    /** As above; {@code importance} is how the system rates the notification, or null when that is not known. */
    boolean claims(StatusBarNotification sbn, Integer importance) {
        if (ModuleSettings.systemPopupStyle()) return false;
        try {
            if (sbn == null || !placement.ready()) return false;
            if (isOnIslandNow(sbn) || recentlyShown(sbn)) return true;
            boolean code = sources.peeks.buildOtp(sbn) != null;
            if (!code && !ModuleSettings.appAllowed(sbn.getPackageName())) return false;
            if (placement.view().isSuppressedNow() || !PeekSource.eligible(sbn)
                    || (!ModuleSettings.experimentalRecovery()
                    && (foregroundBlocked(sbn) || !PeekSource.preferred(sbn, snapshot)))) return false;
            if (code) return true;
            if (!(ModuleSettings.headsUpIsland() || ModuleSettings.allNotifications())) return false;
            // the island takes a banner the system makes; All notifications also shows the quieter ones by itself
            if (!ModuleSettings.allNotifications() && !systemMakesBanner(importance)) return false;
            return sources.peeks.buildMessage(sbn) != null;
        } catch (Throwable t) {
            XLog.once("IslandController.claims", t);
            return false;
        }
    }

    /** The island has a card of this notification up, or had one a moment ago. */
    boolean showing(String key) {
        if (key == null) return false;
        if (owns(key)) return true;
        Shown last = shown.get(key);
        return last != null && SystemClock.uptimeMillis() - last.at < 6_000L;
    }

    /** The system makes a heads-up banner only for a notification rated high, and only while banners are on. */
    private boolean systemMakesBanner(Integer importance) {
        if (importance != null && importance < android.app.NotificationManager.IMPORTANCE_HIGH) return false;
        try {
            return android.provider.Settings.Global.getInt(placement.view().getContext().getContentResolver(),
                    "heads_up_notifications_enabled", 1) != 0;
        } catch (Throwable t) {
            return true;
        }
    }

    /**
     * The "all notifications" setting: a fresh notification that never became a banner (silent, or the system
     * did not ask) still gets a card. Looks at each posting once and shows only the newest of a burst.
     */
    void scanAll(List<StatusBarNotification> snapshot) {
        if (ModuleSettings.systemPopupStyle()) return;
        if (!ModuleSettings.allNotifications() || !placement.ready()) {
            return;
        }
        if (allChecked.size() > MAX_OTP_CHECKED) {
            allChecked.clear();
        }
        long now = System.currentTimeMillis();
        StatusBarNotification newest = null;
        for (StatusBarNotification sbn : snapshot) {
            long age = now - sbn.getPostTime();
            if (age > ALL_FRESH_MS || age < -OTP_CLOCK_SKEW_MS || !allChecked.add(sbn.getKey() + "@" + sbn.getPostTime())) {
                continue;
            }
            if (alreadyHadCard(sbn) || recentlyShown(sbn) || quietUpdate(sbn) || blocked.contains(sbn.getKey()) || silent(importance.get(sbn.getKey())) || !PeekSource.eligible(sbn) || !ModuleSettings.appAllowed(sbn.getPackageName())
                    || (!ModuleSettings.experimentalRecovery()
                    && (foregroundBlocked(sbn) || !PeekSource.preferred(sbn, snapshot)))) {
                continue;
            }
            if (newest == null || sbn.getPostTime() >= newest.getPostTime()) {
                newest = sbn;
            }
        }
        if (newest == null) {
            return;
        }
        IslandView view = placement.view();
        if (ModuleSettings.experimentalRecovery() ? view.isSuppressedNow() : !view.canPeek()) {
            reject("all notifications: the island is unavailable");
            return;
        }
        IslandItem item = sources.peeks.build(newest);
        if (item != null) {
            if (show(newest, item)) {
                note("card for " + newest.getPackageName() + " from the notification list (stock banner asked to leave: "
                        + HeadsUpHooks.dismissStock(newest.getKey()) + ")"); // the system's banner may have come up first
            } else {
                reject("all notifications: the island could not open");
            }
        }
    }

    private void note(String what) {
        XLog.event("notification card: " + what);
    }

    /** Why a banner or a card was left to the stock UI; only the first few are logged. */
    private void reject(String why) {
        XLog.event("notification card not shown: " + why);
    }

    /**
     * Codes do not depend on a heads-up banner: a text can arrive silently, or System UI can show it some
     * other way. Every notification new to the list is checked once; a fresh one with a code opens the card.
     */
    void scanForCodes(List<StatusBarNotification> snapshot) {
        if (ModuleSettings.systemPopupStyle()) return;
        if (!ModuleSettings.otpCard() || !placement.ready()) {
            return;
        }
        long now = System.currentTimeMillis();
        if (otpChecked.size() > MAX_OTP_CHECKED) {
            otpChecked.clear();
        }
        for (StatusBarNotification sbn : snapshot) {
            long age = now - sbn.getPostTime();
            if (age > OTP_FRESH_MS || age < -OTP_CLOCK_SKEW_MS || alreadyHadCard(sbn) || blocked.contains(sbn.getKey())) {
                continue;
            }
            if (!otpChecked.add(sbn.getKey() + "@" + sbn.getPostTime()) || !PeekSource.eligible(sbn) || !PeekSource.preferred(sbn, snapshot)) {
                continue;
            }
            OtpDetector.Match match = OtpDetector.detect(PeekSource.otpText(sbn.getNotification()));
            // a messages app re-posting the same text (marked read, another device synced) is not a new code
            if (match == null || isRepeat(match.code)) {
                continue;
            }
            if (foregroundBlocked(sbn)) {
                log("not shown: the messages app is open");
            } else if (placement.view().isSuppressedNow()) {
                log("not shown: island hidden (lock screen, full screen or landscape)");
            } else {
                IslandItem item = sources.peeks.buildOtp(sbn);
                if (item != null) {
                    log(show(sbn, item) ? "shown from the notification list" : "not shown: the island could not open");
                }
            }
        }
    }

    private boolean alreadyHadCard(StatusBarNotification sbn) {
        Long seen = peeked.get(sbn.getKey());
        return seen != null && seen == sbn.getPostTime();
    }

    /**
     * The same notification key re-posted with the same text and no new message in it, shortly after its card: an app
     * refreshing its own notification. A new message adds to the message list, so it still gets its card.
     */
    private boolean recentlyShown(StatusBarNotification sbn) {
        Shown last = shown.get(sbn.getKey());
        return last != null && (last.postTime == sbn.getPostTime() || last.messageIdentity)
                && SystemClock.uptimeMillis() - last.at < REPEAT_QUIET_MS && last.content.equals(contentOf(sbn));
    }

    /**
     * An update of a notification that got a card and asked to alert only once: the app changes a number in it (the
     * battery level, a download) and does not mean to announce it again. New messages of a conversation are news.
     */
    private boolean quietUpdate(StatusBarNotification sbn) {
        Shown last = shown.get(sbn.getKey());
        return last != null && (sbn.getNotification().flags & Notification.FLAG_ONLY_ALERT_ONCE) != 0
                && !hasMessageIdentity(sbn) && SystemClock.uptimeMillis() - last.at < ALERT_ONCE_QUIET_MS;
    }

    /** A real latest-message timestamp lets an app refresh its notification without announcing the same message again. */
    private static boolean hasMessageIdentity(StatusBarNotification sbn) {
        android.os.Bundle extras = sbn.getNotification().extras;
        if (extras == null) return false;
        android.os.Parcelable[] messages = extras.getParcelableArray(Notification.EXTRA_MESSAGES, android.os.Parcelable.class);
        if (messages == null || messages.length == 0 || !(messages[messages.length - 1] instanceof android.os.Bundle)) return false;
        return ((android.os.Bundle) messages[messages.length - 1]).getLong("time") > 0;
    }

    /** What a card of this notification would say: its texts and how many messages it holds. */
    static String contentOf(StatusBarNotification sbn) {
        android.os.Bundle extras = sbn.getNotification().extras;
        if (extras == null) return "";
        StringBuilder out = new StringBuilder();
        for (String key : new String[]{Notification.EXTRA_TITLE, Notification.EXTRA_TEXT, Notification.EXTRA_BIG_TEXT}) {
            out.append(extras.getCharSequence(key)).append('\u0001');
        }
        android.os.Parcelable[] messages = extras.getParcelableArray(Notification.EXTRA_MESSAGES, android.os.Parcelable.class);
        out.append(messages == null ? 0 : messages.length);
        if (messages != null) for (android.os.Parcelable message : messages) {
            if (message instanceof android.os.Bundle) {
                android.os.Bundle data = (android.os.Bundle) message;
                out.append('\u0001').append(data.getLong("time")).append('\u0001').append(data.getCharSequence("text"));
            }
        }
        return out.toString();
    }

    private static final class Shown {
        final String content;
        final long at;
        final long postTime;
        final boolean messageIdentity;

        Shown(String content, long postTime, boolean messageIdentity, long at) {
            this.content = content;
            this.postTime = postTime;
            this.messageIdentity = messageIdentity;
            this.at = at;
        }
    }

    /** This very posting is the card on the island right now. */
    private boolean isOnIslandNow(StatusBarNotification sbn) {
        return alreadyHadCard(sbn) && !foregroundBlocked(sbn) && owns(sbn.getKey());
    }

    private boolean isRepeat(String code) {
        return code != null && code.equals(lastOtpCode) && SystemClock.uptimeMillis() - lastOtpAt < OTP_REPEAT_WINDOW_MS;
    }

    /** @return whether the island really shows the card; only then is it remembered (and a code copied). */
    private boolean show(StatusBarNotification sbn, IslandItem item) {
        if (!placement.view().canPeek()) return false;
        long millis = item.peekMillis > 0 ? item.peekMillis : DEFAULT_PEEK_MS;
        sources.peeks.show(item, millis);
        refreshNow.run();
        if (!placement.view().peek(item, millis)) {
            sources.peeks.dismiss(item);
            refreshNow.run();
            return false;
        }
        if (peeked.size() > MAX_PEEKED) {
            peeked.clear();
        }
        peeked.put(sbn.getKey(), sbn.getPostTime());
        if (shown.size() > MAX_PEEKED) {
            shown.clear();
        }
        shown.put(sbn.getKey(), new Shown(contentOf(sbn), sbn.getPostTime(), hasMessageIdentity(sbn), SystemClock.uptimeMillis()));
        final String key = sbn.getKey();
        for (long delay : STOCK_WATCH_MS) {
            placement.view().postDelayed(() -> {
                if (owner(key) == item) HeadsUpHooks.dismissStock(key);
            }, delay);
        }
        if (item.otpCode != null) {
            lastOtpCode = item.otpCode;
            lastOtpAt = SystemClock.uptimeMillis();
            if (ModuleSettings.otpAutoCopy()) {
                sources.peeks.copy(item.otpCode);
            }
        }
        return true;
    }

    private void log(String what) {
        if (otpLogs < MAX_OTP_LOGS) {
            otpLogs++;
            XLog.i("verification code card " + what);
        }
    }
}
