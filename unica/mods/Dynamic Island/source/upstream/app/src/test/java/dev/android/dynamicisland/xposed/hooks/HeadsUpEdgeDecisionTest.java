package dev.android.dynamicisland.xposed.hooks;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Test;

/** What the island does with Samsung's "Brief" pop-up style and Edge Lighting, as plain decisions. */
public class HeadsUpEdgeDecisionTest {
    @After public void reset() { HeadsUpHooks.forgetExpected(); }

    @Test public void theEdgeLightingFilterIsLiftedOnlyInsideTheBannerDecisionOfANotificationTheIslandTakes() {
        // original answer "suppress" (Brief style): lifted for a claimed notification during its own decision...
        assertFalse(HeadsUpHooks.flippedSuppression(true, false, true, false, true));
        // ...not when the cover screen asks the same filter (no decision of that entry is running)
        assertTrue(HeadsUpHooks.flippedSuppression(true, false, false, false, true));
        // ...not in the independent system pop-up mode, not under Do Not Disturb, not for what the island does not take
        assertTrue(HeadsUpHooks.flippedSuppression(true, true, true, false, true));
        assertTrue(HeadsUpHooks.flippedSuppression(true, false, true, true, true));
        assertTrue(HeadsUpHooks.flippedSuppression(true, false, true, false, false));
        // an answer of "do not suppress" is never changed
        assertFalse(HeadsUpHooks.flippedSuppression(false, false, true, false, true));
    }

    @Test public void edgeLightingIsHeldBackOnlyForABannerSystemUiMakesOrACardTheIslandHas() {
        assertFalse("a guess that a banner will come is not enough", HeadsUpHooks.holdsBackPopup(false, false));
        assertTrue(HeadsUpHooks.holdsBackPopup(true, false));
        assertTrue(HeadsUpHooks.holdsBackPopup(false, true));
    }

    @Test public void aBannerThatSystemUiConfirmedIsRememberedForAShortTimeOnly() {
        assertFalse(HeadsUpHooks.expected("k", 1000L));
        HeadsUpHooks.expect("k", 1000L);
        assertTrue(HeadsUpHooks.expected("k", 1000L + HeadsUpHooks.EXPECTED_MS - 1));
        assertFalse("later it no longer counts", HeadsUpHooks.expected("k", 1000L + HeadsUpHooks.EXPECTED_MS));
        assertFalse(HeadsUpHooks.expected(null, 1000L));
        HeadsUpHooks.expect("a", 0L);
        HeadsUpHooks.expect("b", 10_000L); // the stale one is dropped on the way
        assertFalse(HeadsUpHooks.expected("a", 10_001L));
    }
}
