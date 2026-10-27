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

}
