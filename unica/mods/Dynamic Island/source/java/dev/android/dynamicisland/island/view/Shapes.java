package dev.android.dynamicisland.island.view;

import static dev.android.dynamicisland.island.graphics.Easing.lerp;

import android.graphics.RectF;

/**
 * Turns the current spring values into rectangles: the pill, the split-off bubble and the cards, including
 * the squash and stretch that make them read as liquid.
 */
final class Shapes {
    /** How much a fast change of width flattens the pill (and of height narrows it). */
    private static final float PILL_SQUASH = 0.12f;
    private static final float PILL_STRETCH = 0.06f;
    /** Speeds (dp per second) at which the squash and stretch reach their full amount. */
    private static final float PILL_SQUASH_SPEED_DP = 900.0f;
    private static final float PILL_STRETCH_SPEED_DP = 400.0f;
    /** A card that grows in height fast narrows by this fraction (and widens a little when it bounces back). */
    private static final float CARD_SQUASH = 0.05f;
    private static final float CARD_SQUASH_SPEED_DP = 1200.0f;

    private final Metrics m;
    private final Springs sp;
    private final Scene scene;

    Shapes(Metrics m, Scene scene) {
        this.m = m;
        this.scene = scene;
        this.sp = scene.springs;
    }

    static float clampUnit(float v) {
        return Math.max(-1.0f, Math.min(1.0f, v));
    }

    /** The pill. Squash and stretch: it flattens while it widens fast and narrows while it grows in height. */
    void main(RectF out) {
        float w = Math.max(0.0f, sp.width.value());
        float h = Math.max(0.0f, sp.height.value());
        float squash = PILL_SQUASH * clampUnit(sp.width.velocity() / m.dp(PILL_SQUASH_SPEED_DP));
        float stretch = PILL_STRETCH * clampUnit(sp.height.velocity() / m.dp(PILL_STRETCH_SPEED_DP));
        h *= 1.0f - squash;
        w *= 1.0f - stretch;
        h = Math.min(h, w);
        float left = (m.cx - (w / 2.0f)) + sp.offsetX.value();
        float top = m.cy - (h / 2.0f);
        out.set(left, top, left + w, top + h);
    }

    /** The bubble: a circle that grows out of the pill's right end as the split progresses. */
    void bubble(RectF main, RectF out) {
        float pillRadius = main.height() / 2.0f;
        float s = sp.split.value();
        float radius = lerp(IslandView.PAUSED_GLOW * pillRadius, m.bubbleR, IslandView.clamp01(s));
        float restDistance = m.bubbleGap + pillRadius + m.bubbleR;
        float centerX = (restDistance * s) + (main.right - pillRadius);
        float centerY = main.centerY();
        out.set(centerX - radius, centerY - radius, centerX + radius, centerY + radius);
    }

    /** A card (not necessarily its resting rectangle: swipe offsets and the stack drag are applied). */
    void card(Card c, RectF out) {
        float h = Math.max(0.0f, c.h.value());
        float w = Math.max(0.0f, c.w.value() * (1.0f - (CARD_SQUASH * clampUnit(c.h.velocity() / m.dp(CARD_SQUASH_SPEED_DP)))));
        float left = m.cx - (w / 2.0f);
        if (w < m.screenW) {
            left = Math.max(Math.min(left, (m.screenW - m.cardMargin) - w), Math.min(m.cardMargin, left));
        }
        float top = c.cy.value() - (h / 2.0f);
        if (!c.leaving) {
            float dragY = sp.stackDy.value();
            float stretch = Math.min(m.dp(10.0f), Math.abs(dragY) * 0.08f);
            top += dragY * ((c.order * 0.16f) + 1.0f) - (dragY <= 0.0f ? stretch : 0.0f);
            h += stretch;
            left += swipeOffset(c);
        }
        out.set(left, top, left + w, top + h);
    }

    /** Horizontal displacement of a staying card: the stack drag (weaker further down) plus its own swipe. */
    private float swipeOffset(Card c) {
        return (sp.stackDx.value() * (1.0f - (c.order * 0.08f))) + c.dx.value();
    }

    /** Left edge of the card's content in view coordinates. */
    float contentLeft(Card c) {
        float left = m.centredLeft(c.body.w);
        return c.leaving ? left : left + (sp.stackDx.value() * (1.0f - (c.order * 0.08f))) + c.dx.value();
    }

    /** How open a card is: 0 while it is still pill-sized, 1 at its full height. */
    float expansion(Card c) {
        float full = Math.max(c.body.h, m.pillH + 1.0f);
        return IslandView.clamp01((c.h.value() - m.pillH) / (full - m.pillH));
    }

    /** The card that is furthest up, i.e. the one the liquid bridge hangs from. */
    Card topmostCard() {
        Card best = null;
        for (Card c : scene.cards) {
            if (best == null || c.cy.value() < best.cy.value()) {
                best = c;
            }
        }
        return best;
    }
}
