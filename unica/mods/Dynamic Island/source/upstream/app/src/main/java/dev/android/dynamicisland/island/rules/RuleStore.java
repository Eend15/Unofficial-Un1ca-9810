package dev.android.dynamicisland.island.rules;

import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.XLog;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

/**
 * The rules in force: the module's own rule file and the user's own file, merged. Rebuilt only when the
 * settings changed; any thread.
 */
public final class RuleStore {
    /** The module's own rule file, always in force. */
    private static final String[] BUILTIN = {
            "/dev/android/dynamicisland/rules/builtin-ko.json", "/dev/android/dynamicisland/rules/builtin-en.json"};
    private static final Object LOCK = new Object();
    private static volatile RuleDictionary current = RuleDictionary.empty();
    private static volatile int builtFor = 0;
    private static volatile boolean built;
    private static volatile RuleDictionary forTesting;

    private RuleStore() {
    }

    /** The merged rules for the current settings. Never null; empty when nothing could be loaded. */
    public static RuleDictionary current() {
        RuleDictionary pinned = forTesting;
        if (pinned != null) {
            return pinned;
        }
        RuleConfig config = ModuleSettings.rulesConfig();
        if (!built || builtFor != config.revision) {
            synchronized (LOCK) {
                if (!built || builtFor != config.revision) {
                    current = build(config);
                    builtFor = config.revision;
                    built = true;
                }
            }
        }
        return current;
    }

    /** Builds the merged rules for {@code config}. A file that does not parse is skipped. */
    public static RuleDictionary build(RuleConfig config) {
        RuleDictionary merged = RuleDictionary.empty();
        // the module's own rules come first: Korean (built from a year and a half of recorded notifications) and English
        for (String path : BUILTIN) {
            RuleDictionary builtin = RuleDictionary.fromJson(readResource(path));
            if (builtin != null) {
                merged = merged.mergedWith(builtin);
            } else {
                XLog.i("rule file " + path + " could not be loaded");
            }
        }
        RuleDictionary custom = RuleDictionary.fromJson(config.custom);
        return (custom == null ? merged : merged.mergedWith(custom)).without(config.disabled);
    }

    private static String readResource(String path) {
        try (InputStream in = RuleStore.class.getResourceAsStream(path)) {
            if (in == null) {
                return null;
            }
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            byte[] buffer = new byte[8192];
            for (int n = in.read(buffer); n >= 0; n = in.read(buffer)) {
                out.write(buffer, 0, n);
            }
            return out.toString(StandardCharsets.UTF_8.name());
        } catch (IOException e) {
            return null;
        }
    }

    /** Makes {@link #current()} return {@code dictionary} (null undoes it); for tests. */
    public static void setForTesting(RuleDictionary dictionary) {
        forTesting = dictionary;
    }

    /** Forgets the cached rules (tests). */
    static void reset() {
        synchronized (LOCK) {
            built = false;
            current = RuleDictionary.empty();
        }
    }
}
