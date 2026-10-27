package dev.android.dynamicisland.island.source;

import dev.android.dynamicisland.testutil.RenderCapture;

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
    static {
        // icons play as animations; draw their finished frame so renders do not depend on the clock
        dev.android.dynamicisland.island.graphics.GlyphIcon.setPlaybackFrozen(true);
    }

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
    public void noCardWhileOff() {
        TorchSource s = source(5, 3, false);
        List<IslandItem> out = new ArrayList<>();
        s.collect(out);
        assertTrue(out.isEmpty());
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
        RenderCapture.write(bmp, new File(dir, name + ".png"));
    }
}
