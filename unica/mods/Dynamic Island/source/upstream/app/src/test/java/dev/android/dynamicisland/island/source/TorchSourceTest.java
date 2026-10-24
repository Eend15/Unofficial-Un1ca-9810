package dev.android.dynamicisland.island.source;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import android.app.Application;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Looper;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** The flashlight card: brightness levels from the camera, a stepped slider and a turn-off button. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class TorchSourceTest {
    private final Application app = RuntimeEnvironment.getApplication();

    private TorchSource source(int levels, int level, boolean on) {
        TorchSource s = new TorchSource(app, new Handler(Looper.getMainLooper()), () -> { });
        s.configure("0", levels, level, on);
        return s;
    }

    @Test
    public void cardShowsLevelAndSlider() throws Exception {
        TorchSource s = source(5, 3, true);
        List<IslandItem> out = new ArrayList<>();
        s.collect(out);
        assertEquals(1, out.size());
        IslandItem it = out.get(0);
        assertEquals(0.5f, it.sliderValue, 0.001f);
        assertEquals(5, it.sliderSteps);
        assertEquals("60%", it.trailingText.toString());
        assertNotNull(it.sliderChange);
        assertEquals(1, it.actions.size());
        render("torch_card", it);
    }

    @Test
    public void recognisesTheStockFlashlightNotification() {
        assertTrue(TorchSource.isStockNotification("0|com.android.systemui|4660|Flashlight|10161"));
        org.junit.Assert.assertFalse(TorchSource.isStockNotification("0|com.android.systemui|1234|Other|10161"));
        org.junit.Assert.assertFalse(TorchSource.isStockNotification("0|com.example|4660|Flashlight|10161"));
        org.junit.Assert.assertFalse(TorchSource.isStockNotification(null));
    }

    @Test
    public void cardReplacesTheStockNotificationOnlyWhileOn() {
        assertTrue(source(5, 3, true).replacesStockNotification());
        org.junit.Assert.assertFalse(source(5, 3, false).replacesStockNotification());
    }

    @Test
    public void noCardWhileOff() {
        TorchSource s = source(5, 3, false);
        List<IslandItem> out = new ArrayList<>();
        s.collect(out);
        assertTrue(out.isEmpty());
    }

    @Test
    public void lowestAndHighestLevel() throws Exception {
        List<IslandItem> out = new ArrayList<>();
        source(5, 1, true).collect(out);
        source(5, 5, true).collect(out);
        assertEquals(0.0f, out.get(0).sliderValue, 0.001f);
        assertEquals(1.0f, out.get(1).sliderValue, 0.001f);
        render("torch_card_low", out.get(0));
        render("torch_card_full", out.get(1));
    }

    private void render(String name, IslandItem item) throws Exception {
        IslandView view = new IslandView(app, null);
        float w = 360f * app.getResources().getDisplayMetrics().density;
        float h = view.shadeCardHeight(item, w);
        Bitmap bmp = Bitmap.createBitmap(Math.round(w), Math.round(h), Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(bmp);
        c.drawColor(0xFF1B1B1F);
        view.drawShadeCard(c, item, w);
        File dir = new File("build/render");
        dir.mkdirs();
        try (FileOutputStream out = new FileOutputStream(new File(dir, name + ".png"))) {
            bmp.compress(Bitmap.CompressFormat.PNG, 100, out);
        }
    }
}
