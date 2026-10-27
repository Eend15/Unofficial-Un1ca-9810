package dev.android.dynamicisland.island.feedback;

/** Short, in-memory input-level history. No PCM is retained. */
public final class RecordingEnvelope {
    private static final int SIZE = 24;
    /** Visual history advances at 8.3 Hz; input can still update the newest peak every read. */
    private static final long COLUMN_MS = 120;
    private final float[] values = new float[SIZE];
    private String key;
    private int next;
    private long columnStarted = Long.MIN_VALUE;
    private long lastInputAt = Long.MIN_VALUE;

    public synchronized void reset(String sessionKey) {
        key = sessionKey;
        next = 0;
        columnStarted = Long.MIN_VALUE;
        lastInputAt = Long.MIN_VALUE;
        java.util.Arrays.fill(values, 0f);
    }

    public synchronized void add(String sessionKey, float level, long nowMs) {
        if (key == null || !key.equals(sessionKey)) return;
        lastInputAt = nowMs;
        level = Math.max(0f, Math.min(1f, level));
        if (columnStarted == Long.MIN_VALUE || nowMs < columnStarted) {
            java.util.Arrays.fill(values, 0f);
            columnStarted = nowMs;
            values[next] = level;
            next = (next + 1) % SIZE;
            return;
        }
        long elapsed = nowMs - columnStarted;
        if (elapsed >= COLUMN_MS) {
            // Preserve short peaks within each column, and leave gaps rather than inventing
            // sound when delivery stalls. The rightmost column still responds immediately.
            int advance = (int) Math.min(SIZE, elapsed / COLUMN_MS);
            for (int i = 0; i < advance; i++) {
                values[next] = 0f;
                next = (next + 1) % SIZE;
            }
            columnStarted += elapsed / COLUMN_MS * COLUMN_MS;
            values[(next + SIZE - 1) % SIZE] = level;
        } else {
            int newest = (next + SIZE - 1) % SIZE;
            values[newest] = Math.max(values[newest], level);
        }
    }

    /** Oldest to newest, spanning approximately 2.9 seconds. */
    public synchronized float level(String sessionKey, float position) {
        if (key == null || !key.equals(sessionKey)) return 0f;
        int offset = Math.round(Math.max(0f, Math.min(1f, position)) * (SIZE - 1));
        return values[(next + offset) % SIZE];
    }

    /** Interpolates the history between columns, without speeding up its 2.9-second travel. */
    public synchronized void copyVisualLevels(String sessionKey, float[] out, long nowMs) {
        if (key == null || !key.equals(sessionKey) || columnStarted == Long.MIN_VALUE) {
            java.util.Arrays.fill(out, 0f);
            return;
        }
        float phase = Math.max(0f, Math.min(1f, (nowMs - columnStarted) / (float) COLUMN_MS));
        for (int i = 0; i < out.length; i++) {
            // Leave one column to interpolate the live edge as well. Without this,
            // the newest bar drops straight to the next bucket every 120 ms.
            float position = i * (SIZE - 2f) / Math.max(1, out.length - 1) + phase;
            int a = (int) position, b = Math.min(SIZE - 1, a + 1);
            float blend = position - a;
            out[i] = values[(next + a) % SIZE] * (1f - blend) + values[(next + b) % SIZE] * blend;
        }
    }

    /** Continue vsync only while fresh input has a visible history to move. */
    public synchronized boolean isAnimating(String sessionKey, long nowMs) {
        if (key == null || !key.equals(sessionKey) || lastInputAt == Long.MIN_VALUE
                || nowMs < lastInputAt || nowMs - lastInputAt > 200) return false;
        for (float value : values) if (value > .001f) return true;
        return false;
    }

    static float measure(short[] pcm, int count) {
        if (count <= 0) return 0f;
        double sum = 0;
        for (int i = 0; i < count; i++) sum += (double) pcm[i] * pcm[i];
        double rms = Math.sqrt(sum / count) / 32768d;
        double db = 20d * Math.log10(Math.max(0.000001d, rms));
        return (float) Math.max(0d, Math.min(1d, (db + 55d) / 50d));
    }
}
