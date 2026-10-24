package dev.android.dynamicisland.island.view;

import dev.android.dynamicisland.island.graphics.LiquidBridge;
import dev.android.dynamicisland.island.graphics.Spring;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.card.CardBody;

/**
 * One card of the expanded stack: the item it shows, its laid-out {@link CardBody} and the springs that
 * animate its centre, size and horizontal swipe offset. Main thread only.
 */
public final class Card {
    long blurOnAt;
    CardBody body;
    long contentStart;
    IslandItem item;
    boolean launched;
    long leaveAt;
    boolean leaving;
    int order;
    long startAt;
    /** Size the card had when it started to leave; its content fades by how far the fold has got. */
    float leaveFromH;
    float leaveFromW;
    float targetCy;
    float targetH;
    float targetW;
    final Spring cy = new Spring(0.0f, 0.45f, 0.75f).setValueThreshold(0.4f);
    final Spring w = new Spring(0.0f, 0.45f, 0.75f).setValueThreshold(0.4f);
    final Spring h = new Spring(0.0f, 0.45f, 0.75f).setValueThreshold(0.4f);
    /** Swipe offset: follows the finger and springs back (or away) on release. */
    final Spring dx = new Spring(0.0f, 0.42f, 0.5f).setValueThreshold(0.3f);

    /** Liquid connection to the pill while this is the topmost card. */
    final LiquidBridge bridge = new LiquidBridge();

    Card(IslandItem item, CardBody body) {
        this.item = item;
        this.body = body;
    }
}
