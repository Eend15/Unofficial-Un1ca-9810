package dev.android.dynamicisland.island.material;

/**
 * A short memory of what a drawn card's glass was doing, kept for the diagnostics report.
 *
 * <p>Only changes are stored: every frame the card passes a handful of flags and a quantised response value, and a
 * frame that looks like the one before costs nothing (no allocation, no string). The report then shows the last
 * changes with their times, so a glass that turned dark for a second can be matched to what flipped at that moment.
 */
public final class GlassTrace {
    /** The glass was drawn by the frosted shader (not by the classic fallback). */
    public static final int FROSTED = 1;
    /** The canvas the card was drawn on is hardware accelerated. */
    public static final int HARDWARE = 1 << 1;
    /** A captured backdrop was supplied for the draw. */
    public static final int BACKDROP = 1 << 2;
    /** The frosted material is switched on and has not failed. */
    public static final int AVAILABLE = 1 << 3;
    /** The card shown is the held one, not the island's current card. */
    public static final int HELD = 1 << 4;
    /** The view reports itself shown. */
    public static final int SHOWN = 1 << 5;
    /** A new capture is blending in. */
    public static final int BLENDING = 1 << 6;
    /** The artwork palette has a near-black stop. */
    public static final int DARK_TONE = 1 << 7;
    /** No geometry was ever refused for being NaN or infinite. */
    public static final int CLEAN_GEOMETRY = 1 << 8;

    private static final int KEEP = 40;
    private static final String[] FLAGS = {"frosted", "hardware", "backdrop", "available", "held", "shown", "blending", "darkTone", "cleanGeometry"};

    private final long[] at = new long[KEEP];
    private final int[] bits = new int[KEEP];
    private final int[] response = new int[KEEP];
    private final int[] repeats = new int[KEEP];
    private final int[] live = new int[KEEP];
    private final int[] top = new int[KEEP];
    private int next, size;
    private int lastBits = -1, lastResponse = -2, lastLive = -2, lastTop = -2;
    private long frames;

    /** Notes one drawn frame; {@code responseMean} is the mean backdrop response (negative: none). */
    public synchronized void record(long now, int flags, float responseMean) {
        record(now, flags, responseMean, -1f);
    }

    /** Same, with how alive the music glow is (0..1; negative or NaN: not a music card). */
    public synchronized void record(long now, int flags, float responseMean, float liveness) {
        record(now, flags, responseMean, liveness, -1f);
    }

    /** Same, with the largest cell of the response field (0..1, negative: none), shown to four decimals. */
    public synchronized void record(long now, int flags, float responseMean, float liveness, float responseMax) {
        frames++;
        int t = responseMax < 0 ? -1 : Math.round(responseMax * 10000f);
        int q = responseMean < 0 ? -1 : Math.min(10, Math.round(responseMean * 10f));
        int l = !(liveness >= 0f) ? -1 : Math.min(10, Math.round(liveness * 10f));
        if (liveness != liveness) l = -3; // NaN is worth seeing in the report
        if (flags == lastBits && q == lastResponse && l == lastLive && t == lastTop && size > 0) {
            repeats[(next + KEEP - 1) % KEEP]++;
            return;
        }
        lastBits = flags;
        lastResponse = q;
        lastLive = l;
        lastTop = t;
        at[next] = now;
        bits[next] = flags;
        response[next] = q;
        live[next] = l;
        top[next] = t;
        repeats[next] = 0;
        next = (next + 1) % KEEP;
        if (size < KEEP) size++;
    }

    /** How many frames were recorded in all. */
    public synchronized long frames() {
        return frames;
    }

    /** The changes, newest last: "+1.2s frosted hardware ... response 1.0 (x3)". {@code now} is the time to count back from. */
    public synchronized String summary(long now) {
        if (size == 0) return "no frame drawn yet";
        StringBuilder out = new StringBuilder().append(frames).append(" frames, last ").append(size).append(" changes:");
        for (int i = 0; i < size; i++) {
            int index = (next - size + i + KEEP * 2) % KEEP;
            out.append(" [-").append(String.format(java.util.Locale.ROOT, "%.1f", (now - at[index]) / 1000f)).append("s");
            for (int f = 0; f < FLAGS.length; f++) {
                if ((bits[index] & (1 << f)) == 0) out.append(" !").append(FLAGS[f]);
            }
            out.append(" resp ").append(response[index] < 0 ? "none" : String.format(java.util.Locale.ROOT, "%.1f", response[index] / 10f));
            if (live[index] != -1) out.append(" live ").append(live[index] == -3 ? "NaN" : String.format(java.util.Locale.ROOT, "%.1f", live[index] / 10f));
            if (top[index] >= 0) out.append(" max ").append(String.format(java.util.Locale.ROOT, "%.4f", top[index] / 10000f));
            if (repeats[index] > 0) out.append(" x").append(repeats[index] + 1);
            out.append(']');
        }
        return out.toString();
    }
}
