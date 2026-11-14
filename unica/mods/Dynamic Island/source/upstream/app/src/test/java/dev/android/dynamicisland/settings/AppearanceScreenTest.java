package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;
import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import dev.android.dynamicisland.R;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.shadows.ShadowAlertDialog;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "w411dp-h891dp-xxhdpi")
public class AppearanceScreenTest {
    private View find(View view, String label) {
        if (label.contentEquals(view.getContentDescription() == null ? "" : view.getContentDescription())
                || view instanceof TextView && label.contentEquals(((TextView) view).getText())) return view;
        if (view instanceof ViewGroup) for (int i = 0; i < ((ViewGroup) view).getChildCount(); i++) {
            View found = find(((ViewGroup) view).getChildAt(i), label);
            if (found != null) return found;
        }
        return null;
    }
    private SettingsActivity open() {
        SettingsActivity activity = Robolectric.buildActivity(SettingsActivity.class).setup().get();
        SharedPreferences prefs = ReflectionHelpers.getField(activity, "prefs");
        prefs.edit().putBoolean(ModuleSettings.KEY_ACCENT_CUSTOM, true).apply();
        AppearanceScreen appearance = ReflectionHelpers.getField(activity, "appearance");
        activity.open(appearance::open);
        return activity;
    }

    @Test public void colourEditorValidatesAndDoesNotSaveUntilConfirmed() {
        SettingsActivity activity = open();
        SharedPreferences prefs = ReflectionHelpers.getField(activity, "prefs");
        View label = find(activity.page(), activity.getString(R.string.accent_custom));
        ((View) label.getParent().getParent()).performClick();
        AlertDialog dialog = ShadowAlertDialog.getLatestAlertDialog();
        EditText input = (EditText) find(dialog.getWindow().getDecorView(), activity.getString(R.string.accent_hex));
        input.setText("invalid");
        dialog.getButton(AlertDialog.BUTTON_POSITIVE).performClick();
        assertNotNull(input.getError());
        assertTrue(dialog.isShowing());
        assertFalse(prefs.contains(ModuleSettings.KEY_ACCENT_COLOR));
        input.setText("#123ABC");
        dialog.getButton(AlertDialog.BUTTON_POSITIVE).performClick();
        assertEquals(0xFF123ABC, prefs.getInt(ModuleSettings.KEY_ACCENT_COLOR, 0));
        assertTrue(prefs.getBoolean(ModuleSettings.KEY_ACCENT_CUSTOM, false));
    }

    private void chooseMode(SettingsActivity activity, int mode) {
        View label = find(activity.page(), activity.getString(R.string.accent_enabled));
        ((View) label.getParent().getParent()).performClick();
        ShadowAlertDialog.getLatestAlertDialog().getListView().performItemClick(null, mode, mode);
    }

    @Test public void theSystemColourIsAThirdModeThatWinsOverTheCustomOneAndCanBeLeftAgain() {
        SettingsActivity activity = open();   // starts in the custom mode
        SharedPreferences prefs = ReflectionHelpers.getField(activity, "prefs");
        try {
            prefs.edit().putInt(ModuleSettings.KEY_ACCENT_COLOR, 0xFF123ABC).apply();
            chooseMode(activity, 2);
            assertTrue(prefs.getBoolean(ModuleSettings.KEY_ACCENT_SYSTEM, false));
            assertFalse("the custom switch is off in the system mode", prefs.getBoolean(ModuleSettings.KEY_ACCENT_CUSTOM, true));
            assertEquals("the chosen custom colour is kept", 0xFF123ABC, prefs.getInt(ModuleSettings.KEY_ACCENT_COLOR, 0));
            assertNull("no swatches in the system mode", find(activity.page(), activity.getString(R.string.accent_custom)));
            assertNotNull(find(activity.page(), activity.getString(R.string.accent_system_note)));
            try { SettingsRenderTest.render(activity, "settings_accentSystem"); } catch (Exception e) { throw new AssertionError(e); }
            ModuleSettings.configurePreview(prefs);
            ReflectionHelpers.setStaticField(ModuleSettings.class, "systemAccent", 0);
            assertTrue("the first read is a change", ModuleSettings.refreshSystemAccent(activity));
            assertFalse("the same colour again is not", ModuleSettings.refreshSystemAccent(activity));
            assertNotEquals("the system colour is read", 0, ModuleSettings.accentOverride());
            prefs.edit().putBoolean(ModuleSettings.KEY_GLOW_FOLLOW_THEME, true).apply();
            ModuleSettings.configurePreview(prefs);
            assertEquals("a glow that follows the theme follows the system colour", ModuleSettings.accentOverride(), ModuleSettings.glowColour());
            ReflectionHelpers.setStaticField(ModuleSettings.class, "systemAccent", 0);
            assertEquals("until the colour has been read the default colours stay", 0, ModuleSettings.accentOverride());
            ModuleSettings.refreshSystemAccent(activity);

            chooseMode(activity, 1);
            assertFalse(prefs.getBoolean(ModuleSettings.KEY_ACCENT_SYSTEM, true));
            assertTrue(prefs.getBoolean(ModuleSettings.KEY_ACCENT_CUSTOM, false));
            ModuleSettings.configurePreview(prefs);
            assertEquals("back to the custom colour", 0xFF123ABC, ModuleSettings.accentOverride());

            chooseMode(activity, 0);
            ModuleSettings.configurePreview(prefs);
            assertEquals("default: no override", 0, ModuleSettings.accentOverride());
        } finally { prefs.edit().clear().apply(); ModuleSettings.configurePreview(prefs); }
    }

    @Test public void resettingTheColoursTurnsTheSystemModeOffToo() {
        SettingsActivity activity = open();
        SharedPreferences prefs = ReflectionHelpers.getField(activity, "prefs");
        try {
            chooseMode(activity, 2);
            View reset = find(activity.page(), activity.getString(R.string.accent_reset));
            ((View) reset.getParent().getParent()).performClick();
            assertFalse(prefs.getBoolean(ModuleSettings.KEY_ACCENT_SYSTEM, true));
            assertFalse(prefs.getBoolean(ModuleSettings.KEY_ACCENT_CUSTOM, true));
        } finally { prefs.edit().clear().apply(); ModuleSettings.configurePreview(prefs); }
    }
}
