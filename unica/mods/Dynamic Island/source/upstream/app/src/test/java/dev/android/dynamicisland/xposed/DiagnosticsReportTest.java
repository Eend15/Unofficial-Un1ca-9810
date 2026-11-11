package dev.android.dynamicisland.xposed;

import static org.junit.Assert.*;

import android.app.Application;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class DiagnosticsReportTest {
    @org.junit.Before public void emptyTheReport() {
        for (String name : new String[] {"FACTS", "STAGES"}) {
            ((java.util.Map<?, ?>) org.robolectric.util.ReflectionHelpers.getStaticField(Diagnostics.class, name)).clear();
        }
        for (String name : new String[] {"ERRORS", "EVENTS"}) {
            ((java.util.Collection<?>) org.robolectric.util.ReflectionHelpers.getStaticField(Diagnostics.class, name)).clear();
        }
    }

    private static String repeat(char c, int n) {
        return new String(new char[n]).replace('\0', c);
    }

    @Test public void oneLongFactIsCutAndAnExplicitLimitIsHonoured() {
        Diagnostics.fact("test long fact", repeat('a', 5000));
        String report = Diagnostics.report();
        String line = report.lines().filter(l -> l.startsWith("test long fact ")).findFirst().orElseThrow();
        assertTrue(line.length() < 450);
        assertTrue(line.endsWith("..."));

        Diagnostics.fact("test wide fact", repeat('b', 5000), 1500);
        line = Diagnostics.report().lines().filter(l -> l.startsWith("test wide fact ")).findFirst().orElseThrow();
        assertTrue(line.length() > 1400 && line.length() < 1600);
    }

    @Test public void aLongReportKeepsTheRecentEventsAndStaysWithinTheLimit() {
        for (int i = 0; i < 60; i++) {
            Diagnostics.fact("test filler " + i, repeat('c', 399));
        }
        Diagnostics.event("test marker event last");
        String report = Diagnostics.report();
        assertTrue(report.length() <= 12000);
        assertTrue("the recent events survive", report.contains("test marker event last"));
        assertTrue(report.contains("-- stages"));
        assertTrue(report.contains("(facts cut)"));
    }

    @Test public void anOpenRemoteCardIsEmptyWhenItsViewIsNotInTheLayerOrHasNoSize() throws Exception {
        Application app = RuntimeEnvironment.getApplication();
        FrameLayout layer = new FrameLayout(app);
        View content = new View(app);
        Class<?> cards = Class.forName("dev.android.dynamicisland.island.view.RemoteCards");
        java.lang.reflect.Method reason = cards.getDeclaredMethod("emptyReason", android.view.ViewGroup.class, View.class);
        reason.setAccessible(true);

        assertEquals("its view is not in the island layer", reason.invoke(null, layer, content));
        layer.addView(content, new FrameLayout.LayoutParams(0, 0));
        assertEquals("its view measured to no size", reason.invoke(null, layer, content));
        content.measure(View.MeasureSpec.makeMeasureSpec(200, View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(80, View.MeasureSpec.EXACTLY));
        assertNull(reason.invoke(null, layer, content));
        assertEquals("a view in another layout is not in the island layer", "its view is not in the island layer",
                reason.invoke(null, new LinearLayout(app), content));
    }
}
