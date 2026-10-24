package dev.android.dynamicisland.island.view.card;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import dev.android.dynamicisland.island.model.IslandItem;

/**
 * A tappable button of an expanded card. The body that creates it fills in what to draw ({@link #glyph},
 * {@link #icon} or {@link #label} on a {@link #bg} fill) and what to do on tap ({@link #action} or {@link #run}).
 * Main thread only.
 */
public final class Btn {
    /** Notification action to fire on tap, or null when {@link #run} is used. */
    public IslandItem.Action action;
    /** Fill colour; {@code Colors.TRANSPARENT_MARK} means no fill. */
    int bg;
    /** Round button as opposed to a pill with a label. */
    boolean circle;
    /** Vector glyph id from {@code Glyphs}, or 0 for none. */
    int glyph;
    Drawable icon;
    String label;
    /** Bounds in card-body coordinates. */
    public final RectF r;
    /** Direct callback to run on tap (media controls), or null when {@link #action} is used. */
    public Runnable run;

    Btn() {
        r = new RectF();
    }
}
