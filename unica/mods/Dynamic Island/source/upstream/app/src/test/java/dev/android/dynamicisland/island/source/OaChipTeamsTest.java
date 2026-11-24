package dev.android.dynamicisland.island.source;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertSame;
import static org.junit.Assert.assertTrue;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import dev.android.dynamicisland.island.graphics.TeamBadge;
import java.util.Arrays;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class OaChipTeamsTest {
    private final Drawable logo = new ColorDrawable(Color.RED);
    private final Drawable other = new ColorDrawable(Color.BLUE);

    @Test
    public void twoLogosKeepBothAndTheScore() {
        OaViews.Chip chip = OaViews.chipOf(Arrays.<Object>asList(logo, "1", "2", other));
        assertSame(logo, chip.left);
        assertSame(other, chip.right);
        assertEquals("1-2", chip.text);
    }

    @Test
    public void aTeamWithoutALogoOnTheRightGetsItsLetterOnATile() {
        List<Object> parts = Arrays.<Object>asList(logo, "0", "0", "F");
        OaViews.Chip chip = OaViews.chipOf(parts);
        assertSame(logo, chip.left);
        assertTrue(chip.right instanceof TeamBadge);
        assertEquals("0-0", chip.text);
    }

    @Test
    public void aTeamWithoutALogoOnTheLeftGetsItsLetterOnATile() {
        OaViews.Chip chip = OaViews.chipOf(Arrays.<Object>asList("F", "0", "3", logo));
        assertTrue(chip.left instanceof TeamBadge);
        assertSame(logo, chip.right);
        assertEquals("0-3", chip.text);
    }

    @Test
    public void textOnlyChipsAndOddLayoutsAreLeftAsTheyWere() {
        OaViews.Chip text = OaViews.chipOf(Arrays.<Object>asList("Team call", "12:30"));
        assertNull(text.left);
        assertEquals("Team call 12:30", text.text);
        OaViews.Chip odd = OaViews.chipOf(Arrays.<Object>asList(logo, "Live", "now", "Long label here"));
        assertNull("a layout that is not two scores and a letter is not changed", odd.left);
        assertNull(OaViews.chipOf(Arrays.<Object>asList(logo)));
    }

    @Test public void anEmptyImageWithoutEvenATeamLetterStillKeepsBothScoreSlots() {
        OaViews.Chip right = OaViews.chipOf(Arrays.<Object>asList(logo,"1","0"));
        assertSame(logo,right.left);assertTrue(right.right instanceof TeamBadge);assertEquals("1-0",right.text);
        OaViews.Chip left = OaViews.chipOf(Arrays.<Object>asList("0","2",logo));
        assertTrue(left.left instanceof TeamBadge);assertSame(logo,left.right);assertEquals("0-2",left.text);
    }

    @Test
    public void theBadgeDrawsItsLetter() {
        TeamBadge badge = new TeamBadge("F");
        Bitmap bitmap = Bitmap.createBitmap(64, 64, Bitmap.Config.ARGB_8888);
        badge.setBounds(0, 0, 64, 64);
        badge.draw(new Canvas(bitmap));
        int white = 0;
        for (int y = 0; y < 64; y++) for (int x = 0; x < 64; x++) if (Color.red(bitmap.getPixel(x, y)) > 240) white++;
        assertTrue("the letter is white on the grey tile: " + white, white > 40);
        assertNotNull(bitmap);
    }
}
