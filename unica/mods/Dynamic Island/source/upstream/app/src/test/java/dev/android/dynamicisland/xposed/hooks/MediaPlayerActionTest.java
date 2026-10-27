package dev.android.dynamicisland.xposed.hooks;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import android.app.Application;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandHost;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.island.view.card.Btn;
import dev.android.dynamicisland.island.view.card.MediaBody;
import java.util.concurrent.atomic.AtomicInteger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** Exercise the actual shade binding's scaling and touch mapping, with both custom action slots. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "mdpi")
public class MediaPlayerActionTest {
    private final Application app = RuntimeEnvironment.getApplication();

    private IslandItem.Action action(String name, int width, int height, Runnable run) {
        GradientDrawable icon = new GradientDrawable();
        icon.setColor(Color.BLACK);
        icon.setSize(width, height);
        return new IslandItem.Action(name, icon, null, run, false);
    }

    private Btn find(MediaBody body, Runnable callback) {
        for (int y = 0; y < body.h; y++) {
            for (int x = 0; x < body.w; x++) {
                Btn button = body.hit(x, y);
                if (button != null && button.run == callback) {
                    return button;
                }
            }
        }
        throw new AssertionError("no touch target for the action");
    }

    @Test
    public void scaledShadePlayerPreservesBothIconsAndMapsTapsToTheirCallbacks() {
        AtomicInteger favorite = new AtomicInteger();
        AtomicInteger shuffle = new AtomicInteger();
        IslandItem item = new IslandItem("media:scaled");
        item.isMedia = true;
        item.kind = IslandItem.Kind.MEDIA;
        item.title = "Song";
        item.mediaCustom.add(action("Favorite", 48, 24, favorite::incrementAndGet));
        item.mediaCustom.add(action("Shuffle", 24, 48, shuffle::incrementAndGet));
        MediaPlayerBinding binding = new MediaPlayerBinding(new View(app), new Object());
        int width = 360;
        int naturalHeight = binding.cardHeight(item, width);
        View player = new View(app);
        player.layout(0, 0, width, Math.round(naturalHeight * 0.75f));
        Bitmap rendered = Bitmap.createBitmap(width, player.getHeight(), Bitmap.Config.ARGB_8888);
        binding.draw(player, new Canvas(rendered), item);
        float scale = player.getHeight() / (float) naturalHeight;
        float offsetX = width * (1 - scale) / 2;
        MediaBody body = new MediaBody(new IslandView(app, IslandHost.NONE), item, width);
        for (int i = 0; i < item.mediaCustom.size(); i++) {
            Btn target = find(body, item.mediaCustom.get(i).runnable);
            assertNotNull(target);
            Rect ink = new Rect(width, player.getHeight(), 0, 0);
            for (int y = (int) (target.r.top * scale); y < target.r.bottom * scale; y++) {
                for (int x = (int) (offsetX + target.r.left * scale); x < offsetX + target.r.right * scale; x++) {
                    int pixel = rendered.getPixel(x, y);
                    if (Color.alpha(pixel) > 200 && Color.red(pixel) > 230 && Color.green(pixel) > 230 && Color.blue(pixel) > 230) {
                        ink.left = Math.min(ink.left, x);
                        ink.top = Math.min(ink.top, y);
                        ink.right = Math.max(ink.right, x + 1);
                        ink.bottom = Math.max(ink.bottom, y + 1);
                    }
                }
            }
            assertTrue("custom icon must be visible", ink.width() > 0 && ink.height() > 0);
            assertEquals(i == 0 ? 2 : 0.5, ink.width() / (float) ink.height(), 0.25);
            assertTrue(Math.max(ink.width(), ink.height()) <= 24 * scale + 1);
            // Tap near the target's edge, outside the smaller painted icon.
            float px = offsetX + (target.r.left + 1) * scale;
            float py = target.r.centerY() * scale;
            long now = SystemClock.uptimeMillis();
            MotionEvent down = MotionEvent.obtain(now, now, MotionEvent.ACTION_DOWN, px, py, 0);
            MotionEvent up = MotionEvent.obtain(now, now + 1, MotionEvent.ACTION_UP, px, py, 0);
            try {
                assertTrue(binding.touch(player, down, item));
                assertTrue(binding.touch(player, up, item));
            } finally {
                down.recycle();
                up.recycle();
            }
        }
        assertEquals(1, favorite.get());
        assertEquals(1, shuffle.get());
    }
}
