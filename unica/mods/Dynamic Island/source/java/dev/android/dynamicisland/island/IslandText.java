package dev.android.dynamicisland.island;

import android.content.Context;
import java.io.StringReader;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;

/** Module-owned text generated from the English-first Android string resources, readable inside SystemUI. */
public final class IslandText {
    private static final String ROOT = "/dev/android/dynamicisland/i18n/";
    private static final ConcurrentHashMap<String, Properties> CACHE = new ConcurrentHashMap<>();

    private IslandText() { }

    public static String get(Context host, String key, Object... arguments) {
        return get(host.getResources().getConfiguration().getLocales().get(0), key, arguments);
    }

    public static String get(Locale locale, String key, Object... arguments) {
        Locale use = locale == null ? Locale.ENGLISH : locale;
        // language-region first (pt-BR), then the language (pt), then English for whatever is not translated yet
        String text = catalog(use.toLanguageTag()).getProperty(key);
        if (text == null || text.isEmpty()) text = catalog(use.getLanguage()).getProperty(key);
        if (text == null || text.isEmpty()) text = catalog("en").getProperty(key, key);
        return arguments.length == 0 ? text : String.format(use, text, arguments);
    }

    public static List<String> languages() {
        String supported = catalog("languages").getProperty("supported", "en");
        return Collections.unmodifiableList(Arrays.asList(supported.split(",")));
    }

    private static Properties catalog(String language) {
        return CACHE.computeIfAbsent(language, name -> {
            Properties values = new Properties();
            if (!name.matches("[a-zA-Z-]+")) return values;
            String raw = EmbeddedResources.get(ROOT + name + ".properties");
            try (StringReader input = raw == null ? null : new StringReader(raw)) {
                if (input != null) values.load(input);
            } catch (java.io.IOException ignored) {
                // Missing locale data must not break SystemUI; the caller tries the English catalog.
            }
            return values;
        });
    }
}
