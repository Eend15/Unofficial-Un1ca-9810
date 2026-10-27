package dev.android.dynamicisland.island.view;

import dev.android.dynamicisland.testutil.RenderCapture;

import static org.junit.Assert.*;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.SystemClock;
import android.view.View;
import android.widget.FrameLayout;
import dev.android.dynamicisland.island.model.IslandItem;
import java.io.File;
import java.time.Duration;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.shadows.ShadowSystemClock;
import org.robolectric.util.ReflectionHelpers;

/** Count coloured content pixels, never the white border, so an empty outlined body cannot pass. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "mdpi")
public class ContentHandoffFilmTest {
    @Test public void contentNeverDisappearsBetweenLayoutsAt60Hz() throws Exception {
        int fps = 60;
        IslandView view = new IslandView(RuntimeEnvironment.getApplication(), IslandHost.NONE);
        view.setGeometry(480, 240, 40, 22, false);
        view.layout(0, 0, 480, 600);
        IslandItem item = new IslandItem("live:handoff");
        item.title = "Live activity";
        item.accent = Color.GREEN;
        item.cardIcon = new ColorDrawable(Color.GREEN);
        item.progress = .5f;
        FrameLayout remote = new FrameLayout(RuntimeEnvironment.getApplication());
        remote.setClipChildren(false);
        view.setRemoteLayer(remote);
        view.setItems(List.of(item));
        Director director = ReflectionHelpers.getField(view, "director");
        long nanos = SystemClock.uptimeMillis() * 1_000_000L;
        long dt = Math.round(1_000_000_000d / fps);
        for (int i = 0; i < 2 * fps; i++) {
            ShadowSystemClock.advanceBy(Duration.ofNanos(dt)); view.doFrame(nanos += dt);
        }
        Bitmap bitmap = Bitmap.createBitmap(480, 600, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        int[] pixels = new int[480 * 600];
        director.expandFromPill();
        for (int stage = 0; stage < 2; stage++) {
            if (stage == 1) view.collapse();
            for (int i = 0; i < fps; i++) {
                if (stage == 0 && i == (int)Math.ceil(fps * .26)) director.fadePillBlobNow();
                ShadowSystemClock.advanceBy(Duration.ofNanos(dt)); view.doFrame(nanos += dt);
                bitmap.eraseColor(Color.BLACK);
                for (int c = view.cards().size() - 1; c >= 0; c--) view.drawCard(canvas, view.cards().get(c), SystemClock.uptimeMillis());
                view.draw(canvas);
                remote.measure(View.MeasureSpec.makeMeasureSpec(480, View.MeasureSpec.EXACTLY),
                        View.MeasureSpec.makeMeasureSpec(600, View.MeasureSpec.EXACTLY));
                remote.layout(0, 0, 480, 600);
                remote.draw(canvas);
                bitmap.getPixels(pixels, 0, 480, 0, 0, 480, 600);
                int coloured = 0;
                for (int pixel : pixels) {
                    if (Color.green(pixel) > 30 && Color.green(pixel) > Color.red(pixel) + 20
                            && Color.green(pixel) > Color.blue(pixel) + 20 && ++coloured >= 3) break;
                }
                if (coloured < 3) {
                    File file = new File("build/render/empty-handoff-" + fps + "-" + stage + "-" + i + ".png");
                    file.getParentFile().mkdirs();
                    RenderCapture.write(bitmap, file);
                }
                assertTrue("no content at " + fps + "Hz, " + (stage == 0 ? "opening" : "closing") + " frame " + i, coloured >= 3);
            }
        }
    }

}
