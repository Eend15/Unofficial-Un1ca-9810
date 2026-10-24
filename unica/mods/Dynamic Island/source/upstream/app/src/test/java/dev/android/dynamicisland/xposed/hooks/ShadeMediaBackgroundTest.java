package dev.android.dynamicisland.xposed.hooks;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

public class ShadeMediaBackgroundTest {
    @Test
    public void rebuildsWhenOurOwnStateChanges() {
        assertTrue(ShadeMediaPlayer.needsRebuild(false, false, true, null, false));  // first time on this row
        assertTrue(ShadeMediaPlayer.needsRebuild(true, false, true, Boolean.FALSE, false));
        assertTrue(ShadeMediaPlayer.needsRebuild(true, true, false, Boolean.TRUE, false));
    }

    @Test
    public void rebuildsWhenSystemUiRebuiltTheRowInTheStockLookBehindOurBack() {
        // our player is drawing (active) and we already asked for the card background once, but System UI
        // rebuilt the row while the player was momentarily inactive (lock screen, options, track change)
        assertTrue(ShadeMediaPlayer.needsRebuild(true, true, true, Boolean.FALSE, false));
        assertTrue(ShadeMediaPlayer.needsRebuild(true, true, true, null, false));
    }

    @Test
    public void leavesAConsistentRowAloneAndNeverQueuesTwice() {
        assertFalse(ShadeMediaPlayer.needsRebuild(true, true, true, Boolean.TRUE, false));
        assertFalse(ShadeMediaPlayer.needsRebuild(true, false, false, Boolean.FALSE, false));
        assertFalse(ShadeMediaPlayer.needsRebuild(false, false, true, null, true));
    }
}
