package dev.android.dynamicisland.island.view;

import static org.junit.Assert.*;
import java.util.ArrayList;
import java.util.List;
import org.junit.Test;

public class BlurGovernorTest {
    private static final long MS = 1_000_000L;

    /** Feeds {@code frames} blurred frames {@code gapMs} apart; returns the time of the last one. */
    private long run(BlurGovernor g, long startNanos, int frames, long gapMs, long[] clockMs) {
        long t = startNanos;
        for (int i = 0; i < frames; i++) {
            g.blurDrawn();
            g.onFrame(t, clockMs[0]);
            t += gapMs * MS;
            clockMs[0] += gapMs;
        }
        return t;
    }

    @Test public void aPhoneThatKeepsUpNeverLosesTheBlur() {
        BlurGovernor g = new BlurGovernor();
        long[] clock = {1_000};
        run(g, 1_000 * MS, 600, 8, clock);   // 120 fps
        assertTrue(g.allowed(clock[0]));
        run(g, 10_000 * MS, 600, 17, clock); // 60 fps
        assertTrue(g.allowed(clock[0]));
    }

    @Test public void occasionalSingleHiccupsAreForgiven() {
        BlurGovernor g = new BlurGovernor();
        long[] clock = {1_000};
        long t = 1_000 * MS;
        for (int i = 0; i < 40; i++) {
            long gap = i % 12 == 11 ? 40 : 8; // one late frame in twelve
            g.blurDrawn();
            g.onFrame(t, clock[0]);
            t += gap * MS;
            clock[0] += gap;
        }
        assertTrue(g.allowed(clock[0]));
    }

    @Test public void aStutteringTransitionSwitchesTheBlurOffAndBackOnLater() {
        BlurGovernor g = new BlurGovernor();
        List<String> said = new ArrayList<>();
        g.setReport(said::add);
        long[] clock = {1_000};
        run(g, 1_000 * MS, 10, 45, clock); // about 22 fps
        assertFalse(g.allowed(clock[0]));
        assertEquals(1, said.size());
        assertTrue(said.get(0).contains("paused for 120 s"));
        assertFalse(g.allowed(clock[0] + 119_000));
        assertTrue(g.allowed(clock[0] + 121_000));
        assertEquals(2, said.size());
    }

    @Test public void givingUpAgainSoonWaitsTwiceAsLongUpToTheCap() {
        BlurGovernor g = new BlurGovernor();
        long[] clock = {1_000};
        long wait = BlurGovernor.FIRST_PENALTY_MS;
        for (int round = 0; round < 8; round++) {
            run(g, (round + 1) * 100_000L * MS, 10, 45, clock);
            assertFalse("round " + round, g.allowed(clock[0]));
            long left = 0;
            while (!g.allowed(clock[0] + left)) left += 1_000;
            assertTrue("round " + round + " waited " + left, left >= Math.min(wait, BlurGovernor.MAX_PENALTY_MS) - 1_000);
            clock[0] += left;
            wait = Math.min(wait * 2, BlurGovernor.MAX_PENALTY_MS);
        }
    }

    @Test public void framesWithoutBlurAndLongPausesNeverCount() {
        BlurGovernor g = new BlurGovernor();
        long[] clock = {1_000};
        // slow frames, but no blur was drawn in them: another part of the island is the slow one
        long t = 1_000 * MS;
        for (int i = 0; i < 30; i++) {
            g.onFrame(t, clock[0]);
            t += 50 * MS;
            clock[0] += 50;
        }
        assertTrue(g.allowed(clock[0]));
        // gaps longer than a pause (screen off) are not slowness
        for (int i = 0; i < 30; i++) {
            g.blurDrawn();
            g.onFrame(t, clock[0]);
            t += 2_000 * MS;
            clock[0] += 2_000;
        }
        assertTrue(g.allowed(clock[0]));
    }

    @Test public void aSuddenSlowdownAgainstASteadyRhythmCounts() {
        BlurGovernor g = new BlurGovernor();
        long[] clock = {1_000};
        long t = run(g, 1_000 * MS, 20, 8, clock); // steady 120 fps
        for (int i = 0; i < 6; i++) { // now every frame takes 25 ms: late against the rhythm, not under 33 fps
            g.blurDrawn();
            g.onFrame(t, clock[0]);
            t += 25 * MS;
            clock[0] += 25;
        }
        assertFalse(g.allowed(clock[0]));
    }

    @Test public void theBlurModeDecidesWhetherTheGovernorMatters() {
        BlurGovernor paused = new BlurGovernor();
        long[] clock = {1_000};
        run(paused, 1_000 * MS, 10, 45, clock); // stuttering: the governor has paused the blur
        assertFalse(paused.allowed(clock[0]));
        assertFalse("automatic follows the governor", ContentBlur.enabled(dev.android.dynamicisland.settings.ModuleSettings.TRANSITION_BLUR_AUTO, paused, clock[0]));
        assertTrue("always ignores it", ContentBlur.enabled(dev.android.dynamicisland.settings.ModuleSettings.TRANSITION_BLUR_ALWAYS, paused, clock[0]));
        assertFalse("off never blurs", ContentBlur.enabled(dev.android.dynamicisland.settings.ModuleSettings.TRANSITION_BLUR_OFF, new BlurGovernor(), clock[0]));
        assertTrue(ContentBlur.enabled(dev.android.dynamicisland.settings.ModuleSettings.TRANSITION_BLUR_AUTO, new BlurGovernor(), clock[0]));
    }
}
