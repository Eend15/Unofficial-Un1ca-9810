package dev.android.dynamicisland.xposed;

import static org.junit.Assert.*;

import org.junit.Test;

public class MemoryReportTest {
    private static final long MB = 1L << 20;

    @Test public void theLineShowsTheHeapAndTheGarbageCollectorsShareBetweenReports() {
        long[] now = {0};
        long[][] runtime = {{200 * MB, 256 * MB, 100, 10_000, 20, 4_000}};
        MemoryReport report = new MemoryReport(() -> now[0], () -> runtime[0], () -> "backdrop filter: test");
        String first = report.line();
        assertTrue(first, first.startsWith("heap 200 of 256 MB (78%)"));
        assertTrue(first, first.contains("GCs since start 100 (20 blocking), 10.0 s, 4.0 s blocking"));
        assertFalse("the first report has nothing to compare with", first.contains("last"));
        assertTrue(first.endsWith("; backdrop filter: test"));

        now[0] = 120_000;
        runtime[0] = new long[]{250 * MB, 256 * MB, 700, 70_000, 140, 40_000};
        String second = report.line();
        assertTrue(second, second.contains("last 2.0 min: 300 GCs/min (60.0 blocking/min), 60.0 s collecting, 36.0 s blocked"));
        assertTrue(second, second.startsWith("heap 250 of 256 MB (97%)"));

        now[0] = 125_000; // asked again at once: the comparison still counts from the earlier report
        String third = report.line();
        assertFalse(third, third.contains("last"));
    }

    @Test public void aMissingRuntimeReadingOrModulePartDoesNotBreakTheLine() {
        MemoryReport report = new MemoryReport(() -> 0L, () -> new long[]{0, 0, 0, 0, 0, 0}, () -> null);
        assertEquals("heap 0 of 0 MB (0%); GCs since start 0 (0 blocking), 0.0 s, 0.0 s blocking", report.line());
    }

    @Test public void aLiveFactIsReadWhenTheReportIsMade() {
        int[] calls = {0};
        Diagnostics.live("test live fact", () -> "read " + (++calls[0]));
        assertTrue(Diagnostics.report().contains("test live fact read 1\n"));
        assertTrue(Diagnostics.report().contains("test live fact read 2\n"));
        Diagnostics.live("test live fact", () -> { throw new IllegalStateException("gone"); });
        assertTrue(Diagnostics.report().contains("test live fact unavailable (IllegalStateException)"));
    }
}
