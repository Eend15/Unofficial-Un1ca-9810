package dev.android.dynamicisland.island.graphics;

import static org.junit.Assert.*;

import org.junit.Test;

public class FrameStatsTest {
    private static final long MS = 1_000_000L;

    @Test public void framesAreCountedByTheGapBetweenThemAndARestIsNotASlowFrame() {
        FrameStats stats = new FrameStats();
        long t = 10_000 * MS;
        for (int i = 0; i < 40; i++) { stats.onFrame(t, true); t += 8 * MS; }   // 120 Hz
        t += 500 * MS;                                                             // the animation rests
        for (int i = 0; i < 40; i++) { stats.onFrame(t, true); t += 16 * MS; }  // 60 Hz
        String line = stats.reportIfDue(t, 120f);
        assertNotNull(line);
        assertTrue(line, line.startsWith("78 frames"));          // 39 + 39 gaps, the rest between them is not counted
        assertTrue(line, line.contains("under 11 ms 50%, 11-19 ms 50%, 19-40 ms 0%, over 40 ms 0%"));
        assertTrue(line, line.contains("display 120 Hz"));
    }

    @Test public void aFrameThatIsNotAnimatingBreaksTheRunAndReportsWaitForEnoughFramesAndTime() {
        FrameStats stats = new FrameStats();
        long t = 10_000 * MS;
        for (int i = 0; i < 10; i++) { stats.onFrame(t, true); t += 16 * MS; }
        assertNull("too few frames", stats.reportIfDue(t + 10_000 * MS, 60f));
        stats.onFrame(t, false);
        t += 16 * MS;
        stats.onFrame(t, true);          // the first frame after a break has no gap to measure
        for (int i = 0; i < 40; i++) { t += 30 * MS; stats.onFrame(t, true); }
        String line = stats.reportIfDue(t, 60f);
        assertNotNull(line);
        assertTrue(line, line.contains("19-40 ms 82%"));
        assertNull("it does not repeat itself at once", stats.reportIfDue(t + MS, 60f));
        assertNotNull(stats.reportIfDue(t + 4_000 * MS, 60f));
    }
}
