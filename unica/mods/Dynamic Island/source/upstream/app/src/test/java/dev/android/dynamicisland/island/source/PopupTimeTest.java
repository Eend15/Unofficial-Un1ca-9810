package dev.android.dynamicisland.island.source;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import android.content.SharedPreferences;
import dev.android.dynamicisland.settings.ModuleSettings;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class PopupTimeTest {
    private SharedPreferences prefs() {
        return RuntimeEnvironment.getApplication().getSharedPreferences("popup-time", 0);
    }

    @Test
    public void shortPopupsStayFourSecondsUnlessTheUserChoosesOtherwise() {
        SharedPreferences prefs = prefs();
        try {
            prefs.edit().clear().commit();
            ModuleSettings.configurePreview(prefs);
            assertEquals(4000L, ModuleSettings.popupMillis());
            for (int seconds = 3; seconds <= 6; seconds++) {
                prefs.edit().putInt(ModuleSettings.KEY_POPUP_SECONDS, seconds).commit();
                ModuleSettings.configurePreview(prefs);
                assertEquals(seconds * 1000L, ModuleSettings.popupMillis());
            }
            prefs.edit().putInt(ModuleSettings.KEY_POPUP_SECONDS, 99).commit();
            ModuleSettings.configurePreview(prefs);
            assertTrue("a value out of range is held to the limits", ModuleSettings.popupMillis() <= 6000L);
            prefs.edit().putString(ModuleSettings.KEY_POPUP_SECONDS, "soon").commit();
            ModuleSettings.configurePreview(prefs);
            assertEquals("a value of the wrong type falls back to the default", 4000L, ModuleSettings.popupMillis());
        } finally {
            prefs.edit().clear().commit();
            ModuleSettings.configurePreview(prefs);
        }
    }
}
