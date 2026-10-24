package dev.android.dynamicisland.island.view;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import android.app.Application;
import android.graphics.RectF;
import android.os.SystemClock;
import dev.android.dynamicisland.island.model.IslandItem;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.shadows.ShadowSystemClock;

/** The size the user sets reaches the pill on screen: a small item still gets the narrowest width, a long one stops at the widest. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class PillSizeTest {
    private static final int W = 1080;
    private final Application app = RuntimeEnvironment.getApplication();

    private IslandItem item(String text) {
        IslandItem it = new IslandItem("a");
        it.kind = IslandItem.Kind.EVENT;
        it.title = "x";
        it.trailing = IslandItem.Trailing.TEXT;
        it.trailingText = text;
        it.iconIsImage = false;
        return it;
    }

    private float widthAfterSettling(IslandView view) {
        long nanos = SystemClock.uptimeMillis() * 1_000_000L;
        for (int i = 0; i < 120; i++) {
            ShadowSystemClock.advanceBy(Duration.ofMillis(16));
            nanos += 16_000_000L;
            view.doFrame(nanos);
        }
        RectF r = new RectF();
        view.computeMain(r);
        return r.width();
    }

    private IslandView view(IslandItem item) {
        IslandView view = new IslandView(app, IslandHost.NONE);
        view.setGeometry(W, W / 2f, 66f, 0f, false);
        view.setSuppressed(false);
        view.layout(0, 0, W, 400);
        List<IslandItem> items = new ArrayList<>();
        items.add(item);
        view.setItems(items, 0, new ArrayList<>());
        return view;
    }

    @Test
    public void narrowestMakesASmallItemWider() {
        float density = app.getResources().getDisplayMetrics().density;
        IslandView plain = view(item("1"));
        float before = widthAfterSettling(plain);
        IslandView wide = view(item("1"));
        wide.setPillSize(0, 160, 0);
        float after = widthAfterSettling(wide);
        assertTrue("before=" + before + " after=" + after, after > before + (40 * density));
        assertEquals(160 * density, after, density * 4);
    }

    @Test
    public void widestStopsALongItem() {
        float density = app.getResources().getDisplayMetrics().density;
        String longText = "a rather long text that wants a lot of room in the pill";
        IslandView free = view(item(longText));
        float before = widthAfterSettling(free);
        IslandView capped = view(item(longText));
        capped.setPillSize(0, 0, 140);
        float after = widthAfterSettling(capped);
        assertTrue("before=" + before + " after=" + after, after < before);
        assertTrue(after <= (140 * density) + (density * 4));
    }
}
