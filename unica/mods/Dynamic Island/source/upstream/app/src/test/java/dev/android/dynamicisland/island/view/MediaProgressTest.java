package dev.android.dynamicisland.island.view;

import static org.junit.Assert.assertTrue;

import android.app.Application;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.SystemClock;
import dev.android.dynamicisland.island.model.IslandItem;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** The seek bar of the music card follows the playing position (it once stood still: integer division). */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class MediaProgressTest {
    private final Application app = RuntimeEnvironment.getApplication();

    private int brightPixels(long position) {
        IslandItem it = new IslandItem("media:test");
        it.kind = IslandItem.Kind.MEDIA;
        it.isMedia = true;
        it.playing = false; // a fixed position: no time passes between the two renders
        it.title = "Song";
        it.subtitle = "Artist";
        it.mediaDuration = 200_000;
        it.mediaPosition = position;
        it.mediaPositionUpdateTime = SystemClock.elapsedRealtime();
        IslandView view = new IslandView(app, null);
        float w = 360f * app.getResources().getDisplayMetrics().density;
        int h = Math.round(view.shadeCardHeight(it, w));
        Bitmap bmp = Bitmap.createBitmap(Math.round(w), h, Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(bmp);
        c.drawColor(0xFF000000);
        view.drawShadeCard(c, it, w);
        // the two renders differ only in the time text and in how far the bright bar fill reaches
        int bright = 0;
        for (int y = 0; y < h; y++) {
            for (int x = 0; x < bmp.getWidth(); x++) {
                int p = bmp.getPixel(x, y);
                if (((p >> 16) & 255) > 200 && ((p >> 8) & 255) > 200 && (p & 255) > 200) {
                    bright++;
                }
            }
        }
        return bright;
    }

    @Test
    public void barGrowsWithThePosition() {
        int early = brightPixels(20_000);   // 10 %
        int late = brightPixels(150_000);   // 75 %
        assertTrue("bright pixels early=" + early + " late=" + late, late - early > 200);
    }
}
