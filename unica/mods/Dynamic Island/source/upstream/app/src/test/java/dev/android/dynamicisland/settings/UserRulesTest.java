package dev.android.dynamicisland.settings;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import dev.android.dynamicisland.island.rules.RuleConfig;
import dev.android.dynamicisland.island.rules.RuleDictionary;
import dev.android.dynamicisland.island.rules.RuleStore;
import java.util.Collections;
import java.util.Locale;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class UserRulesTest {
    @Test
    public void slugKeepsLettersAndDigits() {
        assertEquals("헬스장_출입", UserRules.slug(" 헬스장 출입! "));
        assertEquals("gym_check_in_2", UserRules.slug("Gym  check-in 2"));
        assertEquals("", UserRules.slug("  !! "));
    }

    @Test
    public void anEmptyOrBrokenFileGivesAnEmptyModel() {
        assertNull(UserRules.parse(null).toJson());
        assertNull(UserRules.parse("not json").toJson());
        assertTrue(UserRules.parse("{}").isEmpty());
    }

    @Test
    public void editsRoundTripAndUndoCleanly() {
        UserRules rules = UserRules.parse(null);
        rules.addPackage("food", "com.example.eats");
        rules.addSignal("food", 3, "(곧 도착)");
        rules.addExclude("food", "(광고)");
        rules.setLabel("food", 3, "거의 다 왔어요");
        UserRules again = UserRules.parse(rules.toJson());
        assertEquals(Collections.singletonList("com.example.eats"), again.packages("food"));
        assertEquals("(곧 도착)", again.signals("food").get(0)[1]);
        assertEquals("거의 다 왔어요", again.label("food", 3));
        again.removePackage("food", "com.example.eats");
        again.removeSignal("food", 3, "(곧 도착)");
        again.removeExclude("food", "(광고)");
        again.setLabel("food", 3, "");
        assertNull(again.toJson());
    }

    @Test
    public void whatTheUserAddsReachesTheMergedRules() {
        UserRules rules = UserRules.parse(null);
        rules.addPackage("food", "com.example.eats");
        RuleDictionary onlyApp = RuleStore.build(new RuleConfig(rules.toJson()));
        assertTrue(onlyApp.rule("food").packageHints.contains("com.example.eats")); // survives without a signal
        rules.addSignal("food", 3, "(방금 도착)");
        RuleDictionary d = RuleStore.build(new RuleConfig(rules.toJson()));
        assertEquals(3, d.rule("food").stageOf("방금 도착했어요"));
        rules.setLabel("food", 3, "문 앞이에요");
        d = RuleStore.build(new RuleConfig(rules.toJson()));
        assertEquals("문 앞이에요", d.statusText("food", 3, Locale.KOREAN));
    }

    @Test
    public void aNewRuleWorksAndASwitchedOffRuleIsGone() {
        UserRules rules = UserRules.parse(null);
        rules.create("gym");
        rules.setMaxStage("gym", 2);
        rules.addPackage("gym", "com.example.gym");
        rules.addSignal("gym", 1, "(입장했습니다)");
        RuleDictionary d = RuleStore.build(new RuleConfig(rules.toJson()));
        assertNotNull(d.rule("gym"));
        assertEquals(1, d.rule("gym").stageOf("입장했습니다"));
        RuleDictionary off = RuleStore.build(new RuleConfig(rules.toJson(), Collections.singleton("gym")));
        assertNull(off.rule("gym"));
        assertNotNull(off.rule("food"));
        rules.remove("gym");
        assertNull(rules.toJson());
    }

    @Test
    public void removingARuleWithLabelsLeavesNothingBehind() {
        UserRules rules = UserRules.parse(null);
        rules.create("gym");
        rules.setLabel("gym", 0, "입장");
        rules.remove("gym");
        assertFalse(rules.has("gym"));
        assertNull(rules.toJson());
    }

    @Test
    public void behaviourSettingsOverrideTheShippedOnesAndUndoCleanly() {
        UserRules rules = UserRules.parse(null);
        rules.setFlag("relay", "show_progress", true);
        rules.setFlag("relay", "hide_original", false);
        rules.setNumber("relay", "ttl_min", 30);
        rules.setText("relay", "accent", "#FF9500");
        rules.setText("relay", "name", "My relay");
        rules.addTrigger("relay", "IrisRelay"); // stored in lower case
        rules.addSignal("relay", 1, "(\\d+)% done", 1);
        RuleDictionary merged = RuleStore.build(new RuleConfig(rules.toJson()));
        RuleDictionary.SmartRule rule = merged.rule("relay");
        // the shipped relay rule hides its original and has no bar; the user turned both the other way
        assertTrue(rule.showsProgress());
        assertFalse(rule.hidesOriginal());
        assertEquals(30, rule.ttlMinutes);
        assertEquals(0xFFFF9500, rule.options.accent);
        assertEquals("My relay", rule.options.name);
        assertTrue(rule.textTriggers.contains("irisrelay"));
        // untouched, the shipped rule keeps its own behaviour
        RuleDictionary.SmartRule shipped = RuleStore.build(new RuleConfig(null)).rule("relay");
        assertFalse(shipped.showsProgress());
        assertTrue(shipped.hidesOriginal());
        // undoing every setting leaves no husk of a rule in the stored file
        rules.setFlag("relay", "show_progress", null);
        rules.setFlag("relay", "hide_original", null);
        rules.setNumber("relay", "ttl_min", 0);
        rules.setText("relay", "accent", null);
        rules.setText("relay", "name", null);
        rules.removeTrigger("relay", "irisrelay");
        rules.removeSignal("relay", 1, "(\\d+)% done");
        assertNull(rules.toJson());
    }
}
