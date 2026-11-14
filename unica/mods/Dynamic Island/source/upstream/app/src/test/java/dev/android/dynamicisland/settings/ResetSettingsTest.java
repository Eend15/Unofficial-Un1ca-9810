package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;

import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import dev.android.dynamicisland.R;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.shadows.ShadowAlertDialog;
import org.robolectric.shadows.ShadowToast;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "w411dp-h891dp-xxhdpi")
public class ResetSettingsTest {
    private View find(View view, String label) {
        if (view instanceof TextView && label.contentEquals(((TextView) view).getText())) return view;
        if (view instanceof ViewGroup) for (int i = 0; i < ((ViewGroup) view).getChildCount(); i++) {
            View found = find(((ViewGroup) view).getChildAt(i), label);
            if (found != null) return found;
        }
        return null;
    }

    private SettingsActivity openAdvanced(SharedPreferences[] store) {
        SettingsActivity a = Robolectric.buildActivity(SettingsActivity.class).setup().get();
        store[0] = ReflectionHelpers.getField(a, "prefs");
        a.open(() -> ReflectionHelpers.callInstanceMethod(a, "advancedPage"));
        return a;
    }

    private void filled(SharedPreferences prefs) {
        prefs.edit().putBoolean(ModuleSettings.KEY_ALWAYS_VISIBLE, true).putBoolean(ModuleSettings.KEY_I_MODE, true)
                .putBoolean(ModuleSettings.KEY_ACCENT_CUSTOM, true).putInt(ModuleSettings.KEY_ACCENT_COLOR, 0xFF123ABC)
                .putBoolean(ModuleSettings.KEY_LOW_PERFORMANCE, true).putInt(ModuleSettings.KEY_AUTO_COLLAPSE_S, 9)
                .putString(ModuleSettings.KEY_RULES_CUSTOM, "{\"rules\":[]}")
                .putStringSet(ModuleSettings.KEY_APPS_LISTED, java.util.Set.of("com.example.app"))
                .putBoolean(ModuleSettings.KEY_APPS_ONLY_LISTED, true).commit();
        ModuleSettings.configurePreview(prefs);
    }

    @Test public void theResetRowAsksFirstAndCancelChangesNothing() {
        SharedPreferences[] store = new SharedPreferences[1];
        SettingsActivity a = openAdvanced(store);
        try {
            filled(store[0]);
            java.util.Map<String, ?> before = java.util.Map.copyOf(store[0].getAll());
            View row = find(a.page(), a.getString(R.string.reset_all));
            assertNotNull("the reset row is on the Advanced page", row);
            ((View) row.getParent().getParent()).performClick();
            AlertDialog dialog = ShadowAlertDialog.getLatestAlertDialog();
            assertTrue(dialog.isShowing());
            assertNotNull("the dialog says what will be lost", find(dialog.getWindow().getDecorView(), a.getString(R.string.reset_all_confirm)));
            dialog.getButton(AlertDialog.BUTTON_NEGATIVE).performClick();
            org.robolectric.shadows.ShadowLooper.idleMainLooper();
            assertEquals("cancelled: every setting is still there", before, store[0].getAll());
        } finally { store[0].edit().clear().commit(); ModuleSettings.configurePreview(store[0]); }
    }

    @Test public void confirmingEmptiesTheStoreSoEverythingIsBackToItsOriginalValue() {
        SharedPreferences[] store = new SharedPreferences[1];
        SettingsActivity a = openAdvanced(store);
        try {
            filled(store[0]);
            assertTrue(ModuleSettings.alwaysVisible());
            assertTrue(ModuleSettings.lowPerformance());
            assertEquals(0xFF123ABC, ModuleSettings.accentOverride());
            View row = find(a.page(), a.getString(R.string.reset_all));
            ((View) row.getParent().getParent()).performClick();
            ShadowAlertDialog.getLatestAlertDialog().getButton(AlertDialog.BUTTON_POSITIVE).performClick();
            org.robolectric.shadows.ShadowLooper.idleMainLooper(); // a dialog button reports its click through a message
            assertTrue("nothing is left in the store, rules and app lists included: " + store[0].getAll(), store[0].getAll().isEmpty());
            assertEquals(a.getString(R.string.reset_all_done), ShadowToast.getTextOfLatestToast());
            assertFalse(ModuleSettings.alwaysVisible());
            assertFalse(ModuleSettings.lowPerformance());
            assertEquals("no accent override again", 0, ModuleSettings.accentOverride());
            assertTrue("a default that is on stays on", ModuleSettings.swipeUpHides());
            assertNotNull("the page is still there", find(a.page(), a.getString(R.string.reset_all)));
        } finally { store[0].edit().clear().commit(); ModuleSettings.configurePreview(store[0]); }
    }

    @Test public void theRowCanBeFoundBySearch() {
        SettingsSearchCatalog catalog = new SettingsSearchCatalog(org.robolectric.RuntimeEnvironment.getApplication());
        boolean found = false;
        for (SettingsSearchCatalog.Row row : catalog.rows.values())
            if (row.title == R.string.reset_all && row.route == SettingsSearchCatalog.Route.ADVANCED) found = true;
        assertTrue("search knows the row and where it is", found);
    }
}
