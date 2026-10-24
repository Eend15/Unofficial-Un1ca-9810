package dev.android.dynamicisland.island.source;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import android.app.Application;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import java.io.File;
import java.io.FileOutputStream;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class MediaOutputTest {
    private final Application app = RuntimeEnvironment.getApplication();

    @Test
    public void outputIsCachedUntilTheDevicesChange() {
        int[] probes = {0};
        OutputSource s = new OutputSource(app, new Handler(Looper.getMainLooper()), () -> { }, () -> {
            probes[0]++;
            return new OutputSource.Output("Galaxy Buds3 Pro", GlyphIcon.Kind.HEADPHONES, 82);
        });
        assertEquals("Galaxy Buds3 Pro", s.current().name);
        s.current();
        s.current();
        assertEquals(1, probes[0]);
    }

    @Test
    public void builtInSpeakerHasNoOutputLine() {
        OutputSource s = new OutputSource(app, new Handler(Looper.getMainLooper()), () -> { }, () -> null);
        assertNull(s.current());
    }

    @Test
    public void renderMusicCardWithOutputDevice() throws Exception {
        IslandItem it = new IslandItem("media");
        it.isMedia = true;
        it.kind = IslandItem.Kind.MEDIA;
        it.playing = true;
        it.trailing = IslandItem.Trailing.WAVEFORM;
        it.title = "Midnight City";
        it.subtitle = "M83";
        it.accent = 0xFFFF6B6B;
        Bitmap b = Bitmap.createBitmap(120, 120, Bitmap.Config.ARGB_8888);
        new Canvas(b).drawColor(0xFF6A1B9A);
        Drawable art = new BitmapDrawable(app.getResources(), b);
        it.art = b;
        it.icon = art;
        it.cardImage = art;
        it.mediaDuration = 243_000;
        it.mediaPosition = 90_000;
        it.mediaPositionUpdateTime = SystemClock.elapsedRealtime();
        it.mediaOutput = "Galaxy Buds3 Pro";
        it.mediaOutputIcon = GlyphIcon.of(GlyphIcon.Kind.HEADPHONES);
        it.mediaOutputBattery = 82;
        IslandView view = new IslandView(app, null);
        float w = 360f * app.getResources().getDisplayMetrics().density;
        float h = view.shadeCardHeight(it, w);
        Bitmap out = Bitmap.createBitmap(Math.round(w), Math.round(h), Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(out);
        c.drawColor(0xFF1B1B1F);
        view.drawShadeCard(c, it, w);
        File dir = new File("build/render");
        dir.mkdirs();
        try (FileOutputStream fo = new FileOutputStream(new File(dir, "media_output.png"))) {
            out.compress(Bitmap.CompressFormat.PNG, 100, fo);
        }
        assertNotNull(out);
    }
}
