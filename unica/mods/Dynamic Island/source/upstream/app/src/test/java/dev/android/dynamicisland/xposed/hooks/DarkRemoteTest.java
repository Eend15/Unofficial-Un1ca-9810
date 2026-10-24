package dev.android.dynamicisland.xposed.hooks;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;

import android.graphics.Color;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class DarkRemoteTest {
    @Test
    public void darkTextBecomesWhiteWithItsTransparency() {
        assertEquals(Color.argb(0x99, 255, 255, 255), DarkRemote.lift(Color.argb(0x99, 0x20, 0x20, 0x20)));
    }

    @Test
    public void lightTextStaysAsItIs() {
        assertEquals(0xFFEEEEEE, DarkRemote.lift(0xFFEEEEEE));
    }

    @Test
    public void darkColouredTextKeepsItsHue() {
        int lifted = DarkRemote.lift(0xFF1A73E8);
        float[] hsv = new float[3];
        Color.colorToHSV(lifted, hsv);
        assertEquals(217.0f, hsv[0], 3.0f);
        assertNotEquals(0xFF1A73E8, lifted);
    }

    @Test
    public void invisibleTextIsLeftAlone() {
        assertEquals(0x00000000, DarkRemote.lift(0x00000000));
    }
}
