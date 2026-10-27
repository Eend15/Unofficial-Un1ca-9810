package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.ScrollView;
import org.junit.Test;
import org.junit.experimental.categories.Category;
import dev.android.dynamicisland.testutil.RenderCapture;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "ko-rKR-w360dp-h800dp-xxhdpi")
public class SettingsUxRenderTest {
    @Category(RenderCapture.class) @Test public void customOptionsAndSeparateCalibrationRender() throws Exception {
        SettingsActivity a=Robolectric.buildActivity(SettingsActivity.class).setup().get();
        SharedPreferences p=ReflectionHelpers.getField(a,"prefs");
        p.edit().putBoolean(ModuleSettings.KEY_ACCENT_CUSTOM,true).putBoolean(ModuleSettings.KEY_AUTO_OPEN_CARDS,true)
                .putInt(ModuleSettings.KEY_PILL_MIN_W_DP,100).putInt(ModuleSettings.KEY_PILL_MAX_W_DP,300)
                .putInt(ModuleSettings.KEY_HOLE_MODE,ModuleSettings.HOLE_MANUAL).apply();
        AppearanceScreen appearance=ReflectionHelpers.getField(a,"appearance");
        a.open(appearance::open);SettingsRenderTest.render(a,"settings_ko_customColours");
        PositionScreen position=ReflectionHelpers.getField(a,"position");
        a.open(position::open);SettingsRenderTest.render(a,"settings_ko_customPosition");
        a.open(position::calibration);SettingsRenderTest.render(a,"settings_ko_manualCalibration");
        a.open(()->ReflectionHelpers.callInstanceMethod(a,"behaviorPage"));SettingsRenderTest.render(a,"settings_ko_autoTiming");
    }
    @Category(RenderCapture.class) @Test @Config(qualifiers = "ko-rKR-w360dp-h800dp-night-xxhdpi")
    public void darkSettingsRender() throws Exception {
        SettingsActivity a=Robolectric.buildActivity(SettingsActivity.class).setup().get();
        SettingsRenderTest.render(a,"settings_ko_darkHub");
        a.open(()->ReflectionHelpers.callInstanceMethod(a,"displayPage"));SettingsRenderTest.render(a,"settings_ko_darkAppearance");
    }
    @Test public void refreshAndBackRestoreScrollAfterLayout() {
        SettingsActivity a=Robolectric.buildActivity(SettingsActivity.class).setup().get();
        PositionScreen position=ReflectionHelpers.getField(a,"position");
        a.open(position::open);
        ScrollView scroll=ReflectionHelpers.getField(a,"scroll");
        layout(scroll);scroll.scrollTo(0,500);assertEquals(500,scroll.getScrollY());
        a.refresh();layout(scroll);assertEquals(500,scroll.getScrollY());
        a.open(position::calibration);layout(scroll);assertEquals(0,scroll.getScrollY());
        a.goBack();layout(scroll);assertEquals(500,scroll.getScrollY());
    }
    private void layout(ScrollView scroll) {
        scroll.measure(View.MeasureSpec.makeMeasureSpec(1080,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(1800,View.MeasureSpec.EXACTLY));
        scroll.layout(0,0,1080,1800);
        scroll.getViewTreeObserver().dispatchOnGlobalLayout();
    }
}
