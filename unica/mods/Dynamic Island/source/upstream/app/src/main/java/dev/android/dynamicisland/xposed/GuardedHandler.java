package dev.android.dynamicisland.xposed;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/**
 * A handler whose messages and posted runnables cannot take System UI down: an exception in one is logged (and kept
 * for the diagnostics report) and the looper carries on. An exception that escapes a posted runnable of this module
 * is otherwise fatal for the whole process, and {@link CrashGuard} then counts it against the module.
 */
public class GuardedHandler extends Handler {
    public GuardedHandler(Looper looper) {
        super(looper);
    }

    @Override
    public void dispatchMessage(Message message) {
        try {
            super.dispatchMessage(message);
        } catch (Throwable t) {
            XLog.once("handler task", t);
        }
    }
}
