package dev.android.dynamicisland.island;

import static org.junit.Assert.assertEquals;

import dev.android.dynamicisland.island.model.IslandItem;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.junit.Test;

public class ItemDedupeTest {
    private static IslandItem item(String key, String sourceKey) {
        IslandItem it = new IslandItem(key);
        it.sourceKey = sourceKey;
        return it;
    }

    private static List<String> keys(List<IslandItem> items) {
        List<String> out = new ArrayList<>();
        for (IslandItem it : items) {
            out.add(it.key);
        }
        return out;
    }

    @Test
    public void ourRuleCardWinsOverTheLiveBridgeCopyAndTheProgressCard() {
        List<IslandItem> items = new ArrayList<>(Arrays.asList(
                item("oa:copy1", null), item("rule:p:food", "orig1"), item("task:orig1", "orig1"),
                item("oa:other", null), item("task:orig2", "orig2")));
        ItemDedupe.apply(items, key -> key.equals("orig1") ? Collections.singleton("copy1") : Collections.emptySet());
        assertEquals(Arrays.asList("rule:p:food", "oa:other", "task:orig2"), keys(items));
    }

    @Test
    public void anOpenHeadsUpHidesTheCardOfTheSameNotificationUntilItFolds() {
        List<IslandItem> items = new ArrayList<>(Arrays.asList(
                item("peek:orig1", null), item("rule:p:food", "orig1"), item("rule:q:taxi", "orig9")));
        ItemDedupe.apply(items, key -> Collections.emptySet());
        assertEquals(Arrays.asList("peek:orig1", "rule:q:taxi"), keys(items));
    }

    @Test
    public void aPeekedRuleCardDoesNotAlsoRemoveTheLiveCopy() {
        // the rule card is hidden by the heads-up, so the copy is not shadowed by it (nothing shows twice anyway)
        List<IslandItem> items = new ArrayList<>(Arrays.asList(item("peek:orig1", null), item("rule:p:food", "orig1"), item("oa:copy1", null)));
        ItemDedupe.apply(items, key -> Collections.singleton("copy1"));
        assertEquals(Arrays.asList("peek:orig1", "oa:copy1"), keys(items));
    }
}
