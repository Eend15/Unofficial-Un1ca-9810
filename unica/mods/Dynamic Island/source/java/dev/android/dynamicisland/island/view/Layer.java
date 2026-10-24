package dev.android.dynamicisland.island.view;

import dev.android.dynamicisland.island.graphics.Easing;

/**
 * One {@link Content} fading in or out inside the pill or bubble, with its start time, delay and optional
 * horizontal slide. Incoming layers ease in (alpha, scale, slide); outgoing layers shrink and fade quickly.
 * Immutable apart from {@link #slideDir}; main thread only.
 */
public final class Layer {
    private static final float OUT_DURATION_MS = 110.0f;
    private static final float IN_DURATION_MS = 260.0f;
    /** After this long an incoming layer no longer animates. */
    private static final long SETTLE_MS = 320;
    /** "Elapsed time" reported for outgoing layers: far past any intro animation of the content. */
    private static final long ELAPSED_FINISHED = Long.MAX_VALUE / 4;
    /** Outgoing layers shrink by this much while fading out. */
    private static final float SCALE_RANGE = 0.12f;
    /** Incoming layers grow from this size, overshoot slightly and settle at 1. */
    private static final float IN_SCALE_FROM = 0.8f;

    final Content content;
    final long delay;
    /** Alpha an outgoing layer starts fading from (the alpha it had when it was replaced). */
    final float fromAlpha;
    final boolean outgoing;
    /** -1 / +1 slides in from the left / right, 0 does not slide. */
    int slideDir;
    final long start;

    private Layer(Content content, long start, long delay, boolean outgoing, float fromAlpha) {
        this.content = content;
        this.start = start;
        this.delay = delay;
        this.outgoing = outgoing;
        this.fromAlpha = fromAlpha;
    }

    static Layer incoming(Content content, long now, long delay) {
        return new Layer(content, now, delay, false, 1.0f);
    }

    /** A layer that is fully visible from the start. */
    static Layer shown(Content content) {
        return new Layer(content, 0L, 0L, false, 1.0f);
    }

    /** A layer that takes over the timing of {@code previous}, so an update does not restart the animation. */
    static Layer shownLike(Content content, Layer previous) {
        Layer layer = new Layer(content, previous.start, previous.delay, false, 1.0f);
        layer.slideDir = previous.slideDir;
        return layer;
    }

    Layer slide(int dir) {
        slideDir = dir;
        return this;
    }

    /** The fading-out copy of this layer, starting from its current alpha. */
    Layer toOutgoing(long now, int dir) {
        Layer layer = new Layer(content, now, 0L, true, alpha(now));
        layer.slideDir = dir;
        return layer;
    }

    /** Linear animation progress, 0..1. */
    float progress(long now) {
        return outgoing ? IslandView.clamp01((now - start) / OUT_DURATION_MS) : IslandView.clamp01(((now - start) - delay) / IN_DURATION_MS);
    }

    long elapsedIn(long now) {
        if (outgoing) {
            return ELAPSED_FINISHED;
        }
        return (now - start) - delay;
    }

    float alpha(long now) {
        float p = progress(now);
        return outgoing ? fromAlpha * (1.0f - p) : 1.0f - ((1.0f - p) * (1.0f - p));
    }

    float scale(long now) {
        float p = progress(now);
        if (outgoing) {
            return 1.0f - (SCALE_RANGE * p);
        }
        // pops in with a small overshoot, like the pill itself
        return IN_SCALE_FROM + ((1.0f - IN_SCALE_FROM) * Easing.easeOutBack(p));
    }

    /** Horizontal slide as a fraction of the slide distance (-1..1). */
    float offset(long now) {
        if (slideDir == 0) {
            return 0.0f;
        }
        float p = progress(now);
        if (outgoing) {
            return slideDir * p;
        }
        float eased = 1.0f - ((1.0f - p) * (1.0f - p));
        return slideDir * (1.0f - eased);
    }

    boolean finished(long now) {
        return outgoing && progress(now) >= 1.0f;
    }

    boolean settled(long now) {
        return !outgoing && (now - start) - delay > SETTLE_MS;
    }
}
