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

    private static IslandItem popup(String key, long posted) {
        IslandItem i = item(key, IslandItem.Kind.EVENT, posted);
        i.transientPopup = true;
        return i;
    }

    @Test
    public void aPopupComesBeforeEverythingElseIncludingACall() {
        ItemLedger ledger = new ItemLedger();
        ItemLedger.Arrangement a = ledger.arrange(list(
                item("match", IslandItem.Kind.LIVE, 1), item("call", IslandItem.Kind.CALL, 0),
                item("rec", IslandItem.Kind.RECORDING, 2), popup("charging", 3)), NONE, 1000);
        assertEquals(java.util.Arrays.asList("charging", "call", "rec", "match"), keys(a.shown));
    }

    @Test
    public void chargingThenSystemPopupsOutrankNewerNotificationPeeksAndBoosts() {
        ItemLedger ledger = new ItemLedger();
        IslandItem charging = popup("event:charging", 1);
        IslandItem system = popup("event:toggle:dnd", 2);
        IslandItem peek = item("peek:message", IslandItem.Kind.PEEK, 3);
        peek.transientPopup = true;
        IslandItem call = item("call", IslandItem.Kind.CALL, 4);
        List<IslandItem> items = list(call, peek, system, charging);
        ledger.arrange(items, NONE, 1000);
        ledger.minimize(peek);
        ledger.restore(); // Even an explicit boost does not put a message above short system feedback.
        assertEquals(java.util.Arrays.asList(charging.key, system.key, peek.key, call.key),
                keys(ledger.arrange(items, NONE, 1100).shown));
        assertEquals(java.util.Arrays.asList(system.key, peek.key, call.key),
                keys(ledger.arrange(list(call, peek, system), NONE, 1200).shown));
    }

    @Test
    public void thePopupGoesAndTheOthersComeBackInTheirOrder() {
        ItemLedger ledger = new ItemLedger();
        IslandItem match = item("match", IslandItem.Kind.LIVE, 1);
        IslandItem rec = item("rec", IslandItem.Kind.RECORDING, 2);
        assertEquals(java.util.Arrays.asList("rec", "match"), keys(ledger.arrange(list(match, rec), NONE, 1000).shown));
        assertEquals(java.util.Arrays.asList("dnd", "rec", "match"),
                keys(ledger.arrange(list(match, rec, popup("dnd", 5)), NONE, 1100).shown));
        assertEquals(java.util.Arrays.asList("rec", "match"), keys(ledger.arrange(list(match, rec), NONE, 5200).shown));
    }

    @Test
    public void aBoostedItemDoesNotKeepAPopupDown() {
        ItemLedger ledger = new ItemLedger();
        IslandItem match = item("match", IslandItem.Kind.LIVE, 1);
        Set<String> hidden = new HashSet<>();
        hidden.add("match");
        ledger.arrange(list(), hidden, 1000);              // the app on screen hid it
        ledger.arrange(list(match), NONE, 1100);           // the app left: it flies in, boosted
        ItemLedger.Arrangement a = ledger.arrange(list(match, popup("charging", 2000)), NONE, 2000);
        assertEquals("charging", a.shown.get(0).key);
    }

    @Test
    public void whatTheUserSwipedToIsKeptThroughAPopupAndComesBack() {
        ItemLedger ledger = new ItemLedger();
        IslandItem a = item("a", IslandItem.Kind.LIVE, 3);
        IslandItem b = item("b", IslandItem.Kind.LIVE, 2);
        IslandItem c = item("c", IslandItem.Kind.LIVE, 1);
        ledger.arrange(list(a, b, c), NONE, 1000);
        assertTrue(ledger.cycle(1));
        assertEquals(java.util.Arrays.asList("b", "c", "a"), keys(ledger.arrange(list(a, b, c), NONE, 1100).shown));
        assertEquals("the popup is on top, the swiped item stays behind it",
                java.util.Arrays.asList("p", "b", "c", "a"), keys(ledger.arrange(list(a, b, c, popup("p", 2)), NONE, 1200).shown));
        assertEquals("and returns when the popup is gone",
                java.util.Arrays.asList("b", "c", "a"), keys(ledger.arrange(list(a, b, c), NONE, 6000).shown));
    }

    @Test
    public void cyclingIgnoresThePopupThatIsOnTop() {
        ItemLedger ledger = new ItemLedger();
        IslandItem a = item("a", IslandItem.Kind.LIVE, 2);
        IslandItem b = item("b", IslandItem.Kind.LIVE, 1);
        ledger.arrange(list(a, b, popup("p", 3)), NONE, 1000);
        assertTrue(ledger.cycle(1));
        assertEquals(java.util.Arrays.asList("p", "b", "a"), keys(ledger.arrange(list(a, b, popup("p", 3)), NONE, 1100).shown));
        ItemLedger alone = new ItemLedger();
        alone.arrange(list(item("only", IslandItem.Kind.LIVE, 1), popup("p", 2)), NONE, 1000);
        assertFalse("one item besides the popup has nothing to cycle to", alone.cycle(1));
    }
}
