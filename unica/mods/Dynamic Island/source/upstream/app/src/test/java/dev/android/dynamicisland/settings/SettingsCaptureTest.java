package dev.android.dynamicisland.settings;

import dev.android.dynamicisland.testutil.RenderCapture;
import org.junit.Test;
import org.junit.experimental.categories.Category;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** Additional locales for visual review; catalog parity is checked by LocalizationTest on every run. */
@Category(RenderCapture.class)
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "w411dp-h891dp-xxhdpi")
public class SettingsCaptureTest {
    private void capture(String language) throws Exception {
        SettingsRenderTest.renderAll(Robolectric.buildActivity(SettingsActivity.class).setup().get(),
                "settings_" + language + "_");
    }

    @Test @Config(qualifiers = "ko-rKR-w411dp-h891dp-xxhdpi")
    public void korean() throws Exception { capture("ko"); }

    @Test @Config(qualifiers = "ja-rJP-w411dp-h891dp-xxhdpi")
    public void japanese() throws Exception { capture("ja"); }

    @Test @Config(qualifiers = "zh-rCN-w411dp-h891dp-xxhdpi")
    public void chinese() throws Exception { capture("zh"); }

    @Test @Config(qualifiers = "ru-rRU-w411dp-h891dp-xxhdpi")
    public void russian() throws Exception { capture("ru"); }

    @Test @Config(qualifiers = "tr-rTR-w411dp-h891dp-xxhdpi")
    public void turkish() throws Exception { capture("tr"); }
}
