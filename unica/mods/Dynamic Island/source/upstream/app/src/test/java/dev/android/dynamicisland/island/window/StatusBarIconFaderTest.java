package dev.android.dynamicisland.island.window;

import android.app.Application;
import android.graphics.RectF;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.lang.reflect.Field;
import java.util.Map;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

/**
 * Regression test for the System UI crash seen in the field: the status bar's layout pass hit a
 * NullPointerException in StatusBarIconFader.apply for every icon that had no fade yet.
 */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class StatusBarIconFaderTest {
    @SuppressWarnings("unchecked")
    private <K, V> Map<K, V> staticMap(String name) throws Exception {
        Field f = StatusBarIconFader.class.getDeclaredField(name);
        f.setAccessible(true);
        return (Map<K, V>) f.get(null);
    }

    @Test
    public void iconAwayFromTheIslandDoesNotCrash() throws Exception {
        Application app = RuntimeEnvironment.getApplication();
        // System UI resolves view ids by name; teach the helper the id of a fake "clock" view
        int clockId = View.generateViewId();
        this.<String, Integer>staticMap("IDS").put("clock", clockId);
        this.<Integer, String>staticMap("NAMES").put(clockId, "clock");

        FrameLayout bar = new FrameLayout(app);
        TextView clock = new TextView(app);
        clock.setId(clockId);
        clock.setText("12:30");
        bar.addView(clock);
        bar.layout(0, 0, 1080, 120);

        StatusBarIconFader fader = new StatusBarIconFader(2f);
        fader.attach(bar);
        // island far from the clock: nothing is covered, so the icon never needed a fade
        fader.update(new RectF(600, 0, 800, 80), true);
        fader.update(new RectF(600, 0, 800, 80), true);
    }
}
