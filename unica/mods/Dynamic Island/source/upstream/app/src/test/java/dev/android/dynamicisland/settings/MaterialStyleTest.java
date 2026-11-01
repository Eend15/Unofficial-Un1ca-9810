package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;
import android.content.Context;
import android.content.SharedPreferences;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=35)
public class MaterialStyleTest {
    @Test public void classicDefaultAndExplicitFrostedPersistWithoutChangingOtherAppearancePreferences() {
        SharedPreferences prefs=RuntimeEnvironment.getApplication().getSharedPreferences("material-test",Context.MODE_PRIVATE);
        prefs.edit().clear().putInt(ModuleSettings.KEY_GLOW_COLOUR,0xffccbbaa).commit();
        ModuleSettings.configurePreview(prefs);assertFalse(ModuleSettings.frostedMaterial());
        prefs.edit().putInt(ModuleSettings.KEY_MATERIAL_STYLE,ModuleSettings.MATERIAL_FROSTED).commit();
        ModuleSettings.configurePreview(prefs);assertTrue(ModuleSettings.frostedMaterial());
        prefs.edit().putInt(ModuleSettings.KEY_MATERIAL_STYLE,ModuleSettings.MATERIAL_CLASSIC).commit();
        ModuleSettings.configurePreview(prefs);assertFalse(ModuleSettings.frostedMaterial());
        assertEquals(0xffccbbaa,prefs.getInt(ModuleSettings.KEY_GLOW_COLOUR,0));
        prefs.edit().putInt(ModuleSettings.KEY_MATERIAL_STYLE,99).commit();
        ModuleSettings.configurePreview(prefs);assertFalse(ModuleSettings.frostedMaterial());
        prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
    }
}
