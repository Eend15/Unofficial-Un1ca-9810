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
    private String text(String tag, String key) { return IslandText.get(Locale.forLanguageTag(tag), key); }
}
