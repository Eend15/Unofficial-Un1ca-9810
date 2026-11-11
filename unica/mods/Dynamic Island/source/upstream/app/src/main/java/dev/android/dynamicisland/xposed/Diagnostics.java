package dev.android.dynamicisland.xposed;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.provider.Settings;
import java.text.SimpleDateFormat;
import java.util.ArrayDeque;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/**
 * What the module did inside System UI, in a form the user can read in the settings and send on: which stages of
 * the start-up ran, which hooks did not attach, what failed and the facts about the phone. System UI keeps the report
 * in a global setting (readable by every app, writable by System UI only), because the settings app lives in another
 * process and cannot see System UI's memory. Any thread.
 */
public final class Diagnostics {
    /** Name of the global setting that holds the report. */
    public static final String SETTING = "dynamicisland_report";

    public static final String ACTION_STATUS_PING = "dev.android.dynamicisland.STATUS_PING";
    public static final String STATUS_SETTING = "dynamicisland_status_ack";

    /** A new challenge prevents a report left by a previous process from looking connected. */
    public static long requestStatus(Context ctx) {
        long nonce = Math.max(1, SystemClock.elapsedRealtimeNanos());
        android.content.Intent request = new android.content.Intent(ACTION_STATUS_PING).setPackage("com.android.systemui");
        request.putExtra("nonce", nonce);
        android.app.BroadcastOptions options = android.app.BroadcastOptions.makeBasic();
        options.setShareIdentityEnabled(true);
        try { ctx.sendBroadcast(request, null, options.toBundle()); }
        catch (RuntimeException ignored) { /* Show an unconfirmed connection if broadcasts are unavailable. */ }
        return nonce;
    }

    public static void acknowledgeStatus(Context ctx, long nonce) {
        if (nonce <= 0) return;
        try { Settings.Global.putString(ctx.getContentResolver(), STATUS_SETTING, Long.toString(nonce)); }
        catch (RuntimeException ignored) { }
    }

    public static boolean statusAcknowledged(Context ctx, long nonce) {
        if (nonce <= 0) return false;
        try { return Long.toString(nonce).equals(Settings.Global.getString(ctx.getContentResolver(), STATUS_SETTING)); }
        catch (RuntimeException ignored) { return false; }
    }

    /** A later status request also proves a connection; an older acknowledgement does not. */
    public static boolean statusAcknowledgedSince(Context ctx, long nonce) {
        if (nonce <= 0) return false;
        try {
            long acknowledged = Long.parseLong(Settings.Global.getString(ctx.getContentResolver(), STATUS_SETTING));
            return acknowledged >= nonce && acknowledged <= SystemClock.elapsedRealtimeNanos();
        } catch (RuntimeException ignored) { return false; }
    }

    private static final int MAX_ERRORS = 8;
    private static final int MAX_EVENTS = 60;
    private static final int MAX_CHARS = 12000;
    /** One fact never takes more than this: a list of attached hooks used to push the recent events out of the report. */
    private static final int MAX_FACT_CHARS = 400;
    private static final long PUBLISH_INTERVAL_MS = 15_000;

    private static final Map<String, String> FACTS = new LinkedHashMap<>();
    private static final Map<String, String> STAGES = new LinkedHashMap<>();
    private static final ArrayDeque<String> ERRORS = new ArrayDeque<>();
    private static final ArrayDeque<String> EVENTS = new ArrayDeque<>();
    private static final SimpleDateFormat EVENT_TIME = new SimpleDateFormat("HH:mm:ss", Locale.US);
    private static long lastPublish;
    private static boolean dirty;
    private static Context context;

    private Diagnostics() {
    }

    /** Remembers a fact about the phone or the state of the module ("window", "created 1080x2340"). */
    public static synchronized void fact(String key, String value) {
        fact(key, value, MAX_FACT_CHARS);
    }

    /** Like {@link #fact(String, String)}, for the few values that need more room (a crash trace). */
    public static synchronized void fact(String key, String value, int maxChars) {
        String shown = value.length() > maxChars ? value.substring(0, maxChars) + "..." : value;
        if (!shown.equals(FACTS.put(key, shown))) {
            dirty = true;
        }
    }

    /** Records how a start-up stage went; {@code error} may be null. */
    public static synchronized void stage(String name, boolean ok, Throwable error) {
        String state = ok ? "ok" : "FAILED" + (error == null ? "" : " " + error.getClass().getSimpleName() + ": " + error.getMessage());
        if (!state.equals(STAGES.put(name, state))) {
            dirty = true;
        }
        if (error != null) {
            error(name, error);
        }
    }

    /** Remembers what just happened (an item came or went, the island hid, a setting changed), newest last. */
    public static synchronized void event(String what) {
        EVENTS.addLast(EVENT_TIME.format(new Date()) + " " + what);
        while (EVENTS.size() > MAX_EVENTS) {
            EVENTS.removeFirst();
        }
        dirty = true;
    }

    /** Keeps the last few exceptions the module contained (they are logged, but only the log of this boot has them). */
    public static synchronized void error(String site, Throwable t) {
        StackTraceElement[] trace = t.getStackTrace();
        String where = trace.length > 0 ? trace[0].getClassName().replaceAll("^.*\\.", "") + "." + trace[0].getMethodName() + ":" + trace[0].getLineNumber() : "?";
        Throwable root = t;
        while (root.getCause() != null && root.getCause() != root) {
            root = root.getCause();
        }
        String cause = root == t ? "" : " (caused by " + root.getClass().getSimpleName() + ": " + root.getMessage() + ")";
        String line = site + ": " + t.getClass().getSimpleName() + ": " + t.getMessage() + " at " + where + cause;
        if (!ERRORS.contains(line)) {
            ERRORS.addLast(line);
            while (ERRORS.size() > MAX_ERRORS) {
                ERRORS.removeFirst();
            }
            dirty = true;
        }
    }

    /** The report as text. */
    public static synchronized String report() {
        StringBuilder sb = new StringBuilder();
        sb.append("DynamicIsland ").append(CrashGuard.BUILD).append('\n');
        sb.append("time ").append(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date())).append(" uptime ")
                .append(SystemClock.elapsedRealtime() / 1000).append("s\n");
        sb.append("device ").append(Build.MANUFACTURER).append(' ').append(Build.MODEL).append(" android ").append(Build.VERSION.RELEASE)
                .append(" sdk ").append(Build.VERSION.SDK_INT).append('\n');
        sb.append("build ").append(Build.DISPLAY).append('\n');
        for (Map.Entry<String, String> e : FACTS.entrySet()) {
            sb.append(e.getKey()).append(' ').append(e.getValue()).append('\n');
        }
        int factsEnd = sb.length();
        sb.append("-- stages\n");
        for (Map.Entry<String, String> e : STAGES.entrySet()) {
            sb.append(e.getKey()).append(": ").append(e.getValue()).append('\n');
        }
        if (!ERRORS.isEmpty()) {
            sb.append("-- errors\n");
            for (String line : ERRORS) {
                sb.append(line).append('\n');
            }
        }
        if (!EVENTS.isEmpty()) {
            sb.append("-- recent events\n");
            for (String line : EVENTS) {
                sb.append(line).append('\n');
            }
        }
        if (sb.length() <= MAX_CHARS) {
            return sb.toString();
        }
        // too long: cut the facts, not the stages, errors and recent events at the end, which say what just happened
        String cut = "\n... (facts cut)\n";
        int room = MAX_CHARS - (sb.length() - factsEnd) - cut.length();
        if (room > 200) {
            return sb.substring(0, room) + cut + sb.substring(factsEnd);
        }
        return sb.substring(0, MAX_CHARS);
    }

    /** Gives the report to the settings app (at most every few seconds, off the calling thread). */
    public static synchronized void publish(Context ctx) {
        if (ctx != null) {
            context = ctx.getApplicationContext() != null ? ctx.getApplicationContext() : ctx;
        }
        long now = SystemClock.uptimeMillis();
        if (context == null || !dirty || now - lastPublish < PUBLISH_INTERVAL_MS) {
            return;
        }
        lastPublish = now;
        dirty = false;
        final String text = report();
        final Context c = context;
        new Thread(() -> {
            try {
                Settings.Global.putString(c.getContentResolver(), SETTING, text);
            } catch (Throwable ignored) {
                // no permission on this build: the module log still has everything
            }
        }, "dynamicisland-report").start();
    }

    /** For the settings app: the report System UI left, or null when the module has not run there. */
    public static String read(Context ctx) {
        try {
            return Settings.Global.getString(ctx.getContentResolver(), SETTING);
        } catch (Throwable t) {
            return null;
        }
    }
}
