package dev.android.dynamicisland.island;

import static org.junit.Assert.*;

import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Switch;
import dev.android.dynamicisland.R;
import dev.android.dynamicisland.island.feedback.AudioLevels;
import dev.android.dynamicisland.island.view.IslandHost;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.island.window.IslandWindow;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.settings.SettingsActivity;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35, qualifiers = "w360dp-h800dp-mdpi")
public class FullscreenVisibilityTest {
    @Test public void fullscreenOptInKeepsPortraitContentButRespectsLockAodAndRotation() {
        SettingsActivity activity = Robolectric.buildActivity(SettingsActivity.class).setup().get();
        SharedPreferences prefs = ModuleSettings.openStore(activity);
        ModuleSettings.configurePreview(prefs);
        ReflectionHelpers.callInstanceMethod(activity, "behaviorPage");
        Switch option = findSwitch(activity.findViewById(android.R.id.content), activity.getString(R.string.show_in_fullscreen));
        assertNotNull(option);
        assertFalse(option.isChecked());

        IslandPlacement placement = new IslandPlacement(activity, new Handler(Looper.getMainLooper()),
                getClass().getClassLoader(), IslandHost.NONE, new IslandWindow.Listener() {
                    @Override public void onWindowConfigurationChanged() { }
                    @Override public void onWindowInsetsChanged() { }
                }, new AudioLevels());
        placement.ensureWindow(true);
        IslandView view = placement.view();
        assertNotNull(view);
        placement.setStatusBarWindowState(2);
        assertTrue(view.isSuppressedNow());

        option.performClick();
        assertTrue(prefs.getBoolean(ModuleSettings.KEY_SHOW_IN_FULLSCREEN, false));
        ModuleSettings.configurePreview(prefs);
        placement.updateGeometry();
        assertFalse(view.isSuppressedNow());

        placement.setBarState(1);
        assertTrue(view.isSuppressedNow());
        placement.setBarState(0);
        org.robolectric.Shadows.shadowOf(Looper.getMainLooper()).idleFor(java.time.Duration.ofMillis(201));
        assertFalse(view.isSuppressedNow());
        placement.setDozing(true);
        assertTrue(view.isSuppressedNow());
        placement.setDozing(false);
        assertFalse(view.isSuppressedNow());

        RuntimeEnvironment.setQualifiers("w800dp-h360dp-land-mdpi");
        placement.updateGeometry();
        assertTrue(view.isSuppressedNow());
        RuntimeEnvironment.setQualifiers("w360dp-h800dp-port-mdpi");
        placement.updateGeometry();
        assertFalse(view.isSuppressedNow());

        option.performClick();
        ModuleSettings.configurePreview(prefs);
        placement.updateGeometry();
        assertTrue(view.isSuppressedNow());
        placement.setStatusBarWindowState(0);
        assertFalse(view.isSuppressedNow());
    }

    private Switch findSwitch(View view, String title) {
        if (view instanceof Switch && title.contentEquals(view.getContentDescription())) return (Switch) view;
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) {
                Switch found = findSwitch(group.getChildAt(i), title);
                if (found != null) return found;
            }
        }
        return null;
    }
}
