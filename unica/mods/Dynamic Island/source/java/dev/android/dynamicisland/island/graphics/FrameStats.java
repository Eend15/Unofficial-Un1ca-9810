package dev.android.dynamicisland.island.graphics;

import java.util.Locale;

/**
 * How evenly the island's animation frames arrive while it moves: the gaps between consecutive animation frames,
 * counted by size. It tells a display that runs the island at 120 Hz from one that runs it at 60 or less.
 */
public final class FrameStats {
    /** A longer pause than this between two frames is a rest, not a slow frame. */
    private static final long REST_NS = 120_000_000L;
    private static final long REPORT_EVERY_NS = 3_000_000_000L;
    private static final int MIN_FRAMES_TO_REPORT = 30;

    private long last;
    private long reportedAt;
    private int total, fast, mid, slow, stalled;
    private double sumMs;

    /** @param moving whether this frame belongs to an animation; a frame that does not breaks the run */
    public void onFrame(long frameNanos, boolean moving) {
        if (!moving) { last = 0; return; }
        if (last != 0 && frameNanos > last && frameNanos - last < REST_NS) {
            double ms = (frameNanos - last) / 1_000_000.0;
            total++;
            sumMs += ms;
            if (ms < 11) fast++;
            else if (ms < 19) mid++;
            else if (ms < 40) slow++;
            else stalled++;
        }
        last = frameNanos;
    }

    /** The one-line summary once there are enough frames and some time has passed since the last one, else null. */
    public String reportIfDue(long nowNanos, float displayHz) {
        if (!due(nowNanos)) return null;
        reportedAt = nowNanos;
        return summary(displayHz);
    }

    /** Whether {@link #reportIfDue} would report now; the display's rate need only be asked for when it does. */
    public boolean due(long nowNanos) {
        return total >= MIN_FRAMES_TO_REPORT && nowNanos - reportedAt >= REPORT_EVERY_NS;
    }

    String summary(float displayHz) {
        if (total == 0) return "no animation frames yet";
        return String.format(Locale.ROOT, "%d frames, mean %.1f ms; under 11 ms %d%%, 11-19 ms %d%%, 19-40 ms %d%%, over 40 ms %d%%; display %.0f Hz",
                total, sumMs / total, share(fast), share(mid), share(slow), share(stalled), displayHz);
    }

    private int share(int part) { return Math.round(100f * part / total); }
}
