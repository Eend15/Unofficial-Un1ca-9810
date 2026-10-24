package dev.android.dynamicisland.island.view;

import static dev.android.dynamicisland.island.view.IslandView.clamp01;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.graphics.LiquidBridge;
import dev.android.dynamicisland.island.graphics.Metaball;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;

/**
 * Draws the pill, the bubble next to it, the neck of goo that joins them, the thin outline around the group,
 * the bridge to the first card and the contents (layers) inside pill and bubble.
 */
final class PillPainter {
    private static final float LAYER_SLIDE_DP = 18.0f;
    /** How strongly the neck bulges while the bubble is still touching the pill. */
    private static final float MAX_NECK_SPREAD = 0.55f;
    /** The bubble's content only shows once the bubble has split off this far, fully at +0.4. */
    private static final float BUBBLE_CONTENT_FROM = 0.55f;
    private static final float BUBBLE_CONTENT_RANGE = 0.4f;

    private final Metrics m;
    private final Paints paints;
    private final Scene scene;
    private final Springs sp;
    private final Shapes shapes;
    private final StackPainter stack;
    private final CardBridge bridge;
    private final Path clip = new Path();
    private final Path neck = new Path();
    private final RectF bubble = new RectF();
    private final RectF outlineRect = new RectF();

    PillPainter(Metrics m, Paints paints, Scene scene, Shapes shapes, StackPainter stack, CardBridge bridge) {
        this.m = m;
        this.paints = paints;
        this.scene = scene;
        this.sp = scene.springs;
        this.shapes = shapes;
        this.stack = stack;
        this.bridge = bridge;
    }

    /** Draws pill and bubble; {@code pill} is the pill's rectangle for this frame. */
    void draw(Canvas canvas, RectF pill, long t) {
        float r = pill.height() / 2.0f;
        float split = sp.split.value();
        boolean hasBubble = split > 0.003f && scene.mode != Mode.EXPANDED;
        boolean hasNeck = false;
        float neckAlpha = 0.0f;
        float bubbleX = 0.0f;
        float bubbleY = 0.0f;
        float bubbleRadius = 0.0f;
        if (hasBubble) {
            shapes.bubble(pill, bubble);
            bubbleRadius = bubble.width() / 2.0f;
            bubbleX = bubble.centerX();
            bubbleY = bubble.centerY();
            float pillX = pill.right - r;
            float pillY = pill.centerY();
            float distance = bubbleX - pillX;
            float touching = r + bubbleRadius;
            float rest = r + m.bubbleGap + m.bubbleR;
            float spread = distance <= touching
                    ? MAX_NECK_SPREAD
                    : (1.0f - clamp01((distance - touching) / Math.max(1.0f, (rest - touching) - m.dp(0.5f)))) * MAX_NECK_SPREAD;
            neck.reset();
            neckAlpha = spread > 0.01f ? stack.neckAlpha(Metaball.neck(pillX, pillY, r, bubbleX, bubbleY, bubbleRadius, spread, neck)) : 0.0f;
            hasNeck = neckAlpha > 0.0f;
        }
        LiquidBridge cardBridge = bridge.update(t, pill, r);
        boolean pillVisible = pill.width() > IslandView.MIN_VISIBLE_SIZE && pill.height() > IslandView.MIN_VISIBLE_SIZE;

        if (((pillVisible && scene.mode == Mode.COMPACT) || hasBubble) && sp.outlineFade.value() > IslandView.MIN_VISIBLE_ALPHA) {
            drawOutline(canvas, pill, r, pillVisible, hasBubble, hasNeck, neckAlpha, bubbleX, bubbleY, bubbleRadius);
        }

        int mainColor = bodyColor(scene.mainIn);
        paints.shape.setColor(mainColor);
        paints.shape.setAlpha(Math.round(sp.pillBlob.value() * 255.0f));
        if (pillVisible) {
            canvas.drawRoundRect(pill, r, r, paints.shape);
        }
        paints.shape.setColor(Colors.BLACK);
        if (cardBridge != null) {
            bridge.draw(canvas, cardBridge);
        }
        paints.shape.setAlpha(255);
        if (hasBubble) {
            paints.shape.setColor(mainColor);
            if (hasNeck) {
                paints.shape.setAlpha(Math.round(255.0f * neckAlpha));
                canvas.drawPath(neck, paints.shape);
            }
            paints.shape.setColor(bodyColor(scene.bubbleIn));
            canvas.drawCircle(bubbleX, bubbleY, bubbleRadius, paints.shape);
            paints.shape.setColor(Colors.BLACK);
        }

        if (pillVisible) {
            drawPillContent(canvas, pill, r, t);
        }
        if (hasBubble && split > BUBBLE_CONTENT_FROM) {
            float extra = clamp01((split - BUBBLE_CONTENT_FROM) / BUBBLE_CONTENT_RANGE);
            drawBubbleLayer(canvas, scene.bubbleOut, t, extra);
            drawBubbleLayer(canvas, scene.bubbleIn, t, extra);
        }
    }

    /** Thin lighter outline around pill and bubble, drawn first so the black shapes sit on top of it. */
    private void drawOutline(Canvas canvas, RectF pill, float r, boolean pillVisible, boolean hasBubble, boolean hasNeck,
                             float neckAlpha, float bubbleX, float bubbleY, float bubbleRadius) {
        float fade = sp.outlineFade.value();
        Paint paint = paints.outline;
        paint.setColor(Colors.withAlpha(Colors.PILL_OUTLINE, fade));
        paint.setStyle(Paint.Style.FILL);
        if (pillVisible) {
            outlineRect.set(pill);
            outlineRect.inset(-m.outlineW, -m.outlineW);
            canvas.drawRoundRect(outlineRect, r + m.outlineW, r + m.outlineW, paint);
        }
        if (!hasBubble) {
            return;
        }
        canvas.drawCircle(bubbleX, bubbleY, bubbleRadius + m.outlineW, paint);
        if (hasNeck) {
            // squared: the outline is wider than the black neck, so it must be gone before the neck is thin
            paint.setColor(Colors.withAlpha(Colors.PILL_OUTLINE, fade * (ModuleSettings.legacyAnimation() ? neckAlpha : neckAlpha * neckAlpha)));
            paint.setStyle(Paint.Style.FILL_AND_STROKE);
            paint.setStrokeWidth(m.outlineW * 2.0f);
            canvas.drawPath(neck, paint);
            paint.setStyle(Paint.Style.FILL);
        }
    }

    private void drawPillContent(Canvas canvas, RectF pill, float r, long t) {
        int save = canvas.save();
        clip.reset();
        clip.addRoundRect(pill, r, r, Path.Direction.CW);
        canvas.clipPath(clip);
        if (scene.mainOut != null) {
            drawLayer(canvas, scene.mainOut, pill, t);
        }
        if (scene.mainIn != null && scene.mode != Mode.EXPANDED) {
            drawLayer(canvas, scene.mainIn, pill, t);
        }
        canvas.restoreToCount(save);
    }

    /** The pill takes its item's team colour while compact; otherwise (and while a card is out) it is black. */
    private int bodyColor(Layer layer) {
        if (layer == null || scene.mode != Mode.COMPACT) {
            return Colors.BLACK;
        }
        IslandItem it = layer.content.item;
        return (!it.hasTeams() || it.pillColor == 0) ? Colors.BLACK : it.pillColor;
    }

    private void drawLayer(Canvas canvas, Layer layer, RectF shape, long t) {
        float alpha = layer.alpha(t);
        if (alpha <= IslandView.MIN_VISIBLE_ALPHA) {
            return;
        }
        float scale = layer.scale(t);
        int save = canvas.save();
        canvas.translate(layer.offset(t) * m.dp(LAYER_SLIDE_DP), 0.0f);
        canvas.scale(scale, scale, shape.centerX(), shape.centerY());
        layer.content.draw(canvas, shape, alpha, layer.elapsedIn(t));
        canvas.restoreToCount(save);
    }

    private void drawBubbleLayer(Canvas canvas, Layer layer, long t, float extraAlpha) {
        if (layer == null) {
            return;
        }
        float alpha = layer.alpha(t) * extraAlpha;
        if (alpha > IslandView.MIN_VISIBLE_ALPHA) {
            layer.content.draw(canvas, bubble, alpha, layer.elapsedIn(t));
        }
    }
}
