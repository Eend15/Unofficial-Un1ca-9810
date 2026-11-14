package dev.android.dynamicisland.island.view;

import static org.junit.Assert.assertTrue;

import dev.android.dynamicisland.island.model.IslandItem;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35, qualifiers = "mdpi")
public class RingingPillTest {
    @Test
    public void theIncomingCallTextFitsTheSmallPillBesideTheCamera() {
        IslandView view = new IslandView(RuntimeEnvironment.getApplication(), IslandHost.NONE);
        view.setGeometry(360, 180, 35, 22, false);
        IslandItem item = new IslandItem("call:ringing");
        item.kind = IslandItem.Kind.CALL;
        item.trailing = IslandItem.Trailing.TEXT;
        item.trailingText = "Incoming call";
        CompactContent pill = new CompactContent(view, item);
        assertTrue(pill.trailText.startsWith("Incoming"));
        assertTrue(pill.trailW > 0);
        assertTrue(pill.desiredWidth() <= 360);
    }
}
