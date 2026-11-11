package dev.android.dynamicisland.settings;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import dev.android.dynamicisland.testutil.RenderCapture;
import java.io.File;
import org.junit.Test;
import org.junit.experimental.categories.Category;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.util.ReflectionHelpers;

/** Draws every what's-new illustration, light and dark, so they can be looked at. */
@Category(RenderCapture.class)
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "en-w360dp-h800dp-xxhdpi")
public class ReleaseArtSheetTest {
    @Test public void drawAllIllustrations() throws Exception {
        try (var controller = Robolectric.buildActivity(SettingsActivity.class).setup()) {
            SettingsActivity activity = controller.get();
            OneUi ui = ReflectionHelpers.getField(activity, "ui");
            ReleaseHighlights.Art[] arts = ReleaseHighlights.Art.values();
            int cell = 220;
            Bitmap sheet = Bitmap.createBitmap(cell * arts.length, cell * 2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(sheet);
            canvas.drawColor(0xFFF2F3F6);
            boolean[] modes = {false, true};
            for (int row = 0; row < 2; row++) {
                boolean dark = modes[row];
                canvas.save();
                canvas.clipRect(0, row * cell, sheet.getWidth(), (row + 1) * cell);
                canvas.drawColor(dark ? 0xFF171B24 : 0xFFF8FAFF);
                canvas.restore();
                for (int i = 0; i < arts.length; i++) {
                    ReleaseRecommendations.Illustration art = new ReleaseRecommendations.Illustration(activity, arts[i], dark ? OneUiDark.of(ui) : ui);
                    art.measure(android.view.View.MeasureSpec.makeMeasureSpec(180, android.view.View.MeasureSpec.EXACTLY),
                            android.view.View.MeasureSpec.makeMeasureSpec(180, android.view.View.MeasureSpec.EXACTLY));
                    art.layout(0, 0, 180, 180);
                    canvas.save();
                    canvas.translate(i * cell + 20, row * cell + 20);
                    art.draw(canvas);
                    canvas.restore();
                }
            }
            File dir = new File("build/render");
            dir.mkdirs();
            RenderCapture.write(sheet, new File(dir, "release_art.png"));
        }
    }

    /** The illustration reads the palette from the settings helper; this gives the same helper with the dark flag set. */
    private static final class OneUiDark {
        static OneUi of(OneUi ui) {
            ReflectionHelpers.setField(ui, "dark", true);
            return ui;
        }
    }
}
