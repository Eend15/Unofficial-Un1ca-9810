import dev.android.dynamicisland.island.DeadlineGate;
import java.util.ArrayList;
import java.util.List;

/** Executable event-time tests against the exact Java scheduler used by SystemUI. */
public final class DeadlineGateTest {
    static final class FakeLooper implements DeadlineGate.Scheduler {
        static final class Job {
            final Runnable callback;
            final long due;
            Job(Runnable callback, long due) {
                this.callback = callback;
                this.due = due;
            }
        }
        private final List<Job> jobs = new ArrayList<>();
        long time;
        int posts;
        int removals;

        @Override public boolean postAtTime(Runnable task, long uptime) {
            posts++;
            jobs.add(new Job(task, uptime));
            return true;
        }
        @Override public void removeCallbacks(Runnable task) {
            removals++;
            jobs.removeIf(job -> job.callback == task);
        }
        int waiting() {
            return jobs.size();
        }
        void advance(long to) {
            if (to < time) throw new AssertionError("clock reversed");
            while (true) {
                Job earliest = null;
                for (Job job : jobs) {
                    if (job.due <= to && (earliest == null || job.due < earliest.due)) {
                        earliest = job;
                    }
                }
                if (earliest == null) break;
                jobs.remove(earliest);
                time = earliest.due;
                earliest.callback.run();
            }
            time = to;
        }
    }

    static void eq(Object got, Object wanted, String context) {
        if (!got.equals(wanted)) throw new AssertionError(context + ": expected " + wanted + ", got " + got);
    }

    static void notifications() {
        FakeLooper loop = new FakeLooper();
        List<String> readLatest = new ArrayList<>();
        final String[] state = {"first"};
        DeadlineGate gate = new DeadlineGate(loop, () -> readLatest.add(state[0]));
        for (int i = 0; i < 150; i++) gate.scheduleEarliest(2550);
        eq(loop.waiting(), 1, "single notification expiry during 150 filter passes");
        eq(loop.posts, 1, "no duplicate post");
        state[0] = "latest notification";
        gate.scheduleEarliest(2600);
        loop.advance(2549);
        eq(readLatest.size(), 0, "no early callback");
        loop.advance(2550);
        eq(readLatest.toString(), "[latest notification]", "reads latest state at callback time");
        gate.scheduleEarliest(3100);
        gate.scheduleEarliest(2900);
        eq(loop.waiting(), 1, "earlier grace expiry replaces later one");
        state[0] = "second key";
        loop.advance(2900);
        eq(readLatest.toString(), "[latest notification, second key]", "staggered notification expiry");
        gate.scheduleEarliest(4000);
        gate.cancel(); // key removed and LAST_HIDDEN empty
        loop.advance(5000);
        eq(readLatest.size(), 2, "notification removal cancels callback");
        eq(loop.waiting(), 0, "no notification callback retained");
    }

    static void albumArt() {
        FakeLooper loop = new FakeLooper();
        List<String> refreshed = new ArrayList<>();
        final String[] latest = {"song-0"};
        DeadlineGate gate = new DeadlineGate(loop, () -> refreshed.add(latest[0]));
        for (int i = 1; i <= 20; i++) {
            latest[0] = "song-" + i;
            gate.scheduleLatest(1500 + i * 10);
            gate.scheduleLatest(1500 + i * 10); // duplicate missing-art metadata
        }
        eq(loop.waiting(), 1, "one artwork expiry for newest song");
        loop.advance(1600);
        eq(refreshed.size(), 0, "outdated art expiry must not fire");
        loop.advance(1700);
        eq(refreshed.toString(), "[song-20]", "latest song survives burst");
        latest[0] = "song-21";
        gate.scheduleLatest(3200);
        gate.cancel(); // artwork arrived or player removed / island disposed
        loop.advance(5000);
        eq(refreshed.size(), 1, "new album art cancels stale work");
        eq(loop.waiting(), 0, "no abandoned media callbacks");
        gate.scheduleLatest(6000);
        latest[0] = "paused";
        loop.advance(6000);
        eq(refreshed.toString(), "[song-20, paused]", "callback observes playback state at firing");
    }

    static void retiredOrDisabled() {
        FakeLooper loop = new FakeLooper();
        int[] refreshed = {0};
        DeadlineGate gate = new DeadlineGate(loop, () -> refreshed[0]++);
        gate.scheduleEarliest(100);
        gate.cancel();
        gate.cancel(); // safe repeated cleanup
        loop.advance(1000);
        eq(refreshed[0], 0, "disabled/removed source cannot refresh");
        eq(loop.waiting(), 0, "no callback retained after cleanup");
    }

    static void sustainedUpdatesDoNotPostponeForever() {
        FakeLooper loop = new FakeLooper();
        List<String> observed = new ArrayList<>();
        String[] currentTrack = {"initial"};
        DeadlineGate gate = new DeadlineGate(loop, () -> observed.add(currentTrack[0]));
        final long firstMissingArt = 100;
        final long hardDeadline = firstMissingArt + 3000;
        for (long now = firstMissingArt; now < 9000; now += 100) {
            currentTrack[0] = "new-track-at-" + now;
            // MediaSource uses earliest(trackSince+1500, firstMissing+3000).
            long due = Math.min(now + 1500, hardDeadline) + 20;
            if (now >= hardDeadline) {
                // MediaSource drops the old cover rather than rearming.
                break;
            }
            gate.scheduleLatest(due);
            loop.advance(now);
        }
        eq(loop.waiting(), 1, "burst retains only one expiry");
        loop.advance(hardDeadline + 20);
        eq(observed.size(), 1, "constant track changes cannot defer beyond 3s + slack");
        eq(observed.get(0), currentTrack[0], "latest track read on capped callback");
        eq(loop.waiting(), 0, "no repeat forever");
    }

    static void disableEnableWhilePending() {
        FakeLooper loop = new FakeLooper();
        List<String> observed = new ArrayList<>();
        DeadlineGate oldInstance = new DeadlineGate(loop, () -> observed.add("old"));
        oldInstance.scheduleEarliest(500);
        oldInstance.cancel(); // U1CA Settings disables, SystemUI instance disposed
        DeadlineGate freshInstance = new DeadlineGate(loop, () -> observed.add("new"));
        freshInstance.scheduleEarliest(600);
        loop.advance(700);
        eq(observed.toString(), "[new]", "old instance never fires after disable-enable");
        eq(loop.waiting(), 0, "new instance consumes callback once");
        freshInstance.scheduleLatest(900);
        freshInstance.cancel(); // disable again with active callback
        loop.advance(1000);
        eq(observed.toString(), "[new]", "second disable cancels new callback");
    }

    public static void main(String[] args) {
        notifications();
        albumArt();
        retiredOrDisabled();
        sustainedUpdatesDoNotPostponeForever();
        disableEnableWhilePending();
        System.out.println("PASS DeadlineGate: bursts, latest status, bounded media grace, disable/re-enable, removal and cleanup");
    }
}
