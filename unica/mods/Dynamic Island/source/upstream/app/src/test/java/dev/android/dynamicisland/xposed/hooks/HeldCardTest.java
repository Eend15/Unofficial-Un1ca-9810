package dev.android.dynamicisland.xposed.hooks;

import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertSame;
import static org.junit.Assert.assertTrue;

import dev.android.dynamicisland.island.model.IslandItem;
import org.junit.Test;

public class HeldCardTest {
    private final IslandItem card = new IslandItem("media");

    @Test
    public void aLiveCardIsReturnedAsItIs() {
        HeldCard held = new HeldCard();
        assertSame(card, held.pick(card, HeldCard.NO_CARD, 1_000));
    }

    @Test
    public void aCardThatIsMissingForAMomentIsKept() {
        HeldCard held = new HeldCard();
        held.pick(card, 0, 1_000);
        assertSame("no source for a moment", card, held.pick(null, HeldCard.NO_SOURCE, 1_500));
        assertSame("no card for a moment", card, held.pick(null, HeldCard.NO_CARD, 2_500));
        assertNull("after the hold the stock player may show", held.pick(null, HeldCard.NO_CARD, 1_000 + HeldCard.HOLD_MS));
    }

    @Test
    public void aCardThatIsBackIsNotLeftBehind() {
        HeldCard held = new HeldCard();
        IslandItem next = new IslandItem("media");
        held.pick(card, 0, 1_000);
        assertSame(next, held.pick(next, 0, 1_200));
        assertSame("the newest card is the one kept", next, held.pick(null, HeldCard.NO_CARD, 1_400));
    }

    @Test
    public void aPlainReasonEndsTheCardAtOnce() {
        for (int reason : new int[] {HeldCard.SETTING_OFF, HeldCard.TOUCH_EXPLORATION, HeldCard.OPTIONS_OPEN}) {
            HeldCard held = new HeldCard();
            held.pick(card, 0, 1_000);
            assertNull("reason " + reason, held.pick(null, reason, 1_100));
            assertNull("and it does not come back by itself", held.pick(null, HeldCard.NO_CARD, 1_200));
        }
    }

    @Test
    public void nothingIsMadeUpForAPlayerThatNeverHadACard() {
        assertNull(new HeldCard().pick(null, HeldCard.NO_CARD, 1_000));
    }

    @Test
    public void theReportSaysHowOftenThereWasNoCard() {
        HeldCard held = new HeldCard();
        held.pick(null, HeldCard.NO_SOURCE, 1_000);
        assertTrue(HeldCard.summary(), HeldCard.summary().startsWith("checks without a card:"));
    }
}
