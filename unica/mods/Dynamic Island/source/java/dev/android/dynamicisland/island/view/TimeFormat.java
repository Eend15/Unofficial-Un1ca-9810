package dev.android.dynamicisland.island.view;

import dev.android.dynamicisland.island.model.IslandItem;
import java.util.regex.Pattern;

/** Formats the clocks shown on the island ("3:07", "12:04:09", "01:30", hundredths for stopwatches). */
public final class TimeFormat {
    /** Texts that look like a clock; only those get the rolling-digit animation. */
    static final Pattern CLOCK_TEXT = Pattern.compile("-?\\d{1,2}(:\\d{2}){1,2}(\\.\\d{2})?");

    private TimeFormat() {
    }

    /** Elapsed / remaining time of a chronometer item, 0:00 style (hundredths for stopwatches). */
    public static String chronometer(IslandItem item) {
        long now = item.chronoUsesElapsedRealtime ? android.os.SystemClock.elapsedRealtime() : System.currentTimeMillis();
        long base = item.chronoUsesElapsedRealtime ? item.chronoElapsedBase : item.chronoBase;
        long ms = item.chronoCountDown ? base - now : now - base;
        if (item.chronoMillis) {
            return withHundredths(ms);
        }
        long second = Math.max(0L, ms) / 1000;
        if (item.chronoShownText == null || item.chronoShownSecond != second) {
            item.chronoShownText = clock(Math.max(0L, ms));
            item.chronoShownSecond = second;
        }
        return item.chronoShownText;
    }

    /** "1:05.37": the clock plus hundredths of a second. */
    public static String withHundredths(long ms) {
        long clamped=Math.max(0L,ms);
        StringBuilder out=new StringBuilder(16);
        appendClock(out,clamped/1000);out.append('.');appendTwo(out,(clamped%1000)/10);
        return out.toString();
    }

    /** "01:30" below an hour (the seek bar's fixed-width times), "1:02:03" above. */
    public static String padded(long ms) {
        long totalSeconds=Math.max(0L,ms)/1000;
        if(totalSeconds>=3600)return clock(ms);
        StringBuilder out=new StringBuilder(8);
        appendTwo(out,(totalSeconds/60)%60);out.append(':');appendTwo(out,totalSeconds%60);
        return out.toString();
    }

    /** "3:07", or "1:02:03" from one hour on; negative times read "0:00". */
    public static String clock(long ms) {
        if(ms<0)return "0:00";
        StringBuilder out=new StringBuilder(16);appendClock(out,ms/1000);return out.toString();
    }

    private static void appendClock(StringBuilder out,long totalSeconds) {
        long hours=totalSeconds/3600,minutes=(totalSeconds/60)%60;
        if(hours>0){out.append(hours).append(':');appendTwo(out,minutes);}
        else out.append(minutes);
        out.append(':');appendTwo(out,totalSeconds%60);
    }

    private static void appendTwo(StringBuilder out,long value) {
        if(value<10)out.append('0');out.append(value);
    }
}
