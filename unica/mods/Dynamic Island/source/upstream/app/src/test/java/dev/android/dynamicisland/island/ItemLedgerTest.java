package dev.android.dynamicisland.island;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class ItemLedgerTest {
    private static IslandItem item(String key, IslandItem.Kind kind, long posted) {
        IslandItem i = new IslandItem(key);
        i.kind = kind;
        i.postTime = posted;
        return i;
    }

    private static List<IslandItem> list(IslandItem... items) {
        List<IslandItem> l = new ArrayList<>();
        Collections.addAll(l, items);
        return l;
    }

    private static List<String> keys(List<IslandItem> items) {
        List<String> k = new ArrayList<>();
        for (IslandItem i : items) {
            k.add(i.key);
        }
        return k;
    }

    private static final Set<String> NONE = new HashSet<>();

    @Test
    public void ordersByPriorityThenNewest() {
        ItemLedger ledger = new ItemLedger();
        ItemLedger.Arrangement a = ledger.arrange(list(
                item("old", IslandItem.Kind.LIVE, 1), item("call", IslandItem.Kind.CALL, 0),
                item("new", IslandItem.Kind.LIVE, 2)), NONE, 1000);
        assertEquals(java.util.Arrays.asList("call", "new", "old"), keys(a.shown));
    }

    @Test
    public void minimizeMovesItemToBubbleAndRestoreBringsItFirst() {
        ItemLedger ledger = new ItemLedger();
        IslandItem x = item("x", IslandItem.Kind.LIVE, 1);
        IslandItem y = item("y", IslandItem.Kind.LIVE, 2);
        ledger.arrange(list(x, y), NONE, 1000);
        assertTrue(ledger.minimize(y));
        assertFalse(ledger.minimize(y));
        ItemLedger.Arrangement a = ledger.arrange(list(x, y), NONE, 1100);
        assertEquals(Collections.singletonList("x"), keys(a.shown));
        assertEquals(Collections.singletonList("y"), keys(a.bubbled));
        assertEquals(IslandView.HINT_TO_LEFT, a.hint);
        assertTrue(ledger.restore());
        a = ledger.arrange(list(x, y), NONE, 1200);
        assertEquals("y", a.shown.get(0).key);
        assertFalse(ledger.hasMinimized());
    }

}
