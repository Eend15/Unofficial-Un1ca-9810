package dev.android.dynamicisland.island.view;

import static org.junit.Assert.*;

import org.junit.Test;

public class MetricsTest {
    private static float widestDp(float density, int widthDp, boolean tablet) {
        Metrics m = new Metrics(density);
        m.update(Math.round(widthDp * density), widthDp * density / 2, 40 * density, 30 * density, tablet);
        return m.maxPillW / density;
    }

    @Test public void theAutomaticWidestPillIsABitOverHalfAPhoneScreenAndNeverMoreThan232Dp() {
        float large = widestDp(3.5f, 411, false);
        assertTrue("a large phone: " + large, large <= Metrics.AUTO_MAX_PHONE_DP + 0.5f);
        assertEquals(230, large, 1.5f);
        float small = widestDp(3f, 360, false);
        assertEquals("a small phone is limited by the screen: " + small, 360 * Metrics.AUTO_MAX_SCREEN_SHARE, small, 1f);
        assertTrue(small < 0.6f * 360);
    }

    @Test public void aTabletKeepsItsLargerLimit() {
        assertEquals(300, widestDp(2f, 800, true), 1f);
    }

    @Test public void theUsersWidestStillWinsOverTheAutomaticOne() {
        Metrics m = new Metrics(3.5f);
        m.update(1440, 720, 140, 105, false);
        m.applySize(0, 0, 300);
        assertEquals(300, m.maxPillW / 3.5f, 0.5f);
        m.applySize(0, 0, 0);
        assertEquals("back to automatic", 230, m.maxPillW / 3.5f, 1.5f);
    }
}
