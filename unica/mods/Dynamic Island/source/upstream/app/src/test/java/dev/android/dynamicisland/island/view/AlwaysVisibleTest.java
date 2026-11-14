package dev.android.dynamicisland.island.view;

import static org.junit.Assert.*;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Region;
import android.os.SystemClock;
import android.view.Choreographer;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.time.Duration;
import java.util.ArrayList;
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
import org.robolectric.util.ReflectionHelpers;

/** The "always visible island" setting: an empty pill stays around the camera, in both presentations. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "en-rUS-w440dp-h400dp-mdpi")
public class AlwaysVisibleTest {
    private static final int WIDTH = 440, HEIGHT = 400;
    private static final float CX = 220f, CY = 30f, HOLE = 22f;

    private static final class Fixture implements AutoCloseable {
        final Context context = RuntimeEnvironment.getApplication();
        final SharedPreferences prefs = context.getSharedPreferences("always-visible-test", 0);
        final IslandView view;
        final Scene scene;
        final List<IslandItem> items = new ArrayList<>();

        Fixture(boolean iMotion, boolean alwaysVisible) {
            ShadowChoreographer.setFrameDelay(Duration.ofMillis(16));
            ShadowChoreographer.setPaused(true);
            configure(iMotion, alwaysVisible);
            view = new IslandView(context, IslandHost.NONE);
            scene = ReflectionHelpers.getField(view, "scene");
            Activity activity = Robolectric.buildActivity(Activity.class).setup().get();
            activity.setContentView(view);
            view.setGeometry(WIDTH, CX, CY, HOLE, false);
            view.layout(0, 0, WIDTH, HEIGHT);
            items.add(item("timer"));
            view.setItems(Collections.emptyList());
            step(80);
        }

        void configure(boolean iMotion, boolean alwaysVisible) {
            prefs.edit().clear().putBoolean(ModuleSettings.KEY_I_MODE, iMotion)
                    .putBoolean(ModuleSettings.KEY_AMBIENT_GLOW, false)
                    .putBoolean(ModuleSettings.KEY_ALWAYS_VISIBLE, alwaysVisible).commit();
            ModuleSettings.configurePreview(prefs);
        }

        void step(int frames) {
            for (int i = 0; i < frames; i++) {
                ShadowSystemClock.advanceBy(Duration.ofMillis(16));
                view.doFrame(SystemClock.uptimeMillis() * 1_000_000L);
                Choreographer.getInstance().removeFrameCallback(view);
            }
        }

        void show() { view.setItems(items); step(120); }
        void clear() { view.setItems(Collections.emptyList()); step(160); }

        /** True when the empty pill's right edge is painted opaque black. */
        boolean pillPainted() {
            Bitmap bitmap = Bitmap.createBitmap(WIDTH, HEIGHT, Bitmap.Config.ARGB_8888);
            view.draw(new Canvas(bitmap));
            int x = Math.round(CX + idleWidth(context.getResources().getDisplayMetrics().density, HOLE) / 2f - 4f);
            int pixel = bitmap.getPixel(x, Math.round(CY));
            bitmap.recycle();
            return (pixel >>> 24) > 200;
        }

        @Override public void close() { ModuleSettings.configurePreview(context.getSharedPreferences("none", 0)); }
    }

    private static float idleWidth(float density, float holeDp) {
        Metrics m = new Metrics(density);
        m.update(Math.round(WIDTH * density), CX * density, CY * density, holeDp * density, false);
        return m.idleWidth();
    }

    private static IslandItem item(String key) {
        IslandItem it = new IslandItem(key);
        it.title = "Stopwatch";
        it.subtitle = "Focus session";
        it.icon = GlyphIcon.of(GlyphIcon.Kind.BELL);
        it.accent = 0xff608cff;
        it.trailing = IslandItem.Trailing.TEXT;
        it.trailingText = "00:55";
        return it;
    }

    private void emptyPillStaysOnlyWhenAsked(boolean iMotion) {
        try (Fixture f = new Fixture(iMotion, false)) {
            assertTrue("off: nothing is on screen", f.view.isFullyHidden());
            f.configure(iMotion, true);
            f.clear();
            assertEquals(Mode.HIDDEN, f.scene.mode);
            assertFalse("on: the window stays", f.view.isFullyHidden());
            assertTrue("on: the pill is painted", f.pillPainted());
            Region touch = new Region();
            f.view.getTouchRegion(touch);
            assertTrue("an empty pill lets touches through", touch.isEmpty());
            f.configure(iMotion, false);
            f.clear();
            assertTrue("off again: it leaves", f.view.isFullyHidden());
            assertFalse(f.pillPainted());
        }
    }

    private void activitiesComeAndGo(boolean iMotion) {
        try (Fixture f = new Fixture(iMotion, true)) {
            f.clear();
            assertTrue(f.pillPainted());
            f.show();
            assertEquals(Mode.COMPACT, f.scene.mode);
            assertFalse(f.view.isFullyHidden());
            f.clear();
            assertEquals(Mode.HIDDEN, f.scene.mode);
            assertFalse("the empty pill is back", f.view.isFullyHidden());
            assertTrue(f.pillPainted());
        }
    }

    private void suppressionAndSleepStillHideIt(boolean iMotion) {
        try (Fixture f = new Fixture(iMotion, true)) {
            f.clear();
            f.view.setSuppressed(true);
            f.step(120);
            assertTrue("suppressed (lock screen, full screen)", f.view.isFullyHidden());
            f.view.setSuppressed(false);
            f.step(160);
            assertFalse(f.view.isFullyHidden());
            f.view.setSleeping(true);
            f.step(120);
            assertTrue("screen off", f.view.isFullyHidden());
            f.view.setSleeping(false);
            f.step(160);
            assertFalse(f.view.isFullyHidden());
        }
    }

    @Test public void classicEmptyPillStaysOnlyWhenAsked() { emptyPillStaysOnlyWhenAsked(false); }
    @Test public void iMotionEmptyPillStaysOnlyWhenAsked() { emptyPillStaysOnlyWhenAsked(true); }
    @Test public void classicActivitiesComeAndGo() { activitiesComeAndGo(false); }
    @Test public void iMotionActivitiesComeAndGo() { activitiesComeAndGo(true); }
    @Test public void classicSuppressionAndSleepStillHideIt() { suppressionAndSleepStillHideIt(false); }
    @Test public void iMotionSuppressionAndSleepStillHideIt() { suppressionAndSleepStillHideIt(true); }

    @Test public void swipingTheIslandAwayKeepsItAwayUntilRestored() {
        try (Fixture f = new Fixture(true, true)) {
            f.show();
            f.scene.iMode.hideByGesture();
            f.step(80);
            assertEquals(Mode.HIDDEN, f.scene.mode);
            f.clear();
            assertTrue("hidden by hand: no empty pill", f.view.isFullyHidden() || !f.pillPainted());
            f.scene.iMode.restoreByGesture();
            f.step(120);
            assertEquals(Mode.HIDDEN, f.scene.mode);
            assertTrue("restored: the empty pill is back", f.pillPainted());
        }
    }

    @Test public void idlePillIsWiderThanTheHoleAndNeverNarrowerThanTheMinimum() {
        float density = 3f;
        assertEquals(64f, idleWidth(density, 22f) / density, 0.01f);
        assertEquals(120f + Metrics.IDLE_MARGIN_DP, idleWidth(density, 120f) / density, 0.01f);
    }
}
