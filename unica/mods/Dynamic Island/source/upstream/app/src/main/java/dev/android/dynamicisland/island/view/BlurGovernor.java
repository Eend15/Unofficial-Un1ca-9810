package dev.android.dynamicisland.island.view;

import java.util.ArrayDeque;
import java.util.function.Consumer;

/**
 * Keeps the transition blur from making a slow phone stutter. While a transition blur is on screen it watches how
 * evenly frames arrive; when several frames in a short window are late it switches the blur off (the content then
 * only cross-fades) for a while and tries again later, waiting longer each time it has to give up again. A phone
 * that keeps its frame rate never notices: the blur is neither weakened nor shortened for it.
 */
final class BlurGovernor {
    static final BlurGovernor INSTANCE = new BlurGovernor();

    /** A frame this far behind the previous one is late on its own (below about 33 fps). */
    static final long LATE_NANOS = 30_000_000L;
    /** A frame that is this late and also well behind the recent rhythm is late too. */
    static final long RHYTHM_FLOOR_NANOS = 20_000_000L;
    static final float RHYTHM_FACTOR = 1.75f;
    /** Longer gaps are a pause (screen off, nothing animating), not slowness. */
    static final long PAUSE_NANOS = 120_000_000L;
    static final int WINDOW = 12;
    static final int MIN_SAMPLES = 6;
    static final int LATE_LIMIT = 3;
    static final long FIRST_PENALTY_MS = 120_000L;
    static final long MAX_PENALTY_MS = 1_800_000L;
    /** Giving up again within this long of the blur coming back doubles the wait. */
    static final long REPEAT_WITHIN_MS = 600_000L;

    private final ArrayDeque<Boolean> window = new ArrayDeque<>();
    private final long[] recent = new long[8];
    private int recentCount;
    private boolean blurThisFrame;
    private long lastBlurFrameNanos;
    private long reducedUntilMs;
    private long penaltyMs = FIRST_PENALTY_MS;
    private long lastRestoreMs = Long.MIN_VALUE / 2;
    private int degradeCount;
    private Consumer<String> report;

    /** Where state changes are written (the diagnostics report); optional. */
    synchronized void setReport(Consumer<String> report) {
        this.report = report;
    }

    /** True when the transition blur may run now. */
    synchronized boolean allowed(long nowMs) {
        if (reducedUntilMs == 0) return true;
        if (nowMs < reducedUntilMs) return false;
        lastRestoreMs = nowMs;
        reducedUntilMs = 0;
        clearWindow();
        say("transition blur on again after a pause");
        return true;
    }

    /** A transition blur was drawn in this frame. */
    synchronized void blurDrawn() {
        blurThisFrame = true;
    }

    /** Called once per rendered frame with its vsync time. */
    synchronized void onFrame(long frameNanos, long nowMs) {
        if (!blurThisFrame) {
            lastBlurFrameNanos = 0;
            return;
        }
        blurThisFrame = false;
        if (lastBlurFrameNanos == 0 || frameNanos < lastBlurFrameNanos) {
            lastBlurFrameNanos = frameNanos;
            return;
        }
        long delta = frameNanos - lastBlurFrameNanos;
        lastBlurFrameNanos = frameNanos;
        if (delta > PAUSE_NANOS) {
            clearWindow();
            return;
        }
        boolean late = delta > LATE_NANOS
                || (delta > RHYTHM_FLOOR_NANOS && recentCount >= 3 && delta > RHYTHM_FACTOR * median());
        remember(delta);
        window.addLast(late);
        if (window.size() > WINDOW) window.removeFirst();
        if (window.size() >= MIN_SAMPLES && lateCount() >= LATE_LIMIT) degrade(nowMs);
    }

    synchronized void reset() {
        window.clear();
        recentCount = 0;
        blurThisFrame = false;
        lastBlurFrameNanos = 0;
        reducedUntilMs = 0;
        penaltyMs = FIRST_PENALTY_MS;
        lastRestoreMs = Long.MIN_VALUE / 2;
        degradeCount = 0;
    }

    private void degrade(long nowMs) {
        penaltyMs = nowMs - lastRestoreMs < REPEAT_WITHIN_MS ? Math.min(MAX_PENALTY_MS, penaltyMs * 2) : FIRST_PENALTY_MS;
        reducedUntilMs = nowMs + penaltyMs;
        degradeCount++;
        clearWindow();
        say("transition blur paused for " + (penaltyMs / 1000) + " s after late frames (" + degradeCount + " time"
                + (degradeCount == 1 ? "" : "s") + " this run)");
    }

    private void clearWindow() {
        window.clear();
        recentCount = 0;
        lastBlurFrameNanos = 0;
    }

    private int lateCount() {
        int n = 0;
        for (boolean late : window) if (late) n++;
        return n;
    }

    private void remember(long delta) {
        System.arraycopy(recent, 0, recent, 1, recent.length - 1);
        recent[0] = delta;
        if (recentCount < recent.length) recentCount++;
    }

    private long median() {
        long[] copy = java.util.Arrays.copyOf(recent, recentCount);
        java.util.Arrays.sort(copy);
        return copy[copy.length / 2];
    }

    private void say(String text) {
        Consumer<String> sink = report;
        if (sink != null) sink.accept(text);
    }
}
