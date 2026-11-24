package dev.android.dynamicisland.island.graphics;

import static org.junit.Assert.*;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import java.time.Duration;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.shadows.ShadowSystemClock;

/** An animated icon shown again after a while is asked about before it is drawn: it must already say "playing". */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class GlyphReplayTest {
    @Before public void live() {
        GlyphIcon.setPlaybackFrozen(false);
        // playback times are kept per kind for the whole process; the test clock starts again for every test
        ((java.util.Map<?, ?>) org.robolectric.util.ReflectionHelpers.getStaticField(GlyphIcon.class, "PLAYBACK")).clear();
    }
    @After public void restore() { GlyphIcon.setPlaybackFrozen(true); }

    @Test public void aTorchShownAgainAfterAGapPlaysFromTheStartInsteadOfStickingOnItsFirstFrame() {
        Canvas canvas = new Canvas(Bitmap.createBitmap(96, 96, Bitmap.Config.ARGB_8888));
        GlyphIcon icon = GlyphIcon.of(GlyphIcon.Kind.TORCH);
        icon.setBounds(0, 0, 96, 96);
        assertTrue("first showing asks for frames", icon.animating());
        icon.draw(canvas);
        ShadowSystemClock.advanceBy(Duration.ofMillis(900));
        icon.draw(canvas);
        assertFalse("the first playback has finished", icon.animating());

        ShadowSystemClock.advanceBy(Duration.ofSeconds(4)); // the island was frozen, or the card was gone
        assertTrue("asked before the draw that replays it: the frame loop must keep going", icon.animating());
        icon.draw(canvas);
        assertTrue(icon.animating());
        ShadowSystemClock.advanceBy(Duration.ofMillis(900));
        icon.draw(canvas);
        assertFalse("and it settles again, so the loop does not run for ever", icon.animating());
    }

    @Test public void anIconNobodyDrawsDoesNotKeepTheFrameLoopRunningForEver() {
        GlyphIcon icon = GlyphIcon.of(GlyphIcon.Kind.TORCH);
        icon.setBounds(0, 0, 96, 96);
        Canvas canvas = new Canvas(Bitmap.createBitmap(96, 96, Bitmap.Config.ARGB_8888));
        icon.draw(canvas);
        ShadowSystemClock.advanceBy(Duration.ofSeconds(5));
        assertTrue(icon.animating()); // starts the replay
        ShadowSystemClock.advanceBy(Duration.ofMillis(900));
        assertFalse("without a draw it still ends after one playback", icon.animating());
    }
}
