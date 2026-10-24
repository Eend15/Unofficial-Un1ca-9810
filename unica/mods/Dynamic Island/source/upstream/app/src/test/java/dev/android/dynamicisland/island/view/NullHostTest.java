package dev.android.dynamicisland.island.view;

import android.app.Application;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** The shade renders cards with a host-less IslandView; frames must not hit a null host. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class NullHostTest {
    @Test
    public void hostlessViewSurvivesFramesAndRollingDigits() {
        Application app = RuntimeEnvironment.getApplication();
        IslandView view = new IslandView(app, null);
        Canvas canvas = new Canvas(Bitmap.createBitmap(200, 80, Bitmap.Config.ARGB_8888));
        Paint paint = new Paint();
        view.drawTime(canvas, "k", "12:34", paint, 0, 40, false);
        view.drawTime(canvas, "k", "12:35", paint, 0, 40, false); // starts a roll and schedules a frame
        view.doFrame(16_000_000L);
        view.doFrame(32_000_000L);
    }
}
