package dev.android.dynamicisland.xposed;

import android.os.Debug;
import android.os.SystemClock;
import java.util.Locale;
import java.util.function.Supplier;

/**
 * One line for the diagnostics report on how System UI's memory is doing: the Java heap against its limit, and how
 * much time the garbage collector took since the last report. A System UI that keeps its heap full spends its
 * time collecting, which shows as stutter; the line says whether that is what a bug report is about.
 */
public final class MemoryReport {
    private final Supplier<Long> clock;
    private final Supplier<long[]> runtime;
    private final Supplier<String> module;
    private long lastAt = -1;
    private long[] last;

    public MemoryReport(Supplier<String> module) {
        this(SystemClock::elapsedRealtime, MemoryReport::readRuntime, module);
    }

    /** For tests: the clock, the runtime numbers {heapUsed, heapMax, gcCount, gcMs, blockingCount, blockingMs} and the module part. */
    MemoryReport(Supplier<Long> clock, Supplier<long[]> runtime, Supplier<String> module) {
        this.clock = clock;
        this.runtime = runtime;
        this.module = module;
    }

    public synchronized String line() {
        long now = clock.get();
        long[] r = runtime.get();
        StringBuilder sb = new StringBuilder();
        long mb = 1L << 20;
        sb.append(String.format(Locale.ROOT, "heap %d of %d MB (%d%%)", r[0] / mb, r[1] / mb, r[1] == 0 ? 0 : 100 * r[0] / r[1]));
        sb.append(String.format(Locale.ROOT, "; GCs since start %d (%d blocking), %.1f s, %.1f s blocking",
                r[2], r[4], r[3] / 1000.0, r[5] / 1000.0));
        if (last != null && now - lastAt >= 10_000) {
            double minutes = (now - lastAt) / 60_000.0;
            sb.append(String.format(Locale.ROOT, "; last %.1f min: %.0f GCs/min (%.1f blocking/min), %.1f s collecting, %.1f s blocked",
                    minutes, (r[2] - last[2]) / minutes, (r[4] - last[4]) / minutes, (r[3] - last[3]) / 1000.0, (r[5] - last[5]) / 1000.0));
        }
        if (last == null || now - lastAt >= 10_000) {
            last = r;
            lastAt = now;
        }
        String own = module == null ? null : module.get();
        if (own != null && !own.isEmpty()) sb.append("; ").append(own);
        return sb.toString();
    }

    private static long[] readRuntime() {
        Runtime rt = Runtime.getRuntime();
        return new long[]{
                rt.totalMemory() - rt.freeMemory(), rt.maxMemory(),
                stat("art.gc.gc-count"), stat("art.gc.gc-time"),
                stat("art.gc.blocking-gc-count"), stat("art.gc.blocking-gc-time")};
    }

    private static long stat(String name) {
        try {
            String value = Debug.getRuntimeStat(name);
            return value == null ? 0 : Long.parseLong(value.trim());
        } catch (RuntimeException e) {
            return 0;
        }
    }
}
