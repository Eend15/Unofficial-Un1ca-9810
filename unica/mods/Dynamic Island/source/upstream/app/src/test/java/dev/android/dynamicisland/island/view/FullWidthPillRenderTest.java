package dev.android.dynamicisland.island.view;

import static org.junit.Assert.assertTrue;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.RectF;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.testutil.RenderCapture;
import java.io.File;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** The wide charging pill: the word on the left, the percentage and a green battery glyph on the right. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "mdpi")
public class FullWidthPillRenderTest {
    private static IslandItem charging(int percent) {
        IslandItem it = new IslandItem("event:charging");
        it.title = "Charging";
        it.compactLabel = it.title;
        it.accent = 0xFF30D158;
        it.eventLayout = IslandItem.EventLayout.BATTERY;
        it.batteryPercent = percent;
        it.batteryCharging = true;
        it.trailing = IslandItem.Trailing.TEXT;
        it.trailingText = percent + "%";
        it.fullWidth = true;
        return it;
    }

    @Test
    public void theGreenBatteryGlyphSitsAtTheFarRightAndNoGaugeAtTheLeft() throws Exception {
        IslandView view = new IslandView(RuntimeEnvironment.getApplication(), IslandHost.NONE);
        view.setGeometry(360, 180, 35, 22, false);
        float scale = 3f;
        Bitmap sheet = Bitmap.createBitmap((int) (360 * scale), (int) (60 * scale), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(sheet);
        canvas.drawColor(0xFF7A4A9A);
        canvas.scale(scale, scale);
        CompactContent content = new CompactContent(view, charging(71));
        float w = content.desiredWidth();
        float h = org.robolectric.util.ReflectionHelpers.getField(org.robolectric.util.ReflectionHelpers.getField(view, "metrics"), "pillH");
        RectF shape = new RectF(180 - w / 2, 10, 180 + w / 2, 10 + h);
        android.graphics.Paint black = new android.graphics.Paint(android.graphics.Paint.ANTI_ALIAS_FLAG);
        black.setColor(Color.BLACK);
        canvas.drawRoundRect(shape, h / 2, h / 2, black);
        content.draw(canvas, shape, 1f, 0);
        RenderCapture.write(sheet, new File("build/renders/full-width-charging.png"));

        int greenLeft = 0, greenRight = 0;
        int mid = (int) ((shape.top + h / 2) * scale);
        for (int x = (int) (shape.left * scale); x < (int) (shape.right * scale); x++) {
            int p = sheet.getPixel(x, mid);
            boolean green = Color.green(p) > 150 && Color.red(p) < 120 && Color.blue(p) < 130;
            if (green) { if (x < sheet.getWidth() / 2) greenLeft++; else greenRight++; }
        }
        assertTrue("the glyph is green on the right", greenRight > 10);
        assertTrue("nothing green at the left, where the word stands", greenLeft == 0);
    }
}
