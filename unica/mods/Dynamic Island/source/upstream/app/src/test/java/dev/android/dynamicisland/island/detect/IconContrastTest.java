package dev.android.dynamicisland.island.detect;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotSame;
import static org.junit.Assert.assertSame;
import static org.junit.Assert.assertTrue;

import android.app.Application;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class IconContrastTest {
    private final Application app = RuntimeEnvironment.getApplication();

    private Drawable whiteGlyph() {
        Bitmap b = Bitmap.createBitmap(96, 96, Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(b);
        Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        p.setColor(Color.WHITE);
        c.drawCircle(48, 40, 16, p);
        c.drawRect(30, 62, 66, 80, p);
        return new BitmapDrawable(app.getResources(), b);
    }

    private Drawable solid(int color) {
        Bitmap b = Bitmap.createBitmap(96, 96, Bitmap.Config.ARGB_8888);
        new Canvas(b).drawColor(color);
        return new BitmapDrawable(app.getResources(), b);
    }

    @Test
    public void aWhiteGlyphIsDetectedAndAColouredPictureIsNot() {
        Bitmap glyph = ((BitmapDrawable) whiteGlyph()).getBitmap();
        assertTrue(IconContrast.analyze(glyph).nearlyWhite);
        assertTrue(IconContrast.analyze(glyph).visibleRatio < 0.72f);
        assertFalse(IconContrast.analyze(((BitmapDrawable) solid(0xFFEF6C00)).getBitmap()).nearlyWhite);
    }

    @Test
    public void readableChoosesTheLargeIconThenTheAppIconThenADisc() {
        Drawable colourful = solid(0xFF1E88E5);
        Drawable app1 = solid(0xFFFEE500);
        assertSame(colourful, IconContrast.readable(app, colourful, app1));

        Drawable glyph = whiteGlyph();
        assertSame(app1, IconContrast.readable(app, glyph, app1));          // the app icon reads better
        Drawable onDisc = IconContrast.readable(app, glyph, whiteGlyph());  // nothing better: dark disc
        assertNotSame(glyph, onDisc);
        Bitmap discBitmap = ((BitmapDrawable) onDisc).getBitmap();
        assertFalse(IconContrast.analyze(discBitmap).nearlyWhite);
        assertSame(app1, IconContrast.readable(app, null, app1));
    }
}
