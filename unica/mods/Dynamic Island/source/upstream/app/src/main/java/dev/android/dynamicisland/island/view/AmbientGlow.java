package dev.android.dynamicisland.island.view;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;

/** A soft outer halo. One small software mask is reused as three bitmap slices on both GPU and software canvases. */
public final class AmbientGlow {
    private final float density;
    private final Paint tint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
    private final Rect source = new Rect();
    private final RectF destination = new RectF();
    private final Path cutout = new Path();
    private Bitmap mask;
    private int cap, pad, bodyHeight;
    private int colour;
    private final Paint flowPaint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.DITHER_FLAG);
    private final Matrix maskMatrix = new Matrix(), flowMatrix = new Matrix();
    private BitmapShader maskShader;
    private LinearGradient gradient;
    private int first, middle, last;

    public AmbientGlow(float density) { this.density = Math.max(1, density); }

    private void prepare() {
        if (mask != null) return;
        bodyHeight = Math.round(30 * density);
        pad = Math.round(20 * density);
        cap = pad + bodyHeight / 2;
        mask = Bitmap.createBitmap(cap * 2 + 2, bodyHeight + pad * 2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(mask);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        RectF pill = new RectF(pad, pad, mask.getWidth() - pad, pad + bodyHeight);
        float[] radii = {12, 5, 2};
        int[] opacity = {230, 160, 90};
        for (int i = 0; i < radii.length; i++) {
            paint.setColor(Color.WHITE);
            paint.setAlpha(opacity[i]);
            paint.setMaskFilter(new BlurMaskFilter(radii[i] * density, BlurMaskFilter.Blur.NORMAL));
            canvas.drawRoundRect(pill, bodyHeight / 2f, bodyHeight / 2f, paint);
        }
        // The reference has a brighter upper edge and a quieter lower falloff. Bake that balance once.
        int width = mask.getWidth(), height = mask.getHeight();
        int[] pixels = new int[width * height];
        mask.getPixels(pixels, 0, width, 0, 0, width, height);
        for (int y = 0; y < height; y++) {
            float vertical = Math.max(0, Math.min(1, (y - pad) / (float) bodyHeight));
            float gain = 1.35f - .75f * vertical;
            for (int x = 0; x < width; x++) {
                int index = y * width + x;
                int alpha = Math.min(255, Math.round(Color.alpha(pixels[index]) * gain));
                pixels[index] = (alpha << 24) | 0x00FFFFFF;
            }
        }
        mask.setPixels(pixels, 0, width, 0, 0, width, height);
        maskShader = new BitmapShader(mask, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
        maskShader.setFilterMode(BitmapShader.FILTER_MODE_LINEAR);
    }

    /** Draws outside the body only, so a fading/folding body can never become coloured or grey inside. */
    public void draw(Canvas canvas, RectF body, int colour, float alpha, int strength) {
        if (body.isEmpty() || alpha <= .001f || strength <= 0) return;
        prepare();
        if (this.colour != colour || tint.getColorFilter() == null) {
            this.colour = colour;
            tint.setColorFilter(new PorterDuffColorFilter(colour | 0xFF000000, PorterDuff.Mode.SRC_IN));
        }
        drawMask(canvas, body, alpha, strength, 1, false);
    }

    /** A continuous close-colour field multiplied by the same cached halo mask; no full-size blur. */
    public void draw(Canvas canvas, RectF body, GlowMotion motion, float alpha, int strength) {
        if (body.isEmpty() || alpha <= .001f || strength <= 0) return;
        prepare();
        int a = motion.colour(0), b = motion.colour(1), c = motion.colour(2);
        if (gradient == null || a != first || b != middle || c != last) {
            first = a; middle = b; last = c;
            gradient = new LinearGradient(0, 0, 1, 0, new int[]{a, b, c, b, a}, null, Shader.TileMode.REPEAT);
            flowPaint.setShader(new ComposeShader(gradient, maskShader, PorterDuff.Mode.DST_IN));
        }
        float period = Math.max(1, body.width() * 1.35f);
        flowMatrix.setScale(period, 1);
        flowMatrix.postTranslate(body.left - period * motion.phase(), 0);
        gradient.setLocalMatrix(flowMatrix);
        drawMask(canvas, body, alpha * motion.opacity(), strength, motion.spread(), true);
    }

    private void drawMask(Canvas canvas, RectF body, float alpha, int strength, float spread, boolean flow) {
        // Perceptual intensity: the reference is a visible diffuse halo, not just a brighter one-pixel rim.
        float intensity = (float) Math.sqrt(Math.min(100, strength) / 100f);
        Paint paint = flow ? flowPaint : tint;
        paint.setAlpha(Math.round(255 * Math.min(1, Math.max(0, alpha)) * intensity));
        float scale = body.height() / bodyHeight;
        float extra = pad * scale * spread;
        float left = body.left - extra, right = body.right + extra;
        float top = body.top - extra, bottom = body.bottom + extra;
        float side = Math.min((right - left) / 2, extra + body.height() / 2);
        int save = canvas.save();
        cutout.reset();
        cutout.addRoundRect(body, body.height() / 2, body.height() / 2, Path.Direction.CW);
        canvas.clipOutPath(cutout);
        slice(canvas, 0, cap, left, top, left + side, bottom, flow);
        if (right - left > side * 2) slice(canvas, cap, cap + 2, left + side, top, right - side, bottom, flow);
        slice(canvas, cap + 2, mask.getWidth(), right - side, top, right, bottom, flow);
        canvas.restoreToCount(save);
    }

    private void slice(Canvas canvas, int from, int to, float left, float top, float right, float bottom, boolean flow) {
        source.set(from, 0, to, mask.getHeight());
        destination.set(left, top, right, bottom);
        if (flow) {
            float sx = (right - left) / (to - from);
            maskMatrix.setScale(sx, (bottom - top) / mask.getHeight());
            maskMatrix.postTranslate(left - from * sx, top);
            maskShader.setLocalMatrix(maskMatrix);
            canvas.drawRect(destination, flowPaint);
        } else canvas.drawBitmap(mask, source, destination, tint);
    }
}
