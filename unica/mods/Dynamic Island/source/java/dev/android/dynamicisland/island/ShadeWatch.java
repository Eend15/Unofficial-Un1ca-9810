package dev.android.dynamicisland.island;

import android.os.Handler;
import java.util.function.Supplier;

/**
 * Checks the shade against System UI while the island believes it is pulled. The island learns the shade position
 * from a listener, and a closing report that never arrives would leave the pill gone for good; while the island thinks
 * the shade is open this asks System UI where it really is and corrects the island.
 */
final class ShadeWatch {
    /** What is watched: the island's idea of the shade. */
    interface Target {
        boolean needsWatching();

        void shade(float fraction);
    }

    static final long PERIOD_MS = 1_500;

    private final Handler main;
    private final Supplier<Target> target;
    private final Supplier<Float> probe;
    private boolean running;
    private final Runnable tick = new Runnable() {
        @Override public void run() {
            Target current = target.get();
            if (current == null || !current.needsWatching()) {
                running = false;
                return;
            }
            Float actual = probe.get();
            if (actual != null) current.shade(actual);
            main.postDelayed(this, PERIOD_MS);
        }
    };

    ShadeWatch(Handler main, Supplier<Target> target, Supplier<Float> probe) {
        this.main = main;
        this.target = target;
        this.probe = probe;
    }

    /** The shade moved: make sure it is checked until the island thinks it is closed. */
    void poke() {
        if (running) return;
        running = true;
        main.postDelayed(tick, PERIOD_MS);
    }
}
