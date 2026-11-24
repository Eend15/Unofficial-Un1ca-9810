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

    /** Static fallback for call_end.json (phone.down.fill.svg): horizontal handset at 0.98 optical scale. */
    private static void hangup(Canvas canvas, float cx, float cy, float size, Paint paint) {
        PATH.moveTo(36, 24.48f); PATH.cubicTo(38.62f, 24.48f, 41.29f, 24.62f, 43.99f, 24.88f);
        PATH.cubicTo(46.69f, 25.15f, 49.31f, 25.59f, 51.84f, 26.2f);
        PATH.cubicTo(54.38f, 26.81f, 56.71f, 27.62f, 58.83f, 28.63f);
        PATH.cubicTo(60.96f, 29.64f, 62.75f, 30.89f, 64.19f, 32.38f);
        PATH.cubicTo(65.3f, 33.5f, 66.17f, 34.77f, 66.79f, 36.19f);
        PATH.cubicTo(67.42f, 37.61f, 67.73f, 39.2f, 67.73f, 40.97f);
        PATH.cubicTo(67.73f, 41.76f, 67.63f, 42.6f, 67.45f, 43.52f);
        PATH.cubicTo(67.26f, 44.43f, 66.92f, 45.23f, 66.45f, 45.93f);
        PATH.cubicTo(65.97f, 46.62f, 65.31f, 47.05f, 64.47f, 47.22f);
        PATH.cubicTo(64.05f, 47.42f, 63.6f, 47.51f, 63.13f, 47.5f);
        PATH.cubicTo(62.66f, 47.48f, 62.12f, 47.43f, 61.52f, 47.33f); PATH.lineTo(53.64f, 46);
        PATH.cubicTo(52.28f, 45.78f, 51.24f, 45.37f, 50.51f, 44.77f);
        PATH.cubicTo(49.78f, 44.17f, 49.23f, 43.21f, 48.86f, 41.9f); PATH.lineTo(47.56f, 37.16f);
        PATH.cubicTo(47.43f, 36.68f, 47.27f, 36.33f, 47.06f, 36.09f);
        PATH.cubicTo(46.86f, 35.86f, 46.49f, 35.65f, 45.94f, 35.45f);
        PATH.cubicTo(44.84f, 35.06f, 43.45f, 34.76f, 41.76f, 34.56f);
        PATH.cubicTo(40.07f, 34.35f, 38.15f, 34.25f, 36, 34.25f);
        PATH.cubicTo(33.87f, 34.27f, 31.95f, 34.37f, 30.25f, 34.57f);
        PATH.cubicTo(28.55f, 34.77f, 27.16f, 35.06f, 26.06f, 35.45f);
        PATH.cubicTo(25.51f, 35.65f, 25.14f, 35.86f, 24.94f, 36.09f);
        PATH.cubicTo(24.73f, 36.32f, 24.57f, 36.68f, 24.44f, 37.16f); PATH.lineTo(23.14f, 41.9f);
        PATH.cubicTo(22.77f, 43.22f, 22.22f, 44.17f, 21.49f, 44.77f);
        PATH.cubicTo(20.76f, 45.37f, 19.72f, 45.78f, 18.36f, 46); PATH.lineTo(10.48f, 47.33f);
        PATH.cubicTo(9.88f, 47.43f, 9.34f, 47.48f, 8.87f, 47.5f);
        PATH.cubicTo(8.4f, 47.51f, 7.96f, 47.42f, 7.53f, 47.22f);
        PATH.cubicTo(6.69f, 47.05f, 6.04f, 46.62f, 5.57f, 45.93f);
        PATH.cubicTo(5.1f, 45.23f, 4.76f, 44.43f, 4.57f, 43.52f);
        PATH.cubicTo(4.37f, 42.61f, 4.27f, 41.75f, 4.27f, 40.97f);
        PATH.cubicTo(4.27f, 39.2f, 4.59f, 37.61f, 5.22f, 36.19f);
        PATH.cubicTo(5.85f, 34.77f, 6.71f, 33.5f, 7.81f, 32.38f);
        PATH.cubicTo(9.27f, 30.89f, 11.06f, 29.64f, 13.18f, 28.63f);
        PATH.cubicTo(15.3f, 27.62f, 17.62f, 26.81f, 20.16f, 26.2f);
        PATH.cubicTo(22.69f, 25.59f, 25.31f, 25.15f, 28.02f, 24.88f);
        PATH.cubicTo(30.73f, 24.62f, 33.39f, 24.48f, 36, 24.48f); PATH.close();
        fillHandset(canvas, cx, cy, size, paint);
    }

    /** Static fallback for call_answer.json (phone.fill.svg): diagonal handset at 1.08 optical scale. */
    private static void answer(Canvas canvas, float cx, float cy, float size, Paint paint) {
        PATH.moveTo(23.54f, 48.27f); PATH.cubicTo(20.66f, 45.38f, 18.08f, 42.37f, 15.79f, 39.23f);
        PATH.cubicTo(13.5f, 36.09f, 11.69f, 32.96f, 10.37f, 29.84f);
        PATH.cubicTo(9.05f, 26.72f, 8.39f, 23.76f, 8.39f, 20.94f);
        PATH.cubicTo(8.39f, 19.08f, 8.71f, 17.35f, 9.35f, 15.73f);
        PATH.cubicTo(9.99f, 14.11f, 10.93f, 12.71f, 12.17f, 11.52f);
        PATH.cubicTo(13.02f, 10.7f, 14, 9.97f, 15.11f, 9.32f);
        PATH.cubicTo(16.21f, 8.67f, 17.26f, 8.34f, 18.25f, 8.34f);
        PATH.cubicTo(19.05f, 8.34f, 19.76f, 8.63f, 20.37f, 9.2f);
        PATH.cubicTo(20.98f, 9.77f, 21.64f, 10.55f, 22.33f, 11.54f); PATH.lineTo(27.3f, 18.5f);
        PATH.cubicTo(27.86f, 19.28f, 28.25f, 19.98f, 28.47f, 20.62f);
        PATH.cubicTo(28.69f, 21.25f, 28.81f, 21.86f, 28.81f, 22.45f);
        PATH.cubicTo(28.81f, 22.96f, 28.74f, 23.43f, 28.61f, 23.85f);
        PATH.cubicTo(28.48f, 24.28f, 28.22f, 24.82f, 27.83f, 25.47f); PATH.lineTo(25.05f, 30.22f);
        PATH.cubicTo(24.94f, 30.44f, 24.84f, 30.64f, 24.75f, 30.81f);
        PATH.cubicTo(24.65f, 30.99f, 24.61f, 31.17f, 24.61f, 31.36f);
        PATH.cubicTo(24.61f, 31.59f, 24.64f, 31.82f, 24.71f, 32.03f);
        PATH.cubicTo(24.78f, 32.25f, 24.85f, 32.43f, 24.93f, 32.59f);
        PATH.cubicTo(26.12f, 34.99f, 28.17f, 37.63f, 31.06f, 40.52f);
        PATH.cubicTo(32.47f, 41.93f, 33.91f, 43.21f, 35.39f, 44.35f);
        PATH.cubicTo(36.86f, 45.5f, 38.17f, 46.34f, 39.32f, 46.88f);
        PATH.cubicTo(39.6f, 46.99f, 39.84f, 47.08f, 40.06f, 47.14f);
        PATH.cubicTo(40.28f, 47.2f, 40.52f, 47.23f, 40.8f, 47.23f);
        PATH.cubicTo(41, 47.23f, 41.19f, 47.21f, 41.36f, 47.16f);
        PATH.cubicTo(41.53f, 47.11f, 41.75f, 47.02f, 42.03f, 46.88f); PATH.lineTo(46.77f, 44.26f);
        PATH.cubicTo(47.53f, 43.84f, 48.14f, 43.57f, 48.6f, 43.45f);
        PATH.cubicTo(49.06f, 43.33f, 49.53f, 43.26f, 49.99f, 43.26f);
        PATH.cubicTo(50.52f, 43.26f, 51.04f, 43.36f, 51.55f, 43.54f);
        PATH.cubicTo(52.06f, 43.73f, 52.76f, 44.14f, 53.66f, 44.77f); PATH.lineTo(60.9f, 49.95f);
        PATH.cubicTo(61.87f, 50.63f, 62.57f, 51.27f, 62.99f, 51.87f);
        PATH.cubicTo(63.4f, 52.47f, 63.61f, 53.09f, 63.61f, 53.73f);
        PATH.cubicTo(63.61f, 54.53f, 63.4f, 55.4f, 62.97f, 56.33f);
        PATH.cubicTo(62.55f, 57.26f, 61.79f, 58.33f, 60.71f, 59.55f);
        PATH.cubicTo(59.58f, 60.8f, 58.19f, 61.8f, 56.53f, 62.54f);
        PATH.cubicTo(54.88f, 63.29f, 53.06f, 63.66f, 51.08f, 63.66f);
        PATH.cubicTo(48.99f, 63.66f, 46.79f, 63.27f, 44.48f, 62.49f);
        PATH.cubicTo(42.17f, 61.71f, 39.82f, 60.62f, 37.44f, 59.23f);
        PATH.cubicTo(35.06f, 57.84f, 32.69f, 56.21f, 30.34f, 54.34f);
        PATH.cubicTo(27.99f, 52.48f, 25.72f, 50.46f, 23.54f, 48.27f); PATH.close();
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
