package dev.android.dynamicisland.island.graphics;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;

/**
 * Small vector icons (media transport, call, mic, ...) drawn straight onto a {@link Canvas}.
 *
 * <p>Every glyph is centred on (cx, cy) and fits into a square of the given size. The caller's paint
 * colour is used as is; the paint's style, stroke width, cap and join are changed while drawing, and
 * style and stroke width are reset to FILL / 0 afterwards. Main thread only: the scratch {@link Path}
 * and {@link RectF} are shared statics.
 */
public final class Glyphs {
    public static final int PLAY = 1;
    public static final int PAUSE = 2;
    public static final int PREV = 3;
    public static final int NEXT = 4;
    static final int BOLT = 5;
    static final int STOP = 6;
    static final int MIC = 7;
    static final int MIC_OFF = 8;
    public static final int HANGUP = 9;
    public static final int SPEAKER = 10;
    public static final int COPY = 11;
    public static final int CHECK = 12;
    public static final int POWER = 13;
    public static final int ANSWER = 14;

    private static final Path PATH = new Path();
    private static final RectF R = new RectF();

    /** Lightning bolt outline as (x, y) fractions of the glyph box, measured from its top-left corner. */
    private static final float[] BOLT_POINTS = {
        0.58f, 0.04f, 0.2f, 0.56f, 0.47f, 0.56f, 0.4f, 0.96f, 0.8f, 0.42f, 0.53f, 0.42f};
    /** Speaker cone as (x, y) fractions of size, relative to its left edge at cx - 0.42 size and to cy. */
    private static final float[] SPEAKER_CONE = {
        0.0f, -0.13f, 0.17f, -0.13f, 0.4f, -0.36f, 0.4f, 0.36f, 0.17f, 0.13f, 0.0f, 0.13f};

    /** Radii (fractions of size) of the two sound-wave arcs. */
    private static final float[] WAVE_REACH = {0.2f, 0.4f};

    private Glyphs() {
    }

    /** Draws {@code glyph} (one of the constants above) centred at (cx, cy); unknown ids draw nothing. */
    public static void draw(Canvas canvas, int glyph, float cx, float cy, float size, Paint paint) {
        PATH.reset();
        switch (glyph) {
            case PLAY:
                play(canvas, cx, cy, size, paint);
                break;
            case PAUSE:
                pause(canvas, cx, cy, size, paint);
                break;
            case PREV:
                skip(canvas, -1.0f, cx, cy, size, paint);
                break;
            case NEXT:
                skip(canvas, 1.0f, cx, cy, size, paint);
                break;
            case BOLT:
                bolt(canvas, cx, cy, size, paint);
                break;
            case STOP:
                stop(canvas, cx, cy, size, paint);
                break;
            case MIC:
                mic(canvas, false, cx, cy, size, paint);
                break;
            case MIC_OFF:
                mic(canvas, true, cx, cy, size, paint);
                break;
            case HANGUP:
                hangup(canvas, cx, cy, size, paint);
                break;
            case SPEAKER:
                speaker(canvas, cx, cy, size, paint);
                break;
            case COPY:
                copy(canvas, cx, cy, size, paint);
                break;
            case CHECK:
                check(canvas, cx, cy, size, paint);
                break;
            case POWER:
                power(canvas, cx, cy, size, paint);
                break;
            case ANSWER:
                answer(canvas, cx, cy, size, paint);
                break;
            default:
                break;
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeWidth(0.0f);
    }

    /** The power symbol: an open ring with a bar through its top gap. */
    private static void power(Canvas canvas, float cx, float cy, float size, Paint paint) {
        float stroke = 0.12f * size;
        float radius = 0.36f * size;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(stroke);
        paint.setStrokeCap(Paint.Cap.ROUND);
        R.set(cx - radius, cy - radius + (0.04f * size), cx + radius, cy + radius + (0.04f * size));
        canvas.drawArc(R, -60.0f, 300.0f, false, paint);
        canvas.drawLine(cx, cy - (0.44f * size), cx, cy - (0.06f * size), paint);
        paint.setStrokeCap(Paint.Cap.BUTT);
    }

    private static void play(Canvas canvas, float cx, float cy, float size, Paint paint) {
        float half = size / 2.0f;
        float width = 0.78f * size;
        float left = cx - (0.38f * width);
        PATH.moveTo(left, cy - (half * 0.82f));
        PATH.lineTo(left + (0.86f * width), cy);
        PATH.lineTo(left, cy + (0.82f * half));
        PATH.close();
        fillSoftened(canvas, paint, size);
    }

    private static void pause(Canvas canvas, float cx, float cy, float size, Paint paint) {
        float half = size / 2.0f;
        float barWidth = 0.22f * size;
        float halfGap = (0.18f * size) / 2.0f;
        float radius = 0.35f * barWidth;
        float top = cy - (half * 0.8f);
        float bottom = cy + (half * 0.8f);
        R.set(cx - halfGap - barWidth, top, cx - halfGap, bottom);
        canvas.drawRoundRect(R, radius, radius, paint);
        R.set(cx + halfGap, top, cx + halfGap + barWidth, bottom);
        canvas.drawRoundRect(R, radius, radius, paint);
    }

    /** Previous / next track: a triangle pointing in the travel direction ({@code dir} = +1 / -1) plus a bar at its tip. */
    private static void skip(Canvas canvas, float dir, float cx, float cy, float size, Paint paint) {
        float half = size / 2.0f;
        float triangleHalfWidth = (0.52f * size) / 2.0f;
        float halfHeight = 0.72f * half;
        float barWidth = 0.11f * size;
        float tip = cx + (triangleHalfWidth * dir);
        float base = cx - (triangleHalfWidth * dir);
        PATH.moveTo(base, cy - halfHeight);
        PATH.lineTo(tip, cy);
        PATH.lineTo(base, cy + halfHeight);
        PATH.close();
        fillSoftened(canvas, paint, size);
        paint.setStyle(Paint.Style.FILL);
        float barNear = tip + (dir * barWidth * 0.9f);
        float barFar = barNear + (dir * barWidth);
        R.set(Math.min(barNear, barFar), cy - halfHeight, Math.max(barNear, barFar), cy + halfHeight);
        canvas.drawRoundRect(R, barWidth / 2.0f, barWidth / 2.0f, paint);
    }

    private static void bolt(Canvas canvas, float cx, float cy, float size, Paint paint) {
        polygon(BOLT_POINTS, cx - (size * 0.5f), cy - (size * 0.5f), size);
        fillSoftened(canvas, paint, size);
    }

    private static void stop(Canvas canvas, float cx, float cy, float size, Paint paint) {
        float half = size * 0.36f;
        R.set(cx - half, cy - half, cx + half, cy + half);
        canvas.drawRoundRect(R, size * 0.12f, size * 0.12f, paint);
    }

    /** Microphone capsule, stand and base; the "off" variant adds a diagonal slash. */
    private static void mic(Canvas canvas, boolean off, float cx, float cy, float size, Paint paint) {
        R.set(cx - (size * 0.16f), cy - (size * 0.46f), cx + (size * 0.16f), cy + (size * 0.12f));
        canvas.drawRoundRect(R, size * 0.16f, size * 0.16f, paint);
        strokeRound(paint, size * 0.085f);
        R.set(cx - (size * 0.3f), cy - (size * 0.24f), cx + (size * 0.3f), cy + (size * 0.27f));
        canvas.drawArc(R, 0.0f, 180.0f, false, paint);
        canvas.drawLine(cx, cy + (size * 0.27f), cx, cy + (size * 0.42f), paint);
        canvas.drawLine(cx - (size * 0.15f), cy + (size * 0.44f), cx + (size * 0.15f), cy + (size * 0.44f), paint);
        if (off) {
            canvas.drawLine(cx - (size * 0.4f), cy - (size * 0.44f), cx + (size * 0.4f), cy + (size * 0.44f), paint);
        }
        paint.setStrokeCap(Paint.Cap.BUTT);
    }

    /** Static fallback for call_end.json: one filled outline with rounded receiver ends. */
    private static void hangup(Canvas canvas, float cx, float cy, float size, Paint paint) {
        PATH.moveTo(6, 37);PATH.cubicTo(6, 33, 9, 30, 13, 27);
        PATH.cubicTo(26, 17, 46, 17, 59, 27);PATH.cubicTo(63, 30, 66, 33, 66, 37);
        PATH.lineTo(66, 44);PATH.cubicTo(66, 48, 64, 50, 60, 50);
        PATH.lineTo(54, 50);PATH.cubicTo(51, 50, 49, 48, 49, 45);
        PATH.lineTo(49, 37);PATH.cubicTo(41, 33, 31, 33, 23, 37);
        PATH.lineTo(23, 45);PATH.cubicTo(23, 48, 21, 50, 18, 50);
        PATH.lineTo(12, 50);PATH.cubicTo(8, 50, 6, 48, 6, 44);PATH.close();
        fillHandset(canvas, cx, cy, size, paint);
    }

    /** Static fallback for call_answer.json, with a curved bridge and widened earpieces. */
    private static void answer(Canvas canvas, float cx, float cy, float size, Paint paint) {
        PATH.moveTo(16, 8);PATH.cubicTo(12, 8, 9, 11, 9, 15);
        PATH.cubicTo(10, 40, 32, 62, 57, 63);PATH.cubicTo(61, 63, 64, 60, 64, 56);
        PATH.lineTo(64, 49);PATH.cubicTo(64, 46, 62.5f, 44.5f, 60, 44);
        PATH.lineTo(51, 42);PATH.cubicTo(49, 41.5f, 47.5f, 42.2f, 46, 43.8f);
        PATH.lineTo(42, 48);PATH.cubicTo(33.5f, 44.3f, 27.7f, 38.5f, 24, 30);
        PATH.lineTo(28.2f, 26);PATH.cubicTo(29.8f, 24.5f, 30.5f, 23, 30, 21);
        PATH.lineTo(28, 12);PATH.cubicTo(27.5f, 9.5f, 26, 8, 23, 8);PATH.close();
        fillHandset(canvas, cx, cy, size, paint);
    }

    private static void fillHandset(Canvas canvas, float cx, float cy, float size, Paint paint) {
        int save = canvas.save();
        canvas.translate(cx - size / 2, cy - size / 2);canvas.scale(size / 72, size / 72);
        paint.setStyle(Paint.Style.FILL);canvas.drawPath(PATH, paint);canvas.restoreToCount(save);
    }

    /** Speaker cone with two sound-wave arcs. */
    private static void speaker(Canvas canvas, float cx, float cy, float size, Paint paint) {
        float left = cx - (0.42f * size);
        polygon(SPEAKER_CONE, left, cy, size);
        fillSoftened(canvas, paint, size);
        strokeRound(paint, size * 0.085f);
        float waveX = left + (size * 0.4f);
        for (float reach : WAVE_REACH) {
            R.set(waveX - (size * reach), cy - (size * reach), waveX + (size * reach), cy + (size * reach));
            canvas.drawArc(R, -50.0f, 100.0f, false, paint);
        }
        paint.setStrokeCap(Paint.Cap.BUTT);
    }

    /** Two sheets: the back one as an outline, the front one solid. */
    private static void copy(Canvas canvas, float cx, float cy, float size, Paint paint) {
        float sheet = 0.5f * size;
        float radius = 0.1f * size;
        float back = 0.36f * size;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(0.085f * size);
        R.set(cx - back, cy - back, (cx - back) + sheet, (cy - back) + sheet);
        canvas.drawRoundRect(R, radius, radius, paint);
        paint.setStyle(Paint.Style.FILL);
        R.set((cx + back) - sheet, (cy + back) - sheet, cx + back, cy + back);
        canvas.drawRoundRect(R, radius, radius, paint);
    }

    private static void check(Canvas canvas, float cx, float cy, float size, Paint paint) {
        strokeRound(paint, size * 0.13f);
        paint.setStrokeJoin(Paint.Join.ROUND);
        PATH.moveTo(cx - (0.34f * size), cy + (0.02f * size));
        PATH.lineTo(cx - (0.1f * size), cy + (0.26f * size));
        PATH.lineTo(cx + (0.36f * size), cy - (0.24f * size));
        canvas.drawPath(PATH, paint);
        paint.setStrokeCap(Paint.Cap.BUTT);
    }

    /** Fills {@link #PATH} plus a thin rounded outline so sharp corners look soft. */
    private static void fillSoftened(Canvas canvas, Paint paint, float size) {
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setStrokeJoin(Paint.Join.ROUND);
        paint.setStrokeWidth(0.06f * size);
        canvas.drawPath(PATH, paint);
    }

    private static void strokeRound(Paint paint, float width) {
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(width);
        paint.setStrokeCap(Paint.Cap.ROUND);
    }

    /** Rebuilds {@link #PATH} as a closed polygon from (x, y) fractions of {@code size} offset by the origin. */
    private static void polygon(float[] fractions, float originX, float originY, float size) {
        for (int i = 0; i < fractions.length; i += 2) {
            float x = originX + (fractions[i] * size);
            float y = originY + (fractions[i + 1] * size);
            if (i == 0) {
                PATH.moveTo(x, y);
            } else {
                PATH.lineTo(x, y);
            }
        }
        PATH.close();
    }
}
