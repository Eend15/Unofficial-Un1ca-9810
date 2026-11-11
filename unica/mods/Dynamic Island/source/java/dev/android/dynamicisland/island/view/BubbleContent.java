package dev.android.dynamicisland.island.view;

import android.graphics.Canvas;
import android.graphics.RectF;
import dev.android.dynamicisland.island.model.IslandItem;

/**
 * Content of the round side bubble: the item's leading icon, shrunk inside a progress ring when the
 * item reports determinate progress.
 */
public final class BubbleContent extends Content {
    private static final float ICON_RATIO = 0.56f;
    private static final float ICON_RATIO_WITH_RING = 0.44f;

    BubbleContent(IslandView owner, IslandItem item) {
        super(owner, item);
    }

    @Override
    float desiredWidth() {
        return owner.bubbleR * 2.0f;
    }

    @Override
    void draw(Canvas c, RectF bubble, float alpha, long elapsedIn) {
        float iconSize;
        if (item.progress >= 0.0f && !item.isMedia) {
            owner.drawRing(c, bubble.centerX(), bubble.centerY(), (bubble.width() / 2.0f) - owner.dp(2.5f), item.progress, -1, alpha);
            iconSize = bubble.width() * ICON_RATIO_WITH_RING;
        } else {
            iconSize = bubble.width() * ICON_RATIO;
        }
        owner.drawLeadingMono(c, item, bubble.centerX() - (iconSize / 2.0f), bubble.centerY(), iconSize, alpha);
    }
}
