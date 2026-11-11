package dev.android.dynamicisland.island.graphics;

import android.graphics.Path;

/**
 * Builds the "liquid" neck between two circles (the classic metaball connection) as a {@link Path}.
 *
 * <p>Used while the island splits into two bubbles or merges back: the neck is two cubic curves
 * joining tangent points on both circles. Pure geometry, any thread.
 */
public final class Metaball {
    private static final float QUARTER_TURN = 1.5707964f;
    private static final float HALF_TURN = 3.1415927f;
    /** Bezier handle length relative to the circle radii; bigger gives a fatter, rounder neck. */
    private static final float HANDLE_SIZE = 2.4f;

    private Metaball() {
    }

    /**
     * Adds a closed neck shape between circle 1 (c1x, c1y, r1) and circle 2 (c2x, c2y, r2) to {@code out}.
     *
     * @param spread 0 = thin, tight neck; 1 = the neck opens as wide as the circles allow
     * @return the width of the neck at its waist, or 0 (leaving {@code out} untouched) when no neck exists:
     *         a radius or the spread is ~0, or one circle lies inside the other. Callers fade a neck out as its
     *         waist gets thin, so it never shows as a hair-thin line between two shapes drifting apart.
     */
    public static float neck(float c1x, float c1y, float r1, float c2x, float c2y, float r2, float spread, Path out) {
        float dx = c2x - c1x;
        float dy = c2y - c1y;
        float dist = (float) Math.hypot(dx, dy);
        if (r1 <= 0.0f || r2 <= 0.0f || spread <= 0.01f || dist <= Math.abs(r1 - r2) + 0.5f) {
            return 0.0f;
        }
        // half-angle of the overlap seen from each centre; stays 0 while the circles are apart
        float overlap1 = 0.0f;
        float overlap2 = 0.0f;
        if (dist < r1 + r2) {
            overlap1 = overlapAngle(r1, r2, dist);
            overlap2 = overlapAngle(r2, r1, dist);
        }
        float axis = (float) Math.atan2(dy, dx);
        // the tangent lines of the two circles leave at this angle from the axis
        float tangent = (float) Math.acos(clampUnit((r1 - r2) / dist));
        float open1 = (tangent - overlap1) * spread;
        float open2 = ((HALF_TURN - overlap2) - tangent) * spread;
        // contact angles: circle 1 upper / lower, circle 2 upper / lower
        float angle1 = axis + overlap1 + open1;
        float angle2 = axis - overlap1 - open1;
        float angle3 = axis + HALF_TURN - overlap2 - open2;
        float angle4 = axis - HALF_TURN + overlap2 + open2;

        float p1x = onCircle(c1x, r1, angle1, true);
        float p1y = onCircle(c1y, r1, angle1, false);
        float p2x = onCircle(c1x, r1, angle2, true);
        float p2y = onCircle(c1y, r1, angle2, false);
        float p3x = onCircle(c2x, r2, angle3, true);
        float p3y = onCircle(c2y, r2, angle3, false);
        float p4x = onCircle(c2x, r2, angle4, true);
        float p4y = onCircle(c2y, r2, angle4, false);

        float radii = r1 + r2;
        float baseHandle = Math.min(spread * HANDLE_SIZE, (float) Math.hypot(p3x - p1x, p3y - p1y) / radii);
        float handle = baseHandle * Math.min(1.0f, dist * 2.0f / radii);
        float len1 = r1 * handle;
        float len2 = r2 * handle;
        // control points sit on the tangent of each contact, perpendicular to its radius
        float q1x = p1x + cos(angle1 - QUARTER_TURN) * len1;
        float q1y = p1y + sin(angle1 - QUARTER_TURN) * len1;
        float q2x = p2x + cos(angle2 + QUARTER_TURN) * len1;
        float q2y = p2y + sin(angle2 + QUARTER_TURN) * len1;
        float q3x = p3x + cos(angle3 + QUARTER_TURN) * len2;
        float q3y = p3y + sin(angle3 + QUARTER_TURN) * len2;
        float q4x = p4x + cos(angle4 - QUARTER_TURN) * len2;
        float q4y = p4y + sin(angle4 - QUARTER_TURN) * len2;

        out.moveTo(p1x, p1y);
        out.cubicTo(q1x, q1y, q3x, q3y, p3x, p3y);
        out.lineTo(p4x, p4y);
        out.cubicTo(q4x, q4y, q2x, q2y, p2x, p2y);
        out.close();

        // waist = distance between the two curves at t = 0.5
        float upperX = cubicMiddle(p1x, q1x, q3x, p3x);
        float upperY = cubicMiddle(p1y, q1y, q3y, p3y);
        float lowerX = cubicMiddle(p4x, q4x, q2x, p2x);
        float lowerY = cubicMiddle(p4y, q4y, q2y, p2y);
        return Math.max(0.001f, (float) Math.hypot(upperX - lowerX, upperY - lowerY));
    }

    /** Angle at centre A where circle A (radius ra) crosses circle B (radius rb) at centre distance d. */
    private static float overlapAngle(float ra, float rb, float d) {
        return (float) Math.acos(clampUnit(((ra * ra) + (d * d) - (rb * rb)) / ((ra * 2.0f) * d)));
    }

    /** Cubic Bezier at t = 0.5 for one coordinate. */
    private static float cubicMiddle(float a, float b, float c, float d) {
        return (a + (3.0f * b) + (3.0f * c) + d) / 8.0f;
    }

    private static float onCircle(float centre, float radius, float angle, boolean horizontal) {
        return centre + (horizontal ? cos(angle) : sin(angle)) * radius;
    }

    private static float clampUnit(float v) {
        return Math.max(-1.0f, Math.min(1.0f, v));
    }

    private static float cos(float a) {
        return (float) Math.cos(a);
    }

    private static float sin(float a) {
        return (float) Math.sin(a);
    }
}
