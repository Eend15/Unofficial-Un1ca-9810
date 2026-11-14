package dev.android.dynamicisland.island.view;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import dev.android.dynamicisland.island.model.IslandItem;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35, qualifiers = "mdpi")
public class TeamsScoreTest {
    private static IslandItem match(String score) {
        IslandItem item = new IslandItem("match");
        Bitmap logo = Bitmap.createBitmap(8, 8, Bitmap.Config.ARGB_8888);
        item.leftImage = new BitmapDrawable(RuntimeEnvironment.getApplication().getResources(), logo);
        item.rightImage = new BitmapDrawable(RuntimeEnvironment.getApplication().getResources(), logo);
        item.trailing = IslandItem.Trailing.TEXT;
        item.trailingText = score;
        return item;
    }

    private static CompactContent pill(String score, boolean hole) {
        IslandView view = new IslandView(RuntimeEnvironment.getApplication(), IslandHost.NONE);
        view.setGeometry(360, 180, hole ? 35 : 0, 22, false);
        return new CompactContent(view, match(score));
    }

    @Test
    public void aLoneDashIsNotAScore() {
        assertFalse(IslandItem.hasContent("-"));
        assertFalse(IslandItem.hasContent(" – "));
        assertFalse(IslandItem.hasContent(":"));
        assertFalse(IslandItem.hasContent(""));
        assertFalse(IslandItem.hasContent(null));
        assertTrue(IslandItem.hasContent("2-1"));
        assertTrue(IslandItem.hasContent("FT"));
    }

    @Test
    public void aMatchThatHasNotStartedShowsTheLogosAndNoDash() {
        for (boolean hole : new boolean[] {true, false}) {
            CompactContent notStarted = pill("-", hole);
            assertNull("no dash drawn between the logos", notStarted.trailText);
            assertNull(notStarted.scoreA);
            assertEquals(0f, notStarted.scoreW, 0f);
        }
    }

    @Test
    public void aRunningScoreStillShows() {
        CompactContent split = pill("2 - 1", true);
        assertEquals("2", split.scoreA);
        assertEquals("1", split.scoreB);
        assertEquals("1-0", pill("1-0", false).trailText);
    }
}
