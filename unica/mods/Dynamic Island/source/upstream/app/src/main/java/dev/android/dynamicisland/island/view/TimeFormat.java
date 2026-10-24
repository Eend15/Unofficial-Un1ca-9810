package dev.android.dynamicisland.island.view;

import dev.android.dynamicisland.island.model.IslandItem;
import java.util.Locale;
import java.util.regex.Pattern;

/** Formats the clocks shown on the island ("3:07", "12:04:09", "01:30", hundredths for stopwatches). */
public final class TimeFormat {
    /** Texts that look like a clock; only those get the rolling-digit animation. */
    static final Pattern CLOCK_TEXT = Pattern.compile("-?\\d{1,2}(:\\d{2}){1,2}(\\.\\d{2})?");

    private TimeFormat() {
    }

    /** Elapsed / remaining time of a chronometer item, 0:00 style (hundredths for stopwatches). */
    public static String chronometer(IslandItem item) {
        long now = System.currentTimeMillis();
        long ms = item.chronoCountDown ? item.chronoBase - now : now - item.chronoBase;
        return item.chronoMillis ? withHundredths(ms) : clock(Math.max(0L, ms));
    }

    /** "1:05.37": the clock plus hundredths of a second. */
    public static String withHundredths(long ms) {
        long clamped = Math.max(0L, ms);
        return clock(clamped) + String.format(Locale.US, ".%02d", (clamped % 1000) / 10);
    }

    /** "01:30" below an hour (the seek bar's fixed-width times), "1:02:03" above. */
    public static String padded(long ms) {
        long totalSeconds = Math.max(0L, ms) / 1000;
        if (totalSeconds >= 3600) {
            return clock(ms);
        }
        return String.format(Locale.US, "%02d:%02d", (totalSeconds / 60) % 60, totalSeconds % 60);
    }

    /** "3:07", or "1:02:03" from one hour on; negative times read "0:00". */
    public static String clock(long ms) {
        if (ms < 0) {
            return "0:00";
        }
        long totalSeconds = ms / 1000;
        long hours = totalSeconds / 3600;
        long minutes = (totalSeconds / 60) % 60;
        long seconds = totalSeconds % 60;
        if (hours > 0) {
            return String.format(Locale.US, "%d:%02d:%02d", hours, minutes, seconds);
        }
        return String.format(Locale.US, "%d:%02d", minutes, seconds);
    }
}
