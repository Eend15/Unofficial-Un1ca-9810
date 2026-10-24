package dev.android.dynamicisland.island.detect;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

/**
 * Notification large icons are sometimes a white glyph on transparency, meant for a tinted slot. Shown
 * as an avatar that is an unreadable white shape, so such an icon is swapped for the app icon or put on
 * a dark disc (same idea as LiveBridge's readable-large-icon step).
 */
public final class IconContrast {
    private IconContrast() {
    }

    private static final int SAMPLE = 24;
    private static final int RENDER = 96;
    private static final float NEARLY_WHITE_RATIO = 0.86f;
    private static final float LIGHT_LUMINANCE = 0.9f;
    private static final float OPAQUE_RATIO = 0.72f;
    private static final int DISC = Color.rgb(38, 48, 47);

    /** Colour statistics of a sampled icon. */
    public static final class Stats {
        /** Almost every visible pixel is white: a glyph meant to be tinted. */
        final boolean nearlyWhite;
        /** Share of the sampled pixels that are not transparent. */
        final float visibleRatio;

        Stats(boolean nearlyWhite, float visibleRatio) {
            this.nearlyWhite = nearlyWhite;
            this.visibleRatio = visibleRatio;
        }
    }

    /** Samples a grid of at most {@value #SAMPLE} x {@value #SAMPLE} pixels. */
    static Stats analyze(Bitmap b) {
        if (b == null || b.getWidth() <= 0 || b.getHeight() <= 0) {
            return new Stats(false, 0f);
        }
        int cols = Math.min(b.getWidth(), SAMPLE);
        int rows = Math.min(b.getHeight(), SAMPLE);
        int visible = 0;
        int light = 0;
        for (int r = 0; r < rows; r++) {
            int y = clamp((int) ((r + 0.5f) * b.getHeight() / rows), b.getHeight() - 1);
            for (int c = 0; c < cols; c++) {
                int x = clamp((int) ((c + 0.5f) * b.getWidth() / cols), b.getWidth() - 1);
                int color = b.getPixel(x, y);
                if (Color.alpha(color) < 40) {
                    continue;
                }
                visible++;
                float lum = (Color.red(color) * 0.2126f + Color.green(color) * 0.7152f + Color.blue(color) * 0.0722f) / 255f;
                if (lum >= LIGHT_LUMINANCE) {
                    light++;
                }
            }
        }
        float visibleRatio = visible / (float) (rows * cols);
        float lightRatio = visible == 0 ? 0f : light / (float) visible;
        return new Stats(visible > 0 && lightRatio >= NEARLY_WHITE_RATIO, visibleRatio);
    }

    /**
     * @param large the notification's large icon, may be null
     * @param app   the app's launcher icon, may be null
     * @return something an avatar slot can show: the large icon when it is readable, else the app icon,
     * else the glyph on a dark disc
     */
    public static Drawable readable(Context ctx, Drawable large, Drawable app) {
        if (large == null) {
            return app;
        }
        Bitmap bitmap = render(large);
        if (bitmap == null) {
            return large;
        }
        Stats stats = analyze(bitmap);
        if (!stats.nearlyWhite) {
            return large;
        }
        if (app != null) {
            Bitmap appBitmap = render(app);
            if (appBitmap != null && !analyze(appBitmap).nearlyWhite) {
                return app;
            }
        }
        if (stats.visibleRatio < OPAQUE_RATIO) {
            return new BitmapDrawable(ctx.getResources(), onDisc(bitmap));
        }
        return large; // a white picture, not a glyph: it is what the app wants shown
    }

    /** The glyph centred on a dark round background. */
    private static Bitmap onDisc(Bitmap glyph) {
        Bitmap out = Bitmap.createBitmap(RENDER, RENDER, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(out);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        paint.setColor(DISC);
        canvas.drawOval(new RectF(0, 0, RENDER, RENDER), paint);
        float inset = RENDER * 0.12f;
        canvas.drawBitmap(glyph, null, new RectF(inset, inset, RENDER - inset, RENDER - inset),
                new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG));
        return out;
    }

    private static Bitmap render(Drawable d) {
        try {
            Drawable copy = d.getConstantState() != null ? d.getConstantState().newDrawable().mutate() : d;
            Bitmap b = Bitmap.createBitmap(RENDER, RENDER, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(b);
            copy.setBounds(0, 0, RENDER, RENDER);
            copy.draw(canvas);
            return b;
        } catch (Throwable t) {
            return null;
        }
    }

    private static int clamp(int v, int max) {
        return Math.max(0, Math.min(max, v));
    }
}
