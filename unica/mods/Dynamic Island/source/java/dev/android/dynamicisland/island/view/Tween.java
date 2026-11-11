package dev.android.dynamicisland.island.view;

/** Eased transition of one float towards a target over a fixed duration. Not thread-safe. */
public final class Tween {
    private final long duration;
    private float from;
    private long start;
    private float to;

    public Tween(float value, long duration) {
        to = value;
        from = value;
        this.duration = duration;
    }

    public float value(long now) {
        return from + ((to - from) * IslandView.easeInOut(((float) (now - start)) / ((float) duration)));
    }

    /** Starts moving from the current value to {@code target}; ignored when it is already the target. */
    public void set(float target, long now) {
        if (target == to) {
            return;
        }
        from = value(now);
        to = target;
        start = now;
    }

    public boolean running(long now) {
        return now - start < duration;
    }
}
