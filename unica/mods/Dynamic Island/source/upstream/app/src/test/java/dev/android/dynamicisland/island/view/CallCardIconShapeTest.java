package dev.android.dynamicisland.island.view;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;
import static org.junit.Assert.assertTrue;

import android.app.Application;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import dev.android.dynamicisland.island.model.IslandItem;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** On a call card a caller's photo is round and an app's own icon keeps a rounded square, whatever icon pack it comes from. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class CallCardIconShapeTest {
    private static int[] redBox(Bitmap bmp) {
        int minX = Integer.MAX_VALUE, minY = Integer.MAX_VALUE, maxX = -1, maxY = -1;
        for (int y = 0; y < bmp.getHeight(); y++) for (int x = 0; x < bmp.getWidth(); x++) {
            int p = bmp.getPixel(x, y);
            if (Color.red(p) > 200 && Color.green(p) < 60 && Color.blue(p) < 60) {
                minX = Math.min(minX, x); minY = Math.min(minY, y); maxX = Math.max(maxX, x); maxY = Math.max(maxY, y);
            }
        }
        return new int[] {minX, minY, maxX, maxY};
    }

    private boolean cornerFilled(boolean round) {
        Application app = RuntimeEnvironment.getApplication();
        IslandView view = new IslandView(app, IslandHost.NONE);
        Bitmap art = Bitmap.createBitmap(96, 96, Bitmap.Config.ARGB_8888);
        art.eraseColor(Color.RED);
        IslandItem item = new IslandItem("call:test");
        item.kind = IslandItem.Kind.CALL;
        item.title = "Phone";
        item.trailing = IslandItem.Trailing.TEXT;
        item.trailingText = "Incoming call";
        item.cardImage = new BitmapDrawable(app.getResources(), art);
        item.cardImageIsImage = true;
        item.cardImageRound = round;
        float density = app.getResources().getDisplayMetrics().density;
        float w = 360f * density;
        float h = view.shadeCardHeight(item, w);
        Bitmap bmp = Bitmap.createBitmap(Math.round(w), Math.round(h), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bmp);
        canvas.drawColor(0xFF1B1B1F);
        view.drawShadeCard(canvas, item, w);
        int[] box = redBox(bmp);
        assertTrue("the icon was drawn", box[2] > box[0] && box[3] > box[1]);
        float size = box[2] - box[0];
        int x = box[0] + Math.round(size * 0.10f), y = box[1] + Math.round(size * 0.10f);
        int p = bmp.getPixel(x, y);
        return Color.red(p) > 200 && Color.green(p) < 60;
    }

    @Test
    public void aCallersPhotoIsRoundAndAnAppIconIsARoundedSquare() {
        assertEquals("a round photo has no colour near its corner", false, cornerFilled(true));
        assertEquals("an app icon fills its rounded square near the corner", true, cornerFilled(false));
        assertNotEquals(cornerFilled(true), cornerFilled(false));
    }
}
