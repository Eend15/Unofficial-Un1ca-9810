package dev.android.dynamicisland.island.view;

/**
 * Sizes of the island in pixels plus where the camera hole sits. The dimensions derive from the display
 * density once; the hole geometry and the limits that depend on the screen are refreshed by
 * {@link #update}. Main thread only.
 */
final class Metrics {
    /** Gap in dp between a window's content and its bottom edge. */
    private static final float WINDOW_MARGIN_DP = 40.0f;

    private final float density;

    float pillH;
    final float padding;
    final float holeGap;
    final float innerGap;
    float leadSize;
    float bubbleR;
    final float bubbleGap;
    float minPillW;
    float ringSize;
    final float waveBarW;
    final float waveGap;
    final float outlineW;
    final float cardRadius;
    final float cardGap;

    float cardMargin;
    float cardMaxW;
    float maxPillW;
    /** The user's widest pill in px, 0 = automatic. */
    private float userMaxW;
    int screenW;
    float cx;
    float cy;
    float holeD;
    boolean tablet;

    Metrics(float density) {
        this.density = density;
        pillH = dp(30.0f);
        padding = dp(9.0f);
        holeGap = dp(6.0f);
        innerGap = dp(8.0f);
        leadSize = dp(20.0f);
        bubbleR = dp(15.0f);
        bubbleGap = dp(6.0f);
        minPillW = dp(64.0f);
        ringSize = dp(17.0f);
        waveBarW = dp(3.8f);
        waveGap = dp(2.6f);
        outlineW = Math.max(1.5f, dp(0.7f));
        cardRadius = dp(28.0f);
        cardGap = dp(8.0f);
        cardMargin = dp(12.0f);
        cardMaxW = dp(420.0f);
    }

    /**
     * Sets the size the user asked for: the pill's height as a percent change (its icons grow with it), the narrowest
     * and the widest it gets in dp (0 = automatic). Returns false when nothing changed.
     */
    boolean applySize(int heightPercent, int minWidthDp, int maxWidthDp) {
        float scale = 1.0f + (heightPercent / 100.0f);
        float newH = dp(30.0f) * scale;
        float newMin = Math.min(Math.max(dp(64.0f), dp(minWidthDp)), Math.max(dp(64.0f), screenW * 0.96f));
        float newMax = maxWidthDp > 0 ? dp(maxWidthDp) : 0.0f;
        if (newMax > 0.0f) {
            newMin = Math.min(newMin, newMax); // the narrowest never passes the widest
        }
        if (Math.abs(pillH - newH) < 0.5f && Math.abs(minPillW - newMin) < 0.5f && Math.abs(userMaxW - newMax) < 0.5f) {
            return false;
        }
        pillH = newH;
        leadSize = dp(20.0f) * scale;
        ringSize = dp(17.0f) * scale;
        bubbleR = dp(15.0f) * scale;
        minPillW = newMin;
        userMaxW = newMax;
        recomputeMaxWidth();
        return true;
    }

    private void recomputeMaxWidth() {
        float automatic = Math.min(screenW * IslandView.PAUSED_GLOW, dp(tablet ? 340.0f : 300.0f));
        maxPillW = userMaxW > 0.0f ? Math.max(minPillW, Math.min(userMaxW, screenW * 0.96f)) : Math.max(minPillW, automatic);
    }

    float dp(float v) {
        return density * v;
    }

    /** Stores a new display geometry; returns false (and changes nothing) when it equals the current one. */
    boolean update(int screenWidth, float centerX, float centerY, float holeDiameter, boolean isTablet) {
        boolean same = screenW == screenWidth && Math.abs(cx - centerX) <= 1.5f && Math.abs(cy - centerY) <= 1.5f
                && Math.abs(holeD - holeDiameter) <= 1.5f && tablet == isTablet;
        if (same) {
            return false;
        }
        screenW = screenWidth;
        cx = centerX;
        cy = centerY;
        holeD = holeDiameter;
        tablet = isTablet;
        recomputeMaxWidth();
        cardMargin = dp(isTablet ? 16.0f : 12.0f);
        cardMaxW = dp(isTablet ? 380.0f : 420.0f);
        return true;
    }

    /** Width of the resting (empty) pill: just inside the camera hole, or a small blob without one. */
    float restWidth() {
        return holeD > 0.0f ? holeD * 0.92f : pillH * 0.45f;
    }

    float cardWidth() {
        return Math.min(screenW - (cardMargin * 2.0f), cardMaxW);
    }

    /** Top edge of the first card. */
    float stackTop() {
        return cy + (pillH / 2.0f) + dp(8.0f);
    }

    /** Window height that fits the compact pill with some room below it for its shadow and bounce. */
    int compactWindowHeight() {
        return Math.round(cy + (pillH / 2.0f) + dp(WINDOW_MARGIN_DP));
    }

    /** Window height that fits content ending at {@code bottom}. */
    int windowHeightFor(float bottom) {
        return Math.round(dp(WINDOW_MARGIN_DP) + bottom);
    }

    /** Left edge of a content block of width {@code w} centred under the hole but kept inside the margins. */
    float centredLeft(float w) {
        float left = cx - (w / 2.0f);
        if (w < screenW) {
            left = Math.max(Math.min(left, (screenW - cardMargin) - w), cardMargin);
        }
        return left;
    }
}
