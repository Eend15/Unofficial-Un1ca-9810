package dev.android.dynamicisland.island.view;

import dev.android.dynamicisland.island.graphics.Easing;

/** Shared, reversible crossfade: compact and expanded content always have complementary weights. */
final class ContentHandoff {
    private static final long DURATION_MS = 220;
    /** Let the compact UI resolve after the crossfade, while the card finishes being absorbed. */
    private static final long COMPACT_FOCUS_MS = 380;
    final boolean expanding;
    final float fromExpanded;
    private final long start;
    private final long duration;
    private final float fromCompactBlur;
    private final long focusDuration;

    ContentHandoff(ContentHandoff previous, boolean expanding, long now) {
        this.expanding = expanding;
        fromExpanded = previous == null ? (expanding ? 0 : 1) : previous.expanded(now);
        fromCompactBlur = previous == null ? (expanding ? 0 : 1) : previous.compactBlur(now);
        start = now;
        duration = Math.max(1, Math.round(DURATION_MS * Math.abs((expanding ? 1 : 0) - fromExpanded)));
        focusDuration = expanding ? duration : Math.max(1, Math.round(COMPACT_FOCUS_MS * fromCompactBlur));
    }

    float expanded(long now) {
        float progress = Easing.easeInOut(IslandView.clamp01((now - start) / (float)duration));
        return Easing.lerp(fromExpanded, expanding ? 1 : 0, progress);
    }

    float compact(long now) { return 1 - expanded(now); }
    float compactBlur(long now) {
        float progress = Easing.easeInOut(IslandView.clamp01((now - start) / (float)focusDuration));
        return Easing.lerp(fromCompactBlur, expanding ? 1 : 0, progress);
    }

    boolean finished(long now) { return now - start >= Math.max(duration, focusDuration); }
}
