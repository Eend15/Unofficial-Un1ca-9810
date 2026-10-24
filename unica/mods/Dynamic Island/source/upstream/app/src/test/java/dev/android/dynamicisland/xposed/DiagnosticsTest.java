package dev.android.dynamicisland.xposed;

import static org.junit.Assert.assertTrue;

import org.junit.Test;

public class DiagnosticsTest {
    @Test
    public void reportListsStagesFactsAndErrors() {
        Diagnostics.fact("window", "created");
        Diagnostics.stage("hooks", false, new IllegalStateException("boom"));
        Diagnostics.error("somewhere", new RuntimeException("bad"));
        String report = Diagnostics.report();
        assertTrue(report, report.contains("window"));
        assertTrue(report, report.contains("hooks"));
        assertTrue(report, report.contains("somewhere"));
        assertTrue(report, report.length() <= 7100);
    }
}
