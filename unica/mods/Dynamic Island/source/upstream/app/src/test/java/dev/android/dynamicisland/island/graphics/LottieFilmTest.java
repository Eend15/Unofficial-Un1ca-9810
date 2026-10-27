package dev.android.dynamicisland.island.graphics;

import dev.android.dynamicisland.testutil.RenderCapture;

import static org.junit.Assert.assertNotNull;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.RectF;
import java.io.File;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** Plays every embedded animation and writes one strip of frames per icon to build/render/lottie. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class LottieFilmTest {
    private static final String[] NAMES = {"battery", "battery_charging", "power_save", "bell", "bell_off", "vibrate", "headphones", "camera",
        "mic", "location", "moon", "plane", "torch", "hotspot", "rotate_lock", "download", "speaker"};
    private static final float[] FRACTIONS = {0f, 0.2f, 0.4f, 0.6f, 0.8f, 1f};

    @Test
    public void everyAnimationParsesAndDraws() throws Exception {
        File dir = new File("build/render/lottie");
        dir.mkdirs();
        int cell = 120;
        for (String name : NAMES) {
            LottiePlayer p = LottiePlayer.parse(LottieData.get(name));
            assertNotNull(name, p);
            p.setLevel(name.startsWith("battery") || name.equals("power_save") ? 0.45f : -1f);
            Bitmap strip = Bitmap.createBitmap(cell * FRACTIONS.length, cell, Bitmap.Config.ARGB_8888);
            Canvas c = new Canvas(strip);
            c.drawColor(0xFF1B1B1F);
            for (int i = 0; i < FRACTIONS.length; i++) {
                float t = FRACTIONS[i] * (p.durationMillis() - 1f);
                p.draw(c, new RectF(i * cell, 0, (i + 1) * cell, cell), t, 0xFFFFFFFF);
            }
            RenderCapture.write(strip, new File(dir, name + ".png"));
        }
    }
}
