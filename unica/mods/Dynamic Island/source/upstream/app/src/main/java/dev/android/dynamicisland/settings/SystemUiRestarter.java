package dev.android.dynamicisland.settings;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/**
 * Restarts the module's only scope, {@code com.android.systemui}, so hooks and settings that are read
 * at start-up apply without a reboot. Android has no unprivileged way to do this, so it asks the
 * root manager for a shell and kills the process; the system starts System UI again right away.
 */
final class SystemUiRestarter {
    private static final String PROCESS = "com.android.systemui";
    private static final long TIMEOUT_SECONDS = 10;

    private SystemUiRestarter() {
    }

    /** Blocks until the kill command finished; call off the main thread. @return true when root ran it. */
    static boolean restart() {
        return run("killall " + PROCESS) || run("pkill -f " + PROCESS);
    }

    private static boolean run(String command) {
        try {
            Process process = new ProcessBuilder("su", "-c", command).redirectErrorStream(true).start();
            if (!process.waitFor(TIMEOUT_SECONDS, TimeUnit.SECONDS)) {
                process.destroy();
                return false;
            }
            return process.exitValue() == 0;
        } catch (IOException e) {
            return false; // no su binary
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            return false;
        }
    }
}
