package dev.android.dynamicisland.island.source;

import java.util.ArrayDeque;

/**
 * The charging current worked out from how fast the battery's charge counter rises, for phones whose current
 * reading stays at 0 while they charge (the counter still moves). Samples older than {@link #KEEP_MS} are dropped.
 */
final class ChargeRate {
    /** The estimate needs this much time between its first and last sample. */
    static final long MIN_SPAN_MS = 10_000;
    /** A counter that has not moved is only believed to mean "no current" after this long (it moves in coarse steps). */
    static final long FLAT_SPAN_MS = 60_000;
    static final long KEEP_MS = 90_000;

    private static final class Sample {
        final long at, microAmpHours;
        Sample(long at, long microAmpHours) { this.at = at; this.microAmpHours = microAmpHours; }
    }

    private final ArrayDeque<Sample> samples = new ArrayDeque<>();

    void clear() { samples.clear(); }

    /** @param counter the charge counter in µAh; anything not positive is ignored (the phone has none) */
    void add(long now, long counter) {
        if (counter <= 0) { samples.clear(); return; }
        Sample last = samples.peekLast();
        if (last != null && (now < last.at || counter < last.microAmpHours)) samples.clear(); // a counter that fell is not charging
        samples.addLast(new Sample(now, counter));
        discardOld(now);
    }

    private void discardOld(long now) {
        while (!samples.isEmpty() && now - samples.peekFirst().at > KEEP_MS) samples.removeFirst();
    }

    /** The current in mA, or NaN while there is not enough to say. */
    double estimateMa(long now) {
        discardOld(now);
        Sample first = samples.peekFirst(), last = samples.peekLast();
        if (first == null || first == last) return Double.NaN;
        long span = last.at - first.at;
        if (span < MIN_SPAN_MS) return Double.NaN;
        long gained = last.microAmpHours - first.microAmpHours;
        if (gained == 0 && span < FLAT_SPAN_MS) return Double.NaN;
        return gained / 1000.0 / (span / 3_600_000.0);
    }
}
