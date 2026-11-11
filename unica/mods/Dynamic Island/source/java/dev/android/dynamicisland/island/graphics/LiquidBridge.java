package dev.android.dynamicisland.island.graphics;

import android.graphics.Path;

/**
 * The liquid connection between two shapes stacked vertically (the pill above, a card below) as they move
 * apart or together, modelled on how a drop of liquid behaves:
 * <ul>
 *   <li>While connected the two are joined by an hourglass whose ends flare tangentially into both shapes and
 *       whose waist thins smoothly as the gap grows, never into a hair-thin line.</li>
 *   <li>At {@link #breakDistance} the waist pinches off; the two leftover stubs snap back into their shapes
 *       with a short, damped wobble.</li>
 *   <li>Shapes approaching each other only merge once nearly touching ({@link #mergeDistance}, smaller than
 *       the break distance, like real surface tension), and the bridge then swells open quickly.</li>
 * </ul>
 * Each frame call {@link #update}, then draw {@link #bridge} with a vertical gradient from the upper to the
 * lower colour, {@link #topStub} in the upper colour and {@link #bottomStub} in the lower one. Main thread only.
 */
public final class LiquidBridge {
    /** Result of {@link #update}: nothing happened, the bridge just pinched off, or the shapes just merged. */
    public static final int NONE = 0;
    public static final int BROKE = 1;
    public static final int MERGED = 2;

    /** How long a fresh connection takes to swell open. */
    private static final float MERGE_MS = 110.0f;
    /** Wobble of the stubs after a pinch-off: decay time and period. */
    private static final float RECOIL_DECAY_MS = 75.0f;
    private static final float RECOIL_PERIOD_MS = 190.0f;
    private static final long RECOIL_MS = 420;
    /** Stub length right after the pinch-off, relative to the gap at that moment. */
    private static final float TOP_STUB_REACH = 0.7f;
    private static final float BOTTOM_STUB_REACH = 0.5f;
    /** Bases shrink to this fraction of their full width as the bridge stretches out. */
    private static final float BASE_STRETCHED = 0.55f;
    /** Bezier handles: how far the flare runs along each shape's edge, and how long the waist stays straight. */
    private static final float FLARE = 0.62f;
    private static final float WAIST_HANDLE = 0.28f;

    public final Path bridge = new Path();
    public final Path topStub = new Path();
    public final Path bottomStub = new Path();
    public boolean hasBridge;
    public boolean hasTopStub;
    public boolean hasBottomStub;

    /** Gap (px) at which the bridge pinches off, and below which separated shapes merge again. */
    public float breakDistance;
    public float mergeDistance;

    private boolean started;
    private boolean connected;
    private long connectedAt;
    private long brokeAt;
    private float brokeGap;
    private float brokeTopHalf;
    private float brokeBottomHalf;

    /**
     * Advances the bridge and rebuilds its paths.
     *
     * @param topX       centre x of the upper shape's lower edge
     * @param topY       y where the bridge leaves the upper shape (on or just inside its lower edge)
     * @param topHalf    half the width the bridge may use on the upper shape
     * @param bottomX    centre x of the lower shape's upper edge
     * @param bottomY    y of the lower shape's upper edge
     * @param bottomHalf half the width the bridge may use on the lower shape
     * @return {@link #NONE}, {@link #BROKE} or {@link #MERGED}
     */
    public int update(long now, float topX, float topY, float topHalf, float bottomX, float bottomY, float bottomHalf) {
        float gap = bottomY - topY;
        int event = NONE;
        if (!started) {
            // shapes that start out overlapping (a card pouring out of the pill) are connected from the start
            started = true;
            connected = gap < breakDistance;
            connectedAt = now - (long) MERGE_MS;
        } else if (connected && gap > breakDistance) {
            connected = false;
            brokeAt = now;
            brokeGap = gap;
            brokeTopHalf = topHalf;
            brokeBottomHalf = bottomHalf;
            event = BROKE;
        } else if (!connected && gap < mergeDistance) {
            connected = true;
            connectedAt = now;
            brokeAt = 0L;
            event = MERGED;
        }
        bridge.rewind();
        topStub.rewind();
        bottomStub.rewind();
        hasBridge = false;
        hasTopStub = false;
        hasBottomStub = false;
        if (connected) {
            if (gap > 0.5f && topHalf > 0.5f && bottomHalf > 0.5f) {
                buildBridge(now, topX, topY, topHalf, bottomX, bottomY, bottomHalf, gap);
            }
        } else if (brokeAt != 0L && now - brokeAt < RECOIL_MS) {
            buildStubs(now - brokeAt, topX, topY, bottomX, bottomY);
        }
        return event;
    }

    /** True while the bridge swells open or its stubs still wobble, so the caller keeps drawing frames. */
    public boolean animating(long now) {
        return (connected && now - connectedAt < MERGE_MS) || (!connected && brokeAt != 0L && now - brokeAt < RECOIL_MS);
    }

    /** Forgets all state, e.g. when the lower shape is gone. */
    public void reset() {
        started = false;
        connected = false;
        brokeAt = 0L;
        hasBridge = false;
        hasTopStub = false;
        hasBottomStub = false;
    }

    private void buildBridge(long now, float topX, float topY, float topHalf, float bottomX, float bottomY, float bottomHalf, float gap) {
        float stretch = Easing.clamp01(1.0f - (gap / breakDistance)); // 1 = touching, 0 = about to pinch off
        float grow = Easing.easeOutCubic((now - connectedAt) / MERGE_MS);
        float base = BASE_STRETCHED + ((1.0f - BASE_STRETCHED) * stretch);
        float a = topHalf * base * grow;
        float b = bottomHalf * base * grow;
        // the waist thins with the stretch, faster near the pinch-off, like a draining thread of liquid
        float waist = Math.min(a, b) * (float) Math.pow(stretch, 1.35d);
        if (a < 0.5f || b < 0.5f) {
            return;
        }
        float midX = (topX + bottomX) / 2.0f;
        float midY = (topY + bottomY) / 2.0f;
        float handle = gap * WAIST_HANDLE;
        Path p = bridge;
        p.moveTo(topX - a, topY);
        p.cubicTo(topX - a + ((a - waist) * FLARE), topY, midX - waist, midY - handle, midX - waist, midY);
        p.cubicTo(midX - waist, midY + handle, bottomX - b + ((b - waist) * FLARE), bottomY, bottomX - b, bottomY);
        p.lineTo(bottomX + b, bottomY);
        p.cubicTo(bottomX + b - ((b - waist) * FLARE), bottomY, midX + waist, midY + handle, midX + waist, midY);
        p.cubicTo(midX + waist, midY - handle, topX + a - ((a - waist) * FLARE), topY, topX + a, topY);
        p.close();
        hasBridge = true;
    }

    private void buildStubs(long sinceBreak, float topX, float topY, float bottomX, float bottomY) {
        float wobble = (float) (Math.exp(-sinceBreak / RECOIL_DECAY_MS) * Math.cos((sinceBreak / RECOIL_PERIOD_MS) * 2.0d * Math.PI));
        if (wobble <= 0.0f) {
            return; // the stubs are pulled inside their shapes during this part of the wobble
        }
        float topLength = brokeGap * TOP_STUB_REACH * wobble;
        float bottomLength = brokeGap * BOTTOM_STUB_REACH * wobble;
        float topBase = brokeTopHalf * BASE_STRETCHED;
        float bottomBase = Math.min(brokeBottomHalf, brokeTopHalf) * BASE_STRETCHED;
        hasTopStub = drop(topStub, topX, topY, topBase, topLength);
        hasBottomStub = drop(bottomStub, bottomX, bottomY, bottomBase, -bottomLength);
    }

    /** A rounded drop hanging from (x, y): {@code length} > 0 points down, < 0 points up. */
    private static boolean drop(Path p, float x, float y, float half, float length) {
        if (Math.abs(length) < 0.5f || half < 0.5f) {
            return false;
        }
        float tipY = y + length;
        p.moveTo(x - half, y);
        p.cubicTo(x - (half * 0.45f), y, x - (half * 0.38f), tipY, x, tipY);
        p.cubicTo(x + (half * 0.38f), tipY, x + (half * 0.45f), y, x + half, y);
        p.close();
        return true;
    }
}
