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
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk=35,qualifiers="ko-rKR-w411dp-h891dp-xxhdpi")
public class AmbientGlowSettingsTest {
    @Test public void defaultsFollowMusicAndLowPerformancePreservesTheChosenGlow() throws Exception {
        SettingsActivity activity=Robolectric.buildActivity(SettingsActivity.class).setup().get();
        SharedPreferences prefs=ReflectionHelpers.getField(activity,"prefs");ModuleSettings.configurePreview(prefs);assertTrue(ModuleSettings.ambientGlow());assertTrue(ModuleSettings.glowMusicOnly());
        prefs.edit().putBoolean(ModuleSettings.KEY_AMBIENT_GLOW,true).putInt(ModuleSettings.KEY_GLOW_STRENGTH,45).apply();ModuleSettings.configurePreview(prefs);
        assertTrue(ModuleSettings.ambientGlow());assertTrue(ModuleSettings.glowAlbum());assertEquals(45,ModuleSettings.glowStrength());
        OneUi ui=ReflectionHelpers.getField(activity,"ui");activity.open(()->new AmbientGlowScreen(activity,ui,prefs).open());
        android.view.View visibility=find(activity.page(),activity.getString(R.string.glow_visibility));
        ((android.view.View)visibility.getParent().getParent()).performClick();
        org.robolectric.shadows.ShadowAlertDialog.getLatestAlertDialog().getListView().performItemClick(null,1,1);
        ModuleSettings.configurePreview(prefs);assertFalse(ModuleSettings.glowMusicOnly());
        prefs.edit().putBoolean(ModuleSettings.KEY_GLOW_MUSIC_ONLY,true).apply();ModuleSettings.configurePreview(prefs);activity.refresh();
        assertEquals(50,ModuleSettings.glowMotion());
        android.widget.SeekBar motion=findSlider(activity.page(),activity.getString(R.string.glow_motion_strength));
        assertNotNull(motion);assertEquals(50,motion.getProgress());
        android.widget.SeekBar.OnSeekBarChangeListener listener=ReflectionHelpers.getField(motion,"mOnSeekBarChangeListener");
        listener.onStartTrackingTouch(motion);motion.setProgress(100);listener.onStopTrackingTouch(motion);
        ModuleSettings.configurePreview(prefs);assertEquals(100,ModuleSettings.glowMotion());assertEquals(45,ModuleSettings.glowStrength());
        activity.refresh();assertEquals(100,findSlider(activity.page(),activity.getString(R.string.glow_motion_strength)).getProgress());
        SettingsRenderTest.render(activity,"settings_ko_ambientGlow");
        prefs.edit().putBoolean(ModuleSettings.KEY_LOW_PERFORMANCE,true).apply();ModuleSettings.configurePreview(prefs);assertFalse(ModuleSettings.ambientGlow());
        assertTrue(prefs.getBoolean(ModuleSettings.KEY_AMBIENT_GLOW,false));
        assertEquals(100,prefs.getInt(ModuleSettings.KEY_GLOW_MOTION,-1));
        prefs.edit().putBoolean(ModuleSettings.KEY_LOW_PERFORMANCE,false).apply();ModuleSettings.configurePreview(prefs);assertTrue(ModuleSettings.ambientGlow());
        prefs.edit().putInt(ModuleSettings.KEY_GLOW_MOTION,-20).apply();ModuleSettings.configurePreview(prefs);assertEquals(0,ModuleSettings.glowMotion());
        prefs.edit().putInt(ModuleSettings.KEY_GLOW_MOTION,300).apply();ModuleSettings.configurePreview(prefs);assertEquals(100,ModuleSettings.glowMotion());
        prefs.edit().putBoolean(ModuleSettings.KEY_AMBIENT_GLOW,false).apply();ModuleSettings.configurePreview(prefs);assertFalse(ModuleSettings.ambientGlow());
        prefs.edit().clear().apply();ModuleSettings.configurePreview(prefs);
    }

    private android.widget.SeekBar findSlider(android.view.View view,String title) {
        if(view instanceof android.widget.SeekBar&&title.contentEquals(view.getContentDescription()))return (android.widget.SeekBar)view;
        if(view instanceof android.view.ViewGroup)for(int i=0;i<((android.view.ViewGroup)view).getChildCount();i++){
            android.widget.SeekBar found=findSlider(((android.view.ViewGroup)view).getChildAt(i),title);if(found!=null)return found;
        }
        return null;
    }
    @Test public void colourModesFollowThemeChangesAndRestoreTheSeparateColour() throws Exception {
        SettingsActivity activity = Robolectric.buildActivity(SettingsActivity.class).setup().get();
        SharedPreferences prefs = ReflectionHelpers.getField(activity, "prefs");
        OneUi ui = ReflectionHelpers.getField(activity, "ui");
        try {
            prefs.edit().putBoolean(ModuleSettings.KEY_AMBIENT_GLOW, true)
                    .putInt(ModuleSettings.KEY_GLOW_COLOUR, 0xFFE0A97D)
                    .putBoolean(ModuleSettings.KEY_ACCENT_CUSTOM, true)
                    .putInt(ModuleSettings.KEY_ACCENT_COLOR, 0xFF75B6FF).apply();
            activity.open(() -> new AmbientGlowScreen(activity, ui, prefs).open());
            ModuleSettings.configurePreview(prefs);
            assertEquals(0xFFE0A97D, ModuleSettings.glowColour());
            choose(activity, 0);
            assertTrue(prefs.getBoolean(ModuleSettings.KEY_GLOW_FOLLOW_THEME, false));
            ModuleSettings.configurePreview(prefs);
            assertEquals(0xFF75B6FF, ModuleSettings.glowColour());
            assertNull(find(activity.page(), activity.getString(R.string.accent_custom)));
            assertNotNull(find(activity.page(), activity.getString(R.string.glow_theme_colour)));
            SettingsRenderTest.render(activity, "settings_ko_ambientGlowTheme");
            prefs.edit().putInt(ModuleSettings.KEY_ACCENT_COLOR, 0xFFB8A1FF).apply();
            ModuleSettings.configurePreview(prefs);
            assertEquals(0xFFB8A1FF, ModuleSettings.glowColour());
            prefs.edit().putBoolean(ModuleSettings.KEY_ACCENT_CUSTOM, false).apply();
            ModuleSettings.configurePreview(prefs);
            assertEquals(ModuleSettings.DEFAULT_ACCENT, ModuleSettings.glowColour());
            choose(activity, 1);
            ModuleSettings.configurePreview(prefs);
            assertEquals(0xFFE0A97D, ModuleSettings.glowColour());
            assertNotNull(find(activity.page(), activity.getString(R.string.accent_custom)));
            assertTrue(ModuleSettings.glowAlbum());
            assertEquals(0xFFE0A97D, prefs.getInt(ModuleSettings.KEY_GLOW_COLOUR, 0));
            SettingsRenderTest.render(activity, "settings_ko_ambientGlowIndividual");
        } finally { prefs.edit().clear().apply(); ModuleSettings.configurePreview(prefs); }
    }

    private android.view.View find(android.view.View view, String text) {
        if (view instanceof android.widget.TextView && text.contentEquals(((android.widget.TextView) view).getText())) return view;
        if (view instanceof android.view.ViewGroup) for (int i = 0; i < ((android.view.ViewGroup) view).getChildCount(); i++) {
            android.view.View found = find(((android.view.ViewGroup) view).getChildAt(i), text);
            if (found != null) return found;
        }
        return null;
    }
    private void choose(SettingsActivity activity, int mode) {
        android.view.View label = find(activity.page(), activity.getString(R.string.glow_colour_source));
        ((android.view.View) label.getParent().getParent()).performClick();
        org.robolectric.shadows.ShadowAlertDialog.getLatestAlertDialog().getListView().performItemClick(null, mode, mode);
    }

}
