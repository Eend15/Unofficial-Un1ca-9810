package dev.android.dynamicisland.island.graphics;

/**
 * A one-dimensional damped spring that drives every island animation (size, position, alpha, ...).
 *
 * <p>With {@code x = value - target} the spring obeys {@code x'' = -2 * zeta * omega * x' - omega^2 * x}:
 * <ul>
 *   <li>{@code omega = 2 * PI / response}; {@code response} is the period in seconds of the undamped
 *       oscillation (smaller = snappier).</li>
 *   <li>{@code zeta} is the damping ratio: below 1 the spring overshoots and rings, exactly 1 is critically
 *       damped, above 1 it creeps in without overshoot.</li>
 * </ul>
 *
 * <p>{@link #step} evaluates the analytic solution for the three damping regimes instead of integrating
 * numerically, so any frame time is stable (it is capped at 64 ms anyway). Once displacement and speed
 * both fall under the value threshold the spring snaps onto the target and reports {@link #isAtRest}.
 * Not thread safe: drive it from the animation (main) thread.
 */
public final class Spring {
    private static final float DEFAULT_VALUE_THRESHOLD = 0.5f;
    /** Shortest period / lowest damping accepted so omega and zeta stay finite and non-zero. */
    private static final double MIN_RESPONSE = 0.016d;
    private static final double MIN_DAMPING_RATIO = 0.05d;
    /** Longest simulated step in seconds; a longer frame (after a stall, say) is cut to this. */
    private static final double MAX_STEP_SECONDS = 0.064d;
    /** The speed threshold is the value threshold per frame at 60 fps. */
    private static final float FRAMES_PER_SECOND = 60.0f;

    private double omega;
    private double zeta;
    private float target;
    private float value;
    private float velocity;
    private float valueThreshold = DEFAULT_VALUE_THRESHOLD;
    private boolean atRest = true;

    // result of the last closed-form evaluation (relative to the target)
    private double nextOffset;
    private double nextSpeed;

    public Spring(float initial, float response, float dampingRatio) {
        value = initial;
        target = initial;
        setParams(response, dampingRatio);
    }

    /** Changes stiffness and damping without touching the current value or velocity. */
    public Spring setParams(float response, float dampingRatio) {
        omega = 2.0d * Math.PI / Math.max(MIN_RESPONSE, response);
        zeta = Math.max(MIN_DAMPING_RATIO, dampingRatio);
        return this;
    }

    public Spring setValueThreshold(float threshold) {
        valueThreshold = threshold;
        return this;
    }

    public float value() {
        return value;
    }

    public float velocity() {
        return velocity;
    }

    public float target() {
        return target;
    }

    public boolean isAtRest() {
        return atRest;
    }

    /** Sets a new target and wakes the spring up; a no-op when already resting on that target. */
    public void animateTo(float newTarget) {
        if (atRest && newTarget == target) {
            return;
        }
        target = newTarget;
        atRest = false;
    }

    public void animateTo(float newTarget, float response, float dampingRatio) {
        setParams(response, dampingRatio);
        animateTo(newTarget);
    }

    public void animateTo(float newTarget, Motion motion) {
        animateTo(newTarget, motion.response, motion.damping);
    }

    /** Adds speed (value units per second) to give the spring a kick, e.g. for a bounce. */
    public void impulse(float addVelocity) {
        velocity += addVelocity;
        atRest = false;
    }

    /** Jumps to {@code v} immediately and stops. */
    public void snapTo(float v) {
        value = v;
        target = v;
        velocity = 0.0f;
        atRest = true;
    }

    /**
     * Advances the simulation.
     *
     * @param dtSeconds time since the previous step; negative values count as 0, long frames are capped
     * @return true while the spring is still moving and needs another frame, false once it is at rest
     */
    public boolean step(float dtSeconds) {
        if (atRest) {
            return false;
        }
        double dt = Math.min(Math.max(dtSeconds, 0.0d), MAX_STEP_SECONDS);
        double offset = value - target;
        if (zeta > 1.0d) {
            evolveOverdamped(offset, velocity, dt);
        } else if (zeta < 1.0d) {
            evolveUnderdamped(offset, velocity, dt);
        } else {
            evolveCritical(offset, velocity, dt);
        }
        value = (float) (target + nextOffset);
        velocity = (float) nextSpeed;
        boolean moving = Math.abs(nextOffset) >= valueThreshold
                || Math.abs(nextSpeed) >= valueThreshold * FRAMES_PER_SECOND;
        if (!moving) {
            snapTo(target);
        }
        return moving;
    }

    /** Two real decaying exponentials; the constants are fixed by the initial offset and speed. */
    private void evolveOverdamped(double x0, double v0, double dt) {
        double spread = omega * Math.sqrt(zeta * zeta - 1.0d);
        double slow = -zeta * omega + spread;
        double fast = -zeta * omega - spread;
        double slowWeight = (fast * x0 - v0) / (fast - slow);
        double fastWeight = x0 - slowWeight;
        double slowDecay = Math.exp(slow * dt);
        double fastDecay = Math.exp(fast * dt);
        nextOffset = fastWeight * fastDecay + slowWeight * slowDecay;
        nextSpeed = fastWeight * fast * fastDecay + slowWeight * slow * slowDecay;
    }

    /** Decaying oscillation at the damped frequency {@code omega * sqrt(1 - zeta^2)}. */
    private void evolveUnderdamped(double x0, double v0, double dt) {
        double damped = omega * Math.sqrt(1.0d - zeta * zeta);
        double rate = zeta * omega;
        double sinWeight = (rate * x0 + v0) / damped;
        double envelope = Math.exp(-rate * dt);
        double cos = Math.cos(damped * dt);
        double sin = Math.sin(damped * dt);
        nextOffset = envelope * (x0 * cos + sinWeight * sin);
        nextSpeed = -rate * nextOffset + envelope * (damped * sinWeight * cos - damped * x0 * sin);
    }

    /** {@code x(t) = (x0 + (v0 + omega x0) t) e^(-omega t)}. */
    private void evolveCritical(double x0, double v0, double dt) {
        double slope = omega * x0 + v0;
        double decay = Math.exp(-omega * dt);
        double line = x0 + slope * dt;
        nextOffset = line * decay;
        nextSpeed = slope * decay - omega * nextOffset;
    }
}
