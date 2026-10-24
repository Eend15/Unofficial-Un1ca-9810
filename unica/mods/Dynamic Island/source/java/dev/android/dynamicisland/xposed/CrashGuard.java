package dev.android.dynamicisland.xposed;

import android.content.pm.ApplicationInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import de.robv.android.xposed.XposedBridge;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;

/**
 * Keeps a faulty build from crash-looping System UI (which makes Android's rescue party, and then
 * LSPosed's safe mode, kick in).
 *
 * <p>Two ways to switch the module off until it is updated:
 * <ul>
 * <li>Every System UI start that loads the module is counted as "unstable" until the process has
 * survived {@link #STABLE_AFTER_MS}; {@link #MAX_UNSTABLE_STARTS} unstable starts in a row (a crash loop
 * right at start, whatever its cause).</li>
 * <li>{@link #MAX_OUR_CRASHES} crashes whose stack trace runs through this module within
 * {@link #OUR_CRASH_WINDOW_MS}, however long System UI ran before each of them.</li>
 * </ul>
 * Uncaught exceptions are written to a report that is replayed into the LSPosed module log on the next
 * start, so the cause can be read even after a crash. State lives in device-protected storage: System UI
 * starts before the first unlock, when its normal (credential-encrypted) data directory is still locked.
 */
public final class CrashGuard {
    /** Bump together with the module version: a new build gets a fresh chance. */
    static final String BUILD = "0.1.10";

    private static final long STABLE_AFTER_MS = 45_000;
    // two quick restarts (theme / font change, double reboot) are normal; three in a row are a loop
    private static final int MAX_UNSTABLE_STARTS = 3;
    private static final int MAX_OUR_CRASHES = 3;
    private static final long OUR_CRASH_WINDOW_MS = 10 * 60_000;
    /** After this long the "stays off" verdict is forgotten and the module gets another try. */
    private static final long OFF_EXPIRES_MS = 12 * 3_600_000L;
    private static final String STATE = "dynamicisland-guard.txt";
    private static final String REPORT = "dynamicisland-crash.txt";

    private static File dir;

    private CrashGuard() {
    }

    /** @return false when the module must stay out of this System UI process. */
    static boolean enter(ApplicationInfo app) {
        try {
            String base = app.deviceProtectedDataDir != null ? app.deviceProtectedDataDir : app.dataDir;
            dir = new File(base, "files");
            //noinspection ResultOfMethodCallIgnored
            dir.mkdirs();
            replayPreviousCrash();
            State st = State.load();
            if (st.unstable >= MAX_UNSTABLE_STARTS) {
                log("crash guard: " + st.unstable + " unstable System UI starts in a row, module stays off until it is updated");
                Diagnostics.fact("crash guard", "OFF: " + st.unstable + " unstable starts in a row");
                return false;
            }
            if (st.ourCrashes >= MAX_OUR_CRASHES) {
                log("crash guard: System UI crashed " + st.ourCrashes + " times in this module within "
                        + (OUR_CRASH_WINDOW_MS / 60_000) + " minutes, module stays off until it is updated");
                Diagnostics.fact("crash guard", "OFF: " + st.ourCrashes + " module crashes");
                return false;
            }
            if (st.reset) {
                Diagnostics.fact("crash guard", "state reset (" + st.resetReason + ")");
            }
            st.unstable++;
            st.lastUnstable = System.currentTimeMillis();
            st.save();
            watchForCrashes();
            new Handler(Looper.getMainLooper()).postDelayed(CrashGuard::markStable, STABLE_AFTER_MS);
            return true;
        } catch (Throwable t) {
            // never let the guard itself be the reason the module does not load
            return true;
        }
    }

    /** The persisted counters; anything unreadable or from another build counts as a fresh start. */
    private static final class State {
        int unstable;
        int ourCrashes;
        long firstOurCrash;
        long lastUnstable;
        boolean reset;
        String resetReason = "";

        static State load() {
            State st = new State();
            String[] lines = read(STATE);
            if (lines != null && lines.length >= 2 && BUILD.equals(lines[0])) {
                st.unstable = parse(lines[1]);
                if (lines.length >= 4) {
                    st.ourCrashes = parse(lines[2]);
                    st.firstOurCrash = parseLong(lines[3]);
                }
                if (lines.length >= 6) {
                    st.lastUnstable = parseLong(lines[4]);
                    // a system update (new build fingerprint) changes everything the old failures were about
                    if (!fingerprint().equals(lines[5].trim())) {
                        st.reset("system build changed");
                    }
                }
            }
            if (st.unstable >= MAX_UNSTABLE_STARTS && System.currentTimeMillis() - st.lastUnstable > OFF_EXPIRES_MS) {
                st.reset("off state expired"); // the guard never switches the module off for good
            }
            if (st.ourCrashes > 0 && System.currentTimeMillis() - st.firstOurCrash > OUR_CRASH_WINDOW_MS) {
                st.ourCrashes = 0; // old crashes no longer count
                st.firstOurCrash = 0;
            }
            return st;
        }

        void reset(String reason) {
            unstable = 0;
            ourCrashes = 0;
            firstOurCrash = 0;
            reset = true;
            resetReason = reason;
        }

        void save() throws java.io.IOException {
            write(STATE, BUILD + "\n" + unstable + "\n" + ourCrashes + "\n" + firstOurCrash + "\n" + lastUnstable
                    + "\n" + fingerprint());
        }
    }

    private static void markStable() {
        try {
            State st = State.load();
            st.unstable = 0;
            st.save();
            XLog.i("crash guard: System UI stable, counter reset");
        } catch (Throwable ignored) {
            // best effort
        }
    }

    private static void watchForCrashes() {
        final Thread.UncaughtExceptionHandler previous = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler((thread, throwable) -> {
            try {
                StringWriter sw = new StringWriter();
                throwable.printStackTrace(new PrintWriter(sw));
                boolean ours = sw.toString().contains("dev.android.dynamicisland");
                write(REPORT, "build " + BUILD + " thread " + thread.getName() + " uptime " + SystemClock.uptimeMillis()
                        + "ms module-involved=" + ours + "\n" + sw);
                if (ours) {
                    State st = State.load();
                    if (st.ourCrashes == 0) {
                        st.firstOurCrash = System.currentTimeMillis();
                    }
                    st.ourCrashes++;
                    st.save();
                }
            } catch (Throwable ignored) {
                // the original handler still has to run
            }
            if (previous != null) {
                previous.uncaughtException(thread, throwable);
            }
        });
    }

    private static void replayPreviousCrash() {
        String[] report = read(REPORT);
        if (report == null) {
            return;
        }
        StringBuilder sb = new StringBuilder("crash guard: System UI crashed during the previous run:\n");
        for (String line : report) {
            sb.append(line).append('\n');
        }
        log(sb.toString());
        String text = sb.toString();
        // keep the cause where the settings app can show it: LSPosed logs are rarely at hand
        Diagnostics.fact("previous crash", text.length() > 1500 ? text.substring(0, 1500) : text);
        //noinspection ResultOfMethodCallIgnored
        new File(dir, REPORT).delete();
    }

    private static void log(String message) {
        XLog.i(message);
        try {
            XposedBridge.log("DynamicIsland: " + message);
        } catch (Throwable ignored) {
            // logging only
        }
    }

    private static String fingerprint() {
        String f = android.os.Build.FINGERPRINT;
        return f == null ? "" : f.replace('\n', ' ');
    }

    private static long parseLong(String s) {
        try {
            return Long.parseLong(s.trim());
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    private static int parse(String s) {
        try {
            return Integer.parseInt(s.trim());
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    private static String[] read(String name) {
        File f = new File(dir, name);
        if (!f.isFile()) {
            return null;
        }
        try {
            byte[] data = java.nio.file.Files.readAllBytes(f.toPath());
            return new String(data, StandardCharsets.UTF_8).split("\n");
        } catch (Throwable t) {
            return null;
        }
    }

    private static void write(String name, String content) throws java.io.IOException {
        try (FileOutputStream out = new FileOutputStream(new File(dir, name))) {
            out.write(content.getBytes(StandardCharsets.UTF_8));
        }
    }
}
