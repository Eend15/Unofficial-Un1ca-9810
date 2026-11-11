package dev.android.dynamicisland.island.view;

import android.graphics.Canvas;
import android.graphics.RectF;
import dev.android.dynamicisland.island.model.IslandItem;

/** What the compact pill or the side bubble shows for one item. Main thread only. */
public abstract class Content {
    final IslandView owner;
    final IslandItem item;

    Content(IslandView owner, IslandItem item) {
        this.owner = owner;
        this.item = item;
    }

    /** Width the shape needs to show this content. */
    abstract float desiredWidth();

    /** Draws into {@code bounds}; {@code elapsedIn} is the time since the content faded in. */
    abstract void draw(Canvas canvas, RectF bounds, float alpha, long elapsedIn);
}
