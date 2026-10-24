package dev.android.dynamicisland.settings;

import android.content.Context;
import android.net.Uri;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/**
 * Restarts the module's only scope, {@code com.android.systemui}, so hooks and settings that are read
 * at start-up apply without a reboot. Built-in UN1CA SystemUI observes {@code unica_restart_token} via
 * {@link NativeSettingsProvider}, so no root shell is required; root remains as a fallback.
 */
final class SystemUiRestarter {
    private static final String PROCESS = "com.android.systemui";
    private static final long TIMEOUT_SECONDS = 10;
    private static final Uri PROVIDER_URI = Uri.parse("content://io.mesalabs.unica.dynamicisland.settings");

    private SystemUiRestarter() {
    }

    static boolean restart(Context context) {
        if (context != null) {
            try {
                context.getSharedPreferences(ModuleSettings.FILE, Context.MODE_PRIVATE)
                        .edit()
                        .putLong("unica_restart_token", System.currentTimeMillis())
                        .commit();
                context.getContentResolver().notifyChange(PROVIDER_URI, null);
                return true;
            } catch (Throwable ignored) {
            }
        }
        return restart();
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
