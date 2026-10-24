package dev.android.dynamicisland.island.rules;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * Parsing words and patterns that decide what a notification means: which apps are delivery or taxi apps,
 * which texts mean "rider on the way", which words introduce a verification code, and so on. It reads the
 * same JSON files as LiveBridge's parser dictionary (keys such as {@code smart_rules}, {@code otp_strong_triggers},
 * {@code status_labels}), so its files can be dropped in unchanged, and merges several of them the way it does:
 * word sets are united, patterns are joined with "or", rules with the same id are combined.
 *
 * <p>Immutable once built. Fields a file does not have are empty. Every pattern is an {@link Rx}, so a bad
 * or slow pattern cannot hurt System UI.
 */
public final class RuleDictionary {
    /** Size limits for a single file, so a wrong or hostile download cannot exhaust memory. */
    static final int MAX_JSON_CHARS = 400_000;
    /** The same limit in bytes (a character takes up to 3 bytes in UTF-8 for the scripts used here). */
    public static final int MAX_JSON_BYTES = 1_200_000;
    static final int MAX_RULES = 40;
    static final int MAX_SIGNALS_PER_RULE = 60;
    static final int MAX_WORDS = 4000;
    static final int MAX_PATTERNS = 400;

    private static int highestStage(List<Signal> signals) {
        int highest = 0;
        for (Signal signal : signals) {
            highest = Math.max(highest, signal.stage);
        }
        return highest;
    }

    private static final RuleDictionary EMPTY = new RuleDictionary(
            Collections.emptyList(), Collections.emptySet(), Collections.emptySet(), Collections.emptySet(),
            Collections.emptySet(), null, Collections.emptySet(), null, null, null, null, null, 80,
            Collections.emptySet(), null, null, null, null, null, null, null, null, null, null, null, null, null,
            Collections.emptySet(), Collections.emptySet(), Collections.emptySet(), Collections.emptyList(),
            Collections.emptySet(), null, Collections.emptyList(), Collections.emptySet(), Collections.emptyList(),
            Collections.emptyMap());

    public final List<SmartRule> smartRules;
    public final Set<String> blockedSourcePackages;
    public final Set<String> privacyRedactionPlaceholders;
    public final Set<String> knownNavigationPackages;
    public final Set<String> navigationPackageMarkers;
    public final Rx navigationDistancePattern;
    public final Set<String> otpStrongTriggers;
    public final Rx otpLooseTriggerPattern;
    public final Rx moneyContextPattern;
    public final Rx textProgressPercentPattern;
    public final Rx textProgressIncludeContextPattern;
    public final Rx textProgressExcludeContextPattern;
    public final int textProgressContextWindow;
    public final Set<String> weatherPackageHints;
    public final Rx weatherContextPattern;
    public final Rx weatherTemperaturePattern;
    public final Rx weatherDayPattern;
    public final Rx weatherConditionPattern;
    public final Rx weatherConditionThunderPattern;
    public final Rx weatherConditionRainPattern;
    public final Rx weatherConditionSnowPattern;
    public final Rx weatherConditionFogPattern;
    public final Rx weatherConditionWindPattern;
    public final Rx weatherConditionSunPattern;
    public final Rx weatherConditionCloudPattern;
    public final Rx vpnSpeedPattern;
    public final Rx vpnContextPattern;
    public final Set<String> vpnPackageMarkers;
    public final Set<String> vpnDownloadMarkers;
    public final Set<String> vpnUploadMarkers;
    public final List<Rx> externalDeviceNamePatterns;
    public final Set<String> externalDeviceGenericNames;
    public final Rx navigationInstructionPattern;
    public final List<Rx> otpCodePatterns;
    public final Set<String> orderContextHints;
    public final List<Rx> entityTokenPatterns;
    public final Map<String, StageLabels> statusLabels;

    private RuleDictionary(List<SmartRule> smartRules, Set<String> blockedSourcePackages,
            Set<String> privacyRedactionPlaceholders, Set<String> knownNavigationPackages,
            Set<String> navigationPackageMarkers, Rx navigationDistancePattern, Set<String> otpStrongTriggers,
            Rx otpLooseTriggerPattern, Rx moneyContextPattern, Rx textProgressPercentPattern,
            Rx textProgressIncludeContextPattern, Rx textProgressExcludeContextPattern, int textProgressContextWindow,
            Set<String> weatherPackageHints, Rx weatherContextPattern, Rx weatherTemperaturePattern,
            Rx weatherDayPattern, Rx weatherConditionPattern, Rx weatherConditionThunderPattern,
            Rx weatherConditionRainPattern, Rx weatherConditionSnowPattern, Rx weatherConditionFogPattern,
            Rx weatherConditionWindPattern, Rx weatherConditionSunPattern, Rx weatherConditionCloudPattern,
            Rx vpnSpeedPattern, Rx vpnContextPattern, Set<String> vpnPackageMarkers, Set<String> vpnDownloadMarkers,
            Set<String> vpnUploadMarkers, List<Rx> externalDeviceNamePatterns, Set<String> externalDeviceGenericNames,
            Rx navigationInstructionPattern, List<Rx> otpCodePatterns, Set<String> orderContextHints,
            List<Rx> entityTokenPatterns, Map<String, StageLabels> statusLabels) {
        this.smartRules = smartRules;
        this.blockedSourcePackages = blockedSourcePackages;
        this.privacyRedactionPlaceholders = privacyRedactionPlaceholders;
        this.knownNavigationPackages = knownNavigationPackages;
        this.navigationPackageMarkers = navigationPackageMarkers;
        this.navigationDistancePattern = navigationDistancePattern;
        this.otpStrongTriggers = otpStrongTriggers;
        this.otpLooseTriggerPattern = otpLooseTriggerPattern;
        this.moneyContextPattern = moneyContextPattern;
        this.textProgressPercentPattern = textProgressPercentPattern;
        this.textProgressIncludeContextPattern = textProgressIncludeContextPattern;
        this.textProgressExcludeContextPattern = textProgressExcludeContextPattern;
        this.textProgressContextWindow = textProgressContextWindow;
        this.weatherPackageHints = weatherPackageHints;
        this.weatherContextPattern = weatherContextPattern;
        this.weatherTemperaturePattern = weatherTemperaturePattern;
        this.weatherDayPattern = weatherDayPattern;
        this.weatherConditionPattern = weatherConditionPattern;
        this.weatherConditionThunderPattern = weatherConditionThunderPattern;
        this.weatherConditionRainPattern = weatherConditionRainPattern;
        this.weatherConditionSnowPattern = weatherConditionSnowPattern;
        this.weatherConditionFogPattern = weatherConditionFogPattern;
        this.weatherConditionWindPattern = weatherConditionWindPattern;
        this.weatherConditionSunPattern = weatherConditionSunPattern;
        this.weatherConditionCloudPattern = weatherConditionCloudPattern;
        this.vpnSpeedPattern = vpnSpeedPattern;
        this.vpnContextPattern = vpnContextPattern;
        this.vpnPackageMarkers = vpnPackageMarkers;
        this.vpnDownloadMarkers = vpnDownloadMarkers;
        this.vpnUploadMarkers = vpnUploadMarkers;
        this.externalDeviceNamePatterns = externalDeviceNamePatterns;
        this.externalDeviceGenericNames = externalDeviceGenericNames;
        this.navigationInstructionPattern = navigationInstructionPattern;
        this.otpCodePatterns = otpCodePatterns;
        this.orderContextHints = orderContextHints;
        this.entityTokenPatterns = entityTokenPatterns;
        this.statusLabels = statusLabels;
    }

    /** A dictionary without any rule; merging with it changes nothing. */
    public static RuleDictionary empty() {
        return EMPTY;
    }

    public boolean isEmpty() {
        return this == EMPTY || (smartRules.isEmpty() && otpStrongTriggers.isEmpty() && otpCodePatterns.isEmpty()
                && textProgressIncludeContextPattern == null && textProgressExcludeContextPattern == null);
    }

    /** The rule with this id, or null. */
    public SmartRule rule(String id) {
        for (SmartRule rule : smartRules) {
            if (rule.id.equals(id)) {
                return rule;
            }
        }
        return null;
    }

    /** The status text of a stage in the given language, or null. */
    public String statusText(String ruleId, int stage, Locale locale) {
        StageLabels labels = statusLabels.get(ruleId.toLowerCase(Locale.ROOT));
        return labels == null ? null : labels.resolve(stage, locale);
    }

    // ------------------------------------------------------------------ parsing

    /** Parses one rule file; null when it is not a JSON object or is larger than the limits allow. */
    public static RuleDictionary fromJson(String raw) {
        if (raw == null || raw.length() > MAX_JSON_CHARS) {
            return null;
        }
        JSONObject root;
        try {
            root = new JSONObject(raw);
        } catch (JSONException e) {
            return null;
        }
        List<SmartRule> rules = parseSmartRules(root.optJSONArray("smart_rules"));
        return new RuleDictionary(
                rules,
                words(root, "blocked_source_packages"),
                words(root, "privacy_redaction_placeholders"),
                words(root, "known_navigation_packages"),
                words(root, "navigation_package_markers"),
                pattern(root, "navigation_distance_pattern", true),
                words(root, "otp_strong_triggers"),
                pattern(root, "otp_loose_trigger_pattern", true),
                pattern(root, "money_context_pattern", true),
                pattern(root, "text_progress_percent_pattern", true),
                pattern(root, "text_progress_include_context_pattern", true),
                pattern(root, "text_progress_exclude_context_pattern", true),
                Math.max(24, Math.min(240, root.optInt("text_progress_context_window", 80))),
                words(root, "weather_package_hints"),
                pattern(root, "weather_context_pattern", true),
                pattern(root, "weather_temperature_pattern", true),
                pattern(root, "weather_day_pattern", true),
                pattern(root, "weather_condition_pattern", true),
                pattern(root, "weather_condition_thunder_pattern", true),
                pattern(root, "weather_condition_rain_pattern", true),
                pattern(root, "weather_condition_snow_pattern", true),
                pattern(root, "weather_condition_fog_pattern", true),
                pattern(root, "weather_condition_wind_pattern", true),
                pattern(root, "weather_condition_sun_pattern", true),
                pattern(root, "weather_condition_cloud_pattern", true),
                pattern(root, "vpn_speed_pattern", true),
                pattern(root, "vpn_context_pattern", true),
                words(root, "vpn_package_markers"),
                words(root, "vpn_download_markers"),
                words(root, "vpn_upload_markers"),
                patterns(root.optJSONArray("external_device_name_patterns"), true),
                words(root, "external_device_generic_names"),
                pattern(root, "navigation_instruction_pattern", true),
                patterns(root.optJSONArray("otp_code_patterns"), false),
                words(root, "order_context_hints"),
                patterns(root.optJSONArray("entity_token_patterns"), false),
                parseStatusLabels(root.optJSONObject("status_labels")));
    }

    private static List<SmartRule> parseSmartRules(JSONArray raw) {
        List<SmartRule> out = new ArrayList<>();
        if (raw == null) {
            return out;
        }
        for (int i = 0; i < raw.length() && out.size() < MAX_RULES; i++) {
            JSONObject item = raw.optJSONObject(i);
            if (item == null) {
                continue;
            }
            String id = item.optString("id").trim().toLowerCase(Locale.ROOT);
            if (id.isEmpty()) {
                continue;
            }
            List<Signal> signals = new ArrayList<>();
            JSONArray rawSignals = item.optJSONArray("signals");
            for (int s = 0; rawSignals != null && s < rawSignals.length() && signals.size() < MAX_SIGNALS_PER_RULE; s++) {
                JSONObject signal = rawSignals.optJSONObject(s);
                if (signal == null || !signal.has("stage")) {
                    continue;
                }
                Rx rx = Rx.compile(signal.optString("pattern"), true);
                if (rx != null) {
                    signals.add(new Signal(signal.optInt("stage"), rx, Math.max(0, signal.optInt("percent_group", 0))));
                }
            }
            // a rule without signals reads nothing yet, but its apps and words still join the rule of the same id
            out.add(new SmartRule(id, Math.max(Math.max(1, item.optInt("max_stage", 1)), highestStage(signals)), words(item, "package_hints"),
                    words(item, "text_triggers"), patterns(item.optJSONArray("exclude_patterns"), true), signals,
                    Math.max(0, item.optInt("ttl_min", 0)), Math.max(0, item.optInt("final_ttl_min", 0)),
                    Math.max(0, item.optInt("cooldown_min", 0)), Options.parse(item)));
        }
        return out;
    }

    private static Map<String, StageLabels> parseStatusLabels(JSONObject raw) {
        Map<String, StageLabels> out = new LinkedHashMap<>();
        if (raw == null) {
            return out;
        }
        JSONArray names = raw.names();
        for (int i = 0; names != null && i < names.length(); i++) {
            String ruleId = names.optString(i).trim().toLowerCase(Locale.ROOT);
            JSONObject byLocale = raw.optJSONObject(names.optString(i));
            if (ruleId.isEmpty() || byLocale == null) {
                continue;
            }
            Map<String, Map<Integer, String>> locales = new LinkedHashMap<>();
            JSONArray localeNames = byLocale.names();
            for (int l = 0; localeNames != null && l < localeNames.length(); l++) {
                JSONObject stages = byLocale.optJSONObject(localeNames.optString(l));
                if (stages == null) {
                    continue;
                }
                Map<Integer, String> labels = new LinkedHashMap<>();
                JSONArray stageNames = stages.names();
                for (int s = 0; stageNames != null && s < stageNames.length(); s++) {
                    try {
                        int stage = Integer.parseInt(stageNames.optString(s).trim());
                        String text = stages.optString(stageNames.optString(s)).trim();
                        if (!text.isEmpty()) {
                            labels.put(stage, text);
                        }
                    } catch (NumberFormatException ignored) {
                        // not a stage number
                    }
                }
                if (!labels.isEmpty()) {
                    locales.put(localeNames.optString(l).trim().toLowerCase(Locale.ROOT).replace('_', '-'), labels);
                }
            }
            if (!locales.isEmpty()) {
                out.put(ruleId, new StageLabels(locales));
            }
        }
        return out;
    }

    private static Set<String> words(JSONObject root, String key) {
        Set<String> out = new LinkedHashSet<>();
        JSONArray array = root.optJSONArray(key);
        for (int i = 0; array != null && i < array.length() && out.size() < MAX_WORDS; i++) {
            String word = array.optString(i).trim().toLowerCase(Locale.ROOT);
            if (!word.isEmpty()) {
                out.add(word);
            }
        }
        return out;
    }

    private static Rx pattern(JSONObject root, String key, boolean ignoreCase) {
        return Rx.compile(root.optString(key), ignoreCase);
    }

    private static List<Rx> patterns(JSONArray array, boolean ignoreCase) {
        List<Rx> out = new ArrayList<>();
        for (int i = 0; array != null && i < array.length() && out.size() < MAX_PATTERNS; i++) {
            Rx rx = Rx.compile(array.optString(i), ignoreCase);
            if (rx != null) {
                out.add(rx);
            }
        }
        return out;
    }

    /** This dictionary without the smart rules whose ids are given (a rule the user switched off). */
    public RuleDictionary without(Set<String> ruleIds) {
        if (ruleIds == null || ruleIds.isEmpty() || this == EMPTY) {
            return this;
        }
        List<SmartRule> kept = new ArrayList<>();
        for (SmartRule rule : smartRules) {
            if (!ruleIds.contains(rule.id)) {
                kept.add(rule);
            }
        }
        return new RuleDictionary(kept, blockedSourcePackages, privacyRedactionPlaceholders, knownNavigationPackages,
                navigationPackageMarkers, navigationDistancePattern, otpStrongTriggers, otpLooseTriggerPattern,
                moneyContextPattern, textProgressPercentPattern, textProgressIncludeContextPattern,
                textProgressExcludeContextPattern, textProgressContextWindow, weatherPackageHints, weatherContextPattern,
                weatherTemperaturePattern, weatherDayPattern, weatherConditionPattern, weatherConditionThunderPattern,
                weatherConditionRainPattern, weatherConditionSnowPattern, weatherConditionFogPattern,
                weatherConditionWindPattern, weatherConditionSunPattern, weatherConditionCloudPattern, vpnSpeedPattern,
                vpnContextPattern, vpnPackageMarkers, vpnDownloadMarkers, vpnUploadMarkers, externalDeviceNamePatterns,
                externalDeviceGenericNames, navigationInstructionPattern, otpCodePatterns, orderContextHints,
                entityTokenPatterns, statusLabels);
    }

    // ------------------------------------------------------------------ merging

    /** The union of this dictionary and {@code other}; neither is changed. */
    public RuleDictionary mergedWith(RuleDictionary other) {
        if (other == null || other == EMPTY) {
            return this;
        }
        if (this == EMPTY) {
            return other;
        }
        return new RuleDictionary(
                mergeRules(smartRules, other.smartRules),
                union(blockedSourcePackages, other.blockedSourcePackages),
                union(privacyRedactionPlaceholders, other.privacyRedactionPlaceholders),
                union(knownNavigationPackages, other.knownNavigationPackages),
                union(navigationPackageMarkers, other.navigationPackageMarkers),
                join(navigationDistancePattern, other.navigationDistancePattern),
                union(otpStrongTriggers, other.otpStrongTriggers),
                join(otpLooseTriggerPattern, other.otpLooseTriggerPattern),
                join(moneyContextPattern, other.moneyContextPattern),
                join(textProgressPercentPattern, other.textProgressPercentPattern),
                join(textProgressIncludeContextPattern, other.textProgressIncludeContextPattern),
                join(textProgressExcludeContextPattern, other.textProgressExcludeContextPattern),
                Math.max(textProgressContextWindow, other.textProgressContextWindow),
                union(weatherPackageHints, other.weatherPackageHints),
                join(weatherContextPattern, other.weatherContextPattern),
                join(weatherTemperaturePattern, other.weatherTemperaturePattern),
                join(weatherDayPattern, other.weatherDayPattern),
                join(weatherConditionPattern, other.weatherConditionPattern),
                join(weatherConditionThunderPattern, other.weatherConditionThunderPattern),
                join(weatherConditionRainPattern, other.weatherConditionRainPattern),
                join(weatherConditionSnowPattern, other.weatherConditionSnowPattern),
                join(weatherConditionFogPattern, other.weatherConditionFogPattern),
                join(weatherConditionWindPattern, other.weatherConditionWindPattern),
                join(weatherConditionSunPattern, other.weatherConditionSunPattern),
                join(weatherConditionCloudPattern, other.weatherConditionCloudPattern),
                join(vpnSpeedPattern, other.vpnSpeedPattern),
                join(vpnContextPattern, other.vpnContextPattern),
                union(vpnPackageMarkers, other.vpnPackageMarkers),
                union(vpnDownloadMarkers, other.vpnDownloadMarkers),
                union(vpnUploadMarkers, other.vpnUploadMarkers),
                unionPatterns(externalDeviceNamePatterns, other.externalDeviceNamePatterns),
                union(externalDeviceGenericNames, other.externalDeviceGenericNames),
                join(navigationInstructionPattern, other.navigationInstructionPattern),
                unionPatterns(otpCodePatterns, other.otpCodePatterns),
                union(orderContextHints, other.orderContextHints),
                unionPatterns(entityTokenPatterns, other.entityTokenPatterns),
                mergeLabels(statusLabels, other.statusLabels));
    }

    private static Set<String> union(Set<String> a, Set<String> b) {
        if (b.isEmpty()) {
            return a;
        }
        if (a.isEmpty()) {
            return b;
        }
        Set<String> out = new LinkedHashSet<>(a);
        out.addAll(b);
        return out;
    }

    /** One pattern that matches whatever either of the two matches. */
    private static Rx join(Rx a, Rx b) {
        if (a == null) {
            return b;
        }
        if (b == null || a.source().equals(b.source())) {
            return a;
        }
        Rx joined = Rx.compile("(?:" + a.source() + ")|(?:" + b.source() + ")", true);
        return joined != null ? joined : a;
    }

    private static List<Rx> unionPatterns(List<Rx> a, List<Rx> b) {
        if (b.isEmpty()) {
            return a;
        }
        if (a.isEmpty()) {
            return b;
        }
        Map<String, Rx> out = new LinkedHashMap<>();
        for (Rx rx : a) {
            out.putIfAbsent(rx.source(), rx);
        }
        for (Rx rx : b) {
            out.putIfAbsent(rx.source(), rx);
        }
        return new ArrayList<>(out.values());
    }

    private static List<SmartRule> mergeRules(List<SmartRule> a, List<SmartRule> b) {
        if (a.isEmpty()) {
            return b;
        }
        if (b.isEmpty()) {
            return a;
        }
        Map<String, SmartRule> out = new LinkedHashMap<>();
        for (SmartRule rule : a) {
            out.put(rule.id, rule);
        }
        for (SmartRule rule : b) {
            SmartRule existing = out.get(rule.id);
            out.put(rule.id, existing == null ? rule : existing.mergedWith(rule));
        }
        return new ArrayList<>(out.values());
    }

    private static Map<String, StageLabels> mergeLabels(Map<String, StageLabels> a, Map<String, StageLabels> b) {
        if (b.isEmpty()) {
            return a;
        }
        if (a.isEmpty()) {
            return b;
        }
        Map<String, StageLabels> out = new LinkedHashMap<>(a);
        for (Map.Entry<String, StageLabels> e : b.entrySet()) {
            StageLabels existing = out.get(e.getKey());
            out.put(e.getKey(), existing == null ? e.getValue() : existing.mergedWith(e.getValue()));
        }
        return out;
    }

    // ------------------------------------------------------------------ parts

    /** One stage of a rule: the pattern that tells the notification is in that stage. */
    public static final class Signal {
        public final int stage;
        public final Rx pattern;
        /** Group of the pattern that holds a percentage (0..100) the card shows as its progress; 0 = the stage decides. */
        public final int percentGroup;

        Signal(int stage, Rx pattern, int percentGroup) {
            this.stage = stage;
            this.pattern = pattern;
            this.percentGroup = percentGroup;
        }
    }

    /** What a text reports about a rule: the stage, and a percentage when the matching signal carries one (else -1). */
    public static final class Reading {
        public final int stage;
        public final float percent;

        Reading(int stage, float percent) {
            this.stage = stage;
            this.percent = percent;
        }
    }

    /** A staged process the notifications of some apps report on: a delivery, a taxi ride, a route, a connection. */
    public static final class SmartRule {
        public final String id;
        public final int maxStage;
        public final Set<String> packageHints;
        public final Set<String> textTriggers;
        public final List<Rx> excludePatterns;
        /** Signals in the file's order (highest stage first in the shipped files): the first match wins. */
        public final List<Signal> signals;
        /** Minutes after posting at which the card goes away whatever the stage; 0 = the default of the card source. */
        public final int ttlMinutes;
        /** Minutes after posting at which the card of the last stage goes away; 0 = the default. */
        public final int finalTtlMinutes;
        /**
         * Minutes during which the same stage of this rule is not shown again after its card left. For events that
         * repeat all day (a ring losing its link): the card is shown for {@link #ttlMinutes} counted from the first
         * sighting, and a repost within the cooldown stays quiet. 0 = no limit.
         */
        public final int cooldownMinutes;
        /** Name, colour and behaviour the rule file sets beyond the words it reads. */
        public final Options options;

        SmartRule(String id, int maxStage, Set<String> packageHints, Set<String> textTriggers, List<Rx> excludePatterns,
                List<Signal> signals, int ttlMinutes, int finalTtlMinutes, int cooldownMinutes, Options options) {
            this.options = options;
            this.cooldownMinutes = cooldownMinutes;
            this.ttlMinutes = ttlMinutes;
            this.finalTtlMinutes = finalTtlMinutes;
            this.id = id;
            this.maxStage = maxStage;
            this.packageHints = packageHints;
            this.textTriggers = textTriggers;
            this.excludePatterns = excludePatterns;
            this.signals = signals;
        }

        /** The app is one of the rule's apps, or the text holds one of its trigger words. {@code *Lower} are lower-case. */
        public boolean isRelevant(String packageLower, String textLower) {
            for (String hint : packageHints) {
                if (packageLower.contains(hint)) {
                    return true;
                }
            }
            for (String trigger : textTriggers) {
                if (textLower.contains(trigger)) {
                    return true;
                }
            }
            return false;
        }

        public boolean isExcluded(String text) {
            for (Rx rx : excludePatterns) {
                if (rx.matches(text)) {
                    return true;
                }
            }
            return false;
        }

        /** The stage the text reports, or -1 when no signal matches. */
        public int stageOf(String text) {
            Reading reading = read(text);
            return reading == null ? -1 : reading.stage;
        }

        /** The first signal that matches the text, or null. */
        public Reading read(String text) {
            for (Signal signal : signals) {
                Matcher m = signal.pattern.find(text);
                if (m == null) {
                    continue;
                }
                float percent = -1.0f;
                if (signal.percentGroup > 0 && signal.percentGroup <= m.groupCount() && m.group(signal.percentGroup) != null) {
                    try {
                        percent = Math.max(0.0f, Math.min(100.0f, Float.parseFloat(m.group(signal.percentGroup).replace(',', '.')))) / 100.0f;
                    } catch (NumberFormatException ignored) {
                        // not a number: the stage alone counts
                    }
                }
                return new Reading(signal.stage, percent);
            }
            return null;
        }

        SmartRule mergedWith(SmartRule other) {
            List<Signal> merged = new ArrayList<>(signals);
            Set<String> seen = new LinkedHashSet<>();
            for (Signal signal : signals) {
                seen.add(signal.stage + ":" + signal.pattern.source());
            }
            for (Signal signal : other.signals) {
                if (seen.add(signal.stage + ":" + signal.pattern.source())) {
                    merged.add(signal);
                }
            }
            // highest stage first, so a text that mentions both "arrived" and "ordered" reports the later stage
            merged.sort((x, y) -> Integer.compare(y.stage, x.stage));
            return new SmartRule(id, Math.max(maxStage, other.maxStage), union(packageHints, other.packageHints),
                    union(textTriggers, other.textTriggers), unionPatterns(excludePatterns, other.excludePatterns), merged,
                    other.ttlMinutes != 0 ? other.ttlMinutes : ttlMinutes,
                    other.finalTtlMinutes != 0 ? other.finalTtlMinutes : finalTtlMinutes,
                    other.cooldownMinutes != 0 ? other.cooldownMinutes : cooldownMinutes,
                    options.mergedWith(other.options));
        }

        /** Whether the card shows how far the stages have come as a progress bar (default yes). */
        public boolean showsProgress() {
            return options.showProgress == null || options.showProgress;
        }

        /** Whether the original notification leaves the shade while the card is on the island (default no). */
        public boolean hidesOriginal() {
            return options.hideOriginal != null && options.hideOriginal;
        }
    }

    /**
     * What a rule file can say about a rule besides its words: a name for the rule list, an accent colour for the card,
     * whether the card shows a progress bar and whether the original notification is hidden. {@code null} means "not
     * said", so a later file (the user's) can switch on what an earlier one switched off and the other way round.
     */
    public static final class Options {
        public static final Options NONE = new Options(null, null, null, 0);

        public final String name;
        public final Boolean showProgress;
        public final Boolean hideOriginal;
        /** ARGB, 0 = not set. */
        public final int accent;

        public Options(String name, Boolean showProgress, Boolean hideOriginal, int accent) {
            this.name = name;
            this.showProgress = showProgress;
            this.hideOriginal = hideOriginal;
            this.accent = accent;
        }

        static Options parse(JSONObject item) {
            String name = item.optString("name", "").trim();
            int accent = 0;
            String color = item.optString("accent", "").trim();
            if (color.startsWith("#") && (color.length() == 7 || color.length() == 9)) {
                try {
                    long value = Long.parseLong(color.substring(1), 16);
                    accent = (int) (color.length() == 7 ? (0xFF000000L | value) : value);
                } catch (NumberFormatException ignored) {
                    // not a colour: the card keeps its own
                }
            }
            return new Options(name.isEmpty() ? null : name, item.has("show_progress") ? item.optBoolean("show_progress", true) : null,
                    item.has("hide_original") ? item.optBoolean("hide_original", false) : null, accent);
        }

        Options mergedWith(Options other) {
            return new Options(other.name != null ? other.name : name,
                    other.showProgress != null ? other.showProgress : showProgress,
                    other.hideOriginal != null ? other.hideOriginal : hideOriginal,
                    other.accent != 0 ? other.accent : accent);
        }
    }

    /** Status texts of one rule: language -> stage -> text. */
    public static final class StageLabels {
        private final Map<String, Map<Integer, String>> byLocale;

        StageLabels(Map<String, Map<Integer, String>> byLocale) {
            this.byLocale = byLocale;
        }

        /** The text of {@code stage} (or of the closest lower stage) in the best language available. */
        public String resolve(int stage, Locale locale) {
            Map<Integer, String> labels = pick(locale);
            if (labels == null) {
                return null;
            }
            String exact = labels.get(stage);
            if (exact != null) {
                return exact;
            }
            Integer best = null;
            Integer lowest = null;
            for (Integer key : labels.keySet()) {
                if (lowest == null || key < lowest) {
                    lowest = key;
                }
                if (key <= stage && (best == null || key > best)) {
                    best = key;
                }
            }
            Integer use = best != null ? best : lowest;
            return use == null ? null : labels.get(use);
        }

        private Map<Integer, String> pick(Locale locale) {
            List<String> candidates = new ArrayList<>();
            if (locale != null) {
                String language = locale.getLanguage().toLowerCase(Locale.ROOT);
                String country = locale.getCountry().toLowerCase(Locale.ROOT);
                if (!country.isEmpty()) {
                    candidates.add(language + "-" + country);
                }
                candidates.add(language);
            }
            candidates.add("en");
            candidates.add("ru");
            for (String candidate : candidates) {
                Map<Integer, String> labels = byLocale.get(candidate);
                if (labels != null) {
                    return labels;
                }
            }
            return byLocale.isEmpty() ? null : byLocale.values().iterator().next();
        }

        StageLabels mergedWith(StageLabels other) {
            Map<String, Map<Integer, String>> out = new LinkedHashMap<>();
            for (Map.Entry<String, Map<Integer, String>> e : byLocale.entrySet()) {
                out.put(e.getKey(), new LinkedHashMap<>(e.getValue()));
            }
            for (Map.Entry<String, Map<Integer, String>> e : other.byLocale.entrySet()) {
                out.computeIfAbsent(e.getKey(), k -> new LinkedHashMap<>()).putAll(e.getValue());
            }
            return new StageLabels(out);
        }
    }
}
