package dev.android.dynamicisland.island.view;

import android.graphics.Region;
import android.graphics.RectF;

/** Where the island is on screen: the area it covers, where it rests, and which part of the window takes touches. */
final class Footprint {
    private static final float HIDDEN_TOUCH_HALF_WIDTH_DP = 46.0f;
    /** Margin around the shapes that still counts as touching them. */
    private static final float TOUCH_PAD_DP = 4.0f;

    private final IslandView view;
    private final IslandHost host;
    private final Metrics m;
    private final Scene scene;
    private final Shapes shapes;
    private final RectF pill = new RectF();
    private final RectF other = new RectF();

    Footprint(IslandView view, IslandHost host, Metrics m, Scene scene, Shapes shapes) {
        this.view = view;
        this.host = host;
        this.m = m;
        this.scene = scene;
        this.shapes = shapes;
    }

    /** Union of the pill, the bubble and every card that overlaps the pill's row. */
    void coverage(RectF out) {
        shapes.main(out);
        if (scene.springs.split.value() > 0.2f) {
            shapes.bubble(out, other);
            out.union(other);
        }
        float rowTop = m.cy - (m.pillH / 2.0f);
        float rowBottom = m.cy + (m.pillH / 2.0f);
        for (Card c : scene.cards) {
            shapes.card(c, other);
            if (other.top < rowBottom && other.bottom > rowTop) {
                out.union(other);
            }
        }
    }

    /** The pill as it will rest once its animation is over (its target width, or a default while not compact). */
    void restingPill(RectF out) {
        float w = (scene.mainIn == null || scene.mode != Mode.COMPACT)
                ? Math.max(m.minPillW, m.dp(92.0f))
                : scene.springs.width.target();
        out.set(m.cx - (w / 2.0f), m.cy - (m.pillH / 2.0f), m.cx + (w / 2.0f), m.cy + (m.pillH / 2.0f));
    }

    /** The part of the window that should receive touches; everything else lets them through. */
    void touchRegion(Region out) {
        out.setEmpty();
        float pad = m.dp(TOUCH_PAD_DP);
        if (scene.mode == Mode.HIDDEN) {
            if (host.hasMinimized() && !scene.suppressed && scene.shadeAlpha() > 0.5f) {
                float half = Math.max(m.dp(HIDDEN_TOUCH_HALF_WIDTH_DP), m.holeD);
                out.op(Math.round(m.cx - half), Math.round((m.cy - (m.pillH / 2.0f)) - pad),
                        Math.round(m.cx + half), Math.round(m.cy + (m.pillH / 2.0f) + pad), Region.Op.UNION);
            }
            return;
        }
        if (scene.visibleAlpha() < TouchController.MIN_TOUCHABLE_ALPHA) {
            return;
        }
        if (scene.mode == Mode.EXPANDED && !scene.peekOpen) {
            // an opened stack takes the touches of the whole screen: a touch beside it closes it
            out.set(0, 0, m.screenW, Math.max(view.getHeight(), m.screenW * 3));
            return;
        }
        shapes.main(pill);
        if (scene.mode == Mode.COMPACT || pill.width() > m.dp(40.0f)) {
            add(out, pill, pad);
        }
        if (scene.springs.split.value() > 0.6f && scene.mode == Mode.COMPACT) {
            shapes.bubble(pill, other);
            add(out, other, pad);
        }
        for (Card c : scene.cards) {
            if (!c.leaving) {
                shapes.card(c, other);
                add(out, other, pad);
            }
        }
    }

    private static void add(Region region, RectF rect, float pad) {
        region.op(Math.round(rect.left - pad), Math.round(rect.top - pad), Math.round(rect.right + pad), Math.round(rect.bottom + pad), Region.Op.UNION);
    }
}
