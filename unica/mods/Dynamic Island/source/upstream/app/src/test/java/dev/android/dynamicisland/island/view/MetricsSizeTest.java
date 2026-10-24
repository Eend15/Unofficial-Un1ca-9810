package dev.android.dynamicisland.island.view;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

/** The size the user sets for the pill: height in percent, narrowest and widest in dp. */
public class MetricsSizeTest {
    private static final float DENSITY = 3.0f;

    private Metrics metrics() {
        Metrics m = new Metrics(DENSITY);
        m.update(1080, 540.0f, 90.0f, 60.0f, false);
        return m;
    }

    @Test
    public void heightScalesThePillAndItsIcons() {
        Metrics m = metrics();
        float lead = m.leadSize;
        assertTrue(m.applySize(20, 0, 0));
        assertEquals(30.0f * DENSITY * 1.2f, m.pillH, 0.01f);
        assertEquals(lead * 1.2f, m.leadSize, 0.01f);
        assertFalse(m.applySize(20, 0, 0)); // same again: nothing to do
        assertTrue(m.applySize(-20, 0, 0));
        assertEquals(30.0f * DENSITY * 0.8f, m.pillH, 0.01f);
    }

    @Test
    public void narrowestAndWidest() {
        Metrics m = metrics();
        float automatic = m.maxPillW;
        assertTrue(m.applySize(0, 120, 0));
        assertEquals(120.0f * DENSITY, m.minPillW, 0.01f);
        assertEquals(automatic, m.maxPillW, 0.01f);
        assertTrue(m.applySize(0, 0, 200));
        assertEquals(200.0f * DENSITY, m.maxPillW, 0.01f);
        assertEquals(64.0f * DENSITY, m.minPillW, 0.01f);
        // the narrowest never passes the widest
        assertTrue(m.applySize(0, 190, 100));
        assertTrue(m.minPillW <= m.maxPillW);
        assertEquals(100.0f * DENSITY, m.maxPillW, 0.01f);
    }

    @Test
    public void widestStaysInsideTheScreen() {
        Metrics m = metrics();
        m.applySize(0, 0, 420);
        assertTrue(m.maxPillW <= 1080 * 0.96f + 0.01f);
    }
}
