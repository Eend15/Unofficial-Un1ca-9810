package dev.android.dynamicisland.island.view;

import static org.junit.Assert.assertTrue;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.MotionEvent;
import dev.android.dynamicisland.island.model.IslandItem;
import java.io.File;
import java.io.FileOutputStream;
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

/**
 * Plays the island through appear, expand, collapse and hide at 60 fps and checks that every frame is drawn.
 * With {@code -Dfilm=true} each frame is also written to {@code build/film/} to review the motion.
 */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class MotionFilmTest {
    private static final int W = 1080;
    private static final int H = 760;

    private static Drawable solid(Context ctx, int color) {
        Bitmap b = Bitmap.createBitmap(48, 48, Bitmap.Config.ARGB_8888);
        new Canvas(b).drawColor(color);
        return new BitmapDrawable(ctx.getResources(), b);
    }

    private static IslandItem item(Context ctx, String key, String title, int color) {
        IslandItem it = new IslandItem(key);
        it.kind = IslandItem.Kind.LIVE;
        it.packageName = "pkg." + key;
        it.appName = "App";
        it.title = title;
        it.subtitle = "Arriving in 4 min";
        it.accent = color;
        it.icon = solid(ctx, color);
        it.iconIsImage = true;
        it.cardImage = it.icon;
        it.cardImageIsImage = true;
        it.progress = 0.4f;
        it.trailing = IslandItem.Trailing.PROGRESS_RING;
        return it;
    }

    @Test
    public void appearExpandCollapseHide() throws Exception {
        Application app = RuntimeEnvironment.getApplication();
        IslandView view = new IslandView(app, IslandHost.NONE);
        view.setGeometry(W, W / 2f, 66f, 90f, false);
        view.setSuppressed(false);
        view.layout(0, 0, W, H);
        List<IslandItem> items = new ArrayList<>();
        items.add(item(app, "a", "Taxi", 0xFFFFC107));
        IslandItem music = item(app, "media:b", "Song", 0xFFE91E63);
        music.kind = IslandItem.Kind.MEDIA;
        music.isMedia = true;
        music.playing = true;
        music.subtitle = "Artist";
        music.mediaDuration = 200_000;
        music.mediaPosition = 60_000;
        music.mediaPositionUpdateTime = SystemClock.elapsedRealtime();
        music.trailing = IslandItem.Trailing.NONE;
        items.add(music);
        boolean film = Boolean.getBoolean("film");
        File dir = new File("build/film");
        dir.mkdirs();
        Bitmap bmp = Bitmap.createBitmap(W, H, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bmp);
        long nanos = SystemClock.uptimeMillis() * 1_000_000L;
        StringBuilder trace = new StringBuilder();
        android.graphics.RectF r = new android.graphics.RectF();
        for (int frame = 0; frame < 300; frame++) {
            if (frame == 5) {
                view.setItems(items, 0, new ArrayList<>());
            }
            if (frame == 19) {
                fire(view, "startSplitNow");
            }
            if (frame == 70) {
                long t = SystemClock.uptimeMillis();
                view.dispatchTouchEvent(MotionEvent.obtain(t, t, MotionEvent.ACTION_DOWN, W / 2f, 66f, 0));
                view.dispatchTouchEvent(MotionEvent.obtain(t, t + 40, MotionEvent.ACTION_UP, W / 2f, 66f, 0));
            }
            if (frame == 160) {
                view.collapse();
            }
            if (frame == 164) {
                fire(view, "regrowPillNow");
            }
            if (frame == 230) {
                view.setItems(new ArrayList<>(), 0, new ArrayList<>());
            }
            ShadowSystemClock.advanceBy(Duration.ofMillis(16));
            nanos += 16_000_000L;
            view.doFrame(nanos);
            canvas.drawColor(0xFF6A6F78);
            // on a device the cards live in the blur window under the island; paint them the same way here
            List<Card> back = new ArrayList<>(view.cards());
            java.util.Collections.reverse(back); // back to front, as the blur layer places them
            for (Card card : back) {
                view.drawCard(canvas, card, SystemClock.uptimeMillis());
            }
            view.draw(canvas);
            view.computeMain(r);
            trace.append(frame).append(' ').append(r.width()).append(' ').append(r.height()).append(' ').append(r.centerX());
            for (Card card : view.cards()) {
                view.computeCard(card, r);
                trace.append(' ').append(r.width()).append(' ').append(r.height()).append(' ').append(r.top);
            }
            trace.append('\n');
            if (film) {
                try (FileOutputStream out = new FileOutputStream(new File(dir, String.format("f%03d.png", frame)))) {
                    bmp.compress(Bitmap.CompressFormat.PNG, 100, out);
                }
            }
        }
        if (film) {
            try (FileOutputStream out = new FileOutputStream(new File(dir, "trace.txt"))) {
                out.write(trace.toString().getBytes());
            }
        }
        assertTrue(dir.isDirectory());
    }

    /** Runs a delayed task of the director now; a view that is not attached never runs its postDelayed tasks. */
    private static void fire(IslandView view, String method) {
        try {
            java.lang.reflect.Field f = IslandView.class.getDeclaredField("director");
            f.setAccessible(true);
            Object director = f.get(view);
            java.lang.reflect.Method m = director.getClass().getDeclaredMethod(method);
            m.setAccessible(true);
            m.invoke(director);
        } catch (ReflectiveOperationException e) {
            throw new AssertionError(e);
        }
    }

    /** Plays one scenario and writes every frame to build/film/<name>/ when -Pfilm is set. */
    private void play(String name, int frames, java.util.function.BiConsumer<IslandView, Integer> script) throws Exception {
        Application app = RuntimeEnvironment.getApplication();
        IslandView view = new IslandView(app, IslandHost.NONE);
        view.setGeometry(W, W / 2f, 66f, 90f, false);
        view.setSuppressed(false);
        view.layout(0, 0, W, H);
        boolean film = Boolean.getBoolean("film");
        File dir = new File("build/film/" + name);
        dir.mkdirs();
        Bitmap bmp = Bitmap.createBitmap(W, H, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bmp);
        long nanos = SystemClock.uptimeMillis() * 1_000_000L;
        for (int frame = 0; frame < frames; frame++) {
            script.accept(view, frame);
            ShadowSystemClock.advanceBy(Duration.ofMillis(16));
            nanos += 16_000_000L;
            view.doFrame(nanos);
            canvas.drawColor(0xFF6A6F78);
            List<Card> back = new ArrayList<>(view.cards());
            java.util.Collections.reverse(back);
            for (Card card : back) {
                view.drawCard(canvas, card, SystemClock.uptimeMillis());
            }
            view.draw(canvas);
            if (film) {
                try (FileOutputStream out = new FileOutputStream(new File(dir, String.format("f%03d.png", frame)))) {
                    bmp.compress(Bitmap.CompressFormat.PNG, 100, out);
                }
            }
        }
        assertTrue(dir.isDirectory());
    }

    @Test
    public void bubbleSplitAndMerge() throws Exception {
        Application app = RuntimeEnvironment.getApplication();
        IslandItem a = item(app, "a", "Taxi", 0xFFFFC107);
        IslandItem b = item(app, "b", "Food", 0xFF4CAF50);
        List<IslandItem> one = new ArrayList<>();
        one.add(a);
        List<IslandItem> two = new ArrayList<>();
        two.add(a);
        two.add(b);
        play("bubble", 220, (view, frame) -> {
            if (frame == 5) {
                view.setItems(one);
            }
            if (frame == 60) {
                view.setItems(two);
            }
            if (frame == 150) {
                view.setItems(one);
            }
        });
    }

    @Test
    public void pillItemSwap() throws Exception {
        Application app = RuntimeEnvironment.getApplication();
        List<IslandItem> first = new ArrayList<>();
        first.add(item(app, "a", "Taxi", 0xFFFFC107));
        List<IslandItem> second = new ArrayList<>();
        second.add(item(app, "b", "Food", 0xFF4CAF50));
        play("swap", 160, (view, frame) -> {
            if (frame == 5) {
                view.setItems(first);
            }
            if (frame == 70) {
                view.setItems(second);
            }
        });
    }
}
