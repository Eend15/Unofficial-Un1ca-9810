package dev.android.dynamicisland.island.source;

import android.os.Bundle;
import android.graphics.drawable.Icon;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.XLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Fills the progress fields of an {@link IslandItem}: the plain bar (value, indeterminate flag,
 * Samsung's coloured segments) and the Android 16 {@code ProgressStyle} extras (segments, milestone
 * points, tracker icon).
 */
final class ProgressBinder {
    private static final String SEG_COLOR = "android.ongoingActivityNoti.progressSegments.segmentColor";
    private static final String SEG_START = "android.ongoingActivityNoti.progressSegments.segmentStart";

    private final IconLoader icons;
    /** Packages whose ProgressStyle bundle layout was already logged. */
    private final Set<String> tracedPackages = new HashSet<>();

    ProgressBinder(IconLoader icons) {
        this.icons = icons;
    }

    /** Progress value, track colour and Samsung segments of an ongoing activity. */
    void bindBar(IslandItem it, Object data, Bundle extras, String pkg) {
        int value = Refl.getInt(data, "mProgress", -1);
        int max = Refl.getInt(data, "mProgressMax", 0);
        it.progressIndeterminate = Refl.getBool(data, "mProgressIndeterminate", false);
        if (it.progressStyle || max <= 0) {
            // ProgressStyle and plain progress notifications keep their numbers in the extras
            value = extras.getInt("android.progress", value);
            max = extras.getInt("android.progressMax", max);
        }
        if (value >= 0 && !it.progressIndeterminate) {
            // System UI reads a missing maximum as a percentage
            it.progress = fraction(value / (float) (max > 0 ? max : 100));
        }
        it.progressTrackColor = Refl.getInt(data, "mProgressColor", 0);
        bindSamsungSegments(it, data, pkg);
    }

    /** {@code mProgressSegments}: a Bundle[] of start / colour pairs, plus the marker icon. */
    private void bindSamsungSegments(IslandItem it, Object data, String pkg) {
        if (!(Refl.get(data, "mProgressSegments") instanceof Object[])) {
            return;
        }
        List<Bundle> segments = bundlesOf(Refl.get(data, "mProgressSegments"));
        if (segments.isEmpty()) {
            return;
        }
        int[] colors = new int[segments.size()];
        float[] starts = new float[segments.size()];
        for (int i = 0; i < colors.length; i++) {
            colors[i] = segments.get(i).getInt(SEG_COLOR);
            starts[i] = fraction(segments.get(i).getFloat(SEG_START));
        }
        it.progressSegmentColors = colors;
        it.progressSegmentStarts = starts;
        it.progressThumb = icons.load((Icon) Refl.get(data, "mProgressSegmentIcon"), pkg);
    }

    /**
     * Android 16 ProgressStyle: coloured segments whose lengths add up to the bar, milestone points and
     * a tracker icon. The bar maximum is the sum of the segment lengths.
     */
    void bindStyle(IslandItem it, Bundle extras, String pkg) {
        List<Bundle> segments = bundlesOf(extras.get("android.progressSegments"));
        if (segments.isEmpty()) {
            return;
        }
        List<Bundle> points = bundlesOf(extras.get("android.progressPoints"));
        traceOnce(pkg, segments, points);

        int count = segments.size();
        int[] colors = new int[count];
        long[] lengths = new long[count];
        long total = 0;
        for (int i = 0; i < count; i++) {
            lengths[i] = Math.max(0, firstInt(segments.get(i), 0, "length", "lengthInt"));
            colors[i] = firstInt(segments.get(i), 0, "colorInt", "color");
            total += lengths[i];
        }
        if (total <= 0) {
            // no lengths reported: equal parts
            Arrays.fill(lengths, 1L);
            total = count;
        }
        float[] starts = new float[count];
        long before = 0;
        for (int i = 0; i < count; i++) {
            starts[i] = before / (float) total;
            before += lengths[i];
        }

        boolean coloured = Arrays.stream(colors).anyMatch(c -> c != 0);
        if (coloured) {
            it.progressSegmentColors = colors;
            it.progressSegmentStarts = starts;
            // EXTRA_STYLED_BY_PROGRESS is the framework key; the longer name is accepted too
            String styledKey = extras.containsKey("android.styledByProgress")
                    ? "android.styledByProgress" : "android.progressStyledByProgress";
            it.progressStyledByProgress = extras.getBoolean(styledKey, true);
        }

        int value = extras.getInt("android.progress", -1);
        int max = extras.getInt("android.progressMax", 0);
        if (value >= 0 && !it.progressIndeterminate) {
            it.progress = fraction(value / (float) (max > 0 ? max : total));
        }
        if (coloured) {
            int shown = it.progress >= 0.0f ? segmentAt(starts, it.progress) : 0;
            if (colors[shown] != 0) {
                it.accent = Colors.readableOnBlack(colors[shown]);
            }
        }

        bindPoints(it, points, total);
        Icon tracker = extras.getParcelable("android.progressTrackerIcon", Icon.class);
        if (tracker != null) {
            it.progressThumb = icons.load(tracker, pkg);
        }
    }

    /** Index of the last segment that starts at or before {@code progress}. */
    private static int segmentAt(float[] starts, float progress) {
        int found = 0;
        for (int i = 0; i < starts.length; i++) {
            if (starts[i] <= progress) {
                found = i;
            }
        }
        return found;
    }

    private static void bindPoints(IslandItem it, List<Bundle> points, long total) {
        float[] positions = new float[points.size()];
        int[] colors = new int[points.size()];
        int kept = 0;
        for (Bundle point : points) {
            int position = firstInt(point, -1, "positionInt", "position");
            if (position >= 0) {
                positions[kept] = fraction(position / (float) total);
                colors[kept] = firstInt(point, 0, "colorInt", "color");
                kept++;
            }
        }
        if (kept > 0) {
            it.progressPointPositions = Arrays.copyOf(positions, kept);
            it.progressPointColors = Arrays.copyOf(colors, kept);
        }
    }

    /** The exact bundle layout is framework-internal; one log line per app makes a mismatch easy to spot. */
    private void traceOnce(String pkg, List<Bundle> segments, List<Bundle> points) {
        if (tracedPackages.add(pkg)) {
            XLog.i("ProgressStyle from " + pkg + ": segment keys " + segments.get(0).keySet()
                    + ", point keys " + (points.isEmpty() ? null : points.get(0).keySet()));
        }
    }

    /** Segments and points arrive as a Parcelable[] (what System UI reads) or as a List. */
    private static List<Bundle> bundlesOf(Object raw) {
        List<?> items = raw instanceof Object[] ? Arrays.asList((Object[]) raw)
                : raw instanceof List ? (List<?>) raw : List.of();
        List<Bundle> bundles = new ArrayList<>();
        for (Object o : items) {
            if (o instanceof Bundle) {
                bundles.add((Bundle) o);
            }
        }
        return bundles;
    }

    /** Value of the first of {@code keys} the bundle holds. */
    private static int firstInt(Bundle b, int fallback, String... keys) {
        for (String key : keys) {
            if (b.containsKey(key)) {
                return b.getInt(key, fallback);
            }
        }
        return fallback;
    }

    static float fraction(float v) {
        return Math.max(0.0f, Math.min(1.0f, v));
    }
}
