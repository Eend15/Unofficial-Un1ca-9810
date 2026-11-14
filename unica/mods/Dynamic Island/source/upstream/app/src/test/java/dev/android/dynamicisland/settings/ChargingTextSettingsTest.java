package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;

import android.content.SharedPreferences;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Switch;
import dev.android.dynamicisland.R;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "w411dp-h891dp-xxhdpi")
public class ChargingTextSettingsTest {
    private Switch findSwitch(View view, String label) {
        if (view instanceof Switch && label.contentEquals(view.getContentDescription())) return (Switch) view;
        if (view instanceof ViewGroup) for (int i = 0; i < ((ViewGroup) view).getChildCount(); i++) {
            Switch found = findSwitch(((ViewGroup) view).getChildAt(i), label);
            if (found != null) return found;
        }
        return null;
    }

    @Test public void theTextLinesSwitchSitsWithTheChargingSettingsAndFollowsTheDetailsSwitch() {
        SettingsActivity a = Robolectric.buildActivity(SettingsActivity.class).setup().get();
        SharedPreferences prefs = ReflectionHelpers.getField(a, "prefs");
        try {
            prefs.edit().clear().apply();
            a.open(() -> ReflectionHelpers.callInstanceMethod(a, "eventsPage"));
            Switch details = findSwitch(a.page(), a.getString(R.string.setting_charging_info));
            Switch text = findSwitch(a.page(), a.getString(R.string.setting_charging_text));
            assertNotNull(details);
            assertNotNull("the switch is on the events page", text);
            assertFalse("the gauge stays the default", text.isChecked());
            assertFalse("without the details card there is nothing to switch", OneUi.rowOf(text).isEnabled());
            details.setChecked(true);
            assertTrue("with it the switch can be used", OneUi.rowOf(text).isEnabled());
            text.toggle();
            assertTrue(prefs.getBoolean(ModuleSettings.KEY_CHARGING_TEXT, false));
            ModuleSettings.configurePreview(prefs);
            assertTrue(ModuleSettings.chargingTextLines());
        } finally { prefs.edit().clear().apply(); ModuleSettings.configurePreview(prefs); }
    }
}
