package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;
import android.content.SharedPreferences;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Switch;
import android.widget.TextView;
import dev.android.dynamicisland.R;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.*;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk=35,qualifiers="ko-rKR-w360dp-h800dp-xxhdpi")
public class LowPerformanceSettingsTest {
    private View find(View view, String label) {
        if(view instanceof Switch && label.contentEquals(view.getContentDescription()))return view;
        if(view instanceof TextView && label.contentEquals(((TextView)view).getText()))return view;
        if(view instanceof ViewGroup)for(int i=0;i<((ViewGroup)view).getChildCount();i++){
            View found=find(((ViewGroup)view).getChildAt(i),label);if(found!=null)return found;
        }return null;
    }
    private Switch toggle(SettingsActivity activity) {
        return findSwitch(activity.page(),activity.getString(R.string.low_performance_mode));
    }
    private Switch findSwitch(View view,String label) {
        if(view instanceof Switch && label.contentEquals(view.getContentDescription()))return(Switch)view;
        if(view instanceof ViewGroup)for(int i=0;i<((ViewGroup)view).getChildCount();i++){
            Switch found=findSwitch(((ViewGroup)view).getChildAt(i),label);if(found!=null)return found;
        }return null;
    }
    @Test public void modeDefaultsOffAndRoundTripsWithoutOverwritingIndividualOptions() throws Exception {
        SettingsActivity a=Robolectric.buildActivity(SettingsActivity.class).setup().get();SharedPreferences prefs=ReflectionHelpers.getField(a,"prefs");
        prefs.edit().putBoolean(ModuleSettings.KEY_VISUALIZER,false).putBoolean(ModuleSettings.KEY_HAPTICS,false)
                .putBoolean(ModuleSettings.KEY_LEGACY_ANIMATION,true).putInt(ModuleSettings.KEY_ACCENT_COLOR,0xFF123456).apply();
        a.open(()->ReflectionHelpers.callInstanceMethod(a,"behaviorPage"));assertFalse(toggle(a).isChecked());
        toggle(a).toggle();assertTrue(prefs.getBoolean(ModuleSettings.KEY_LOW_PERFORMANCE,false));
        assertNotNull(find(a.page(),a.getString(R.string.low_performance_static_wave)));
        ModuleSettings.configurePreview(prefs);assertTrue(ModuleSettings.lowPerformance());
        SettingsRenderTest.render(a,"settings_ko_lowPerformance");
        toggle(a).toggle();assertFalse(prefs.getBoolean(ModuleSettings.KEY_LOW_PERFORMANCE,true));
        assertNotNull(find(a.page(),a.getString(R.string.ui_wave_demo)));
        assertFalse(prefs.getBoolean(ModuleSettings.KEY_VISUALIZER,true));assertFalse(prefs.getBoolean(ModuleSettings.KEY_HAPTICS,true));
        assertTrue(prefs.getBoolean(ModuleSettings.KEY_LEGACY_ANIMATION,false));assertEquals(0xFF123456,prefs.getInt(ModuleSettings.KEY_ACCENT_COLOR,0));
        ModuleSettings.configurePreview(prefs);assertFalse(ModuleSettings.lowPerformance());
    }
}
