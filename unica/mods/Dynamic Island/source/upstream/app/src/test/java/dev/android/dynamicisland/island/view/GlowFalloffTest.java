package dev.android.dynamicisland.island.view;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

public class GlowFalloffTest {
    @Test
    public void keepsTheOldBrightnessButHasNoRim() {
        assertEquals(1.0f, IslandView.blobFalloff(0.0f), 1e-6f);
        // same 35 % (of the 85 % peak) at 55 % of the radius as the old ramp
        assertEquals(0.35f / 0.85f, IslandView.blobFalloff(0.55f), 0.01f);
        assertEquals(0.0f, IslandView.blobFalloff(1.0f), 1e-6f);
        // flat at the rim: the last stretch fades out gently instead of ending on a slope
        float slopeAtRim = (IslandView.blobFalloff(1.0f) - IslandView.blobFalloff(0.98f)) / 0.02f;
        assertTrue("rim slope " + slopeAtRim, Math.abs(slopeAtRim) < 0.05f);
        float prev = 2f;
        for (int i = 0; i <= 100; i++) {
            float v = IslandView.blobFalloff(i / 100f);
            assertTrue(v <= prev);
            prev = v;
        }
    }
}
