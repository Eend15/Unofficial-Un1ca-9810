package dev.android.dynamicisland.island;

import static org.junit.Assert.*;
import java.util.Locale;
import org.junit.Test;

/** Exercise the generated catalog used by SystemUI, without any Android resource context. */
public class IslandTextTest {
    @Test public void selectsAllSixLanguagesIncludingRegionalVariants() {
        assertEquals("Charging", text("en-US", "island_charging"));
        assertEquals("충전 중", text("ko-KR", "island_charging"));
        assertEquals("充電中", text("ja-JP", "island_charging"));
        assertEquals("正在充电", text("zh-CN", "island_charging"));
        assertEquals("正在充电", text("zh-TW", "island_charging"));
        assertEquals("Зарядка", text("ru-RU", "island_charging"));
        assertEquals("Şarj oluyor", text("tr-CY", "island_charging"));
        assertTrue(IslandText.languages().containsAll(java.util.List.of("en", "ko", "ja", "zh", "ru", "tr")));
    }
    @Test public void unsupportedAndNullLocalesKeepEnglishFallback() {
        assertEquals("Charging", text("de-DE", "island_charging"));
        assertEquals("Charging", IslandText.get((Locale) null, "island_charging"));
    }
    @Test public void formatsArgumentsAndLiteralPercentAndPreservesSuffixSpacing() {
        assertEquals("Reply to Minji", IslandText.get(Locale.ENGLISH, "island_reply_to", "Minji"));
        assertEquals("回复 Minji", IslandText.get(Locale.CHINESE, "island_reply_to", "Minji"));
        assertEquals("54% remaining", IslandText.get(Locale.ENGLISH, "island_battery_remaining", 54));
        assertEquals("%54 kaldı", IslandText.get(Locale.forLanguageTag("tr"), "island_battery_remaining", 54));
        assertEquals(" +3", IslandText.get(Locale.ENGLISH, "island_more_apps", 3));
        assertEquals("Do Not Disturb on", IslandText.get(Locale.ENGLISH, "island_setting_on", "Do Not Disturb"));
    }
    @Test public void explicitLocaleDoesNotDependOnTheJvmDefault() {
        Locale previous = Locale.getDefault();
        try {
            Locale.setDefault(Locale.JAPANESE);
            assertEquals("Charging", text("en-US", "island_charging"));
            assertEquals("충전 중", text("ko", "island_charging"));
        } finally { Locale.setDefault(previous); }
    }
    @Test public void inMemoryModuleLoaderKeepsLocalizedTorchTextAndFormattingWithoutApkResources() throws Exception {
        ClassLoader loader = new dev.android.dynamicisland.testutil.ResourceBlindModuleLoader(
                IslandText.class.getClassLoader(), IslandText.class.getName(),
                "dev.android.dynamicisland.island.EmbeddedResources");
        assertNull(loader.getResource("dev/android/dynamicisland/i18n/en.properties"));
        Class<?> text = loader.loadClass(IslandText.class.getName());
        assertSame(loader, text.getClassLoader());
        var get = text.getMethod("get", Locale.class, String.class, Object[].class);
        String[][] expected = {{"en", "On", "Off"}, {"ko", "켜짐", "꺼짐"}, {"ja", "オン", "オフ"},
                {"zh", "开启", "关闭"}, {"ru", "Вкл.", "Выкл."}, {"tr", "Açık", "Kapalı"}};
        for (String[] row : expected) {
            Locale locale = Locale.forLanguageTag(row[0]);
            assertEquals(row[0], row[1], get.invoke(null, locale, "island_on", new Object[0]));
            assertEquals(row[0], row[2], get.invoke(null, locale, "island_off", new Object[0]));
        }
        assertEquals("On", get.invoke(null, Locale.forLanguageTag("pt-BR"), "island_on", new Object[0]));
        assertEquals("54% remaining", get.invoke(null, Locale.ENGLISH, "island_battery_remaining", new Object[]{54}));
        assertEquals("unknown_key", get.invoke(null, Locale.ENGLISH, "unknown_key", new Object[0]));
        assertEquals(IslandText.languages(), text.getMethod("languages").invoke(null));
    }
    private String text(String tag, String key) { return IslandText.get(Locale.forLanguageTag(tag), key); }
}
