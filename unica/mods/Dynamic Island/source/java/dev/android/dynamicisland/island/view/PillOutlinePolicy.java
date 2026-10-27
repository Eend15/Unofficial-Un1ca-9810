package dev.android.dynamicisland.island.view;

/** Outline contrast in the compositor's normalized display-luma domain (not WCAG linear RGB). */
final class PillOutlinePolicy {
    private static final float HIDE_CONTRAST = 4.0f;
    private static final float SHOW_CONTRAST = 3.0f;
    private Float backgroundLuma;
    private boolean automaticVisible = true;

    void sample(Float luma) {
        if (luma == null || Float.isNaN(luma) || Float.isInfinite(luma) || luma < 0f || luma > 1f) {
            backgroundLuma = null;
            automaticVisible = true; // unsupported/secure/unknown background must keep the pill discoverable
        } else {
            backgroundLuma = luma;
        }
    }

    boolean visible(int mode, int primaryColor, int bubbleColor, boolean hasBubble) {
        if (mode == 1) return true;
        if (mode == 2) return false;
        if (backgroundLuma == null) return true;
        float contrast = contrast(luma(primaryColor), backgroundLuma);
        if (hasBubble) contrast = Math.min(contrast, contrast(luma(bubbleColor), backgroundLuma));
        // Different enter/leave thresholds stop video, gradients, and sample noise flickering the rim.
        if (contrast >= HIDE_CONTRAST) automaticVisible = false;
        else if (contrast <= SHOW_CONTRAST) automaticVisible = true;
        return automaticVisible;
    }

    private static float contrast(float a, float b) {
        return (Math.max(a, b) + 0.05f) / (Math.min(a, b) + 0.05f);
    }

    /** Matches SurfaceFlinger RegionSamplingThread's encoded Rec.709 approximation. */
    static float luma(int color) {
        int r = (color >>> 16) & 255;
        int g = (color >>> 8) & 255;
        int b = color & 255;
        return ((r * 7 + g * 23 + b * 2) >> 5) / 255f;
    }
}
