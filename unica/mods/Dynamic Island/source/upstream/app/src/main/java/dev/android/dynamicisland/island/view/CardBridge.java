package dev.android.dynamicisland.island.view;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.graphics.LiquidBridge;

/**
 * The liquid thread between the pill and the topmost card. It leaves the pill across its flat bottom and part of
 * the round ends, lands on the card's flat top edge, pinches off when the gap grows and merges again when the
 * card comes back; the pill wobbles whenever that happens.
 */
final class CardBridge {
    /** How much of the pill's round ends the bridge may use, and how much wider it may land on the card. */
    private static final float ROUND_END = 0.55f;
    private static final float CARD_SPREAD = 1.5f;
    private static final float MIN_CARD_HALF_DP = 14.0f;
    /** Gaps at which the bridge pinches off and re-merges. */
    private static final float BREAK_DP = 6.5f;
    private static final float MERGE_DP = 2.0f;
    private static final float BREAK_KICK_DP = 34.0f;
    private static final float MERGE_KICK_DP = 26.0f;
    /** The bridge starts this far inside both shapes so no seam shows where it joins them. */
    private static final float TUCK = 0.75f;

    private final IslandView view;
    private final Metrics m;
    private final Paints paints;
    private final Scene scene;
    private final Shapes shapes;
    private final StackPainter stack;
    private final RectF cardRect = new RectF();
    private final RectF bounds = new RectF();
    /** Colour the bridge blends into at the card end, from the last {@link #update}. */
    private int cardColor;

    CardBridge(IslandView view, Metrics m, Paints paints, Scene scene, Shapes shapes, StackPainter stack) {
        this.view = view;
        this.m = m;
        this.paints = paints;
        this.scene = scene;
        this.shapes = shapes;
        this.stack = stack;
    }

    /**
     * Steps the bridge for this frame.
     *
     * @return the bridge to draw, or null when there is no card (or no visible pill)
     */
    LiquidBridge update(long t, RectF pill, float pillRadius) {
        Card first = shapes.topmostCard();
        for (Card c : scene.cards) {
            if (c != first) {
                c.bridge.reset();
            }
        }
        if (first == null || pill.width() <= 1.0f) {
            return null;
        }
        shapes.card(first, cardRect);
        float flatHalf = Math.max(0.0f, (pill.width() / 2.0f) - pillRadius);
        float topHalf = flatHalf + (pillRadius * ROUND_END);
        float inset = topHalf - flatHalf;
        float topY = pill.centerY() + (float) Math.sqrt(Math.max(0.0f, (pillRadius * pillRadius) - (inset * inset))) - TUCK;
        float cardCorner = Math.min(cardRect.height() / 2.0f, m.cardRadius);
        float bottomHalf = Math.min(Math.max(0.0f, (cardRect.width() / 2.0f) - cardCorner), Math.max(topHalf * CARD_SPREAD, m.dp(MIN_CARD_HALF_DP)));
        LiquidBridge bridge = first.bridge;
        bridge.breakDistance = m.dp(BREAK_DP);
        bridge.mergeDistance = m.dp(MERGE_DP);
        int event = bridge.update(t, pill.centerX(), topY, topHalf, cardRect.centerX(), cardRect.top + TUCK, bottomHalf);
        if (event == LiquidBridge.BROKE) {
            wobble(BREAK_KICK_DP); // the pill wobbles once as the thread snaps
        } else if (event == LiquidBridge.MERGED) {
            wobble(MERGE_KICK_DP);
        }
        cardColor = stack.fillColor(shapes.expansion(first));
        return bridge;
    }

    private void wobble(float kickDp) {
        scene.springs.height.impulse(m.dp(kickDp));
        view.scheduleFrame();
    }

    /** The thread blends from the pill's black into the card's current colour; the stubs take their shape's colour. */
    void draw(Canvas canvas, LiquidBridge bridge) {
        if (bridge.hasBridge) {
            bridge.bridge.computeBounds(bounds, false);
            paints.shape.setShader(new LinearGradient(0.0f, bounds.top, 0.0f, bounds.bottom, Colors.BLACK, cardColor, Shader.TileMode.CLAMP));
            canvas.drawPath(bridge.bridge, paints.shape);
            paints.shape.setShader(null);
        }
        if (bridge.hasTopStub) {
            paints.shape.setColor(Colors.BLACK);
            canvas.drawPath(bridge.topStub, paints.shape);
        }
        if (bridge.hasBottomStub) {
            paints.shape.setColor(cardColor);
            canvas.drawPath(bridge.bottomStub, paints.shape);
            paints.shape.setColor(Colors.BLACK);
        }
    }
}
