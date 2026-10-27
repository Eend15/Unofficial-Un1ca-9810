package dev.android.dynamicisland.island.graphics;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import java.io.File;
import org.junit.Test;
import org.junit.experimental.categories.Category;
import dev.android.dynamicisland.testutil.RenderCapture;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** Draws every pictogram once so a broken path is visible at a glance. */
@Category(RenderCapture.class)
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class GlyphSheetTest {
    @Test
    public void drawAllGlyphs() throws Exception {
        GlyphIcon.Kind[] kinds = GlyphIcon.Kind.values();
        int cell = 120;
        int cols = 6;
        int rows = (kinds.length + cols - 1) / cols;
        Bitmap sheet = Bitmap.createBitmap(cell * cols, cell * rows, Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(sheet);
        c.drawColor(0xFF1B1B1F);
        for (int i = 0; i < kinds.length; i++) {
            GlyphIcon icon = kinds[i] == GlyphIcon.Kind.BATTERY ? GlyphIcon.battery(0.6f, false)
                    : kinds[i] == GlyphIcon.Kind.BATTERY_CHARGING ? GlyphIcon.battery(0.6f, true) : GlyphIcon.of(kinds[i]);
            int x = (i % cols) * cell;
            int y = (i / cols) * cell;
            icon.setBounds(x + 12, y + 12, x + cell - 12, y + cell - 12);
            icon.setTint(0xFFFFFFFF);
            icon.draw(c);
        }
        File dir = new File("build/render");
        dir.mkdirs();
        RenderCapture.write(sheet, new File(dir, "glyph_sheet.png"));
    }
}
