package dev.android.dynamicisland.island.rules;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import java.util.Collections;
import java.util.Locale;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class RuleDictionaryTest {
    private static final String SMALL = "{\"smart_rules\":[{\"id\":\"Food\",\"max_stage\":4,\"package_hints\":[\"Baemin\"],"
            + "\"text_triggers\":[\"배달\"],\"exclude_patterns\":[\"(광고)\"],\"signals\":[{\"stage\":3,\"pattern\":\"(곧 도착)\"},"
            + "{\"stage\":1,\"pattern\":\"(접수)\"},{\"stage\":9,\"pattern\":\"(\"}]}],"
            + "\"status_labels\":{\"food\":{\"en\":{\"1\":\"Preparing\",\"3\":\"Almost there\"},\"ko\":{\"1\":\"조리 중\"}}},"
            + "\"otp_strong_triggers\":[\"Код\"],\"text_progress_context_window\":5}";

    @Test
    public void readsRulesAndSkipsWhatDoesNotCompile() {
        RuleDictionary d = RuleDictionary.fromJson(SMALL);
        assertNotNull(d);
        RuleDictionary.SmartRule food = d.rule("food"); // ids are lower-cased
        assertNotNull(food);
        assertEquals(2, food.signals.size()); // the signal with the broken pattern "(" is dropped
        assertEquals(3, food.stageOf("주문이 곧 도착해요"));
        assertEquals(1, food.stageOf("주문 접수"));
        assertEquals(-1, food.stageOf("아무 말"));
        assertTrue(food.isRelevant("com.baemin.app", "x"));
        assertTrue(food.isRelevant("zzz", "배달 시작"));
        assertFalse(food.isRelevant("zzz", "other"));
        assertTrue(food.isExcluded("(광고) 배달"));
        assertTrue(d.otpStrongTriggers.contains("код")); // words are lower-cased
        assertEquals(24, d.textProgressContextWindow); // clamped to the allowed range
    }

    @Test
    public void statusTextFollowsTheLanguageAndFallsBack() {
        RuleDictionary d = RuleDictionary.fromJson(SMALL);
        assertEquals("조리 중", d.statusText("food", 1, Locale.KOREAN));
        assertEquals("Preparing", d.statusText("food", 1, Locale.ENGLISH));
        assertEquals("Preparing", d.statusText("food", 2, Locale.ENGLISH)); // nearest lower stage
        assertEquals("Almost there", d.statusText("food", 4, Locale.ENGLISH));
        assertEquals("Preparing", d.statusText("FOOD", 0, Locale.ENGLISH)); // below the first stage: the first one
        assertEquals("Preparing", d.statusText("food", 1, Locale.JAPANESE)); // unknown language: English
        assertNull(d.statusText("taxi", 1, Locale.ENGLISH));
    }

    @Test
    public void mergingUnitesWordsPatternsAndRules() {
        RuleDictionary a = RuleDictionary.fromJson(SMALL);
        RuleDictionary b = RuleDictionary.fromJson("{\"smart_rules\":[{\"id\":\"food\",\"max_stage\":5,\"package_hints\":[\"coupang\"],"
                + "\"signals\":[{\"stage\":4,\"pattern\":\"(도착했)\"},{\"stage\":3,\"pattern\":\"(곧 도착)\"}]},"
                + "{\"id\":\"taxi\",\"max_stage\":2,\"signals\":[{\"stage\":2,\"pattern\":\"(탑승)\"}]}],"
                + "\"otp_strong_triggers\":[\"pin\"],\"money_context_pattern\":\"(원)\"}");
        RuleDictionary m = a.mergedWith(b);
        RuleDictionary.SmartRule food = m.rule("food");
        assertEquals(5, food.maxStage);
        assertTrue(food.packageHints.contains("baemin") && food.packageHints.contains("coupang"));
        assertEquals(3, food.signals.size()); // the signal both files have is kept once
        assertEquals(4, food.stageOf("도착했어요 곧 도착")); // the later stage wins when two match
        assertNotNull(m.rule("taxi"));
        assertTrue(m.otpStrongTriggers.contains("pin") && m.otpStrongTriggers.contains("код"));
        assertTrue(m.moneyContextPattern.matches("1000원"));
        assertEquals(a, a.mergedWith(RuleDictionary.empty()));
        assertEquals(b, RuleDictionary.empty().mergedWith(b));
    }

    @Test
    public void joinedPatternsMatchEither() {
        RuleDictionary a = RuleDictionary.fromJson("{\"weather_day_pattern\":\"(오늘)\"}");
        RuleDictionary b = RuleDictionary.fromJson("{\"weather_day_pattern\":\"(내일)\"}");
        RuleDictionary m = a.mergedWith(b);
        assertTrue(m.weatherDayPattern.matches("오늘 맑음"));
        assertTrue(m.weatherDayPattern.matches("내일 비"));
        assertFalse(m.weatherDayPattern.matches("모레"));
    }

    @Test
    public void rejectsWhatIsNotAFile() {
        assertNull(RuleDictionary.fromJson(null));
        assertNull(RuleDictionary.fromJson("not json"));
        assertNull(RuleDictionary.fromJson("[1,2]"));
        char[] big = new char[RuleDictionary.MAX_JSON_CHARS + 1];
        java.util.Arrays.fill(big, ' ');
        assertNull(RuleDictionary.fromJson("{" + new String(big) + "}"));
        assertTrue(RuleDictionary.fromJson("{}").isEmpty());
    }

    @Test
    public void bundledFilesAllLoad() {
        RuleConfig all = new RuleConfig(
                null);
        RuleDictionary d = RuleStore.build(all);
        for (String id : new String[]{"food", "taxi", "navigation", "external_device", "parcel", "wearable"}) {
            assertNotNull(id, d.rule(id));
        }
        // the Korean file alone reads a delivery and a ride the way LiveBridge's parser does
        RuleDictionary ko = RuleStore.build(new RuleConfig(null));
        assertEquals(3, ko.rule("food").stageOf("라이더님이 곧 도착해요!"));
        assertEquals(2, ko.rule("taxi").stageOf("기사님이 도착해요."));
        assertEquals("접근 중", ko.statusText("taxi", 2, Locale.KOREAN));
    }

    @Test
    public void theUsersOwnFileGoesOnTopOfTheShippedOnes() {
        RuleConfig config = new RuleConfig(
                "{\"smart_rules\":[{\"id\":\"food\",\"max_stage\":4,\"package_hints\":[\"newapp\"],\"signals\":[{\"stage\":1,\"pattern\":\"(내 규칙)\"}]}]}");
        RuleDictionary.SmartRule food = RuleStore.build(config).rule("food");
        assertTrue(food.packageHints.contains("newapp"));
        assertTrue(food.packageHints.contains("com.mcdonalds")); // the shipped Korean file is still there
        assertEquals(1, food.stageOf("내 규칙"));
    }

    @Test
    public void aBrokenFileOfTheUserIsIgnored() {
        RuleDictionary d = RuleStore.build(new RuleConfig("also broken"));
        assertNotNull(d.rule("food"));
        assertTrue(d.rule("food").packageHints.contains("com.mcdonalds"));
    }

    @Test
    public void aRunawayPatternIsStoppedAndSwitchedOff() {
        Rx evil = Rx.compile("(.*a){20}x", false);
        StringBuilder text = new StringBuilder();
        for (int i = 0; i < 60; i++) {
            text.append('a');
        }
        text.append('!');
        long start = System.nanoTime();
        for (int i = 0; i < Rx.MAX_TIMEOUTS; i++) {
            assertNull(evil.find(text));
        }
        long ms = (System.nanoTime() - start) / 1_000_000;
        assertTrue("each attempt must stop within its budget, took " + ms + " ms", ms < 1500);
        assertTrue(evil.disabled());
        assertNull(evil.find("aaa")); // switched off: not even tried
    }

    @Test
    public void exponentialShapesAreRefusedButBoundedRepeatsAreFine() {
        for (String bad : new String[]{"(a+)+", "(a|aa)*x", "(\\d+\\s?)+$", "(.*a)*", "((a+)b)+", "(?:x*y)+", "(a|b){2,}"}) {
            assertTrue(bad, Rx.looksCatastrophic(bad));
            assertNull(bad, Rx.compile(bad, true));
        }
        for (String good : new String[]{"(?:[\\s-]?\\d){3,7}", "(\\d{4,8})", "(?:\\b코드\\b|\\b번호\\b)[^\\d\\n]{0,80}(\\d)",
                "([\\p{L}\\p{N}][\\p{L}\\p{N} ._#\\-]{1,40})", "(배달이 완료되었습니다.|만에 완료됐습니다.)", "(a|b)?c", "[(+*]+x"}) {
            assertFalse(good, Rx.looksCatastrophic(good));
            assertNotNull(good, Rx.compile(good, true));
        }
    }

    @Test
    public void everyPatternOfTheShippedFilesIsAccepted() throws Exception {
        // the module's own file must lose nothing to the safe-pattern checks
        for (String id : new String[]{"builtin-ko"}) {
            java.io.InputStream in = RuleStore.class.getResourceAsStream("/dev/android/dynamicisland/rules/" + id + ".json");
            String raw = new String(in.readAllBytes(), java.nio.charset.StandardCharsets.UTF_8);
            org.json.JSONObject root = new org.json.JSONObject(raw);
            int patterns = 0;
            int accepted = 0;
            java.util.Iterator<String> keys = root.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                Object value = root.get(key);
                if (key.endsWith("_pattern") && value instanceof String) {
                    patterns++;
                    accepted += Rx.compile((String) value, true) != null ? 1 : 0;
                } else if (key.endsWith("_patterns") && value instanceof org.json.JSONArray) {
                    org.json.JSONArray array = (org.json.JSONArray) value;
                    for (int i = 0; i < array.length(); i++) {
                        patterns++;
                        accepted += Rx.compile(array.getString(i), true) != null ? 1 : 0;
                    }
                } else if (key.equals("smart_rules")) {
                    org.json.JSONArray rules = (org.json.JSONArray) value;
                    for (int r = 0; r < rules.length(); r++) {
                        org.json.JSONArray signals = rules.getJSONObject(r).getJSONArray("signals");
                        for (int s = 0; s < signals.length(); s++) {
                            patterns++;
                            accepted += Rx.compile(signals.getJSONObject(s).getString("pattern"), true) != null ? 1 : 0;
                        }
                    }
                }
            }
            assertTrue(id + " has patterns", patterns > 10);
            assertEquals(id + ": patterns refused", patterns, accepted);
        }
    }

    @Test
    public void tooLongOrBrokenPatternsAreRefused() {
        assertNull(Rx.compile("(", true));
        assertNull(Rx.compile("", true));
        StringBuilder longPattern = new StringBuilder();
        for (int i = 0; i <= Rx.MAX_PATTERN_LENGTH; i++) {
            longPattern.append('a');
        }
        assertNull(Rx.compile(longPattern.toString(), true));
        assertNotNull(Rx.compile("(?i)abc", false));
    }
}
