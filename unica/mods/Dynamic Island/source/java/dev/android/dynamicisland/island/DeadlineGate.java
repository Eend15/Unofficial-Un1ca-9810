package dev.android.dynamicisland.island;

/**
 * Coalesces main-thread deadline callbacks without storing a snapshot of the
 * underlying event. The action re-reads the latest source state when it runs.
 *
 * Callers must invoke all methods on the same looper as the scheduler.
 */
public final class DeadlineGate {
    public interface Scheduler {
        boolean postAtTime(Runnable task, long uptime);
        void removeCallbacks(Runnable task);
    }

    private final Scheduler scheduler;
    private final Runnable action;
    private final Runnable scheduled;
    private long deadline = Long.MAX_VALUE;

    public DeadlineGate(Scheduler scheduler, Runnable action) {
        this.scheduler = scheduler;
        this.action = action;
        this.scheduled = () -> {
            deadline = Long.MAX_VALUE;
            this.action.run();
        };
    }

    /** Retain the earliest deadline (e.g. first notification grace expiry). */
    public void scheduleEarliest(long uptime) {
        if (uptime < deadline) {
            scheduleAt(uptime);
        }
    }

    /** Replace an older deadline (e.g. artwork for the latest track). */
    public void scheduleLatest(long uptime) {
        if (uptime != deadline) {
            scheduleAt(uptime);
        }
    }

    private void scheduleAt(long uptime) {
        cancel();
        if (scheduler.postAtTime(scheduled, uptime)) {
            deadline = uptime;
        }
    }

    public void cancel() {
        if (deadline != Long.MAX_VALUE) {
            scheduler.removeCallbacks(scheduled);
            deadline = Long.MAX_VALUE;
        }
    }

    public boolean pending() {
        return deadline != Long.MAX_VALUE;
    }
}
