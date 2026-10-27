package dev.android.dynamicisland.island.graphics;

/** A per-surface render budget. Time remains real elapsed time; skipped frames never slow down clocks or springs. */
public final class FramePacer {
    private static final long INTERACTIVE_NS = 1_000_000_000L / 60;
    private static final long CONTINUOUS_NS = 1_000_000_000L / 30;
    /** Vsync timestamps can differ by a few microseconds between refresh cycles. */
    private static final long TOLERANCE_NS = 100_000;
    private long lastRendered;

    public boolean allow(boolean limited, boolean interactive, long frameNanos) {
        long interval = interval(limited, interactive);
        if (lastRendered != 0 && frameNanos >= lastRendered && frameNanos - lastRendered + TOLERANCE_NS < interval) return false;
        lastRendered = frameNanos;
        return true;
    }

    /** Delay before requesting vsync. Floor rounding lets the display choose the next suitable frame. */
    public long delayMillis(boolean limited, boolean interactive, long nowNanos) {
        if (lastRendered == 0 || nowNanos < lastRendered) return 0;
        return Math.max(0, interval(limited, interactive) - (nowNanos - lastRendered)) / 1_000_000;
    }

    public void reset() { lastRendered = 0; }

    private static long interval(boolean limited, boolean interactive) {
        return limited ? (interactive ? INTERACTIVE_NS : CONTINUOUS_NS) : 0;
    }
}
