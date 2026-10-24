package dev.android.dynamicisland.island.view;

import android.graphics.Canvas;

/** Draws the content of one blurred card into the canvas supplied by the {@link BlurSink}. */
public interface CardPainter {
    /** {@code left} / {@code top} is the position of the blurred slot inside the window. */
    void paintCard(Object key, Canvas canvas, float left, float top);
}
