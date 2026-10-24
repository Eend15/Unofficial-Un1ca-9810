package dev.android.dynamicisland.island;

import static org.junit.Assert.assertNotNull;

import android.app.Application;
import android.os.Looper;
import android.widget.FrameLayout;
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
        c.onStatusBarViewDetached(statusBar);
        Shadows.shadowOf(Looper.getMainLooper()).idle();
    }
}
