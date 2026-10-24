package dev.android.dynamicisland.island.view;

import static org.junit.Assert.assertNotNull;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.MotionEvent;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
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

/** Drives the real pill -> expanded -> collapsed state machine with animation frames. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class IslandLifecycleTest {
    private final IslandHost host = IslandHost.NONE;

    private static Drawable solid(Context ctx, int color) {
        Bitmap b = Bitmap.createBitmap(48, 48, Bitmap.Config.ARGB_8888);
        new Canvas(b).drawColor(color);
        return new BitmapDrawable(ctx.getResources(), b);
    }

    private IslandItem item(Context ctx, String key, IslandItem.Kind kind) {
        IslandItem it = new IslandItem(key);
        it.kind = kind;
        it.packageName = "pkg." + key;
        it.appName = "App " + key;
        it.title = "Title " + key;
        it.subtitle = "Subtitle " + key;
        it.accent = 0xFF30D158;
        it.icon = solid(ctx, 0xFF2962FF);
        it.iconIsImage = true;
        it.cardImage = it.icon;
        it.cardImageIsImage = true;
        return it;
    }

    private void run(String name, List<IslandItem> items) throws Exception {
        Application app = RuntimeEnvironment.getApplication();
        IslandView view = new IslandView(app, host);
        int w = 1080;
        view.setGeometry(w, w / 2f, 66f, 90f, false);
        view.setSuppressed(false);
        view.layout(0, 0, w, 900);
        view.setItems(items, 0, new ArrayList<>());
        Bitmap bmp = Bitmap.createBitmap(w, 900, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bmp);
        long nanos = SystemClock.uptimeMillis() * 1_000_000L;
        for (int frame = 0; frame < 240; frame++) {
            ShadowSystemClock.advanceBy(Duration.ofMillis(16));
            nanos += 16_000_000L;
            if (frame == 60) { // tap the pill
                long t = SystemClock.uptimeMillis();
                view.dispatchTouchEvent(MotionEvent.obtain(t, t, MotionEvent.ACTION_DOWN, w / 2f, 66f, 0));
                view.dispatchTouchEvent(MotionEvent.obtain(t, t + 40, MotionEvent.ACTION_UP, w / 2f, 66f, 0));
            }
            if (frame == 200) {
                view.collapse();
            }
            view.doFrame(nanos);
            view.onSecondTick();
            canvas.drawColor(0xFF000000);
            view.draw(canvas);
            if (frame == 40 || frame == 150) {
                File dir = new File("build/render");
                dir.mkdirs();
                try (FileOutputStream out = new FileOutputStream(new File(dir, "life_" + name + "_" + frame + ".png"))) {
                    bmp.compress(Bitmap.CompressFormat.PNG, 100, out);
                }
            }
        }
        assertNotNull(view);
    }

    @Test
    public void liveWithProgressAndChronometer() throws Exception {
        Context ctx = RuntimeEnvironment.getApplication();
        IslandItem a = item(ctx, "a", IslandItem.Kind.LIVE);
        a.progress = 0.3f;
        a.trailing = IslandItem.Trailing.PROGRESS_RING;
        IslandItem b = item(ctx, "b", IslandItem.Kind.TIMER);
        b.chronoBase = System.currentTimeMillis() - 5000;
        b.chronoMillis = true;
        b.trailing = IslandItem.Trailing.CHRONOMETER;
        List<IslandItem> items = new ArrayList<>();
        items.add(a);
        items.add(b);
        run("live", items);
    }

    @Test
    public void chargingEventPill() throws Exception {
        Context ctx = RuntimeEnvironment.getApplication();
        IslandItem e = item(ctx, "event:charging", IslandItem.Kind.EVENT);
        e.icon = GlyphIcon.battery(0.54f, true);
        e.iconIsImage = false;
        e.title = "Charging";
        e.subtitle = "Fast charging";
        e.progress = 0.54f;
        e.trailing = IslandItem.Trailing.TEXT;
        e.trailingText = "54%";
        List<IslandItem> items = new ArrayList<>();
        items.add(e);
        run("event", items);
    }

    @Test
    public void peekPopsTheIslandOpenAndItFoldsBack() throws Exception {
        Context ctx = RuntimeEnvironment.getApplication();
        IslandItem p = item(ctx, "peek:1", IslandItem.Kind.PEEK);
        p.title = "Minji";
        p.subtitle = "I booked the table, bring the tickets!";
        p.cardImageRound = true;
        p.trailing = IslandItem.Trailing.TEXT;
        p.trailingText = "Minji";
        List<IslandItem> items = new ArrayList<>();
        items.add(p);

        IslandView view = new IslandView(RuntimeEnvironment.getApplication(), host);
        view.setGeometry(1080, 540f, 66f, 90f, false);
        view.setSuppressed(false);
        view.layout(0, 0, 1080, 900);
        view.setItems(items, 0, new ArrayList<>());
        org.junit.Assert.assertTrue(view.peek(p, 2000));
        org.junit.Assert.assertTrue(view.isExpanded());
        long nanos = SystemClock.uptimeMillis() * 1_000_000L;
        for (int frame = 0; frame < 200; frame++) {
            ShadowSystemClock.advanceBy(Duration.ofMillis(16));
            nanos += 16_000_000L;
            view.doFrame(nanos);
        }
        org.junit.Assert.assertTrue("still open before its time is up", view.isExpanded());
        // the auto-collapse is a delayed task on the view; run it as the looper would once the time has passed
        view.autoCollapseTask().run();
        for (int frame = 0; frame < 60; frame++) {
            ShadowSystemClock.advanceBy(Duration.ofMillis(16));
            nanos += 16_000_000L;
            view.doFrame(nanos);
        }
        org.junit.Assert.assertFalse("folds back after the peek time", view.isExpanded());
    }

    @Test
    public void anOpenPeekCardTakesTheUpdatedContentOfTheSameItem() throws Exception {
        Context ctx = RuntimeEnvironment.getApplication();
        IslandItem before = item(ctx, "peek:otp", IslandItem.Kind.PEEK);
        before.title = "482 913";
        before.subtitle = "Messages · Verification code";
        IslandView view = new IslandView(RuntimeEnvironment.getApplication(), host);
        view.setGeometry(1080, 540f, 66f, 90f, false);
        view.setSuppressed(false);
        view.layout(0, 0, 1080, 900);
        List<IslandItem> items = new ArrayList<>();
        items.add(before);
        view.setItems(items, 0, new ArrayList<>());
        org.junit.Assert.assertTrue(view.peek(before, 12000));

        IslandItem after = item(ctx, "peek:otp", IslandItem.Kind.PEEK);
        after.title = "482 913";
        after.subtitle = "Messages · Copied";
        List<IslandItem> updated = new ArrayList<>();
        updated.add(after);
        view.setItems(updated, 0, new ArrayList<>());

        org.junit.Assert.assertEquals("Messages · Copied", view.cards().get(0).body.item.subtitle.toString());
    }

    @Test
    public void mediaPlaying() throws Exception {
        Context ctx = RuntimeEnvironment.getApplication();
        IslandItem m = item(ctx, "m", IslandItem.Kind.MEDIA);
        m.isMedia = true;
        m.playing = true;
        m.trailing = IslandItem.Trailing.WAVEFORM;
        m.art = ((BitmapDrawable) m.icon).getBitmap();
        m.mediaDuration = 200_000;
        m.mediaPosition = 1000;
        m.mediaPositionUpdateTime = SystemClock.elapsedRealtime();
        List<IslandItem> items = new ArrayList<>();
        items.add(m);
        run("media", items);
    }

    @Test
    public void callWithActions() throws Exception {
        Context ctx = RuntimeEnvironment.getApplication();
        IslandItem c = item(ctx, "call", IslandItem.Kind.CALL);
        c.trailing = IslandItem.Trailing.CHRONOMETER;
        c.chronoBase = System.currentTimeMillis() - 61_000;
        c.accent = 0xFF30D158;
        c.actions.add(new IslandItem.Action("End call", null, null, () -> { }, true));
        List<IslandItem> items = new ArrayList<>();
        items.add(c);
        run("call", items);
    }
}
