package dev.android.dynamicisland.settings;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * The user's own rule file as an editable model: apps, patterns, stage names and extra stages added to the rules of
 * the module (same id) or to rules of the user's own. Reads and writes the JSON stored in the settings; the module
 * merges that file on top of its own, so nothing here removes anything the module ships. Main thread only.
 */
public final class UserRules {
    /** Language key of the stage names written here: the fallback every language reads. */
    static final String LABEL_LANGUAGE = "en";
    /** The user's stage names are written for these languages: English is the fallback, Korean beats it on Korean phones. */
    private static final String[] LABEL_LANGUAGES = {"en", "ko"};
    static final int MAX_STAGE = 9;

    private JSONObject root;

    private UserRules(JSONObject root) {
        this.root = root;
        dropJunk();
    }

    /** Imported or hand-edited files may hold entries that are not objects; the editors assume objects, so those go. */
    private void dropJunk() {
        JSONArray rules = root.optJSONArray("smart_rules");
        if (rules == null) {
            root.remove("smart_rules");
            return;
        }
        JSONArray kept = new JSONArray();
        for (int i = 0; i < rules.length(); i++) {
            JSONObject rule = rules.optJSONObject(i);
            if (rule == null) {
                continue;
            }
            JSONArray signals = rule.optJSONArray("signals");
            if (signals != null) {
                JSONArray keptSignals = new JSONArray();
                for (int j = 0; j < signals.length(); j++) {
                    JSONObject signal = signals.optJSONObject(j);
                    if (signal != null) {
                        keptSignals.put(signal);
                    }
                }
                try {
                    rule.put("signals", keptSignals);
                } catch (JSONException ignored) {
                    // a plain key cannot fail
                }
            }
            kept.put(rule);
        }
        try {
            root.put("smart_rules", kept);
        } catch (JSONException ignored) {
            // a plain key cannot fail
        }
    }

    /** The model of a stored file; an empty one when it is missing or not a JSON object. */
    public static UserRules parse(String json) {
        try {
            if (json != null && !json.trim().isEmpty()) {
                return new UserRules(new JSONObject(json));
            }
        } catch (JSONException ignored) {
            // a broken file is replaced by the first edit
        }
        return new UserRules(new JSONObject());
    }

    /** The file to store, or null when nothing is left in it. */
    public String toJson() {
        return isEmpty() ? null : root.toString();
    }

    public boolean isEmpty() {
        return root.length() == 0 || (root.length() == 1 && root.has("smart_rules") && root.optJSONArray("smart_rules").length() == 0);
    }

    /** Lower-case id made from a name: letters and digits kept, anything else becomes "_". */
    public static String slug(String name) {
        StringBuilder sb = new StringBuilder();
        for (char c : name.trim().toLowerCase(Locale.ROOT).toCharArray()) {
            if (Character.isLetterOrDigit(c)) {
                sb.append(c);
            } else if (sb.length() > 0 && sb.charAt(sb.length() - 1) != '_') {
                sb.append('_');
            }
        }
        String id = sb.toString();
        while (id.endsWith("_")) {
            id = id.substring(0, id.length() - 1);
        }
        return id;
    }

    // ---------------------------------------------------------------- reading

    public List<String> ruleIds() {
        List<String> out = new ArrayList<>();
        JSONArray rules = root.optJSONArray("smart_rules");
        for (int i = 0; rules != null && i < rules.length(); i++) {
            out.add(rules.optJSONObject(i).optString("id"));
        }
        return out;
    }

    public boolean has(String id) {
        return find(id, false) != null;
    }

    public List<String> packages(String id) {
        return strings(find(id, false), "package_hints");
    }

    public List<String> excludes(String id) {
        return strings(find(id, false), "exclude_patterns");
    }

    /** The patterns the user added, as {stage, pattern} pairs. */
    public List<Object[]> signals(String id) {
        List<Object[]> out = new ArrayList<>();
        JSONObject rule = find(id, false);
        JSONArray signals = rule == null ? null : rule.optJSONArray("signals");
        for (int i = 0; signals != null && i < signals.length(); i++) {
            JSONObject signal = signals.optJSONObject(i);
            out.add(new Object[] {signal.optInt("stage"), signal.optString("pattern"), signal.optInt("percent_group", 0)});
        }
        return out;
    }

    /** The highest stage the user asked for, or 0. */
    public int maxStage(String id) {
        JSONObject rule = find(id, false);
        return rule == null ? 0 : rule.optInt("max_stage", 0);
    }

    /** The name the user gave a stage, or null. */
    public String label(String id, int stage) {
        JSONObject labels = labelsOf(id, false);
        return labels == null ? null : labels.has(String.valueOf(stage)) ? labels.optString(String.valueOf(stage)) : null;
    }

    /** A number the user set on the rule (minutes), or 0 when not set. */
    public int number(String id, String key) {
        JSONObject rule = find(id, false);
        return rule == null ? 0 : rule.optInt(key, 0);
    }

    /** A yes / no the user set on the rule, or null when not set. */
    public Boolean flag(String id, String key) {
        JSONObject rule = find(id, false);
        return rule == null || !rule.has(key) ? null : rule.optBoolean(key);
    }

    /** A text the user set on the rule (its name, its colour), or null. */
    public String text(String id, String key) {
        JSONObject rule = find(id, false);
        String value = rule == null ? "" : rule.optString(key, "");
        return value.isEmpty() ? null : value;
    }

    public List<String> triggers(String id) {
        return strings(find(id, false), "text_triggers");
    }

    // ---------------------------------------------------------------- editing

    /** Sets a number on the rule; 0 or less removes it (the rule's own value or the default applies again). */
    public void setNumber(String id, String key, int value) {
        setKey(id, key, value > 0 ? Integer.valueOf(value) : null);
    }

    /** Sets a yes / no on the rule; null removes it. */
    public void setFlag(String id, String key, Boolean value) {
        setKey(id, key, value);
    }

    /** Sets a text on the rule; empty removes it. */
    public void setText(String id, String key, String value) {
        setKey(id, key, value == null || value.trim().isEmpty() ? null : value.trim());
    }

    public void addTrigger(String id, String word) {
        addUnique(find(id, true), "text_triggers", word.trim().toLowerCase(Locale.ROOT)); // the module reads words in lower case
    }

    public void removeTrigger(String id, String word) {
        removeFrom(find(id, false), "text_triggers", word);
        tidy(id);
    }

    private void setKey(String id, String key, Object value) {
        try {
            if (value == null) {
                JSONObject rule = find(id, false);
                if (rule != null) {
                    rule.remove(key);
                    tidy(id);
                }
            } else {
                find(id, true).put(key, value);
            }
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    public void addPackage(String id, String pkg) {
        addUnique(find(id, true), "package_hints", pkg.trim().toLowerCase(Locale.ROOT));
    }

    public void removePackage(String id, String pkg) {
        removeFrom(find(id, false), "package_hints", pkg);
        tidy(id);
    }

    public void addExclude(String id, String pattern) {
        addUnique(find(id, true), "exclude_patterns", pattern.trim());
    }

    public void removeExclude(String id, String pattern) {
        removeFrom(find(id, false), "exclude_patterns", pattern);
        tidy(id);
    }

    public void addSignal(String id, int stage, String pattern) {
        addSignal(id, stage, pattern, 0);
    }

    /** {@code percentGroup} > 0 names the group of the pattern that holds a percentage, which then drives the card's bar. */
    public void addSignal(String id, int stage, String pattern, int percentGroup) {
        JSONObject rule = find(id, true);
        for (Object[] existing : signals(id)) {
            if ((Integer) existing[0] == stage && existing[1].equals(pattern.trim())) {
                return;
            }
        }
        try {
            JSONArray signals = array(rule, "signals");
            JSONObject signal = new JSONObject().put("stage", stage).put("pattern", pattern.trim());
            if (percentGroup > 0) {
                signal.put("percent_group", percentGroup);
            }
            signals.put(signal);
            rule.put("max_stage", Math.max(rule.optInt("max_stage", 1), stage));
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    public void removeSignal(String id, int stage, String pattern) {
        JSONObject rule = find(id, false);
        JSONArray signals = rule == null ? null : rule.optJSONArray("signals");
        if (signals == null) {
            return;
        }
        JSONArray kept = new JSONArray();
        for (int i = 0; i < signals.length(); i++) {
            JSONObject signal = signals.optJSONObject(i);
            if (!(signal.optInt("stage") == stage && signal.optString("pattern").equals(pattern))) {
                kept.put(signal);
            }
        }
        try {
            rule.put("signals", kept);
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
        tidy(id);
    }

    /** Names a stage; an empty text removes the name. */
    public void setLabel(String id, int stage, String text) {
        try {
            for (String language : LABEL_LANGUAGES) {
                JSONObject labels = labelsFor(id, language, true);
                if (text == null || text.trim().isEmpty()) {
                    labels.remove(String.valueOf(stage));
                } else {
                    labels.put(String.valueOf(stage), text.trim());
                }
            }
            tidy(id);
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /** Makes the rule one stage longer (up to {@link #MAX_STAGE}); {@code ownMax} is the number the rule has now. */
    public void setMaxStage(String id, int stage) {
        try {
            find(id, true).put("max_stage", Math.max(1, Math.min(MAX_STAGE, stage)));
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /** Creates an empty rule of the user's own (or keeps the one that exists). */
    public void create(String id) {
        find(id, true);
    }

    /** Forgets everything the user changed on this rule. */
    public void remove(String id) {
        JSONArray rules = root.optJSONArray("smart_rules");
        if (rules != null) {
            JSONArray kept = new JSONArray();
            for (int i = 0; i < rules.length(); i++) {
                if (!id.equalsIgnoreCase(rules.optJSONObject(i).optString("id"))) {
                    kept.put(rules.optJSONObject(i));
                }
            }
            try {
                root.put("smart_rules", kept);
            } catch (JSONException e) {
                throw new IllegalStateException(e);
            }
        }
        JSONObject labels = root.optJSONObject("status_labels");
        if (labels != null) {
            labels.remove(id);
            if (labels.length() == 0) {
                root.remove("status_labels");
            }
        }
        if (root.optJSONArray("smart_rules") != null && root.optJSONArray("smart_rules").length() == 0) {
            root.remove("smart_rules");
        }
    }

    // ---------------------------------------------------------------- helpers

    private JSONObject find(String id, boolean create) {
        JSONArray rules = root.optJSONArray("smart_rules");
        for (int i = 0; rules != null && i < rules.length(); i++) {
            if (id.equalsIgnoreCase(rules.optJSONObject(i).optString("id"))) {
                return rules.optJSONObject(i);
            }
        }
        if (!create) {
            return null;
        }
        try {
            if (rules == null) {
                rules = new JSONArray();
                root.put("smart_rules", rules);
            }
            JSONObject rule = new JSONObject().put("id", id);
            rules.put(rule);
            return rule;
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    private JSONObject labelsOf(String id, boolean create) {
        return labelsFor(id, LABEL_LANGUAGE, create);
    }

    private JSONObject labelsFor(String id, String language, boolean create) {
        try {
            JSONObject all = root.optJSONObject("status_labels");
            if (all == null && create) {
                all = new JSONObject();
                root.put("status_labels", all);
            }
            JSONObject byLanguage = all == null ? null : all.optJSONObject(id);
            if (byLanguage == null && create) {
                byLanguage = new JSONObject();
                all.put(id, byLanguage);
            }
            JSONObject stages = byLanguage == null ? null : byLanguage.optJSONObject(language);
            if (stages == null && create) {
                stages = new JSONObject();
                byLanguage.put(language, stages);
            }
            return stages;
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /** Drops what became empty, so the stored file does not keep husks of rules the user undid. */
    private void tidy(String id) {
        JSONObject rule = find(id, false);
        JSONObject labels = labelsOf(id, false);
        JSONObject koLabels = labelsFor(id, "ko", false);
        boolean noLabels = (labels == null || labels.length() == 0) && (koLabels == null || koLabels.length() == 0);
        if (rule != null) {
            for (String key : new String[] {"signals", "package_hints", "exclude_patterns", "text_triggers"}) {
                JSONArray array = rule.optJSONArray(key);
                if (array != null && array.length() == 0) {
                    rule.remove(key);
                }
            }
            boolean onlyIdentity = true;
            java.util.Iterator<String> keys = rule.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                if (!key.equals("id") && !key.equals("max_stage")) {
                    onlyIdentity = false;
                }
            }
            if (onlyIdentity && noLabels) {
                remove(id);
            }
        }
        if (noLabels && root.optJSONObject("status_labels") != null) {
            JSONObject all = root.optJSONObject("status_labels");
            JSONObject byLanguage = all.optJSONObject(id);
            if (byLanguage != null) {
                for (String language : LABEL_LANGUAGES) {
                    byLanguage.remove(language);
                }
                if (byLanguage.length() == 0) {
                    all.remove(id);
                }
            }
            if (all.length() == 0) {
                root.remove("status_labels");
            }
        }
    }

    private static JSONArray array(JSONObject rule, String key) throws JSONException {
        JSONArray array = rule.optJSONArray(key);
        if (array == null) {
            array = new JSONArray();
            rule.put(key, array);
        }
        return array;
    }

    private static void addUnique(JSONObject rule, String key, String value) {
        try {
            JSONArray array = array(rule, key);
            for (int i = 0; i < array.length(); i++) {
                if (value.equals(array.optString(i))) {
                    return;
                }
            }
            array.put(value);
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    private static void removeFrom(JSONObject rule, String key, String value) {
        JSONArray array = rule == null ? null : rule.optJSONArray(key);
        if (array == null) {
            return;
        }
        JSONArray kept = new JSONArray();
        for (int i = 0; i < array.length(); i++) {
            if (!value.equals(array.optString(i))) {
                kept.put(array.optString(i));
            }
        }
        try {
            rule.put(key, kept);
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    private static List<String> strings(JSONObject rule, String key) {
        List<String> out = new ArrayList<>();
        JSONArray array = rule == null ? null : rule.optJSONArray(key);
        for (int i = 0; array != null && i < array.length(); i++) {
            out.add(array.optString(i));
        }
        return out;
    }
}
