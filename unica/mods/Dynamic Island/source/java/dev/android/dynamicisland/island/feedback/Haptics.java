package dev.android.dynamicisland.island.feedback;

import android.content.Context;
import android.os.SystemClock;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.os.VibratorManager;
import android.view.View;
import dev.android.dynamicisland.settings.ModuleSettings;

/** Light haptic feedback for the island (expand/collapse and button presses). */
public final class Haptics {
    private static final long MIN_GAP_MS = 80;

    private final Vibrator vibrator;
    private long last;

    public Haptics(Context ctx) {
        Vibrator v = null;
        try {
            VibratorManager manager = ctx.getSystemService(VibratorManager.class);
            v = manager == null ? null : manager.getDefaultVibrator();
        } catch (Throwable ignored) {
            // no vibrator: all calls become no-ops
        }
        this.vibrator = v;
    }

    /** Haptic feedback on a view, skipped when the haptics setting is off. */
    public static void perform(View view, int constant) {
        if (view != null && ModuleSettings.haptics()) {
            view.performHapticFeedback(constant);
        }
    }

    public void tick() {
        play(VibrationEffect.EFFECT_TICK);
    }

    public void click() {
        play(VibrationEffect.EFFECT_CLICK);
    }

    private void play(int effect) {
        if (vibrator == null || !ModuleSettings.haptics()) {
            return;
        }
        long now = SystemClock.uptimeMillis();
        if (now - last < MIN_GAP_MS) {
            return;
        }
        last = now;
        try {
            vibrator.vibrate(VibrationEffect.createPredefined(effect));
        } catch (Throwable ignored) {
            // haptics are optional
        }
    }
}
