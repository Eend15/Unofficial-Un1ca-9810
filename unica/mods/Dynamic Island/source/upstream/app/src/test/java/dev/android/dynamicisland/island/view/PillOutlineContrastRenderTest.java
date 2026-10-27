package dev.android.dynamicisland.island.view;

import dev.android.dynamicisland.testutil.RenderCapture;

import static org.junit.Assert.*;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.io.File;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.util.ReflectionHelpers;

/** Real pill painter, identical backgrounds for each mode; capture output is available in CI. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "mdpi")
public class PillOutlineContrastRenderTest {
    @Test public void modesMatchActualBackgroundAndNeverChangePillInterior() throws Exception {
        Context ctx = RuntimeEnvironment.getApplication();
        SharedPreferences prefs = ctx.getSharedPreferences("outline-render", 0);
        int[] backgrounds = {Color.BLACK, 0xFF181818, 0xFF777777, Color.WHITE};
        Bitmap sheet = Bitmap.createBitmap(960, 480, Bitmap.Config.ARGB_8888);
        Canvas capture = new Canvas(sheet);
        Paint text = new Paint(Paint.ANTI_ALIAS_FLAG);
        text.setTextSize(16f);
        try {
            for (int row = 0; row < backgrounds.length; row++) {
                int[] rimCounts = new int[3];
                for (int mode = 0; mode < 3; mode++) {
                    prefs.edit().putInt(ModuleSettings.KEY_PILL_OUTLINE, mode).apply();
                    ModuleSettings.configurePreview(prefs);
                    IslandView view = new IslandView(ctx, IslandHost.NONE);
                    view.setGeometry(320, 160, 60, 22, false);
                    view.layout(0, 0, 320, 120);
                    Scene scene = ReflectionHelpers.getField(view, "scene");
                    scene.mode = Mode.COMPACT;
                    scene.springs.width.snapTo(200);
                    scene.springs.height.snapTo(40);
                    scene.springs.visibility.snapTo(1);
                    scene.springs.suppress.snapTo(1);
                    scene.springs.shadeGate.snapTo(1);
                    scene.springs.outlineFade.snapTo(1);
                    scene.springs.pillBlob.snapTo(1);
                    view.setPillBackgroundLuma(PillOutlinePolicy.luma(backgrounds[row]));
                    Bitmap pill = Bitmap.createBitmap(320, 120, Bitmap.Config.ARGB_8888);
                    view.draw(new Canvas(pill));
                    RectF rect = new RectF();
                    view.computeMain(rect);
                    assertEquals(Color.BLACK, pill.getPixel(160, 60));
                    for (int y = 0; y < 120; y++) for (int x = 0; x < 320; x++) {
                        int pixel = pill.getPixel(x, y);
                        if (!rect.contains(x + .5f, y + .5f) && Color.alpha(pixel) > 0
                                && Color.red(pixel) > 0) rimCounts[mode]++;
                    }
                    Bitmap tile = Bitmap.createBitmap(320, 120, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(tile);
                    canvas.drawColor(backgrounds[row]);
                    canvas.drawBitmap(pill, 0f, 0f, null);
                    text.setColor(row < 2 ? Color.WHITE : Color.BLACK);
                    canvas.drawText(new String[]{"Auto", "Always", "None"}[mode], 12, 22, text);
                    capture.drawBitmap(tile, mode * 320, row * 120, null);
                }
                assertTrue("Always must paint an external rim", rimCounts[1] > 0);
                assertEquals("None must not paint an external rim", 0, rimCounts[2]);
                if (row < 2) assertEquals(rimCounts[1], rimCounts[0]);
                else assertEquals(0, rimCounts[0]);
            }
            File output = new File("build/render/pill-outline-contrast.png");
            output.getParentFile().mkdirs();
            RenderCapture.write(sheet, output);
        } finally {
            prefs.edit().clear().apply();
            ModuleSettings.configurePreview(prefs);
        }
    }
}
