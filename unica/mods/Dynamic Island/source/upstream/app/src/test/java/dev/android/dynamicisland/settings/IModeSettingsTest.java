package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;
import android.app.AlertDialog;
import android.content.SharedPreferences;
import dev.android.dynamicisland.R;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.*;
import org.robolectric.shadows.ShadowAlertDialog;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=35,qualifiers="ko-rKR-w360dp-h800dp-night-xxhdpi")
public class IModeSettingsTest {
    @Test public void defaultsToExistingStyleAndSelectsMutuallyExclusiveStylesThroughTheRealSettingsUi() {
        try(var controller=Robolectric.buildActivity(SettingsActivity.class).setup()) {
            SettingsActivity a=controller.get();SharedPreferences prefs=ReflectionHelpers.getField(a,"prefs");
            prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
            assertFalse(ModuleSettings.iMode());
            AnimationScreen animation=ReflectionHelpers.getField(a,"animation");
            a.open(animation::open);
            SettingsSearchCatalog catalog=new SettingsSearchCatalog(a);
            var result=catalog.rows.get(catalog.engine.search("iMotion",5).get(0).id);
            assertEquals(SettingsSearchCatalog.Route.ANIMATION,result.route);
            choose(a,2);assertTrue(prefs.getBoolean(ModuleSettings.KEY_I_MODE,false));assertTrue(ModuleSettings.iMode());
            assertFalse(prefs.getBoolean(ModuleSettings.KEY_LEGACY_ANIMATION,false));
            choose(a,1);assertFalse(ModuleSettings.iMode());assertTrue(ModuleSettings.legacyAnimation());
            choose(a,0);assertFalse(ModuleSettings.iMode());assertFalse(ModuleSettings.legacyAnimation());
            prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
        }
    }
    private void choose(SettingsActivity activity,int index) {
        activity.page().findViewWithTag(activity.getString(R.string.anim_title)).performClick();
        AlertDialog dialog=ShadowAlertDialog.getLatestAlertDialog();assertNotNull(dialog);
        assertEquals(3,dialog.getListView().getAdapter().getCount());
        dialog.getListView().performItemClick(null,index,index);
    }
}
