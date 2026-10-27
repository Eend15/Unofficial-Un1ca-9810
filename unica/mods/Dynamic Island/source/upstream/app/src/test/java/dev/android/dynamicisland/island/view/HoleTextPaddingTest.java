package dev.android.dynamicisland.island.view;

import static org.junit.Assert.*;
import dev.android.dynamicisland.island.model.IslandItem;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35, qualifiers = "mdpi")
public class HoleTextPaddingTest {
    @Test public void zeroKeepsTheOriginalWidthAndExtraSpaceFitsInsideTheConfiguredMaximum() {
        IslandView view = new IslandView(RuntimeEnvironment.getApplication(), IslandHost.NONE);
        view.setGeometry(360, 180, 35, 22, false);
        IslandItem item = new IslandItem("padding");
        item.trailing = IslandItem.Trailing.TEXT; item.trailingText = "50%";
        float original = new CompactContent(view, item).desiredWidth();
        view.setHoleTextPadding(0); assertEquals(original, new CompactContent(view, item).desiredWidth(), 0);
        view.setHoleTextPadding(5);
        assertEquals(original + 10, new CompactContent(view, item).desiredWidth(), .01);
        view.setPillSize(0, 0, 100); view.setHoleTextPadding(16);
        item.trailingText = "A very long text beside the camera";
        CompactContent content = new CompactContent(view, item);
        assertTrue(content.desiredWidth() <= 100);
        assertTrue(content.trailW <= (100 - view.holeD) / 2 - view.holeGap - view.padding);
    }
}
