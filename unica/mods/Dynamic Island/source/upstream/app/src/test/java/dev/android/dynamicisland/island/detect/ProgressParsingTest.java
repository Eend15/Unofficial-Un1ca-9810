package dev.android.dynamicisland.island.detect;
import static org.junit.Assert.*;
import dev.android.dynamicisland.island.rules.RuleDictionary;
import dev.android.dynamicisland.island.rules.RuleStore;
import dev.android.dynamicisland.settings.ModuleSettings;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
@RunWith(RobolectricTestRunner.class)
@Config(sdk=35)
public class ProgressParsingTest {
    @Before public void configure() {
        ModuleSettings.configurePreview(ModuleSettings.openStore(RuntimeEnvironment.getApplication()));
        RuleStore.setForTesting(RuleDictionary.empty());
    }
    @After public void reset() { RuleStore.setForTesting(null); }
    @Test public void aSharedSizeUnitAppliesToBothNumbersButAnExplicitByteUnitDoesNot() {
        assertEquals(50,TextProgress.detect("Downloading 500/1000 MB"));
        assertEquals(31,TextProgress.detect("Downloading 12.4 MB / 40 MB"));
        assertEquals(0,TextProgress.detect("Downloading 500 B/1000 MB"));
        assertEquals(50,TextProgress.detect("Copying 1 GB/2 GB"));
    }
    @Test public void remainingPercentIsNotCompletedPercentAndRemainingTimeDoesNotInvertIt() {
        assertEquals(25,TextProgress.detect("Downloading 75% remaining"));
        assertEquals(25,TextProgress.detect("Remaining: 75%"));
        assertEquals(25,TextProgress.detect("다운로드 75% 남음"));
        assertEquals(75,TextProgress.detect("Downloading 75% complete; 2 min remaining"));
        assertEquals(-1,TextProgress.detect("Battery 75% remaining"));
    }
    @Test public void customContextRulesApplyEquallyToPercentAndSizeProgress() {
        RuleStore.setForTesting(RuleDictionary.fromJson("{\"text_progress_exclude_context_pattern\":\"private-copy\"}"));
        assertEquals(-1,TextProgress.detect("private-copy downloading 50%"));
        assertEquals(-1,TextProgress.detect("private-copy downloading 500 MB/1000 MB"));
        RuleStore.setForTesting(RuleDictionary.fromJson("{\"text_progress_include_context_pattern\":\"custom-transfer\"}"));
        assertEquals(50,TextProgress.detect("custom-transfer 50%"));
        assertEquals(50,TextProgress.detect("custom-transfer 500 MB/1000 MB"));
    }
}
