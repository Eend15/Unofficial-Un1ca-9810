package dev.android.dynamicisland.island.view;

import dev.android.dynamicisland.island.graphics.Spring;

/** The springs that animate the pill, the bubble and the card stack as a whole (cards own their own). */
final class Springs {
    final Spring width = new Spring(0.0f, 0.4f, 0.8f).setValueThreshold(0.4f);
    final Spring height = new Spring(0.0f, 0.4f, 0.8f).setValueThreshold(0.4f);
    final Spring visibility = new Spring(0.0f, 0.2f, 1.0f).setValueThreshold(0.002f);
    /** 1 = shown, 0 = suppressed (e.g. a full screen app). */
    final Spring suppress = new Spring(1.0f, 0.25f, 1.0f).setValueThreshold(0.002f);
    /** Pill scale while a finger holds it down. */
    final Spring press = new Spring(1.0f, 0.2f, 0.9f).setValueThreshold(5.0E-4f);
    /** Small bounce added to the pill's scale. */
    final Spring pulse = new Spring(0.0f, 0.3f, 0.55f).setValueThreshold(5.0E-4f);
    final Spring offsetX = new Spring(0.0f, 0.35f, 0.7f).setValueThreshold(0.3f);
    /** 0 = bubble merged into the pill, 1 = fully split off. */
    final Spring split = new Spring(0.0f, 0.42f, 0.62f).setValueThreshold(0.002f);
    /** Opacity of the pill's own black while cards pour out of it. */
    final Spring pillBlob = new Spring(1.0f, 0.2f, 1.0f).setValueThreshold(0.002f);
    /** Opacity of the pill's light outline: hidden while cards are out, so no seam shows where they join the pill. */
    final Spring outlineFade = new Spring(1.0f, 0.3f, 1.0f).setValueThreshold(0.002f);
    final Spring stackDx = new Spring(0.0f, 0.45f, 0.55f).setValueThreshold(0.3f);
    final Spring stackDy = new Spring(0.0f, 0.45f, 0.55f).setValueThreshold(0.3f);

    private final Spring[] all = {width, height, visibility, suppress, press, pulse, offsetX, split, pillBlob, stackDx, stackDy, outlineFade};

    /** Advances every spring by {@code dt}; true while any of them still moves. */
    boolean step(float dt) {
        boolean moving = false;
        for (Spring s : all) {
            moving |= s.step(dt); // no short circuit: all of them must advance
        }
        return moving;
    }
}
