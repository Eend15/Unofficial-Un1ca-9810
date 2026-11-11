package dev.android.dynamicisland.island.graphics;

/** Small float maths shared by the island's animations. All functions are pure. */
public final class Easing {
    private Easing() {
    }

    public static float clamp01(float v) {
        if (v < 0.0f) {
            return 0.0f;
        }
        if (v > 1.0f) {
            return 1.0f;
        }
        return v;
    }

    public static float lerp(float from, float to, float t) {
        return ((to - from) * t) + from;
    }

    /** Smooth start and end (cubic ease in-out), input and output in 0..1. */
    public static float easeInOut(float t) {
        float x = clamp01(t);
        return x < 0.5f ? 4.0f * x * x * x : 1.0f - (((float) Math.pow(((-2.0f) * x) + 2.0f, 3.0d)) / 2.0f);
    }

    /** Fast start that slows down towards the end (cubic ease out), input and output in 0..1. */
    public static float easeOutCubic(float t) {
        float inverse = 1.0f - clamp01(t);
        return 1.0f - ((inverse * inverse) * inverse);
    }

    /** Ease out that overshoots slightly (back) before settling at 1. */
    public static float easeOutBack(float t) {
        float overshoot = 1.25f;
        float c3 = overshoot + 1.0f;
        float u = clamp01(t) - 1.0f;
        return (c3 * u * u * u) + 1.0f + (overshoot * u * u);
    }

    /** Resistance of a stretched rubber band: follows the finger at first and approaches {@code limit}. */
    public static float rubber(float distance, float limit) {
        float magnitude = Math.abs(distance);
        float stretched = (1.0f - (1.0f / (((0.55f * magnitude) / limit) + 1.0f))) * limit;
        return Math.signum(distance) * stretched;
    }

    /**
     * Soft, bell-shaped falloff of a glow blob: 1 in the middle, about 0.41 at 55 % of the radius and flat at the
     * rim, so no ring shows where a blob ends. {@code r} is the distance from the centre in 0..1.
     */
    public static float blobFalloff(float r) {
        float q = 1.0f - (r * r);
        return (float) Math.exp(-0.565f * r * r) * q * q;
    }
}
