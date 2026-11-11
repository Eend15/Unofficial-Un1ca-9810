package dev.android.dynamicisland.island.graphics;

/**
 * The island's motion language: one named spring per kind of movement, so every transition shares the
 * same feel. {@code response} is the spring period in seconds (smaller = faster) and {@code damping}
 * the damping ratio (below 1 overshoots: about 0.6 gives a clear but single bounce, 0.8 a soft settle,
 * 1 none). See {@link Spring} for the maths.
 */
public final class Motion {
    /** The pill growing out of the camera hole: quick, with a lively overshoot. */
    public static final Motion PILL_GROW = new Motion(0.42f, 0.6f);
    /** The pill growing in height when it appears: a drop that lands and bounces once. */
    public static final Motion PILL_DROP = new Motion(0.36f, 0.55f);
    /** The pill resizing for new content. */
    public static final Motion PILL_RESIZE = new Motion(0.34f, 0.72f);
    /** The pill shrinking back into the camera hole when the island hides. */
    public static final Motion PILL_SHRINK = new Motion(0.32f, 0.78f);
    /** The pill pulling in while its cards open, as if it poured itself into them. */
    public static final Motion PILL_GATHER = new Motion(0.36f, 0.7f);
    /** The pill swelling back after the cards were absorbed. */
    public static final Motion PILL_REGROW = new Motion(0.4f, 0.58f);

    /** A card falling out of the pill to its place in the stack. */
    public static final Motion CARD_DROP = new Motion(0.5f, 0.66f);
    /** A card widening to full width. */
    public static final Motion CARD_WIDEN = new Motion(0.44f, 0.68f);
    /** A card growing to full height. */
    public static final Motion CARD_GROW = new Motion(0.5f, 0.64f);
    /** A card being drawn back up into the pill. */
    public static final Motion CARD_RETURN = new Motion(0.3f, 0.9f);
    /** A card narrowing and flattening on its way back. */
    public static final Motion CARD_FOLD = new Motion(0.3f, 0.9f);

    /** The bubble splitting off the pill. */
    public static final Motion BUBBLE_SPLIT = new Motion(0.46f, 0.56f);
    /** The bubble melting back into the pill. */
    public static final Motion BUBBLE_MERGE = new Motion(0.32f, 0.82f);

    /** A dragged stack or card springing back after release. */
    public static final Motion RUBBER_RELEASE = new Motion(0.44f, 0.5f);
    /** Finger down on the pill: a quick, firm press. */
    public static final Motion PRESS_DOWN = new Motion(0.18f, 0.9f);
    /** Finger up: the pill springs back with a little wobble. */
    public static final Motion PRESS_UP = new Motion(0.34f, 0.5f);

    public final float response;
    public final float damping;

    private Motion(float response, float damping) {
        this.response = response;
        this.damping = damping;
    }

    /** The same spring, played {@code factor} times as fast. */
    public Motion faster(float factor) {
        return new Motion(response / factor, damping);
    }
}
