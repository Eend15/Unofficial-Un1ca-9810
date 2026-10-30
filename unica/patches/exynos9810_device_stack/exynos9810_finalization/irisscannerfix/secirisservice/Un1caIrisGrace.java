package com.samsung.android.server.iris;

import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;

/**
 * Longer IR window for iris registration.
 *
 * SecIrisService stops every scan after 9 s (IRIS_ERROR_EYE_SAFETY_TIMEOUT). On this ROM
 * the iris TEE gets fewer frames per second than on stock, so registration rarely finishes
 * in time. During registration only, the timer is moved to ENROLL_IR_MS after it started;
 * unlock scans keep the stock 9 s.
 */
final class Un1caIrisGrace {
    private static final String TAG = "UN1CA-IrisGrace";
    // IrisService.mHandler message for IRIS_ERROR_EYE_SAFETY_TIMEOUT (startInactivityTimer).
    private static final int MSG_EYE_SAFETY_TIMEOUT = 1;
    private static final long ENROLL_IR_MS = 60000;

    private static long timerStart;
    private static boolean extended;

    // Upper bounds for the iris engine's auto-exposure ("shutterspeed=ns;gain=x;").
    // While no eye is in view the engine brightens the IR image to its maximum
    // (33.2 ms, gain 25+); when the eyes then arrive the image is overexposed and the
    // engine needs several seconds to come back down, so the scan times out. Matches
    // on this device happen around 20 ms / gain 17; the IR LED lights the eyes.
    private static final long MAX_SHUTTER_NS = 23000000;
    private static final int MAX_GAIN = 20;

    private Un1caIrisGrace() { }

    /** Called at the start of IRV2Controller.onIRPropertyChanged with the engine's values. */
    static String clampExposure(String value) {
        if (value == null || value.indexOf('=') < 0) return value;
        StringBuilder out = new StringBuilder();
        for (String part : value.split(";")) {
            if (part.isEmpty()) continue;
            int eq = part.indexOf('=');
            String key = eq > 0 ? part.substring(0, eq) : part;
            String v = eq > 0 ? part.substring(eq + 1) : "";
            try {
                if (key.equals("shutterspeed")) v = Long.toString(Math.min(Long.parseLong(v), MAX_SHUTTER_NS));
                else if (key.equals("gain")) v = Integer.toString(Math.min(Integer.parseInt(v), MAX_GAIN));
            } catch (NumberFormatException ignored) { }
            out.append(key).append(eq > 0 ? "=" : "").append(v).append(';');
        }
        return out.toString();
    }

    /** Called right after startInactivityTimer() arms the 9 s timer. */
    static void onTimerStart() {
        timerStart = SystemClock.uptimeMillis();
        extended = false;
    }

    /** Called from handleEnrollResult(), which only runs while registering. */
    static void onEnrollProgress(Handler handler) {
        if (extended || handler == null) return;
        // Only move a timer that is still pending; never re-arm one that already fired.
        if (!handler.hasMessages(MSG_EYE_SAFETY_TIMEOUT)) return;
        long delay = timerStart + ENROLL_IR_MS - SystemClock.uptimeMillis();
        if (delay <= 0) return;
        extended = true;
        handler.removeMessages(MSG_EYE_SAFETY_TIMEOUT);
        handler.sendEmptyMessageDelayed(MSG_EYE_SAFETY_TIMEOUT, delay);
        Log.i(TAG, "registration scan window extended to " + ENROLL_IR_MS + " ms");
    }
}
