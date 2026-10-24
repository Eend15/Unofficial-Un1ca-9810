package dev.android.dynamicisland.island.source;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import android.app.AppOpsManager;
import android.app.Application;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Looper;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import java.io.File;
import java.io.FileOutputStream;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.shadows.ShadowSystemClock;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class PrivacySourceTest {
    private PrivacySource source() {
        Application app = RuntimeEnvironment.getApplication();
        return new PrivacySource(app, new Handler(Looper.getMainLooper()), () -> { });
    }

    @Test
    public void cameraUseShowsAnIslandAndGoesAwayAfterTheGrace() throws Exception {
        PrivacySource s = source();
        s.record(AppOpsManager.OPSTR_CAMERA, 10123, "com.example.cam", true);
        List<IslandItem> out = new ArrayList<>();
        s.collect(out, null);
        assertEquals(1, out.size());
        assertEquals("Camera in use", out.get(0).title.toString());
        assertEquals(IslandItem.Kind.EVENT, out.get(0).kind);

        // microphone from a second app joins the same island
        s.record(AppOpsManager.OPSTR_RECORD_AUDIO, 10124, "com.example.rec", true);
        out.clear();
        s.collect(out, null);
        assertEquals("Camera & microphone in use", out.get(0).title.toString());
        render("privacy_both", out.get(0));

        s.record(AppOpsManager.OPSTR_CAMERA, 10123, "com.example.cam", false);
        s.record(AppOpsManager.OPSTR_RECORD_AUDIO, 10124, "com.example.rec", false);
        out.clear();
        s.collect(out, null);
        assertEquals(1, out.size()); // still inside the grace period
        ShadowSystemClock.advanceBy(Duration.ofSeconds(2));
        out.clear();
        s.collect(out, null);
        assertTrue(out.isEmpty());
    }

    @Test
    public void ignoresSystemUidsForegroundAppAndLocationByDefault() {
        PrivacySource s = source();
        List<IslandItem> out = new ArrayList<>();
        s.record(AppOpsManager.OPSTR_CAMERA, 1000, "com.android.camera", true);          // system uid
        s.record(AppOpsManager.OPSTR_RECORD_AUDIO, 10200, "com.android.phone", true);   // ignored package
        s.record(AppOpsManager.OPSTR_FINE_LOCATION, 10300, "com.example.maps", true);   // location off by default
        s.collect(out, null);
        assertTrue(out.isEmpty());

        s.record(AppOpsManager.OPSTR_CAMERA, 10400, "com.example.video", true);
        s.collect(out, "com.example.video");                                           // it is the app on screen
        assertTrue(out.isEmpty());
        s.collect(out, "com.example.other");
        assertEquals(1, out.size());
    }

    private void render(String name, IslandItem item) throws Exception {
        Application app = RuntimeEnvironment.getApplication();
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
