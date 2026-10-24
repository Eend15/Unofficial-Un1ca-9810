package dev.android.dynamicisland.island.view;

import static dev.android.dynamicisland.island.graphics.Easing.easeOutBack;
import static dev.android.dynamicisland.island.graphics.Easing.lerp;
import static dev.android.dynamicisland.island.view.IslandView.clamp01;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.graphics.Easing;
import dev.android.dynamicisland.island.graphics.Metaball;
import dev.android.dynamicisland.island.view.card.CardBody;
import dev.android.dynamicisland.island.view.card.RemoteBody;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.XLog;

/**
 * Draws the expanded cards: card surface with its glass and rim, the content on top, the metaball neck between
 * cards that are being swallowed, and the blur backdrops placed behind the cards.
 */
final class StackPainter {
    /** Card content fades in from this far below its place and from this size. */
    private static final float CONTENT_RISE_DP = 10.0f;
    private static final float CONTENT_SCALE_FROM = 0.95f;
    /** How long a leaving card's content takes to fade while it shrinks with the card. */
    private static final float LEAVING_CONTENT_FADE_MS = 90.0f;
    /** Fold progress by which a leaving card's content is gone: it fades first, then the empty shape folds into the pill. */
    private static final float FOLD_FADE_TO = 0.38f;
    /** Opening progress at which a new card's content is fully there. */
    private static final float OPEN_FADE_TO = 0.25f;
    /** A card that is leaving reports this "elapsed" time so its content is fully shown while it fades. */
    private static final long LEAVING_CONTENT_ELAPSED_MS = 2305843009213693951L;
    /** Opening fraction from which a card turns from the pill's black into its own colour and glass. */
    private static final float CARD_MATERIAL_FROM = 0.35f;
    private static final float GLASS_FROM = 0.1f;
    /** Necks thinner than this are not drawn; they reach full opacity this much wider. */
    private static final float NECK_FADE_FROM_DP = 4.0f;
    private static final float NECK_FADE_RANGE_DP = 6.0f;

    private final Metrics m;
    private final Paints paints;
    private final Scene scene;
    private final Shapes shapes;
    private final Path clip = new Path();
    private final RectF inner = new RectF();
    private final RectF slot = new RectF();
    private final RectF gooUpper = new RectF();
    private final RectF gooLower = new RectF();
    private final Path gooPath = new Path();

    /** Outline of a card that is still changing shape: brighter than the pill's, so the motion shows on a black screen. */
    private static final int MORPH_OUTLINE = 0x70FFFFFF;
    private Shader rim;
    private float rimHeight = -1.0f;
    private float rimTop = Float.NaN;
    private float rimAlpha = -1.0f;
    private float rimSettle = -1.0f;
    private int rimBase;
    private boolean drawFailureLogged;

    StackPainter(Metrics m, Paints paints, Scene scene, Shapes shapes) {
        this.m = m;
        this.paints = paints;
        this.scene = scene;
        this.shapes = shapes;
    }

    /** Fade of a card's content: in once the card is nearly open, out quickly when it leaves. */
    static float contentAlpha(Card c, long t, float opening) {
        if (c.leaving) {
            if (ModuleSettings.legacyAnimation()) {
                return 1.0f - clamp01((t - c.leaveAt) / LEAVING_CONTENT_FADE_MS);
            }
            // the content stays crisp and fades out in the first part of the fold, while the card is still large; what
            // travels back into the pill is the plain shape, which does not leave a smear of tiny text behind
            return 1.0f - Easing.easeInOut(clamp01(foldProgress(c) / FOLD_FADE_TO));
        }
        if (!ModuleSettings.legacyAnimation()) {
            // the mirror of folding: the content grows with the card from the first moment instead of appearing in an empty shape
            return clamp01(opening / OPEN_FADE_TO);
        }
        return clamp01((opening - 0.85f) / IslandView.PAUSED_SPEED) * clamp01((t - c.contentStart) / 150.0f);
    }

    /** How far a leaving card has folded towards the size it is going to (0 = not yet, 1 = there). */
    private static float foldProgress(Card c) {
        if (!c.launched) {
            return 0.0f;
        }
        float spanH = c.leaveFromH - c.targetH;
        if (spanH > 1.0f) {
            return clamp01((c.leaveFromH - c.h.value()) / spanH);
        }
        float spanW = c.leaveFromW - c.targetW;
        return spanW > 1.0f ? clamp01((c.leaveFromW - c.w.value()) / spanW) : 1.0f;
    }

    /** A liquid neck fades out as its waist gets thin, so it never shows as a hair-thin line. */
    float neckAlpha(float waist) {
        return clamp01((waist - m.dp(NECK_FADE_FROM_DP)) / m.dp(NECK_FADE_RANGE_DP));
    }

    /** The card's fill: the pill's black while it pours out, turning into the card colour (and glass) as it opens. */
    int fillColor(float opening) {
        boolean glass = scene.blur != null && scene.blur.available();
        float material = Easing.easeInOut(clamp01((opening - CARD_MATERIAL_FROM) / (1.0f - CARD_MATERIAL_FROM)));
        int fill = Colors.blend(Colors.BLACK, glass ? Colors.CARD_GLASS : Colors.CARD_SOLID, material);
        // the see-through glass comes in over the whole opening: squeezing it into the last stretch made the black
        // turn transparent in one jump
        float glassIn = Easing.easeInOut(clamp01((opening - GLASS_FROM) / (1.0f - GLASS_FROM)));
        return Colors.withAlpha(fill, lerp(1.0f, glass ? 0.46f : 0.9f, glassIn));
    }

    /** Blur callback: paints a card into its blur slot, whose canvas origin is the slot, not the view. */
    void paintInBlurSlot(Object owner, Canvas canvas, float viewLeft, float viewTop) {
        if (!(owner instanceof Card)) {
            return;
        }
        Card c = (Card) owner;
        shapes.card(c, slot);
        int save = canvas.save();
        canvas.translate(-viewLeft, -viewTop);
        drawCard(canvas, c, slot, IslandView.now(), shapes.expansion(c));
        canvas.restoreToCount(save);
    }

    /** Tells the blur layer where every card is for this frame. */
    void placeBlurs() {
        BlurSink blur = scene.blur;
        if (blur == null) {
            return;
        }
        blur.beginFrame();
        float alpha = scene.visibleAlpha();
        if (alpha > IslandView.MIN_VISIBLE_ALPHA) {
            // back to front: the first card is the one nearest the pill, so it lies on top of the cards below it
            boolean legacy = ModuleSettings.legacyAnimation();
            for (int n = 0; n < scene.cards.size(); n++) {
                Card c = scene.cards.get(legacy ? n : scene.cards.size() - 1 - n);
                shapes.card(c, slot);
                if (slot.width() >= 1.0f && slot.height() >= 1.0f) {
                    blur.place(c, slot, Math.min(slot.height() / 2.0f, m.cardRadius), alpha);
                }
            }
        }
        blur.endFrame();
    }

    /** The neck of goo between two cards that are folding back into the pill one after the other. */
    void drawGoo(Canvas canvas) {
        Card previous = null;
        for (Card c : scene.cards) {
            if (!c.leaving) {
                continue;
            }
            if (previous != null) {
                drawGooBetween(canvas, previous, c);
            }
            previous = c;
        }
    }

    private void drawGooBetween(Canvas canvas, Card a, Card b) {
        shapes.card(a, gooUpper);
        shapes.card(b, gooLower);
        RectF top = gooUpper.top <= gooLower.top ? gooUpper : gooLower;
        RectF bottom = top == gooUpper ? gooLower : gooUpper;
        float gap = bottom.top - top.bottom;
        float openness = Math.max(shapes.expansion(a), shapes.expansion(b));
        float spread = (1.0f - clamp01(gap / m.dp(30.0f))) * 0.6f * (1.0f - openness);
        if (spread <= 0.02f) {
            return;
        }
        float topR = Math.min(Math.min(top.height(), top.width()) / 2.0f, m.dp(22.0f));
        float bottomR = Math.min(Math.min(bottom.height(), bottom.width()) / 2.0f, m.dp(22.0f));
        gooPath.reset();
        float alpha = neckAlpha(Metaball.neck(top.centerX(), top.bottom - topR, topR, bottom.centerX(), bottom.top + bottomR, bottomR, spread, gooPath));
        if (alpha > 0.0f) {
            paints.shape.setAlpha(Math.round(255.0f * alpha));
            canvas.drawPath(gooPath, paints.shape);
            paints.shape.setAlpha(255);
        }
    }

    /** Draws one card whose rectangle {@code r} was already computed. */
    void drawCard(Canvas canvas, Card c, RectF r, long t, float opening) {
        float corner = Math.min(r.height() / 2.0f, m.cardRadius);
        float rimSettled = clamp01((opening - 0.82f) / 0.18f);
        // while it pours out of (or back into) the pill the card is the pill's black, but it wears a clearly
        // visible outline from the first frame, so the changing shape can be followed on a black screen; the card
        // colour and glass fade in as it settles, and the outline turns into the card's light rim
        paints.card.setColor(fillColor(opening));
        canvas.drawRoundRect(r, corner, corner, paints.card);
        paints.cardStroke.setShader(ModuleSettings.legacyAnimation()
                ? rimShader(r, rimSettled, 1.0f, MORPH_OUTLINE) // before 0.1.4: no outline until the card has nearly opened
                : rimShader(r, 1.0f, rimSettled, c.leaving ? Colors.PILL_OUTLINE : MORPH_OUTLINE));
        inner.set(r);
        inner.inset(m.outlineW / 2.0f, m.outlineW / 2.0f);
        canvas.drawRoundRect(inner, corner, corner, paints.cardStroke);
        float alpha = contentAlpha(c, t, opening);
        if (alpha <= IslandView.MIN_VISIBLE_ALPHA || c.body instanceof RemoteBody) {
            return;
        }
        int save = canvas.save();
        clip.reset();
        clip.addRoundRect(r, corner, corner, Path.Direction.CW);
        canvas.clipPath(clip);
        drawBackground(c.body, canvas, r, alpha);
        if (!c.leaving && alpha < 1.0f && ModuleSettings.legacyAnimation()) {
            // the content rises into place and settles from a slightly smaller size while it fades in
            float settle = easeOutBack(alpha);
            float scale = CONTENT_SCALE_FROM + ((1.0f - CONTENT_SCALE_FROM) * settle);
            canvas.translate(0.0f, (1.0f - settle) * m.dp(CONTENT_RISE_DP));
            canvas.scale(scale, scale, r.centerX(), r.top);
        }
        // the content follows the card's current shape (squashed while it bounces, shrinking into the pill
        // when it leaves) instead of keeping its laid-out size and being cut off at the edges
        long elapsed = c.leaving ? LEAVING_CONTENT_ELAPSED_MS : t - c.contentStart;
        if (c.leaving && !ModuleSettings.legacyAnimation()) {
            // a leaving card keeps its content at its true size, centred, and the shrinking card clips it
            drawBody(c.body, canvas, r.left + ((r.width() - c.body.w) / 2.0f), r.top, alpha, elapsed);
        } else {
            canvas.scale(r.width() / c.body.w, r.height() / c.body.h, r.left, r.top);
            drawBody(c.body, canvas, r.left, r.top, alpha, elapsed);
        }
        canvas.restoreToCount(save);
    }

    /** The light rim gradient of a card; rebuilt only when the card moved or changed height noticeably. */
    private Shader rimShader(RectF r, float alpha, float settle, int base) {
        boolean stale = rim == null || Math.abs(rimHeight - r.height()) > 1.0f || Math.abs(rimTop - r.top) > 1.0f
                || Math.abs(rimAlpha - alpha) > 0.02f || Math.abs(rimSettle - settle) > 0.02f || rimBase != base;
        if (stale) {
            rimHeight = r.height();
            rimTop = r.top;
            rimAlpha = alpha;
            rimSettle = settle;
            rimBase = base;
            rim = new LinearGradient(0.0f, r.top, 0.0f, r.bottom,
                    Colors.withAlpha(whiteMix(base, Colors.RIM_TOP, settle), alpha),
                    Colors.withAlpha(whiteMix(base, Colors.RIM_BOTTOM, settle), alpha), Shader.TileMode.CLAMP);
        }
        return rim;
    }

    /** Between two white colours that differ only in alpha. */
    private static int whiteMix(int from, int to, float t) {
        int a = Math.round((from >>> 24) + (((to >>> 24) - (from >>> 24)) * t));
        return (a << 24) | 0x00FFFFFF;
    }

    void drawBackground(CardBody body, Canvas canvas, RectF frame, float alpha) {
        try {
            body.drawBackground(canvas, frame, alpha);
        } catch (Throwable t) {
            XLog.once("IslandView.drawBackground", t);
        }
    }

    /** A bad notification payload must never take System UI down with an exception inside onDraw. */
    void drawBody(CardBody body, Canvas canvas, float x, float y, float alpha, long elapsed) {
        try {
            body.draw(canvas, x, y, alpha, elapsed);
        } catch (Throwable t) {
            if (!drawFailureLogged) {
                drawFailureLogged = true;
                XLog.e("card draw failed for " + body.item, t);
            }
        }
    }
}
