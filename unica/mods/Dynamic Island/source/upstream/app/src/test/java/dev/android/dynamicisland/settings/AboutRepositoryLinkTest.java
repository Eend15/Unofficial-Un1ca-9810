package dev.android.dynamicisland.settings;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.lang.reflect.Method;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.Shadows;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35, qualifiers = "w411dp-h891dp-xxhdpi")
public class AboutRepositoryLinkTest {
    private static View find(View view, String text) {
        if (view instanceof TextView && ((TextView) view).getText().toString().contains(text)) return view;
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) {
                View found = find(group.getChildAt(i), text);
                if (found != null) return found;
            }
        }
        return null;
    }

    private static boolean tap(View view) {
        for (View v = view; v != null; v = v.getParent() instanceof View ? (View) v.getParent() : null) {
            if (v.hasOnClickListeners()) return v.performClick();
        }
        return false;
    }

    @Test
    public void theMakersEntryOpensTheRepositoryAndTheCreditsDoNot() throws Exception {
        SettingsActivity activity = Robolectric.buildActivity(SettingsActivity.class).setup().get();
        Method open = SettingsActivity.class.getDeclaredMethod("open", Runnable.class);
        Method about = SettingsActivity.class.getDeclaredMethod("aboutPage");
        open.setAccessible(true);
        about.setAccessible(true);
        open.invoke(activity, (Runnable) () -> {
            try { about.invoke(activity); } catch (Exception e) { throw new RuntimeException(e); }
        });
        View root = activity.findViewById(android.R.id.content);

        View maker = find(root, "github.com/sampple-korea/dynamicisland");
        assertNotNull("the maker's entry is on the page", maker);
        tap(maker);
        Intent started = Shadows.shadowOf(activity).getNextStartedActivity();
        assertNotNull("tapping it opens something", started);
        assertEquals(Intent.ACTION_VIEW, started.getAction());
        assertEquals("https://github.com/sampple-korea/dynamicisland", started.getData().toString());

        View credits = find(root, activity.getString(dev.android.dynamicisland.R.string.hub_credits));
        assertNotNull(credits);
        tap(credits);
        assertNull("the credits open no web page", Shadows.shadowOf(activity).getNextStartedActivity());
    }
}
