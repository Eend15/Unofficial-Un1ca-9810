package dev.android.dynamicisland.island.view;

import dev.android.dynamicisland.testutil.RenderCapture;

import static org.junit.Assert.assertTrue;

import android.app.Application;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.os.SystemClock;
import dev.android.dynamicisland.island.model.IslandItem;
import java.io.File;
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

/** The island shrinks into a dot when the shade is pulled down and grows back out of it when the shade closes. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class ShadeGateFilmTest {
    private static final int W = 1080;
    private static final int H = 200;
    private static final int OPEN_FRAME = 40;
    private static final int CLOSE_FRAME = 100;

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

    @Test
    public void shrinksIntoADotAndGrowsBack() throws Exception {
        Application app = RuntimeEnvironment.getApplication();
        IslandView view = new IslandView(app, IslandHost.NONE);
        view.setGeometry(W, W / 2f, 66f, 90f, false);
        view.setSuppressed(false);
        view.layout(0, 0, W, H);
        IslandItem it = new IslandItem("a");
        it.kind = IslandItem.Kind.LIVE;
        it.packageName = "pkg.a";
        it.appName = "App";
        it.title = "Taxi";
        it.subtitle = "Arriving";
        it.accent = 0xFFFFC107;
        Bitmap icon = Bitmap.createBitmap(48, 48, Bitmap.Config.ARGB_8888);
        new Canvas(icon).drawColor(0xFFFFC107);
        it.icon = new BitmapDrawable(app.getResources(), icon);
        it.iconIsImage = true;
        it.progress = 0.4f;
        it.trailing = IslandItem.Trailing.PROGRESS_RING;
        List<IslandItem> items = new ArrayList<>();
        items.add(it);
        IslandItem second = new IslandItem("b");
        second.kind = IslandItem.Kind.LIVE;
        second.packageName = "pkg.b";
        second.appName = "App";
        second.title = "Recording";
        second.accent = 0xFFE53935;
        Bitmap dot = Bitmap.createBitmap(48, 48, Bitmap.Config.ARGB_8888);
        new Canvas(dot).drawColor(0xFFE53935);
        second.icon = new BitmapDrawable(app.getResources(), dot);
        second.iconIsImage = true;
        items.add(second);

        Bitmap frameBmp = Bitmap.createBitmap(W, H, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(frameBmp);
        int[] shots = {OPEN_FRAME - 1, OPEN_FRAME + 2, OPEN_FRAME + 4, OPEN_FRAME + 6, OPEN_FRAME + 8, OPEN_FRAME + 10, OPEN_FRAME + 12, OPEN_FRAME + 14, OPEN_FRAME + 17,
                CLOSE_FRAME - 1, CLOSE_FRAME + 3, CLOSE_FRAME + 6, CLOSE_FRAME + 8, CLOSE_FRAME + 10, CLOSE_FRAME + 12, CLOSE_FRAME + 14, CLOSE_FRAME + 17, CLOSE_FRAME + 22, CLOSE_FRAME + 30};
        int rowH = 90;
        Bitmap sheet = Bitmap.createBitmap(W, rowH * shots.length, Bitmap.Config.ARGB_8888);
        Canvas sheetCanvas = new Canvas(sheet);
        Paint label = new Paint(Paint.ANTI_ALIAS_FLAG);
        label.setColor(0xFFFF4040);
        label.setTextSize(22.0f);
        long nanos = SystemClock.uptimeMillis() * 1_000_000L;
        float minAlpha = 1.0f;
        float maxAlphaWhenOpen = 0.0f;
        for (int frame = 0; frame < 160; frame++) {
            if (frame == 3) {
                view.setItems(items, 0, new ArrayList<>());
            }
            if (frame == 30) {
                fire(view, "startSplitNow");
            }
            if (frame == OPEN_FRAME) {
                view.setShadeFraction(0.06f);
            }
            if (frame == OPEN_FRAME + 5) {
                view.setShadeFraction(0.6f);
            }
            if (frame == CLOSE_FRAME) {
                view.setShadeFraction(0.0f);
            }
            ShadowSystemClock.advanceBy(Duration.ofMillis(16));
            nanos += 16_000_000L;
            view.doFrame(nanos);
            canvas.drawColor(0xFFF2F2F2);
            view.draw(canvas);
            if (frame > OPEN_FRAME + 30 && frame < CLOSE_FRAME) {
                minAlpha = Math.min(minAlpha, view.visibleAlpha());
            }
            if (frame > CLOSE_FRAME + 40) {
                maxAlphaWhenOpen = Math.max(maxAlphaWhenOpen, view.visibleAlpha());
            }
            for (int i = 0; i < shots.length; i++) {
                if (shots[i] == frame) {
                    sheetCanvas.save();
                    sheetCanvas.translate(0.0f, i * rowH);
                    sheetCanvas.clipRect(0, 0, W, rowH);
                    sheetCanvas.drawBitmap(frameBmp, 0.0f, 0.0f, null);
                    sheetCanvas.restore();
                    sheetCanvas.drawText("frame " + (frame - (frame < CLOSE_FRAME ? OPEN_FRAME : CLOSE_FRAME)) + (frame < CLOSE_FRAME ? " after the pull" : " after the close"), 12.0f, (i * rowH) + 28.0f, label);
                }
            }
        }
        File dir = new File("build/render");
        dir.mkdirs();
        RenderCapture.write(sheet, new File(dir, "shade_gate_sheet.png"));
        assertTrue("gone while the shade is down", minAlpha < 0.01f);
        assertTrue("back when the shade has closed", maxAlphaWhenOpen > 0.99f);
    }
}
