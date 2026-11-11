package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;
import android.content.Context;
import android.content.res.Configuration;
import android.os.LocaleList;
import dev.android.dynamicisland.R;
import dev.android.dynamicisland.island.IslandText;
import dev.android.dynamicisland.island.rules.RuleConfig;
import dev.android.dynamicisland.island.rules.RuleStore;
import java.util.Locale;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35, qualifiers = "w411dp-h891dp-xxhdpi")
public class LocalizationTest {
    @Test public void resourcesAndSystemUiShareTranslationsAndFormatArgumentsAcrossAllLocales() throws Exception {
        Context app = RuntimeEnvironment.getApplication();
        for (String language : IslandText.languages()) {
            Configuration configuration = new Configuration(app.getResources().getConfiguration());
            configuration.setLocales(new LocaleList(Locale.forLanguageTag(language)));
            Context localized = app.createConfigurationContext(configuration);
            for (java.lang.reflect.Field field : R.string.class.getFields()) {
                String key = field.getName();
                if (key.startsWith("island_") || key.startsWith("stage_label_")) {
                    assertEquals(language + "/" + key, localized.getString(field.getInt(null)), IslandText.get(localized, key));
                }
            }
            assertEquals(localized.getString(R.string.island_battery_remaining, 54), IslandText.get(localized, "island_battery_remaining", 54));
            assertEquals(localized.getString(R.string.island_more_apps, 3), IslandText.get(localized, "island_more_apps", 3));
            assertEquals(localized.getString(R.string.island_reply_to, "Minji"), IslandText.get(localized, "island_reply_to", "Minji"));
            assertFalse(localized.getString(R.string.experimental_recovery_desc).isBlank());
            assertTrue(localized.getString(R.string.hub_credits_text).contains("@UnkilBonki"));
            assertFalse(localized.getString(R.string.rules_status, "example").contains("%1$s"));
        }
    }
    @Test public void newLanguagesHaveNativeStageLabelsAndPreserveCustomEnglishOverrides() {
        var rules = RuleStore.build(new RuleConfig(null));
        assertEquals("準備中", rules.statusText("food", 1, Locale.JAPANESE));
        assertEquals("准备中", rules.statusText("food", 1, Locale.CHINESE));
        assertEquals("Готовится", rules.statusText("food", 1, Locale.forLanguageTag("ru")));
        var custom = RuleStore.build(new RuleConfig("{\"status_labels\":{\"food\":{\"en\":{\"1\":\"My preparation\"}}}}"));
        for (String language : new String[]{"ja", "zh", "ru", "tr"}) {
            assertEquals("My preparation", custom.statusText("food", 1, Locale.forLanguageTag(language)));
        }
    }
    @Test public void builtinDetectionAndStageLabelsSurviveAResourceBlindModuleLoader() throws Exception {
        ClassLoader loader = new dev.android.dynamicisland.testutil.ResourceBlindModuleLoader(
                RuleStore.class.getClassLoader(), RuleStore.class.getName(),
                "dev.android.dynamicisland.island.EmbeddedResources");
        assertNull(loader.getResource("dev/android/dynamicisland/rules/builtin-en.json"));
        Class<?> store = loader.loadClass(RuleStore.class.getName());
        assertSame(loader, store.getClassLoader());
        var build = store.getMethod("build", RuleConfig.class);
        var rules = (dev.android.dynamicisland.island.rules.RuleDictionary) build.invoke(null, RuleConfig.DEFAULT);
        assertFalse("smart-rule detection must not disappear with APK resources", rules.smartRules.isEmpty());
        assertFalse("OTP detection must not disappear with APK resources", rules.otpStrongTriggers.isEmpty());
        assertEquals("準備中", rules.statusText("food", 1, Locale.JAPANESE));
        assertEquals("Готовится", rules.statusText("food", 1, Locale.forLanguageTag("ru")));
        var custom = new RuleConfig("{\"status_labels\":{\"food\":{\"en\":{\"1\":\"Custom preparation\"}}}}");
        var edited = (dev.android.dynamicisland.island.rules.RuleDictionary) build.invoke(null, custom);
        assertEquals("Custom preparation", edited.statusText("food", 1, Locale.JAPANESE));
    }
}
