package dev.android.dynamicisland.island.source;

/** Monotonic recording clock. A rolling notification timestamp is not a new recording start. */
final class RecordingClock {
    private long startElapsed;
    private long systemBase;

    void start(long base, boolean fromSystem, long wall, long elapsed) {
        startElapsed = elapsed - Math.max(0L, wall - base);
        systemBase = fromSystem ? base : 0L;
    }

    void update(long base, long wall, long elapsed) {
        // Once anchored, a notification timestamp cannot identify a new recording. The source
        // calls start() only for a new session; card recreation and rolling timestamps stay inert.
        if (systemBase > 0L || base <= 0L) return;
        long candidate = elapsed - Math.max(0L, wall - base);
        if (candidate <= startElapsed) {
            // A late first chronometer may recover an earlier start, never reduce elapsed time.
            startElapsed = candidate;
            systemBase = base;
        }
    }

    boolean matchesSystemBase(long base) {
        return base > 0L && base == systemBase;
    }

    long elapsedBase() {
        return startElapsed;
    }

    long base(long wall, long elapsed) {
        return wall - Math.max(0L, elapsed - startElapsed);
    }
}
