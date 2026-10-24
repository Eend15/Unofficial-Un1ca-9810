package dev.android.dynamicisland.island.view;

import static org.junit.Assert.assertTrue;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import dev.android.dynamicisland.island.model.IslandItem;
import java.io.File;
import java.io.FileOutputStream;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/**
 * Renders every live card variant headlessly: guards the layout/draw code against exceptions and
 * leaves PNGs in build/render for eyeballing.
 */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class CardRenderTest {
    private static final float WIDTH_DP = 360f;

    private final IslandHost host = IslandHost.NONE;

    private static Drawable solid(Context ctx, int color, int w, int h) {
        Bitmap b = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(b);
        c.drawColor(color);
        Paint p = new Paint();
        p.setColor(Color.WHITE);
        p.setStyle(Paint.Style.STROKE);
        p.setStrokeWidth(Math.max(2, Math.min(w, h) / 12f));
        c.drawRect(p.getStrokeWidth(), p.getStrokeWidth(), w - p.getStrokeWidth(), h - p.getStrokeWidth(), p);
        c.drawLine(0, 0, w, h, p);
        return new BitmapDrawable(ctx.getResources(), b);
    }

    private IslandItem base(Context ctx, String key) {
        IslandItem it = new IslandItem(key);
        it.packageName = "com.example";
        it.appName = "Example";
        it.title = "Primary info";
        it.subtitle = "Secondary info goes here";
        it.accent = 0xFF30D158;
        it.icon = solid(ctx, 0xFF2962FF, 64, 64);
        it.iconIsImage = true;
        it.cardImage = it.icon;
        it.cardImageIsImage = true;
        return it;
    }

    private void render(String name, IslandItem item) throws Exception {
        Application app = RuntimeEnvironment.getApplication();
        IslandView view = new IslandView(app, host);
        float density = app.getResources().getDisplayMetrics().density;
        float w = WIDTH_DP * density;
        float h = view.shadeCardHeight(item, w);
        assertTrue(name + " height", h > 0);
        Bitmap bmp = Bitmap.createBitmap(Math.round(w), Math.round(h), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bmp);
        canvas.drawColor(0xFF1B1B1F);
        view.drawShadeCard(canvas, item, w);
        File dir = new File("build/render");
        dir.mkdirs();
        try (FileOutputStream out = new FileOutputStream(new File(dir, name + ".png"))) {
            bmp.compress(Bitmap.CompressFormat.PNG, 100, out);
        }
    }

    @Test
    public void plain() throws Exception {
        Context ctx = RuntimeEnvironment.getApplication();
        IslandItem it = base(ctx, "plain");
        it.progress = 0.4f;
        render("plain_progress", it);
    }

    @Test
    public void chronometerPrimaryAndSecondaryIcon() throws Exception {
        Context ctx = RuntimeEnvironment.getApplication();
        IslandItem it = base(ctx, "chrono1");
        it.chronoBase = System.currentTimeMillis() - 754_000;
        it.chronoPosition = 1;
        it.trailing = IslandItem.Trailing.CHRONOMETER;
        it.secondaryIcon = solid(ctx, 0xFFFF9500, 32, 32);
        it.whenMillis = System.currentTimeMillis();
        render("chrono_primary", it);

        IslandItem sec = base(ctx, "chrono2");
        sec.chronoBase = System.currentTimeMillis() + 300_000;
        sec.chronoCountDown = true;
        sec.chronoPosition = 2;
        sec.trailing = IslandItem.Trailing.CHRONOMETER;
        sec.secondaryIcon = solid(ctx, 0xFFFF9500, 32, 32);
        render("chrono_secondary", sec);
    }

    @Test
    public void descriptionReplacesSecondary() throws Exception {
        Context ctx = RuntimeEnvironment.getApplication();
        IslandItem it = base(ctx, "desc");
        it.description = "A longer accessibility description that wraps over a couple of lines on narrow cards";
        it.detail = "Detail line";
        render("description", it);
    }

    @Test
    public void segmentedProgressWithThumb() throws Exception {
        Context ctx = RuntimeEnvironment.getApplication();
        IslandItem it = base(ctx, "seg");
        it.progress = 0.55f;
        it.progressSegmentColors = new int[]{0xFF34C759, 0xFFFFCC00, 0xFFFF3B30};
        it.progressSegmentStarts = new float[]{0f, 0.5f, 0.8f};
        it.progressThumb = solid(ctx, 0xFFFFFFFF, 48, 48);
        it.profileBadge = solid(ctx, 0xFFFF9500, 24, 24);
        render("segmented", it);
    }

    @Test
    public void indeterminateProgress() throws Exception {
        Context ctx = RuntimeEnvironment.getApplication();
        IslandItem it = base(ctx, "ind");
        it.progressIndeterminate = true;
        render("indeterminate", it);
    }

    @Test
    public void iconButtonsAndTextButtons() throws Exception {
        Context ctx = RuntimeEnvironment.getApplication();
        IslandItem icons = base(ctx, "icons");
        icons.actionType = 0;
        icons.primaryActionIndex = 0;
        icons.actionBgColors = new int[]{0, 0xFF0A84FF, 0};
        for (int i = 0; i < 3; i++) {
            icons.actions.add(new IslandItem.Action("a" + i, solid(ctx, 0xFFFFFFFF, 24, 24), null, null, i == 2));
        }
        render("icon_buttons", icons);

        IslandItem text = base(ctx, "text");
        text.actionType = 1;
        text.actions.add(new IslandItem.Action("Pause", null, null, null, false));
        text.actions.add(new IslandItem.Action("Stop", null, null, null, true));
        render("text_buttons", text);
    }

    @Test
    public void progressStyleCard() throws Exception {
        Context ctx = RuntimeEnvironment.getApplication();
        IslandItem it = base(ctx, "progress");
        it.progressStyle = true;
        it.progress = 0.35f;
        it.cardImage = solid(ctx, 0xFFEF6C00, 120, 80);
        it.actions.add(new IslandItem.Action("Track", null, null, null, false));
        render("progress_style", it);
    }

    @Test
    public void stopwatchRollsHundredths() throws Exception {
        Context ctx = RuntimeEnvironment.getApplication();
        IslandItem it = base(ctx, "stopwatch");
        it.kind = IslandItem.Kind.TIMER;
        it.title = "Stopwatch";
        it.chronoBase = System.currentTimeMillis() - 83_450;
        it.chronoMillis = true;
        it.trailing = IslandItem.Trailing.CHRONOMETER;
        render("stopwatch", it);

        IslandItem live = base(ctx, "stopwatch_live");
        live.chronoBase = System.currentTimeMillis() - 3_661_000;
        live.chronoPosition = 1;
        live.trailing = IslandItem.Trailing.CHRONOMETER;
        render("chrono_hours", live);
    }

    @Test
    public void teams() throws Exception {
        Context ctx = RuntimeEnvironment.getApplication();
        IslandItem it = base(ctx, "teams");
        it.leftImage = solid(ctx, 0xFFE53935, 64, 64);
        it.rightImage = solid(ctx, 0xFF1E88E5, 64, 64);
        it.trailing = IslandItem.Trailing.TEXT;
        it.trailingText = "2-1";
        render("teams", it);
    }

    @Test
    public void nonSquareArtworkIsNotStretched() throws Exception {
        Context ctx = RuntimeEnvironment.getApplication();
        IslandItem it = base(ctx, "media");
        it.isMedia = true;
        it.kind = IslandItem.Kind.MEDIA;
        it.playing = true;
        it.trailing = IslandItem.Trailing.WAVEFORM;
        it.title = "Wide cover";
        it.subtitle = "Artist";
        Drawable wide = solid(ctx, 0xFF6A1B9A, 320, 120);
        it.art = ((BitmapDrawable) wide).getBitmap();
        it.icon = wide;
        it.cardImage = wide;
        it.mediaDuration = 200_000;
        it.mediaPosition = 60_000;
        it.mediaPositionUpdateTime = android.os.SystemClock.elapsedRealtime();
        render("media_wide_art", it);

        IslandItem tall = base(ctx, "media_tall");
        tall.isMedia = true;
        tall.kind = IslandItem.Kind.MEDIA;
        tall.trailing = IslandItem.Trailing.WAVEFORM;
        Drawable portrait = solid(ctx, 0xFF00897B, 100, 300);
        tall.art = ((BitmapDrawable) portrait).getBitmap();
        tall.icon = portrait;
        tall.cardImage = portrait;
        render("media_tall_art", tall);
    }

}
