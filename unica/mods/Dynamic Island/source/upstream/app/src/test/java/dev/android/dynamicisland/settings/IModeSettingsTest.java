package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;
import android.content.SharedPreferences;
import dev.android.dynamicisland.R;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.*;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=35,qualifiers="ko-rKR-w360dp-h800dp-night-xxhdpi")
public class IModeSettingsTest {
    @Test public void defaultsToExistingStyleAndSelectsMutuallyExclusiveStylesThroughTheRealSettingsUi() {
        try(var controller=Robolectric.buildActivity(SettingsActivity.class).setup()) {
            SettingsActivity a=controller.get();SharedPreferences prefs=ReflectionHelpers.getField(a,"prefs");
            prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
            assertFalse(ModuleSettings.iMode());
            a.openSetting(SettingsSearchCatalog.Route.APPEARANCE,R.string.anim_title,0);
            SettingsSearchCatalog catalog=new SettingsSearchCatalog(a);
            var result=catalog.rows.get(catalog.engine.search("iMotion",5).get(0).id);
            assertEquals(SettingsSearchCatalog.Route.APPEARANCE,result.route);
            choose(a,2);assertTrue(prefs.getBoolean(ModuleSettings.KEY_I_MODE,false));assertTrue(ModuleSettings.iMode());
            assertFalse(prefs.getBoolean(ModuleSettings.KEY_LEGACY_ANIMATION,false));
            choose(a,1);assertFalse(ModuleSettings.iMode());assertTrue(ModuleSettings.legacyAnimation());
            choose(a,0);assertFalse(ModuleSettings.iMode());assertFalse(ModuleSettings.legacyAnimation());
            prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
        }
    }
    /** Taps one row of the animation radio list; the live preview plays the result. */
    private void choose(SettingsActivity activity,int index) {
        android.view.ViewGroup card=(android.view.ViewGroup)activity.page().findViewWithTag(activity.getString(R.string.anim_title));
        assertNotNull(card);
        java.util.List<android.view.View> rows=new java.util.ArrayList<>();
        for(int i=0;i<card.getChildCount();i++)if(card.getChildAt(i).isClickable())rows.add(card.getChildAt(i));
        assertEquals(3,rows.size());
        rows.get(index).performClick();
    }
}
