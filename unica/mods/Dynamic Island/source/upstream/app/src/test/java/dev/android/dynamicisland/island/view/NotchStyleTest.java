package dev.android.dynamicisland.island.view;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.SystemClock;
import android.view.Choreographer;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.testutil.RenderCapture;
import java.io.File;
import java.time.Duration;
import java.util.Collections;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.shadows.ShadowChoreographer;
import org.robolectric.shadows.ShadowSystemClock;

/** The notch style: the compact pill hangs from the top edge, flat on top and rounded below. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "en-rUS-w440dp-h400dp-mdpi")
public class NotchStyleTest {
    private static final int WIDTH = 440, HEIGHT = 120;

    private static boolean contains(Path path, int x, int y) {
        Region clip = new Region(-100, -100, 600, 300);
        Region region = new Region();
        region.setPath(path, clip);
        return region.contains(x, y);
    }

    @Test
    public void theBodyIsFlatOnTopAndRoundedBelow() {
        Path body = new Path();
        NotchShape.body(body, new RectF(100, 20, 300, 56), 18, 12);
        RectF bounds = new RectF();
        body.computeBounds(bounds, true);
        assertEquals("it reaches past the top edge of the screen", -12f, bounds.top, 0.01f);
        assertEquals(56f, bounds.bottom, 0.01f);
        assertEquals(100f, bounds.left, 0.01f);
        assertEquals(300f, bounds.right, 0.01f);
        assertTrue("flush with the top edge", contains(body, 200, 0));
        assertTrue("the sides run straight up to the screen edge", contains(body, 101, 1));
        assertTrue(contains(body, 299, 10));
        assertTrue(contains(body, 200, 55));
        assertFalse("the lower corners are round", contains(body, 101, 55));
        assertFalse(contains(body, 299, 55));
        assertFalse("nothing outside the pill", contains(body, 99, 30));
    }

    @Test
    public void aPillThatIsTallerThanItIsWideStillMakesAValidBody() {
        Path body = new Path();
        NotchShape.body(body, new RectF(10, 0, 30, 80), 60, 4);
        RectF bounds = new RectF();
        body.computeBounds(bounds, true);
        assertTrue(bounds.width() > 0 && bounds.height() > 0);
    }

    private static final class Fixture implements AutoCloseable {
        final Context context = RuntimeEnvironment.getApplication();
        final SharedPreferences prefs = context.getSharedPreferences("notch-test", 0);
        final IslandView view;

        Fixture(boolean notch, boolean withItem) {
            ShadowChoreographer.setFrameDelay(Duration.ofMillis(16));
            ShadowChoreographer.setPaused(true);
            prefs.edit().clear().putBoolean(ModuleSettings.KEY_I_MODE, false).putBoolean(ModuleSettings.KEY_AMBIENT_GLOW, false)
                    .putBoolean(ModuleSettings.KEY_ALWAYS_VISIBLE, true).putBoolean(ModuleSettings.KEY_NOTCH_STYLE, notch).commit();
            ModuleSettings.configurePreview(prefs);
            view = new IslandView(context, IslandHost.NONE);
            Activity activity = Robolectric.buildActivity(Activity.class).setup().get();
            activity.setContentView(view);
            view.setGeometry(WIDTH, 220f, 30f, 22f, false);
            view.layout(0, 0, WIDTH, HEIGHT);
            view.setItems(withItem ? List.of(item()) : Collections.emptyList());
            step(150);
        }

        private static IslandItem item() {
            IslandItem it = new IslandItem("timer");
            it.title = "Stopwatch";
            it.subtitle = "Focus session";
            it.icon = GlyphIcon.of(GlyphIcon.Kind.BELL);
            it.accent = 0xff608cff;
            it.trailing = IslandItem.Trailing.TEXT;
            it.trailingText = "00:55";
            return it;
        }

        void step(int frames) {
            for (int i = 0; i < frames; i++) {
                ShadowSystemClock.advanceBy(Duration.ofMillis(16));
                view.doFrame(SystemClock.uptimeMillis() * 1_000_000L);
                Choreographer.getInstance().removeFrameCallback(view);
            }
        }

        Bitmap draw() {
            Bitmap bitmap = Bitmap.createBitmap(WIDTH, HEIGHT, Bitmap.Config.ARGB_8888);
            view.draw(new Canvas(bitmap));
            return bitmap;
        }

        @Override public void close() { ModuleSettings.configurePreview(context.getSharedPreferences("none", 0)); }
    }

    /** How many pixels of the top row of the screen the island paints. */
    private static int paintedOnTopRow(Bitmap bitmap) {
        int count = 0;
        for (int x = 0; x < bitmap.getWidth(); x++) if ((bitmap.getPixel(x, 0) >>> 24) > 200) count++;
        return count;
    }

    @Test
    public void withTheStyleOnTheIdlePillTouchesTheTopEdgeAndOffItFloats() throws Exception {
        try (Fixture off = new Fixture(false, false)) {
            assertEquals("the capsule floats below the edge", 0, paintedOnTopRow(off.draw()));
        }
        try (Fixture on = new Fixture(true, false)) {
            Bitmap bitmap = on.draw();
            int painted = paintedOnTopRow(bitmap);
            assertTrue("the notch reaches the top edge (" + painted + " px)", painted > 60);
            // the middle of the row is the pill, and what is outside the pill's width stays clear
            assertTrue((bitmap.getPixel(220, 0) >>> 24) > 200);
            assertEquals(0, bitmap.getPixel(10, 0) >>> 24);
            File dir = new File("build/render");
            dir.mkdirs();
            RenderCapture.write(bitmap, new File(dir, "notch_idle.png"));
        }
    }

    @Test
    public void aPillWithContentIsAlsoANotch() throws Exception {
        try (Fixture on = new Fixture(true, true)) {
            Bitmap bitmap = on.draw();
            assertTrue(paintedOnTopRow(bitmap) > 100);
            File dir = new File("build/render");
            dir.mkdirs();
            RenderCapture.write(bitmap, new File(dir, "notch_compact.png"));
        }
        try (Fixture off = new Fixture(false, true)) {
            Bitmap bitmap = off.draw();
            assertEquals(0, paintedOnTopRow(bitmap));
            File dir = new File("build/render");
            dir.mkdirs();
            RenderCapture.write(bitmap, new File(dir, "notch_compact_off.png"));
        }
    }

    @Test
    public void theStyleIsOffUntilItIsSwitchedOn() {
        SharedPreferences prefs = RuntimeEnvironment.getApplication().getSharedPreferences("notch-default", 0);
        prefs.edit().clear().commit();
        ModuleSettings.configurePreview(prefs);
        assertFalse(ModuleSettings.notchStyle());
        prefs.edit().putBoolean(ModuleSettings.KEY_NOTCH_STYLE, true).commit();
        ModuleSettings.configurePreview(prefs);
        assertTrue(ModuleSettings.notchStyle());
        prefs.edit().clear().commit();
        ModuleSettings.configurePreview(prefs);
    }
}
