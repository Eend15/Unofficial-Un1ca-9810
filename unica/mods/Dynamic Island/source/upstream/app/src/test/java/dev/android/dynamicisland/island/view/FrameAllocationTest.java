package dev.android.dynamicisland.island.view;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.SystemClock;
import android.view.Choreographer;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import org.junit.Assume;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.shadows.ShadowChoreographer;
import org.robolectric.shadows.ShadowSystemClock;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "en-rUS-w440dp-h400dp-mdpi")
/**
 * Memory made by one frame of the island. A frame that makes a few kilobytes of garbage at 60 to 120 frames a second
 * keeps System UI's collector busy for as long as the island is on screen, so a steady state that grows back to
 * the 14 KB it once was is a regression. The bound is generous: it only trips on a real step backwards.
 */
public class FrameAllocationTest {
    private static final double MAX_KB_PER_FRAME = 8.0;

    private static boolean allocationCounterAvailable() {
        try { alloc(); return true; } catch (Throwable t) { return false; }
    }

    static long alloc() {
        try {
            Object bean = Class.forName("java.lang.management.ManagementFactory").getMethod("getThreadMXBean").invoke(null);
            java.lang.reflect.Method m = Class.forName("com.sun.management.ThreadMXBean").getMethod("getThreadAllocatedBytes", long.class);
            m.setAccessible(true);
            return (Long) m.invoke(bean, Thread.currentThread().getId());
        } catch (Throwable t) { throw new RuntimeException(t); }
    }

    private IslandItem item(String key, int kind) {
        IslandItem it = new IslandItem(key);
        it.icon = GlyphIcon.of(GlyphIcon.Kind.HEADPHONES); it.accent = 0xffed6e96;
        it.title = kind == 0 ? "Stopwatch" : kind == 1 ? "Navigation" : "Night Drive";
        it.subtitle = kind == 1 ? "Turn left in 200 m" : "Studio Session";
        it.trailing = IslandItem.Trailing.TEXT; it.trailingText = kind == 1 ? "200 m" : "Playing";
        if (kind == 0) {
            it.kind = IslandItem.Kind.TIMER; it.trailing = IslandItem.Trailing.CHRONOMETER; it.chronoBase = System.currentTimeMillis() - 55_000;
        } else if (kind == 1) {
            it.kind = IslandItem.Kind.NAVIGATION; it.progress = .35f;
        } else {
            it.kind = IslandItem.Kind.MEDIA; it.isMedia = true; it.playing = true;
            it.mediaDuration = 255000; it.mediaPosition = 107000; it.mediaPositionUpdateTime = SystemClock.elapsedRealtime();
            it.trailing = IslandItem.Trailing.WAVEFORM;
        }
        return it;
    }

    private void run(String name, boolean iMotion, int kind, boolean open) throws Exception {
        Assume.assumeTrue(allocationCounterAvailable());
        Context context = RuntimeEnvironment.getApplication();
        SharedPreferences prefs = context.getSharedPreferences("probe", 0);
        prefs.edit().clear().putBoolean(ModuleSettings.KEY_I_MODE, iMotion).putBoolean(ModuleSettings.KEY_AMBIENT_GLOW, false).commit();
        ModuleSettings.configurePreview(prefs);
        ShadowChoreographer.setFrameDelay(Duration.ofMillis(16));
        ShadowChoreographer.setPaused(true);
        IslandView view = new IslandView(context, IslandHost.NONE);
        Activity activity = Robolectric.buildActivity(Activity.class).setup().get();
        activity.setContentView(view);
        view.setGeometry(440, 220, 30, 22, false); view.layout(0, 0, 440, 400);
        List<IslandItem> items = new ArrayList<>(); items.add(item("a", kind));
        view.setItems(items);
        Bitmap bmp = Bitmap.createBitmap(440, 400, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bmp);
        if (open) { for (int i = 0; i < 30; i++) step(view, 16); tap(view); for (int i = 0; i < 40; i++) step(view, 16); }
        for (int i = 0; i < 200; i++) { step(view, 16); view.draw(canvas); }
        int frames = 600;
        long b0 = alloc(), t0 = System.nanoTime();
        for (int i = 0; i < frames; i++) { step(view, 16); view.draw(canvas); }
        long b1 = alloc(), t1 = System.nanoTime();
        double perFrame = (b1 - b0) / 1024.0 / frames;
        System.out.printf("FRAME %-34s %7.1f KB/frame  %5.2f ms/frame%n", name, perFrame, (t1 - t0) / 1e6 / frames);
        org.junit.Assert.assertTrue(name + " allocates " + perFrame + " KB per frame", perFrame < MAX_KB_PER_FRAME);
        Choreographer.getInstance().removeFrameCallback(view); activity.finish();
    }

    private void tap(IslandView view) {
        long now = SystemClock.uptimeMillis();
        android.view.MotionEvent d = android.view.MotionEvent.obtain(now, now, android.view.MotionEvent.ACTION_DOWN, 220f, 30f, 0);
        view.onTouchEvent(d); d.recycle();
        android.view.MotionEvent u = android.view.MotionEvent.obtain(now, now + 40, android.view.MotionEvent.ACTION_UP, 220f, 30f, 0);
        view.onTouchEvent(u); u.recycle();
    }

    private void step(IslandView view, int ms) {
        ShadowSystemClock.advanceBy(Duration.ofMillis(ms));
        view.doFrame(SystemClock.uptimeMillis() * 1_000_000L);
        Choreographer.getInstance().removeFrameCallback(view);
    }

    @Test public void aFrameOfTheIslandMakesLittleGarbage() throws Exception {
        run("classic compact chronometer", false, 0, false);
        run("classic compact media (waveform)", false, 2, false);
        run("classic open media card", false, 2, true);
        run("iMotion compact chronometer", true, 0, false);
        run("iMotion compact media", true, 2, false);
        run("iMotion open media card", true, 2, true);
        run("classic open navigation card", false, 1, true);
    }
}
