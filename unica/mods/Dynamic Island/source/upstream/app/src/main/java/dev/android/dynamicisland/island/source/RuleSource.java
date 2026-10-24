package dev.android.dynamicisland.island.source;

import android.app.Notification;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.detect.NotificationText;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.rules.RuleDictionary;
import dev.android.dynamicisland.island.rules.RuleStore;
import dev.android.dynamicisland.island.rules.Rx;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;

/**
 * Cards for staged processes that apps only describe in words: a delivery ("rider is on the way"), a taxi ride,
 * a route, a device that connects. The words and patterns come from the {@link RuleDictionary} in force, so new
 * apps and languages are added by changing a rule file, not the code. Each matching notification becomes one
 * card whose progress is the stage reached, and the card disappears with the notification.
 *
 * <p>Notifications that One UI itself promotes to live notifications, and notifications with their own progress bar,
 * are left alone. A card of this source wins over a LiveBridge live copy and a progress card of the same
 * notification (see {@code ItemDedupe}). Updated on System UI's main thread.
 */
public final class RuleSource {
    private static final int MAX_ITEMS = 3;
    /** How long a card stays after its notification was posted: while the process runs, and once it is done. */
    private static final long DEFAULT_TTL_MIN = 180;
    private static final long DEFAULT_FINAL_TTL_MIN = 3;
    private static final long EXPIRY_SLACK_MS = 100;
    private static final long NOTIFY_INTERVAL_MS = 500;
    private static final int MAX_ACTIONS = 3;
    private static final int DEFAULT_ACCENT = 0xFF0A84FF;
    private static final String KEY_PREFIX = "rule:";
    private static final String LIVEBRIDGE_PACKAGE = "com.locnall.KimGiSa";
    /** Rules whose stage can go backwards (a route, a connection), so the newest notification decides; the others keep their highest stage. */
    /** Keys of the cards whose rule hides the original notification. */
    private final Set<String> hideOriginal = new HashSet<>();
    private volatile Set<String> hiddenOriginals = Collections.emptySet();
    private Runnable onShownChanged = () -> { };
    private static final Set<String> VOLATILE_RULES = new HashSet<>(Arrays.asList("navigation", "external_device", "vpn", "relay"));
    private static final Set<String> IGNORED = new HashSet<>(Arrays.asList("android", "com.android.systemui", "dev.android.dynamicisland"));

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
    /** The notifications of the latest update, read again when the rules change. */
    private List<StatusBarNotification> lastSnapshot;
    /** Asks for a new look at the cards when the next one expires. */
    private final Runnable expiryTick;
    /** Wall clock; replaced in tests. */
    java.util.function.LongSupplier clock = System::currentTimeMillis;
    /** Event cards on the island: stage key -> when first seen. */
    private final Map<String, Long> shownSince = new HashMap<>();
    /** Event cards that left: stage key -> when. */
    private final Map<String, Long> endedAt = new HashMap<>();

    public RuleSource(Context ctx, Handler main, Runnable onChange) {
        this.apps = new AppLook(ctx);
        this.main = main;
        this.onChange = onChange;
        this.expiryTick = () -> onChange.run();
        ModuleSettings.setOnRulesChanged(() -> main.post(() -> {
            if (lastSnapshot != null) {
                update(lastSnapshot); // the user edited a rule: cards on screen are read again with it
            }
        }));
    }

    /** Called every time the notification list was rebuilt. */
    public void update(List<StatusBarNotification> snapshot) {
        lastSnapshot = snapshot;
        Map<String, IslandItem> fresh = new LinkedHashMap<>();
        if (ModuleSettings.smartRules()) {
            RuleDictionary rules = RuleStore.current();
            Locale locale = Locale.getDefault();
            long now = clock.getAsLong();
            Set<String> present = new HashSet<>();
            for (StatusBarNotification sbn : snapshot) {
                IslandItem it = build(sbn, rules, locale);
                if (it == null || (it.expiresAtWall != 0 && it.expiresAtWall <= now)) {
                    continue;
                }
                if (it.cooldownMinutes > 0 && !admit(it, now, present)) {
                    continue;
                }
                IslandItem same = fresh.get(it.key);
                if (same == null || better(it, same)) {
                    fresh.put(it.key, it);
                }
            }
            retire(present, now);
        }
        if (sameCards(fresh)) {
            return;
        }
        items.clear();
        for (IslandItem it : fresh.values()) {
            if (items.size() < MAX_ITEMS) {
                items.put(it.key, it);
            }
        }
        notifyChanged();
    }

    /**
     * Lets an event card in, or not: it is shown for its time-to-live counted from when it was first seen, and when it
     * left, a new post of the same stage must wait for the cooldown. {@code present} collects the sightings of this round.
     */
    private boolean admit(IslandItem it, long now, Set<String> present) {
        String stageKey = it.key + "#" + it.stage;
        Long since = shownSince.get(stageKey);
        if (since == null) {
            Long ended = endedAt.get(stageKey);
            if (ended != null && (it.postTime <= ended || now < ended + (it.cooldownMinutes * 60_000L))) {
                return false;
            }
            since = now;
            shownSince.put(stageKey, since);
        }
        present.add(stageKey);
        long lifetime = it.expiresAtWall - it.postTime;
        it.expiresAtWall = since + lifetime;
        if (it.expiresAtWall <= now) {
            // the card's time is up although the notification stays: remember when it left
            endedAt.put(stageKey, it.expiresAtWall);
            shownSince.remove(stageKey);
            present.remove(stageKey);
            return false;
        }
        return true;
    }

    /** Remembers when event cards that are no longer there left. */
    private void retire(Set<String> present, long now) {
        for (java.util.Iterator<Map.Entry<String, Long>> it = shownSince.entrySet().iterator(); it.hasNext();) {
            Map.Entry<String, Long> entry = it.next();
            if (!present.contains(entry.getKey())) {
                endedAt.put(entry.getKey(), now);
                it.remove();
            }
        }
    }

    /** Adds the cards, except for the foreground app's and those already shown another way. */
    public void collect(List<IslandItem> out, String foregroundPackage) {
        if (items.isEmpty()) {
            publishHidden(Collections.emptySet());
            return;
        }
        Set<String> hidden = new HashSet<>();
        Set<String> shown = new HashSet<>();
        for (IslandItem it : out) {
            if (it.key.startsWith("oa:")) {
                shown.add(it.key.substring(3));
            }
        }
        long now = clock.getAsLong();
        long nextExpiry = Long.MAX_VALUE;
        for (IslandItem it : items.values()) {
            if (it.expiresAtWall != 0 && it.expiresAtWall <= now) {
                continue;
            }
            if (it.expiresAtWall != 0) {
                nextExpiry = Math.min(nextExpiry, it.expiresAtWall);
            }
            if (it.packageName != null && it.packageName.equals(foregroundPackage)) {
                continue;
            }
            if (shown.contains(it.sourceKey)) {
                continue;
            }
            out.add(it);
            if (hideOriginal.contains(it.key)) {
                hidden.add(it.sourceKey);
            }
        }
        publishHidden(hidden);
        main.removeCallbacks(expiryTick);
        if (nextExpiry != Long.MAX_VALUE) {
            main.postDelayed(expiryTick, nextExpiry - now + EXPIRY_SLACK_MS);
        }
    }

    /**
     * The card for a notification, or null when no rule applies.
     *
     * @param rules  the rules in force
     * @param locale language of the status texts
     */
    IslandItem build(StatusBarNotification sbn, RuleDictionary rules, Locale locale) {
        Notification n = sbn.getNotification();
        String pkg = sbn.getPackageName();
        if (n == null || n.extras == null || rules.smartRules.isEmpty() || IGNORED.contains(pkg) || LIVEBRIDGE_PACKAGE.equals(pkg)) {
            return null;
        }
        if ((n.flags & Notification.FLAG_GROUP_SUMMARY) != 0 || hasOwnProgress(n.extras) || isMediaOrCall(n) || isMailOrSocial(n)) {
            return null;
        }
        List<Hit> found = hits(pkg.toLowerCase(Locale.ROOT), NotificationText.joined(n), rules);
        return found.isEmpty() ? null : card(sbn, n, found.get(0), rules, locale);
    }

    /** A rule that applies to a text, with what the text says about it. */
    public static final class Hit {
        public final RuleDictionary.SmartRule rule;
        public final int stage;
        /** Percentage reported by the matching signal (0..1), or -1. */
        public final float percent;
        /** The device name of a connection rule, the speeds of a VPN rule; null for the others. */
        public final String subject;
        /** The distance of a navigation rule ("300m"), else null. */
        public final String distance;

        Hit(RuleDictionary.SmartRule rule, int stage, float percent, String subject, String distance) {
            this.rule = rule;
            this.stage = stage;
            this.percent = percent;
            this.subject = subject;
            this.distance = distance;
        }
    }

    /**
     * The rules that apply to a notification of {@code pkgLower} with this text, in the order of the rule file.
     * Needs no notification, so rule files can be checked against recorded texts. A device-connection rule applies
     * only when the text names a device, a VPN rule only when it holds a speed.
     */
    public static List<Hit> hits(String pkgLower, String originalText, RuleDictionary rules) {
        List<Hit> out = new ArrayList<>();
        String text = originalText.toLowerCase(Locale.ROOT);
        if (text.isEmpty() || isRedacted(text, rules) || rules.blockedSourcePackages.contains(pkgLower)) {
            return out;
        }
        for (RuleDictionary.SmartRule rule : rules.smartRules) {
            if (!rule.isRelevant(pkgLower, text) || rule.isExcluded(text)) {
                continue;
            }
            RuleDictionary.Reading reading = rule.read(text);
            if (reading == null) {
                continue;
            }
            String subject = null;
            String distance = null;
            if (rule.id.equals("external_device")) {
                subject = deviceName(originalText, rules);
                if (subject == null) {
                    continue;
                }
            } else if (rule.id.equals("vpn")) {
                subject = speeds(originalText, rules);
                if (subject == null) {
                    continue; // a VPN notification without a speed is just "connected"
                }
            } else if (rule.id.equals("navigation")) {
                distance = firstMatch(rules.navigationDistancePattern, text, 0);
            }
            out.add(new Hit(rule, reading.stage, reading.percent, subject, distance));
        }
        return out;
    }

    /** True when the card of this notification is on the island and its rule asks for the original to leave the shade. */
    public boolean isShownOnIsland(String notificationKey) {
        return hiddenOriginals.contains(notificationKey);
    }

    public void setOnShownChanged(Runnable listener) {
        onShownChanged = listener;
    }

    private void publishHidden(Set<String> hidden) {
        if (!hidden.equals(hiddenOriginals)) {
            hiddenOriginals = hidden;
            onShownChanged.run();
        }
    }

    private IslandItem card(StatusBarNotification sbn, Notification n, Hit hit, RuleDictionary rules, Locale locale) {
        String pkg = sbn.getPackageName();
        RuleDictionary.SmartRule rule = hit.rule;
        String title = clean(n.extras.getCharSequence(Notification.EXTRA_TITLE));
        String body = clean(n.extras.getCharSequence(Notification.EXTRA_TEXT));
        String status = rules.statusText(rule.id, hit.stage, locale);
        IslandItem it = new IslandItem(KEY_PREFIX + pkg + ":" + rule.id);
        it.sourceKey = sbn.getKey();
        it.kind = rule.id.equals("navigation") ? IslandItem.Kind.NAVIGATION : IslandItem.Kind.TASK;
        it.packageName = pkg;
        it.appName = apps.label(pkg);
        it.title = rule.id.equals("external_device") ? hit.subject : (title != null ? title : it.appName);
        it.subtitle = rule.id.equals("vpn") ? hit.subject : (body != null ? body : status);
        it.postTime = sbn.getPostTime();
        it.contentIntent = n.contentIntent;
        it.accent = accentOf(rule, n);
        if (hit.percent >= 0.0f) {
            it.progress = hit.percent;
        } else if (rule.showsProgress()) {
            it.progress = Math.min(1.0f, Math.max(0.0f, hit.stage / (float) rule.maxStage));
        } // else: no bar; a state without a beginning and an end would only show a meaningless half-full one
        it.stage = hit.stage;
        it.expiresAtWall = expiry(rule, hit.stage, sbn.getPostTime());
        it.cooldownMinutes = rule.cooldownMinutes;
        if (hit.percent >= 0.0f) {
            it.trailing = IslandItem.Trailing.TEXT;
            it.trailingText = Math.round(hit.percent * 100.0f) + "%";
        } else if (hit.distance != null || status != null) {
            it.trailing = IslandItem.Trailing.TEXT;
            it.trailingText = hit.distance != null ? hit.distance : status;
        } else {
            it.trailing = IslandItem.Trailing.PROGRESS_RING;
        }
        Drawable icon = apps.icon(pkg);
        it.icon = icon;
        it.iconIsImage = true;
        it.cardImage = icon;
        it.cardImageIsImage = true;
        it.actionType = 1;
        if (rule.hidesOriginal()) {
            hideOriginal.add(it.key);
        } else {
            hideOriginal.remove(it.key);
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

    /** Wall-clock time after which the card goes away: a finished process after a short while, the rest after hours. */
    private static long expiry(RuleDictionary.SmartRule rule, int stage, long postTime) {
        long minutes;
        if (stage >= rule.maxStage) {
            minutes = rule.finalTtlMinutes != 0 ? rule.finalTtlMinutes : DEFAULT_FINAL_TTL_MIN;
            if (rule.ttlMinutes != 0) {
                minutes = Math.min(minutes, rule.ttlMinutes);
            }
        } else {
            minutes = rule.ttlMinutes != 0 ? rule.ttlMinutes : DEFAULT_TTL_MIN;
        }
        return postTime + (minutes * 60_000L);
    }

    private static boolean better(IslandItem candidate, IslandItem current) {
        String ruleId = candidate.key.substring(candidate.key.lastIndexOf(':') + 1);
        if (VOLATILE_RULES.contains(ruleId)) {
            return candidate.postTime >= current.postTime;
        }
        return candidate.stage > current.stage || (candidate.stage == current.stage && candidate.postTime >= current.postTime);
    }

    private boolean sameCards(Map<String, IslandItem> fresh) {
        if (fresh.size() != items.size() && !(fresh.size() > MAX_ITEMS && items.size() == MAX_ITEMS)) {
            return false;
        }
        for (Map.Entry<String, IslandItem> e : items.entrySet()) {
            IslandItem next = fresh.get(e.getKey());
            IslandItem old = e.getValue();
            if (next == null || next.stage != old.stage || !String.valueOf(next.title).equals(String.valueOf(old.title))
                    || !String.valueOf(next.subtitle).equals(String.valueOf(old.subtitle))
                    || !String.valueOf(next.trailingText).equals(String.valueOf(old.trailingText))
                    || next.accent != old.accent || Float.compare(next.progress, old.progress) != 0
                    || next.expiresAtWall != old.expiresAtWall || next.trailing != old.trailing
                    || next.postTime != old.postTime || !java.util.Objects.equals(next.contentIntent, old.contentIntent)) {
                return false;
            }
        }
        return true;
    }

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

    // ------------------------------------------------------------------ helpers

    private static boolean hasOwnProgress(Bundle extras) {
        return extras.getInt(Notification.EXTRA_PROGRESS_MAX, 0) > 0 || extras.getBoolean(Notification.EXTRA_PROGRESS_INDETERMINATE, false);
    }

    /** Mail, social feeds and promotions say a lot of things and describe no process of the user's. */
    private static boolean isMailOrSocial(Notification n) {
        String category = n.category;
        return Notification.CATEGORY_EMAIL.equals(category) || Notification.CATEGORY_SOCIAL.equals(category)
                || Notification.CATEGORY_PROMO.equals(category)
                || "android.app.Notification$MessagingStyle".equals(n.extras.getString(Notification.EXTRA_TEMPLATE));
    }

    private static boolean isMediaOrCall(Notification n) {
        String template = n.extras.getString(Notification.EXTRA_TEMPLATE);
        if (template != null && (template.endsWith("$MediaStyle") || template.endsWith("$DecoratedMediaCustomViewStyle")
                || template.endsWith("$CallStyle") || template.endsWith("$ProgressStyle"))) {
            return true;
        }
        return n.extras.containsKey(Notification.EXTRA_MEDIA_SESSION) || Notification.CATEGORY_CALL.equals(n.category)
                || Notification.CATEGORY_TRANSPORT.equals(n.category);
    }

    /** The notification hides its content from the lock screen ("sensitive content hidden"): nothing to read. */
    private static boolean isRedacted(String text, RuleDictionary rules) {
        for (String placeholder : rules.privacyRedactionPlaceholders) {
            if (text.contains(placeholder)) {
                return true;
            }
        }
        return false;
    }

    private static String deviceName(String text, RuleDictionary rules) {
        for (Rx pattern : rules.externalDeviceNamePatterns) {
            Matcher m = pattern.find(text);
            if (m == null || m.groupCount() < 1 || m.group(1) == null) {
                continue;
            }
            String name = m.group(1).replaceAll("\\s+", " ").trim().replaceAll("^[\"'«».,:;]+|[\"'«».,:;]+$", "");
            if (name.length() >= 2 && !rules.externalDeviceGenericNames.contains(name.toLowerCase(Locale.ROOT))) {
                return name;
            }
        }
        return null;
    }

    /** The first two transfer speeds in the text ("1.2 MB/s · 300 KB/s"), or null when there are none. */
    private static String speeds(String text, RuleDictionary rules) {
        if (rules.vpnSpeedPattern == null) {
            return null;
        }
        List<String> found = new ArrayList<>();
        Matcher m = rules.vpnSpeedPattern.find(text);
        int from = 0;
        while (m != null && found.size() < 2) {
            found.add(m.group().trim());
            from = m.end();
            if (from >= text.length()) {
                break;
            }
            m = rules.vpnSpeedPattern.find(text.substring(from));
        }
        return found.isEmpty() ? null : String.join(" · ", found);
    }

    private static String firstMatch(Rx pattern, String text, int group) {
        if (pattern == null) {
            return null;
        }
        Matcher m = pattern.find(text);
        return m == null ? null : m.group(group).trim();
    }

    private static String clean(CharSequence value) {
        if (value == null) {
            return null;
        }
        String s = value.toString().replaceAll("\\s+", " ").trim();
        return s.isEmpty() ? null : s;
    }

    private static int accentOf(RuleDictionary.SmartRule rule, Notification n) {
        if (rule.options.accent != 0) {
            return rule.options.accent;
        }
        switch (rule.id) {
            case "food":
                return 0xFFFF9500;
            case "taxi":
                return 0xFFFFCC00;
            case "navigation":
                return 0xFF0A84FF;
            case "external_device":
                return 0xFF30D158;
            case "vpn":
                return 0xFFBF5AF2;
            case "parcel":
                return 0xFFC8955A;
            case "wearable":
                return 0xFF64D2FF;
            case "battery":
                return 0xFFFF453A;
            default:
                return n.color != 0 ? Colors.readableOnBlack(n.color) : DEFAULT_ACCENT;
        }
    }

    /** For tests. */
    List<IslandItem> snapshot() {
        return new ArrayList<>(items.values());
    }
}
