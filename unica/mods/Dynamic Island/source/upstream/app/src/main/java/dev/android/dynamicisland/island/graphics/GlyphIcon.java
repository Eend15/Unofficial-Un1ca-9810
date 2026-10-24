package dev.android.dynamicisland.island.graphics;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PixelFormat;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/**
 * Small hand-drawn pictograms for the transient event islands (battery, ringer, headphones).
 * They are single-colour so the island can tint them like any other glyph, and they are drawn from
 * code because a System UI process has no access to this module's resources.
 */
public final class GlyphIcon extends Drawable {
    /** Which pictogram to draw. {@code POWER_SAVE} is drawn as a battery with a plus cut out. */
    public enum Kind { BATTERY, BATTERY_CHARGING, BELL, BELL_OFF, VIBRATE, HEADPHONES, CAMERA, MIC, LOCATION, MOON, PLANE, TORCH, HOTSPOT, ROTATE_LOCK, POWER_SAVE, DOWNLOAD, SPEAKER }

    private static final int INTRINSIC_SIZE_PX = 96;

    private final Kind kind;
    /** Battery fill, 0..1; 1 for every other pictogram. */
    private final float level;
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Path path = new Path();
    private final RectF rect = new RectF();
    private int color = 0xFFFFFFFF;
    /** Drawable alpha (0..255), multiplied with the alpha of {@link #color}. */
    private int alpha = 255;

    private GlyphIcon(Kind kind, float level) {
        this.kind = kind;
        this.level = Math.max(0f, Math.min(1f, level));
    }

    public static GlyphIcon battery(float level, boolean charging) {
        return new GlyphIcon(charging ? Kind.BATTERY_CHARGING : Kind.BATTERY, level);
    }

    public static GlyphIcon of(Kind kind) {
        return new GlyphIcon(kind, 1f);
    }

    @Override
    public void setTintList(ColorStateList tint) {
        if (tint != null) {
            color = tint.getDefaultColor();
            invalidateSelf();
        }
    }

    @Override
    public void setTint(int tintColor) {
        color = tintColor;
        invalidateSelf();
    }

    @Override
    public void setAlpha(int newAlpha) {
        alpha = newAlpha;
    }

    @Override
    public void setColorFilter(ColorFilter filter) {
        paint.setColorFilter(filter);
    }

    @Override
    public int getOpacity() {
        return PixelFormat.TRANSLUCENT;
    }

    @Override
    public int getIntrinsicWidth() {
        return INTRINSIC_SIZE_PX;
    }

    @Override
    public int getIntrinsicHeight() {
        return INTRINSIC_SIZE_PX;
    }

    @Override
    public void draw(Canvas c) {
        RectF bounds = new RectF(getBounds());
        if (bounds.isEmpty()) {
            return;
        }
        float s = Math.min(bounds.width(), bounds.height());
        float cx = bounds.centerX();
        float cy = bounds.centerY();
        int effectiveAlpha = Math.round((color >>> 24) * (alpha / 255f));
        paint.setXfermode(null);
        paint.setColor((color & 0x00FFFFFF) | (effectiveAlpha << 24));
        switch (kind) {
            case BATTERY:
            case BATTERY_CHARGING:
            case POWER_SAVE:
                drawBattery(c, cx, cy, s);
                break;
            case BELL:
                drawBell(c, cx, cy, s, false);
                break;
            case BELL_OFF:
                drawBell(c, cx, cy, s, true);
                break;
            case VIBRATE:
                drawVibrate(c, cx, cy, s);
                break;
            case HEADPHONES:
                drawHeadphones(c, cx, cy, s);
                break;
            case CAMERA:
                drawCamera(c, cx, cy, s);
                break;
            case MIC:
                drawMic(c, cx, cy, s);
                break;
            case LOCATION:
                drawLocation(c, cx, cy, s);
                break;
            case MOON:
                drawMoon(c, cx, cy, s);
                break;
            case PLANE:
                drawPlane(c, cx, cy, s);
                break;
            case TORCH:
                drawTorch(c, cx, cy, s);
                break;
            case HOTSPOT:
                drawHotspot(c, cx, cy, s);
                break;
            case ROTATE_LOCK:
                drawRotateLock(c, cx, cy, s);
                break;
            case DOWNLOAD:
                drawDownload(c, cx, cy, s);
                break;
            case SPEAKER:
                drawSpeaker(c, cx, cy, s);
                break;
            default:
                break;
        }
    }

    private void drawBattery(Canvas c, float cx, float cy, float s) {
        float w = s * 0.78f;
        float h = s * 0.42f;
        float stroke = Math.max(1.5f, s * 0.06f);
        int layer = c.saveLayer(cx - s, cy - s, cx + s, cy + s, null);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(stroke);
        rect.set(cx - (w / 2) + (stroke / 2), cy - (h / 2) + (stroke / 2), cx + (w / 2) - (stroke / 2) - (s * 0.06f), cy + (h / 2) - (stroke / 2));
        float r = h * 0.28f;
        c.drawRoundRect(rect, r, r, paint);
        paint.setStyle(Paint.Style.FILL);
        // positive terminal
        rect.set(cx + (w / 2) - (s * 0.06f) + (stroke * 0.4f), cy - (h * 0.17f), cx + (w / 2) + (stroke * 0.2f), cy + (h * 0.17f));
        c.drawRoundRect(rect, stroke / 2, stroke / 2, paint);
        // level
        float pad = stroke * 1.7f;
        float left = cx - (w / 2) + pad;
        float right = cx + (w / 2) - (s * 0.06f) - pad;
        rect.set(left, cy - (h / 2) + pad, left + Math.max(stroke, (right - left) * level), cy + (h / 2) - pad);
        c.drawRoundRect(rect, r * 0.5f, r * 0.5f, paint);
        if (kind == Kind.POWER_SAVE) {
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            float arm = h * 0.3f;
            float t = Math.max(stroke * 0.7f, 1.5f);
            float px = cx - (w * 0.04f);
            rect.set(px - arm, cy - (t / 2), px + arm, cy + (t / 2));
            c.drawRect(rect, paint);
            rect.set(px - (t / 2), cy - arm, px + (t / 2), cy + arm);
            c.drawRect(rect, paint);
            paint.setXfermode(null);
        }
        if (kind == Kind.BATTERY_CHARGING) {
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            float bs = h * 0.9f;
            path.reset();
            float x0 = cx - (w * 0.04f) - (bs / 2);
            float y0 = cy - (bs / 2);
            path.moveTo(x0 + (0.58f * bs), y0 + (0.04f * bs));
            path.lineTo(x0 + (0.2f * bs), y0 + (0.56f * bs));
            path.lineTo(x0 + (0.47f * bs), y0 + (0.56f * bs));
            path.lineTo(x0 + (0.4f * bs), y0 + (0.96f * bs));
            path.lineTo(x0 + (0.8f * bs), y0 + (0.42f * bs));
            path.lineTo(x0 + (0.53f * bs), y0 + (0.42f * bs));
            path.close();
            paint.setStrokeJoin(Paint.Join.ROUND);
            paint.setStyle(Paint.Style.FILL_AND_STROKE);
            paint.setStrokeWidth(stroke * 0.5f);
            c.drawPath(path, paint);
            paint.setXfermode(null);
        }
        c.restoreToCount(layer);
        paint.setStyle(Paint.Style.FILL);
    }

    private void drawBell(Canvas c, float cx, float cy, float s, boolean off) {
        float stroke = Math.max(1.5f, s * 0.07f);
        int layer = c.saveLayer(cx - s, cy - s, cx + s, cy + s, null);
        paint.setStyle(Paint.Style.FILL);
        float top = cy - (s * 0.36f);
        float bottom = cy + (s * 0.24f);
        float half = s * 0.3f;
        path.reset();
        path.moveTo(cx - half, bottom);
        path.cubicTo(cx - half, cy + (s * 0.02f), cx - (half * 0.8f), cy - (s * 0.05f), cx - (half * 0.8f), cy - (s * 0.12f));
        path.cubicTo(cx - (half * 0.8f), top + (s * 0.02f), cx - (half * 0.4f), top, cx, top);
        path.cubicTo(cx + (half * 0.4f), top, cx + (half * 0.8f), top + (s * 0.02f), cx + (half * 0.8f), cy - (s * 0.12f));
        path.cubicTo(cx + (half * 0.8f), cy - (s * 0.05f), cx + half, cy + (s * 0.02f), cx + half, bottom);
        path.close();
        c.drawPath(path, paint);
        rect.set(cx - (half * 1.15f), bottom - (stroke * 0.3f), cx + (half * 1.15f), bottom + (stroke * 0.9f));
        c.drawRoundRect(rect, stroke, stroke, paint);
        c.drawCircle(cx, bottom + (s * 0.1f), s * 0.07f, paint);
        c.drawCircle(cx, top - (s * 0.02f), s * 0.05f, paint);
        if (off) {
            // slash with a transparent outline so it reads on top of the bell
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap(Paint.Cap.ROUND);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            paint.setStrokeWidth(stroke * 2.6f);
            c.drawLine(cx - (s * 0.34f), cy - (s * 0.34f), cx + (s * 0.34f), cy + (s * 0.34f), paint);
            paint.setXfermode(null);
            paint.setStrokeWidth(stroke);
            c.drawLine(cx - (s * 0.34f), cy - (s * 0.34f), cx + (s * 0.34f), cy + (s * 0.34f), paint);
        }
        c.restoreToCount(layer);
        paint.setStyle(Paint.Style.FILL);
    }

    private void drawVibrate(Canvas c, float cx, float cy, float s) {
        float stroke = Math.max(1.5f, s * 0.07f);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(stroke);
        paint.setStrokeCap(Paint.Cap.ROUND);
        rect.set(cx - (s * 0.14f), cy - (s * 0.3f), cx + (s * 0.14f), cy + (s * 0.3f));
        c.drawRoundRect(rect, s * 0.06f, s * 0.06f, paint);
        for (int side = -1; side <= 1; side += 2) {
            c.drawLine(cx + (side * s * 0.26f), cy - (s * 0.15f), cx + (side * s * 0.26f), cy + (s * 0.15f), paint);
            c.drawLine(cx + (side * s * 0.38f), cy - (s * 0.09f), cx + (side * s * 0.38f), cy + (s * 0.09f), paint);
        }
        paint.setStyle(Paint.Style.FILL);
    }

    private void drawHeadphones(Canvas c, float cx, float cy, float s) {
        float stroke = Math.max(1.5f, s * 0.08f);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(stroke);
        paint.setStrokeCap(Paint.Cap.ROUND);
        rect.set(cx - (s * 0.3f), cy - (s * 0.34f), cx + (s * 0.3f), cy + (s * 0.26f));
        c.drawArc(rect, 180f, 180f, false, paint);
        paint.setStyle(Paint.Style.FILL);
        rect.set(cx - (s * 0.38f), cy - (s * 0.02f), cx - (s * 0.2f), cy + (s * 0.3f));
        c.drawRoundRect(rect, s * 0.07f, s * 0.07f, paint);
        rect.set(cx + (s * 0.2f), cy - (s * 0.02f), cx + (s * 0.38f), cy + (s * 0.3f));
        c.drawRoundRect(rect, s * 0.07f, s * 0.07f, paint);
    }

    private void drawCamera(Canvas c, float cx, float cy, float s) {
        int layer = c.saveLayer(cx - s, cy - s, cx + s, cy + s, null);
        paint.setStyle(Paint.Style.FILL);
        rect.set(cx - (s * 0.4f), cy - (s * 0.24f), cx + (s * 0.4f), cy + (s * 0.3f));
        c.drawRoundRect(rect, s * 0.1f, s * 0.1f, paint);
        rect.set(cx - (s * 0.18f), cy - (s * 0.36f), cx + (s * 0.1f), cy - (s * 0.2f));
        c.drawRoundRect(rect, s * 0.05f, s * 0.05f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        c.drawCircle(cx, cy + (s * 0.03f), s * 0.17f, paint);
        paint.setXfermode(null);
        c.drawCircle(cx, cy + (s * 0.03f), s * 0.09f, paint);
        c.restoreToCount(layer);
    }

    private void drawMic(Canvas c, float cx, float cy, float s) {
        float stroke = Math.max(1.5f, s * 0.07f);
        paint.setStyle(Paint.Style.FILL);
        rect.set(cx - (s * 0.12f), cy - (s * 0.38f), cx + (s * 0.12f), cy + (s * 0.06f));
        c.drawRoundRect(rect, s * 0.12f, s * 0.12f, paint);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(stroke);
        paint.setStrokeCap(Paint.Cap.ROUND);
        rect.set(cx - (s * 0.22f), cy - (s * 0.2f), cx + (s * 0.22f), cy + (s * 0.22f));
        c.drawArc(rect, 0f, 180f, false, paint);
        c.drawLine(cx, cy + (s * 0.22f), cx, cy + (s * 0.36f), paint);
        c.drawLine(cx - (s * 0.12f), cy + (s * 0.36f), cx + (s * 0.12f), cy + (s * 0.36f), paint);
        paint.setStyle(Paint.Style.FILL);
    }

    private void drawLocation(Canvas c, float cx, float cy, float s) {
        int layer = c.saveLayer(cx - s, cy - s, cx + s, cy + s, null);
        paint.setStyle(Paint.Style.FILL);
        path.reset();
        path.addCircle(cx, cy - (s * 0.1f), s * 0.24f, Path.Direction.CW);
        path.moveTo(cx - (s * 0.21f), cy + (s * 0.02f));
        path.lineTo(cx, cy + (s * 0.4f));
        path.lineTo(cx + (s * 0.21f), cy + (s * 0.02f));
        path.close();
        c.drawPath(path, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        c.drawCircle(cx, cy - (s * 0.1f), s * 0.09f, paint);
        paint.setXfermode(null);
        c.restoreToCount(layer);
    }

    private void drawMoon(Canvas c, float cx, float cy, float s) {
        int layer = c.saveLayer(cx - s, cy - s, cx + s, cy + s, null);
        paint.setStyle(Paint.Style.FILL);
        c.drawCircle(cx - (s * 0.02f), cy, s * 0.34f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        c.drawCircle(cx + (s * 0.16f), cy - (s * 0.12f), s * 0.3f, paint);
        paint.setXfermode(null);
        c.restoreToCount(layer);
    }

    private void drawPlane(Canvas c, float cx, float cy, float s) {
        paint.setStyle(Paint.Style.FILL);
        path.reset();
        path.moveTo(cx + (s * 0.4f), cy);
        path.lineTo(cx + (s * 0.06f), cy - (s * 0.07f));
        path.lineTo(cx - (s * 0.12f), cy - (s * 0.36f));
        path.lineTo(cx - (s * 0.2f), cy - (s * 0.36f));
        path.lineTo(cx - (s * 0.12f), cy - (s * 0.04f));
        path.lineTo(cx - (s * 0.3f), cy - (s * 0.02f));
        path.lineTo(cx - (s * 0.38f), cy - (s * 0.12f));
        path.lineTo(cx - (s * 0.42f), cy - (s * 0.12f));
        path.lineTo(cx - (s * 0.38f), cy);
        path.lineTo(cx - (s * 0.42f), cy + (s * 0.12f));
        path.lineTo(cx - (s * 0.38f), cy + (s * 0.12f));
        path.lineTo(cx - (s * 0.3f), cy + (s * 0.02f));
        path.lineTo(cx - (s * 0.12f), cy + (s * 0.04f));
        path.lineTo(cx - (s * 0.2f), cy + (s * 0.36f));
        path.lineTo(cx - (s * 0.12f), cy + (s * 0.36f));
        path.lineTo(cx + (s * 0.06f), cy + (s * 0.07f));
        path.close();
        c.drawPath(path, paint);
    }

    /** A flashlight pointing up with three rays of light, like the iOS symbol: flared head, neck, body with a switch. */
    private void drawTorch(Canvas c, float cx, float cy, float s) {
        float stroke = Math.max(1.4f, s * 0.075f);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(stroke);
        paint.setStrokeCap(Paint.Cap.ROUND);
        c.drawLine(cx, cy - (s * 0.46f), cx, cy - (s * 0.36f), paint);
        c.drawLine(cx - (s * 0.27f), cy - (s * 0.39f), cx - (s * 0.21f), cy - (s * 0.30f), paint);
        c.drawLine(cx + (s * 0.27f), cy - (s * 0.39f), cx + (s * 0.21f), cy - (s * 0.30f), paint);
        int layer = c.saveLayer(cx - s, cy - s, cx + s, cy + s, null);
        paint.setStyle(Paint.Style.FILL);
        path.reset();
        path.moveTo(cx - (s * 0.2f), cy - (s * 0.24f));
        path.lineTo(cx + (s * 0.2f), cy - (s * 0.24f));
        path.lineTo(cx + (s * 0.115f), cy - (s * 0.02f));
        path.lineTo(cx - (s * 0.115f), cy - (s * 0.02f));
        path.close();
        c.drawPath(path, paint);
        rect.set(cx - (s * 0.115f), cy + (s * 0.02f), cx + (s * 0.115f), cy + (s * 0.42f));
        c.drawRoundRect(rect, s * 0.07f, s * 0.07f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        rect.set(cx - (s * 0.032f), cy + (s * 0.1f), cx + (s * 0.032f), cy + (s * 0.22f));
        c.drawRoundRect(rect, s * 0.032f, s * 0.032f, paint);
        paint.setXfermode(null);
        c.restoreToCount(layer);
    }

    private void drawHotspot(Canvas c, float cx, float cy, float s) {
        float stroke = Math.max(1.5f, s * 0.07f);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(stroke);
        paint.setStrokeCap(Paint.Cap.ROUND);
        for (int i = 1; i <= 2; i++) {
            float r = s * 0.17f * i + (s * 0.02f);
            rect.set(cx - r, cy - r, cx + r, cy + r);
            c.drawArc(rect, -45f, 90f, false, paint);
            c.drawArc(rect, 135f, 90f, false, paint);
        }
        paint.setStyle(Paint.Style.FILL);
        c.drawCircle(cx, cy, s * 0.08f, paint);
    }

    private void drawRotateLock(Canvas c, float cx, float cy, float s) {
        float stroke = Math.max(1.5f, s * 0.07f);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(stroke);
        paint.setStrokeCap(Paint.Cap.ROUND);
        rect.set(cx - (s * 0.34f), cy - (s * 0.34f), cx + (s * 0.34f), cy + (s * 0.34f));
        c.drawArc(rect, -60f, 240f, false, paint);
        path.reset();
        float ax = cx + (s * 0.17f);
        float ay = cy - (s * 0.29f);
        path.moveTo(ax - (s * 0.1f), ay - (s * 0.04f));
        path.lineTo(ax + (s * 0.04f), ay + (s * 0.02f));
        path.lineTo(ax - (s * 0.04f), ay + (s * 0.14f));
        paint.setStrokeJoin(Paint.Join.ROUND);
        c.drawPath(path, paint);
        paint.setStyle(Paint.Style.FILL);
        rect.set(cx - (s * 0.12f), cy - (s * 0.02f), cx + (s * 0.12f), cy + (s * 0.16f));
        c.drawRoundRect(rect, s * 0.03f, s * 0.03f, paint);
        paint.setStyle(Paint.Style.STROKE);
        rect.set(cx - (s * 0.07f), cy - (s * 0.14f), cx + (s * 0.07f), cy + (s * 0.06f));
        c.drawArc(rect, 180f, 180f, false, paint);
        paint.setStyle(Paint.Style.FILL);
    }

    private void drawDownload(Canvas c, float cx, float cy, float s) {
        float stroke = Math.max(1.8f, s * 0.08f);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(stroke);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        c.drawLine(cx, cy - (s * 0.32f), cx, cy + (s * 0.14f), paint);
        path.reset();
        path.moveTo(cx - (s * 0.18f), cy - (s * 0.04f));
        path.lineTo(cx, cy + (s * 0.16f));
        path.lineTo(cx + (s * 0.18f), cy - (s * 0.04f));
        c.drawPath(path, paint);
        c.drawLine(cx - (s * 0.3f), cy + (s * 0.32f), cx + (s * 0.3f), cy + (s * 0.32f), paint);
        paint.setStyle(Paint.Style.FILL);
    }

    private void drawSpeaker(Canvas c, float cx, float cy, float s) {
        float stroke = Math.max(1.5f, s * 0.07f);
        paint.setStyle(Paint.Style.FILL);
        path.reset();
        path.moveTo(cx - (s * 0.36f), cy - (s * 0.12f));
        path.lineTo(cx - (s * 0.18f), cy - (s * 0.12f));
        path.lineTo(cx + (s * 0.02f), cy - (s * 0.3f));
        path.lineTo(cx + (s * 0.02f), cy + (s * 0.3f));
        path.lineTo(cx - (s * 0.18f), cy + (s * 0.12f));
        path.lineTo(cx - (s * 0.36f), cy + (s * 0.12f));
        path.close();
        c.drawPath(path, paint);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(stroke);
        paint.setStrokeCap(Paint.Cap.ROUND);
        rect.set(cx - (s * 0.1f), cy - (s * 0.2f), cx + (s * 0.22f), cy + (s * 0.2f));
        c.drawArc(rect, -50f, 100f, false, paint);
        rect.set(cx - (s * 0.1f), cy - (s * 0.34f), cx + (s * 0.38f), cy + (s * 0.34f));
        c.drawArc(rect, -50f, 100f, false, paint);
        paint.setStyle(Paint.Style.FILL);
    }
}
