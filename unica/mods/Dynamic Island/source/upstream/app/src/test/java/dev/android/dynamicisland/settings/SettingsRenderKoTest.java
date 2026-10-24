package dev.android.dynamicisland.settings;

import java.lang.reflect.Method;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** Builds every settings page and renders it, so layout mistakes show up as exceptions or in the PNGs. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "ko-w411dp-h891dp-xxhdpi")
public class SettingsRenderKoTest {
    @Test
    public void everyPageBuildsAndRenders() throws Exception {
        SettingsRenderTest.renderAll(Robolectric.buildActivity(SettingsActivity.class).setup().get(), "settings_ko_");
    }

    private static void render(SettingsActivity a, String n) throws Exception {
        SettingsRenderTest.render(a, n);
    }
}
