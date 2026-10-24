package dev.android.dynamicisland.xposed;

import android.util.Log;
import de.robv.android.xposed.XposedBridge;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/** Module logging: logcat always, the LSPosed module log when the bridge is there. Safe from any thread. */
public final class XLog {
    private static final String TAG = "DynamicIsland";
    private static final String BRIDGE_PREFIX = "DynamicIsland: ";
    /** Reports per call site before {@link #once} goes quiet. */
    private static final int REPORT_LIMIT = 3;
    private static final Map<String, Integer> REPORTS = new ConcurrentHashMap<>();

    private XLog() {
    }

    public static void i(String msg) {
        Log.i(TAG, msg);
        toBridge(msg);
    }

    /** Something that happened (not a failure): logcat, the module log and the recent events of the report. */
    public static void event(String msg) {
        Log.i(TAG, msg);
        Diagnostics.event(msg);
        toBridge(msg);
    }

    public static void d(String msg) {
        Log.d(TAG, msg);
    }

    public static void e(String msg, Throwable t) {
        Diagnostics.error(msg, t);
        Log.e(TAG, msg, t);
        toBridge(msg + ": " + Log.getStackTraceString(t));
    }

    /**
     * Logs an exception that was contained at a main-thread entry point, for the first three
     * occurrences per {@code site}, so a persistent bug shows up without flooding the log every frame.
     */
    public static void once(String site, Throwable t) {
        Integer count = REPORTS.merge(site, 1, Integer::sum);
        if (count != null && count <= REPORT_LIMIT) {
            e("contained exception in " + site, t);
        }
    }

    private static void toBridge(String line) {
        try {
            XposedBridge.log(BRIDGE_PREFIX + line);
        } catch (Throwable ignored) {
            // no Xposed bridge (unit tests); logcat has the line
        }
    }
}
