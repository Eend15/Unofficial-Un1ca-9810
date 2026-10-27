package dev.android.dynamicisland.xposed.hooks;


import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import java.io.File;
import org.junit.Test;
import org.junit.experimental.categories.Category;
import dev.android.dynamicisland.testutil.RenderCapture;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class DarkRemoteTest {
    /** Text colours as the apps hand them over: Google's light-theme greys, brand colours, hard black, see-through ones. */
    private static final int[] PALETTE = {
            0xFF202124, 0xFF3C4043, 0xFF5F6368, 0xFF70757A, 0xFF9AA0A6, 0xFFBDC1C6, 0xFFE8EAED, 0xFFFFFFFF,
            0xFF000000, 0x99000000, 0x80202124, 0xCCFFFFFF, 0x66FFFFFF,
            0xFF1A73E8, 0xFF8AB4F8, 0xFFD93025, 0xFFF28B82, 0xFF188038, 0xFF81C995, 0xFFE37400, 0xFFFBBC04,
            0xFF0000FF, 0xFF990000, 0xFF003366, 0xFF4A148C, 0xFFB71C1C,
    };

    /** A picture of every palette colour before (left) and after (right) on three card backdrops. */
    @Category(RenderCapture.class) @Test
    public void renderContrastSheet() throws Exception {
        int[] backdrops = {DarkRemote.CARD_BACKGROUND, 0xFF101012, 0xFF3A3A40};
        int rowH = 30;
        int half = 150;
        Bitmap out = Bitmap.createBitmap(half * 2 * backdrops.length, rowH * PALETTE.length, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(out);
        Paint fill = new Paint();
        Paint text = new Paint(Paint.ANTI_ALIAS_FLAG);
        text.setTextSize(18.0f);
        for (int b = 0; b < backdrops.length; b++) {
            fill.setColor(backdrops[b]);
            canvas.drawRect(b * half * 2, 0, (b + 1) * half * 2, out.getHeight(), fill);
            fill.setColor(0x33FFFFFF);
            canvas.drawRect((b * half * 2) + half - 1, 0, (b * half * 2) + half, out.getHeight(), fill);
        }
        for (int i = 0; i < PALETTE.length; i++) {
            for (int b = 0; b < backdrops.length; b++) {
                int x = b * half * 2;
                text.setColor(PALETTE[i]);
                canvas.drawText("8:00 PM 21%", x + 6, (i * rowH) + 21, text);
                text.setColor(DarkRemote.lift(PALETTE[i], backdrops[b]));
                canvas.drawText("8:00 PM 21%", x + half + 6, (i * rowH) + 21, text);
            }
        }
        File dir = new File("build/render");
        dir.mkdirs();
        RenderCapture.write(out, new File(dir, "dark_remote_contrast.png"));
    }
}
