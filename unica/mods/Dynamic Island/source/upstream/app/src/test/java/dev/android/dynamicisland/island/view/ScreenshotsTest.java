package dev.android.dynamicisland.island.view;

import static org.junit.Assert.assertTrue;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.MotionEvent;
import dev.android.dynamicisland.island.model.IslandItem;
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

/**
 * Draws the island on a mock phone (wallpaper, status bar, camera hole, app icons made of plain shapes) and writes the
 * pictures used in the README to {@code build/screenshots/}. They come from the same drawing code as on a device, not
 * from a device.
 */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "w360dp-h780dp-xxhdpi")
public class ScreenshotsTest {
    private static final int W = 1080;
    private static final int H = 2340;
    private static final int BEZEL = 34;
    private static final float HOLE_Y = 72f;
    private static final float HOLE_D = 84f;

    @Test
    public void writeScreenshots() throws Exception {
        File dir = new File("build/screenshots");
        dir.mkdirs();
        for (boolean korean : new boolean[] {false, true}) {
            String suffix = korean ? "_ko" : "";
            shoot(dir, "pill" + suffix, korean, false, "taxi");
            shoot(dir, "live" + suffix, korean, true, "taxi");
            shoot(dir, "call" + suffix, korean, true, "call");
            shoot(dir, "music" + suffix, korean, true, "media");
            shoot(dir, "stack" + suffix, korean, true, "taxi", "media");
        }
        assertTrue(new File(dir, "live.png").isFile());
    }

    private void shoot(File dir, String name, boolean ko, boolean expand, String... kinds) throws Exception {
        Application app = RuntimeEnvironment.getApplication();
        IslandView view = new IslandView(app, IslandHost.NONE);
        view.setGeometry(W, W / 2f, HOLE_Y, HOLE_D, false);
        view.setSuppressed(false);
        view.layout(0, 0, W, H);
        List<IslandItem> items = new ArrayList<>();
        for (String kind : kinds) {
            items.add(item(app, kind, ko));
        }
        Bitmap screen = Bitmap.createBitmap(W, H, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(screen);
        long nanos = SystemClock.uptimeMillis() * 1_000_000L;
        int last = expand ? 230 : 110;
        for (int frame = 0; frame <= last; frame++) {
            if (frame == 5) {
                view.setItems(items, 0, new ArrayList<>());
            }
            if (expand && frame == 70) {
                long t = SystemClock.uptimeMillis();
                view.dispatchTouchEvent(MotionEvent.obtain(t, t, MotionEvent.ACTION_DOWN, W / 2f, HOLE_Y, 0));
                view.dispatchTouchEvent(MotionEvent.obtain(t, t + 40, MotionEvent.ACTION_UP, W / 2f, HOLE_Y, 0));
            }
            ShadowSystemClock.advanceBy(Duration.ofMillis(16));
            nanos += 16_000_000L;
            view.doFrame(nanos);
        }
        drawWallpaper(canvas);
        drawStatusBar(canvas, ko);
        for (Card card : new ArrayList<>(view.cards())) {
            view.drawCard(canvas, card, SystemClock.uptimeMillis());
        }
        view.draw(canvas);
        drawHole(canvas);
        writePhone(dir, name, screen);
    }

    // ---------------------------------------------------------------- items

    private static IslandItem item(Context ctx, String kind, boolean ko) {
        switch (kind) {
            case "call":
                return call(ctx, ko);
            case "media":
                return media(ctx, ko);
            default:
                return taxi(ctx, ko);
        }
    }

    private static IslandItem taxi(Context ctx, boolean ko) {
        Drawable icon = new BitmapDrawable(ctx.getResources(), taxiIcon());
        IslandItem it = new IslandItem("oa:taxi");
        it.kind = IslandItem.Kind.LIVE;
        it.packageName = "com.example.taxi";
        it.appName = ko ? "택시" : "Taxi";
        it.title = ko ? "기사님이 곧 도착해요" : "Your driver is arriving";
        it.subtitle = ko ? "서울 12가 3456 · 3분" : "Seoul 12A 3456 · 3 min";
        it.accent = 0xFFFFC107;
        it.icon = icon;
        it.iconIsImage = true;
        it.cardImage = icon;
        it.cardImageIsImage = true;
        it.progress = 0.62f;
        it.trailing = IslandItem.Trailing.PROGRESS_RING;
        it.actionType = 1;
        it.actions.add(new IslandItem.Action(ko ? "기사님께 전화" : "Call driver", null, null, null, false));
        it.actions.add(new IslandItem.Action(ko ? "호출 취소" : "Cancel ride", null, null, null, true));
        return it;
    }

    private static IslandItem call(Context ctx, boolean ko) {
        Drawable avatar = new BitmapDrawable(ctx.getResources(), avatar());
        IslandItem it = new IslandItem("call");
        it.kind = IslandItem.Kind.CALL;
        it.packageName = "com.samsung.android.incallui";
        it.appName = ko ? "전화" : "Phone";
        it.title = ko ? "홍길동" : "Alex Kim";
        it.accent = 0xFF30D158;
        it.icon = avatar;
        it.iconIsImage = true;
        it.cardImage = avatar;
        it.cardImageIsImage = true;
        it.cardImageRound = true;
        it.trailing = IslandItem.Trailing.CHRONOMETER;
        it.chronoBase = System.currentTimeMillis() - 62_000L;
        it.chronoPosition = 2;
        it.actionType = 0;
        IslandItem.Action speaker = new IslandItem.Action(ko ? "스피커" : "Speaker", null, null, null, false);
        speaker.glyph = 10;
        IslandItem.Action end = new IslandItem.Action(ko ? "종료" : "End", null, null, null, true);
        end.glyph = 9;
        it.actions.add(speaker);
        it.actions.add(end);
        return it;
    }

    private static IslandItem media(Context ctx, boolean ko) {
        IslandItem it = new IslandItem("media:music");
        it.kind = IslandItem.Kind.MEDIA;
        it.isMedia = true;
        it.playing = true;
        it.packageName = "com.example.music";
        it.appName = ko ? "음악" : "Music";
        it.title = "Midnight City";
        it.subtitle = "M83";
        it.art = albumArt();
        it.appIcon = new BitmapDrawable(ctx.getResources(), musicIcon());
        it.icon = it.appIcon;
        it.iconIsImage = true;
        it.accent = 0xFFE5558C;
        it.trailing = IslandItem.Trailing.WAVEFORM;
        it.mediaDuration = 243_000L;
        it.mediaPosition = 96_000L;
        it.mediaPositionUpdateTime = SystemClock.elapsedRealtime();
        it.mediaOutput = "Galaxy Buds3 Pro";
        it.mediaOutputBattery = 82;
        it.mediaPlayPause = () -> { };
        it.mediaNext = () -> { };
        it.mediaPrev = () -> { };
        return it;
    }

    // ---------------------------------------------------------------- mock phone

    private static void drawWallpaper(Canvas c) {
        Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        p.setShader(new LinearGradient(0, 0, W * 0.3f, H, new int[] {0xFF14213D, 0xFF3A2A6B, 0xFF1E5F74}, new float[] {0f, 0.55f, 1f}, Shader.TileMode.CLAMP));
        c.drawRect(0, 0, W, H, p);
        int[][] blobs = {{820, 520, 520, 0x66FF7EB3}, {240, 1320, 640, 0x554FC3F7}, {760, 1900, 560, 0x44FFB74D}};
        for (int[] b : blobs) {
            Paint glow = new Paint(Paint.ANTI_ALIAS_FLAG);
            glow.setShader(new RadialGradient(b[0], b[1], b[2], b[3], 0x00000000, Shader.TileMode.CLAMP));
            c.drawCircle(b[0], b[1], b[2], glow);
        }
    }

    private static void drawStatusBar(Canvas c, boolean ko) {
        Paint text = new Paint(Paint.ANTI_ALIAS_FLAG);
        text.setColor(Color.WHITE);
        text.setTextSize(44f);
        text.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        c.drawText(ko ? "오후 12:30" : "12:30", 78f, HOLE_Y + 16f, text);

        Paint ink = new Paint(Paint.ANTI_ALIAS_FLAG);
        ink.setColor(Color.WHITE);
        float right = W - 70f;
        // battery
        float bx = right - 84f;
        float by = HOLE_Y - 20f;
        ink.setStyle(Paint.Style.STROKE);
        ink.setStrokeWidth(4f);
        c.drawRoundRect(new RectF(bx, by, bx + 70f, by + 38f), 10f, 10f, ink);
        ink.setStyle(Paint.Style.FILL);
        c.drawRoundRect(new RectF(bx + 7f, by + 7f, bx + 50f, by + 31f), 5f, 5f, ink);
        c.drawRect(bx + 73f, by + 12f, bx + 78f, by + 26f, ink);
        // signal bars
        float sx = bx - 100f;
        for (int i = 0; i < 4; i++) {
            float h = 12f + i * 8f;
            c.drawRoundRect(new RectF(sx + i * 16f, by + 38f - h, sx + i * 16f + 10f, by + 38f), 3f, 3f, ink);
        }
        // wifi
        float wx = sx - 70f;
        float wy = by + 38f;
        Paint arc = new Paint(Paint.ANTI_ALIAS_FLAG);
        arc.setColor(Color.WHITE);
        arc.setStyle(Paint.Style.STROKE);
        arc.setStrokeWidth(5f);
        arc.setStrokeCap(Paint.Cap.ROUND);
        for (int i = 1; i <= 3; i++) {
            float r = i * 13f;
            c.drawArc(new RectF(wx - r, wy - r, wx + r, wy + r), 225f, 90f, false, arc);
        }
        c.drawCircle(wx, wy - 2f, 4f, ink);
    }

    private static void drawHole(Canvas c) {
        Paint hole = new Paint(Paint.ANTI_ALIAS_FLAG);
        hole.setColor(0xFF05060A);
        c.drawCircle(W / 2f, HOLE_Y, HOLE_D / 2f - 14f, hole);
        Paint lens = new Paint(Paint.ANTI_ALIAS_FLAG);
        lens.setShader(new RadialGradient(W / 2f - 4f, HOLE_Y - 4f, 14f, 0x66233A6B, 0x00000000, Shader.TileMode.CLAMP));
        c.drawCircle(W / 2f, HOLE_Y, 16f, lens);
    }

    private static void writePhone(File dir, String name, Bitmap screen) throws Exception {
        int w = W + 2 * BEZEL;
        int h = H + 2 * BEZEL;
        Bitmap out = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(out);
        Paint body = new Paint(Paint.ANTI_ALIAS_FLAG);
        body.setColor(0xFF1A1B1F);
        c.drawRoundRect(new RectF(0, 0, w, h), 150f, 150f, body);
        Paint edge = new Paint(Paint.ANTI_ALIAS_FLAG);
        edge.setStyle(Paint.Style.STROKE);
        edge.setStrokeWidth(5f);
        edge.setColor(0xFF45474F);
        c.drawRoundRect(new RectF(3, 3, w - 3, h - 3), 148f, 148f, edge);
        Path clip = new Path();
        clip.addRoundRect(new RectF(BEZEL, BEZEL, BEZEL + W, BEZEL + H), 118f, 118f, Path.Direction.CW);
        c.save();
        c.clipPath(clip);
        c.drawBitmap(screen, BEZEL, BEZEL, null);
        c.restore();
        try (FileOutputStream f = new FileOutputStream(new File(dir, name + ".png"))) {
            out.compress(Bitmap.CompressFormat.PNG, 100, f);
        }
    }

    // ---------------------------------------------------------------- icons made of shapes

    private static Bitmap squircle(int fromColor, int toColor) {
        Bitmap b = Bitmap.createBitmap(192, 192, Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(b);
        Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        p.setShader(new LinearGradient(0, 0, 192, 192, fromColor, toColor, Shader.TileMode.CLAMP));
        c.drawRoundRect(new RectF(0, 0, 192, 192), 52f, 52f, p);
        return b;
    }

    private static Bitmap taxiIcon() {
        Bitmap b = squircle(0xFFFFD54F, 0xFFFFA000);
        Canvas c = new Canvas(b);
        Paint ink = new Paint(Paint.ANTI_ALIAS_FLAG);
        ink.setColor(0xFF1B1B1B);
        c.drawRoundRect(new RectF(34, 92, 158, 132), 16f, 16f, ink);
        Path roof = new Path();
        roof.moveTo(58, 92);
        roof.lineTo(74, 62);
        roof.lineTo(118, 62);
        roof.lineTo(134, 92);
        roof.close();
        c.drawPath(roof, ink);
        c.drawRect(86, 46, 106, 60, ink);
        Paint window = new Paint(Paint.ANTI_ALIAS_FLAG);
        window.setColor(0xFFFFD54F);
        Path glass = new Path();
        glass.moveTo(68, 90);
        glass.lineTo(80, 68);
        glass.lineTo(112, 68);
        glass.lineTo(124, 90);
        glass.close();
        c.drawPath(glass, window);
        c.drawCircle(64, 134, 15, ink);
        c.drawCircle(128, 134, 15, ink);
        Paint hub = new Paint(Paint.ANTI_ALIAS_FLAG);
        hub.setColor(0xFFFFD54F);
        c.drawCircle(64, 134, 6, hub);
        c.drawCircle(128, 134, 6, hub);
        return b;
    }

    private static Bitmap musicIcon() {
        Bitmap b = squircle(0xFFFF6FA5, 0xFF7C4DFF);
        Canvas c = new Canvas(b);
        Paint ink = new Paint(Paint.ANTI_ALIAS_FLAG);
        ink.setColor(Color.WHITE);
        c.drawOval(new RectF(52, 112, 98, 148), ink);
        c.drawRect(88, 52, 100, 130, ink);
        Path flag = new Path();
        flag.moveTo(100, 52);
        flag.cubicTo(128, 60, 142, 76, 140, 100);
        flag.cubicTo(128, 86, 116, 84, 100, 84);
        flag.close();
        c.drawPath(flag, ink);
        return b;
    }

    private static Bitmap avatar() {
        Bitmap b = Bitmap.createBitmap(192, 192, Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(b);
        Paint bg = new Paint(Paint.ANTI_ALIAS_FLAG);
        bg.setShader(new LinearGradient(0, 0, 192, 192, 0xFF8E6CF2, 0xFF4B3AA8, Shader.TileMode.CLAMP));
        c.drawRect(0, 0, 192, 192, bg);
        Paint ink = new Paint(Paint.ANTI_ALIAS_FLAG);
        ink.setColor(0xF2FFFFFF);
        c.drawCircle(96, 74, 32, ink);
        c.drawOval(new RectF(36, 118, 156, 230), ink);
        return b;
    }

    private static Bitmap albumArt() {
        Bitmap b = Bitmap.createBitmap(600, 600, Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(b);
        Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        p.setShader(new LinearGradient(0, 0, 600, 600, new int[] {0xFF1B1464, 0xFFD6336C, 0xFFFF9F43}, null, Shader.TileMode.CLAMP));
        c.drawRect(0, 0, 600, 600, p);
        Paint ring = new Paint(Paint.ANTI_ALIAS_FLAG);
        ring.setStyle(Paint.Style.STROKE);
        ring.setColor(0x55FFFFFF);
        ring.setStrokeWidth(10f);
        for (int r = 90; r <= 330; r += 80) {
            c.drawCircle(300, 330, r, ring);
        }
        Paint sun = new Paint(Paint.ANTI_ALIAS_FLAG);
        sun.setColor(0xEEFFE0A3);
        c.drawCircle(300, 330, 54, sun);
        return b;
    }
}
