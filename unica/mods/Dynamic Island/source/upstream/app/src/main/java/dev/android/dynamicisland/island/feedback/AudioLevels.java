package dev.android.dynamicisland.island.feedback;

import android.media.audiofx.Visualizer;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.XLog;

/**
 * Splits the device's audio output into {@link #BANDS} frequency bands (0..1 each) for the music
 * visualizer in the island.
 *
 * <p>Capture runs through {@link Visualizer} on session 0 (the global mix) on a private background
 * thread; the FFT callback updates {@link #level} values that the UI thread reads without locking.
 * Each band is normalised against its own slowly adapting noise floor and peak, and mixes the
 * loudness ("body") with sudden rises ("beat") so the bars react to rhythm. {@link #setActive} may be
 * called from any thread.
 */
public final class AudioLevels {
    public static final int BANDS = 5;
    /** Band boundaries in Hz; band i covers EDGES_HZ[i] .. EDGES_HZ[i + 1]. */
    private static final float[] EDGES_HZ = {50.0f, 160.0f, 450.0f, 1200.0f, 3200.0f, 9000.0f};
    /** Time constant of the running mean used to detect rises (beats). */
    private static final float MEAN_TIME_S = 0.25f;
    /** Smallest rise in dB that counts as a full beat, so quiet noise does not flicker. */
    private static final float MIN_FLUX_DB = 5.0f;
    /** Minimum distance in dB between a band's floor and its peak. */
    private static final float MIN_SPAN_DB = 12.0f;
    private static final float PEAK_HALF_LIFE_S = 7.0f;
    /** Above this level (dB) a band counts as "not silent". */
    private static final float SILENCE_DB = 8.0f;
    /** The data is considered live for this long after the last non-silent frame. */
    private static final long LIVE_WINDOW_MS = 500;
    /** Wait this long before trying again after the visualizer could not be created. */
    private static final long RETRY_MS = 30000;

    private final Handler bg;
    private final Band[] bands = new Band[BANDS];
    private final float[] levels = new float[BANDS];
    private boolean wanted;
    private boolean primed;
    private long failedAt;
    private long lastFft;
    private volatile long lastData;
    /** Only touched on the background thread. */
    private Visualizer viz;

    public AudioLevels() {
        HandlerThread thread = new HandlerThread("DynamicIslandAudio");
        thread.start();
        bg = new dev.android.dynamicisland.xposed.GuardedHandler(thread.getLooper());
        for (int i = 0; i < BANDS; i++) {
            bands[i] = new Band();
        }
    }

    /** Shared output capture for the waveform and subtle music glow; never captures the microphone. */
    public void setActive(boolean wantActive) {
        final boolean active = wantActive && (ModuleSettings.visualizer()
                || (ModuleSettings.ambientGlow() && ModuleSettings.glowMotion() > 0))
                && !ModuleSettings.lowPerformance();
        if (active == wanted) {
            return;
        }
        wanted = active;
        bg.post(() -> applyActive(active));
    }

    /** True while capture is on and the last frames carried actual sound. */
    public boolean isLive() {
        return wanted && SystemClock.uptimeMillis() - lastData < LIVE_WINDOW_MS;
    }

    /** Current level of {@code band} (0..BANDS-1), 0..1. */
    public float level(int band) {
        return levels[band];
    }

    /** Runs on the background thread. */
    private void applyActive(boolean active) {
        if (active) {
            if (viz == null) {
                start();
            }
        } else if (viz != null) {
            stop();
        }
    }

    private void start() {
        if (failedAt == 0 || SystemClock.uptimeMillis() - failedAt >= RETRY_MS) {
            try {
                Visualizer visualizer = new Visualizer(0);
                visualizer.setEnabled(false);
                int[] range = Visualizer.getCaptureSizeRange();
                visualizer.setCaptureSize(Math.max(range[0], Math.min(1024, range[1])));
                visualizer.setScalingMode(Visualizer.SCALING_MODE_NORMALIZED);
                int rate = Math.min(Visualizer.getMaxCaptureRate(), 30000);
                visualizer.setDataCaptureListener(new Visualizer.OnDataCaptureListener() {
                    @Override
                    public void onWaveFormDataCapture(Visualizer visualizer, byte[] waveform, int samplingRate) {
                    }

                    @Override
                    public void onFftDataCapture(Visualizer visualizer, byte[] fft, int samplingRate) {
                        onFft(fft, samplingRate);
                    }
                }, rate, false, true);
                visualizer.setEnabled(true);
                viz = visualizer;
                failedAt = 0L;
                XLog.d("visualizer started, rate=" + rate);
            } catch (Throwable t) {
                failedAt = SystemClock.uptimeMillis();
                viz = null;
                XLog.e("visualizer unavailable", t);
            }
        }
    }

    private void stop() {
        try {
            viz.setEnabled(false);
            viz.release();
        } catch (Throwable ignored) {
            // already released or never started
        }
        viz = null;
        for (int i = 0; i < BANDS; i++) {
            levels[i] = 0.0f;
        }
        primed = false;
        lastFft = 0L;
    }

    private void onFft(byte[] fft, int samplingRateMilliHz) {
        int n = fft.length;
        if (n < 8 || samplingRateMilliHz <= 0) {
            return;
        }
        long nowMs = SystemClock.uptimeMillis();
        float dt = lastFft == 0 ? 0.033f : Math.min(0.2f, (nowMs - lastFft) / 1000.0f);
        lastFft = nowMs;
        float peakDecay = (float) Math.pow(0.5d, dt / PEAK_HALF_LIFE_S);
        float meanAlpha = Math.min(1.0f, dt / MEAN_TIME_S);
        float binHz = (samplingRateMilliHz / 1000.0f) / n;
        boolean silent = true;
        for (int b = 0; b < BANDS; b++) {
            float db = bandDb(fft, (int) (EDGES_HZ[b] / binHz), (int) (EDGES_HZ[b + 1] / binHz));
            silent &= db <= SILENCE_DB;
            if (!primed) {
                bands[b].prime(db);
            }
            levels[b] = bands[b].update(db, peakDecay, meanAlpha);
        }
        primed = true;
        if (!silent) {
            lastData = nowMs;
        }
    }

    /** Level in dB of the RMS magnitude over FFT bins {@code lowBin..highBin}. */
    private static float bandDb(byte[] fft, int lowBin, int highBin) {
        // pairs (re, im) per bin; index 0/1 hold DC and Nyquist, so start at bin 1
        int maxBin = (fft.length / 2) - 1;
        int first = Math.max(1, lowBin);
        int last = Math.min(maxBin, Math.max(first, highBin));
        float power = 0.0f;
        for (int k = first; k <= last; k++) {
            float re = fft[2 * k];
            float im = fft[2 * k + 1];
            power += (re * re) + (im * im);
        }
        float rms = (float) Math.sqrt(power / (last - first + 1));
        return (float) (Math.log10(rms + 1.0d) * 20.0d);
    }

    /** Adaptive normaliser of one band: noise floor, decaying peak and beat (rise) detector. */
    private static final class Band {
        private float floor;
        private float mean;
        private float peak;
        private float peakFlux;

        /** Seeds the trackers with the first measurement. */
        void prime(float db) {
            floor = db;
            mean = db;
            peak = db + MIN_SPAN_DB;
            peakFlux = 5.0f;
        }

        /** Feeds one measurement (dB) and returns the band level 0..1. */
        float update(float db, float peakDecay, float meanAlpha) {
            // the floor follows quickly downwards, very slowly upwards
            floor += (db < floor ? 0.2f : 0.003f) * (db - floor);
            peak = Math.max(db, floor + ((peak - floor) * peakDecay));
            peak = Math.max(peak, floor + MIN_SPAN_DB);
            float body = clamp01((db - floor) / (peak - floor));

            float flux = Math.max(0.0f, db - mean);
            mean += (db - mean) * meanAlpha;
            peakFlux = Math.max(flux, peakFlux * peakDecay);
            peakFlux = Math.max(peakFlux, MIN_FLUX_DB);
            float beat = clamp01(flux / peakFlux);

            float mixed = clamp01((0.3f * body) + (0.8f * beat * ((0.6f * body) + 0.4f)));
            return (float) Math.pow(mixed, 1.5d);
        }
    }

    private static float clamp01(float v) {
        return Math.max(0.0f, Math.min(1.0f, v));
    }
}
