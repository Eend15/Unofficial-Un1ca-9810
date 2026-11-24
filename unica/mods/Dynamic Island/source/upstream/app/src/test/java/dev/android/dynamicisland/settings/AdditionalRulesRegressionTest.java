package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;
import dev.android.dynamicisland.island.rules.RuleDictionary;
import java.util.Locale;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class AdditionalRulesRegressionTest {
    @Test public void importedStagesAreBoundedInBothEditorAndRuntime() {
        String json = "{\"smart_rules\":[{\"id\":\"huge\",\"max_stage\":2147483647,\"signals\":[{\"stage\":2147483647,\"pattern\":\"done\"}]}]}";
        assertEquals(9, UserRules.parse(json).maxStage("huge"));
        var rule = RuleDictionary.fromJson(json).rule("huge");
        assertEquals(9, rule.maxStage);
        assertEquals(9, rule.stageOf("done"));
    }
    @Test public void newRulesChooseTheHighestStageJustLikeTheWizard() {
        var rules = UserRules.parse(null);
        rules.addPackage("test", "example");
        rules.addSignal("test", 0, "download");
        rules.addSignal("test", 1, "download complete");
        var runtime = RuleDictionary.fromJson(rules.toJson()).rule("test");
        assertEquals(1, runtime.stageOf("download complete"));
        assertEquals(0, runtime.stageOf("download started"));
    }
    @Test public void labelsOnlyExportsAreValidImports() {
        var rules = UserRules.parse(null);
        rules.setLabel("food", 1, "Preparing your order");
        var parsed = RuleDictionary.fromJson(rules.toJson());
        assertFalse(parsed.isEmpty());
        assertEquals("Preparing your order", parsed.statusText("food", 1, Locale.ENGLISH));
    }
    @Test public void resettingColourPreservesAnExplicitStageExtension() {
        var rules = UserRules.parse(null);
        rules.setMaxStage("food", 7);
        rules.setText("food", "accent", "#ff0000");
        rules.setText("food", "accent", null);
        assertEquals(7, UserRules.parse(rules.toJson()).maxStage("food"));
    }
    @Test public void resettingARuleAlsoRemovesImportedMixedCaseLabels() {
        var rules = UserRules.parse("{\"status_labels\":{\"FOOD\":{\"en\":{\"1\":\"Custom\"}}}}");
        assertEquals("Custom", rules.label("food", 1));
        rules.remove("food");
        assertNull(rules.toJson());
    }
    @Test public void editorRefusesToSaveRulesThatTheRuntimeWouldTruncate() {
        var rules = UserRules.parse(null);
        for (int i = 0; i < 40; i++) { rules.create("rule" + i); rules.addSignal("rule" + i, 1, "word" + i); }
        assertEquals(40, RuleDictionary.fromJson(rules.toJson()).smartRules.size());
        assertTrue(rules.canCreate("rule39"));
        assertFalse(rules.canCreate("rule40"));
        assertThrows(IllegalStateException.class, () -> rules.create("rule40"));
        assertEquals(40, rules.ruleIds().size());
    }
    @Test public void mergedPatternsKeepTheirOwnCaptureNumbersAndBackreferences() {
        var first = RuleDictionary.fromJson("{\"text_progress_include_context_pattern\":\"(a)\"}");
        var second = RuleDictionary.fromJson("{\"text_progress_include_context_pattern\":\"(x)\\\\1\"}");
        assertNotNull(second.textProgressIncludeContextPattern);
        var merged = first.mergedWith(second).textProgressIncludeContextPattern;
        var match = merged.find("xx");
        assertNotNull(match);assertEquals("x", match.group(1));
        assertTrue(merged.matches("a"));
        assertEquals(2, merged.findAll("a xx", 10).size());
    }
}
