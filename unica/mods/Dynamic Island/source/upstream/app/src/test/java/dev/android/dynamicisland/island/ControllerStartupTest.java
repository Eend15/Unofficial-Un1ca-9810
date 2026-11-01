package dev.android.dynamicisland.island;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertSame;
import static org.junit.Assert.assertTrue;

import android.app.Application;
import android.os.Looper;
import android.widget.FrameLayout;
import dev.android.dynamicisland.island.model.IslandItem;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.Shadows;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** What System UI does right after the module is loaded: create the controller and attach a status bar. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class ControllerStartupTest {
    @Test
    public void initStartAttachRefresh() {
        Application app = RuntimeEnvironment.getApplication();
        IslandController c = IslandController.init(app, getClass().getClassLoader());
        assertNotNull(c);
        Shadows.shadowOf(Looper.getMainLooper()).idle();
        FrameLayout statusBar = new FrameLayout(app);
        statusBar.layout(0, 0, 1080, 120);
        c.onStatusBarViewAttached(statusBar);
        c.setBarState(0);
        c.setDozing(false);
        c.setStatusBarWindowState(0);
        c.setShadeExpansion(0f);
        c.requestRefresh();
        Shadows.shadowOf(Looper.getMainLooper()).idle();
        IslandSources sources = org.robolectric.util.ReflectionHelpers.getField(c, "sources");
        IslandPlacement placement = org.robolectric.util.ReflectionHelpers.getField(c, "placement");
        var view = placement.view();
        IslandItem first = new IslandItem("peek:first"); first.kind = IslandItem.Kind.PEEK; first.title = "First";
        IslandItem second = new IslandItem("peek:second"); second.kind = IslandItem.Kind.PEEK; second.title = "Second";
        sources.peeks.show(first, 12000);
        view.setItems(List.of(first));
        assertTrue(view.peek(first, 12000));
        // HeadsUpTakeover publishes the new source before it asks the view to open that popup.
        sources.peeks.show(second, 12000);
        view.setItems(List.of(second));
        assertSame("closing the replaced popup must not dismiss the newer source", second, sources.peeks.showing());
        assertTrue(view.peek(second, 12000));
        view.collapse();
        assertNull("closing the current popup still consumes that source", sources.peeks.showing());
        c.onStatusBarViewDetached(statusBar);
        Shadows.shadowOf(Looper.getMainLooper()).idle();
    }
}
