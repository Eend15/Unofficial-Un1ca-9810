package dev.android.dynamicisland.island.view;

import static dev.android.dynamicisland.island.view.IslandView.clamp01;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import dev.android.dynamicisland.island.feedback.AudioLevels;
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
    /** The shade gate (1 = there, 0 = gone): the bubble has merged into the pill by here, the content is gone before this. */
    private static final float SHADE_MERGED_BY = 0.55f;
    private static final float SHADE_CONTENT_GONE_BY = 0.45f;
    private static final float SHADE_CONTENT_RANGE = 0.4f;

    private final Metrics m;
    private final Paints paints;
    private final Scene scene;
    private final Springs sp;
    private final Shapes shapes;
    private final StackPainter stack;
    private final CardBridge bridge;
    private final Path clip = new Path();
    private final Path glowCutout = new Path();
    private final AmbientGlow glow, bubbleGlow;
    private final GlowMotion glowMotion = new GlowMotion();
    private final Tween glowPresence = new Tween(0, 1200);
    private IslandItem lastGlowSession;
    private float glowAlpha;
    private final Path outlineCutout = new Path();
    private final Path neck = new Path();
    private final RectF bubble = new RectF();
    private final RectF outlineRect = new RectF();
    private final RectF shrunk = new RectF();

    PillPainter(Metrics m, Paints paints, Scene scene, Shapes shapes, StackPainter stack, CardBridge bridge) {
        this.m = m;
        this.paints = paints;
        this.scene = scene;
        this.sp = scene.springs;
        this.shapes = shapes;
        this.stack = stack;
        this.bridge = bridge;
        glow = new AmbientGlow(m.dp(1));
        bubbleGlow = new AmbientGlow(m.dp(1));
    }

    private static boolean legacyMerge() {
        return ModuleSettings.legacyAnimation();
    }

    /** Draws pill and bubble; {@code pill} is the pill's rectangle for this frame. */
    void draw(Canvas canvas, RectF full, long t) {
        // while the shade comes down the bubble merges into the pill, then the body shrinks into a dot with its content
        // growing smaller and fading; the other way round when the shade has gone
        float gate = IslandView.clamp01(sp.shadeGate.value());
        shapes.shadePill(full, shrunk);
        RectF pill = shrunk;
        float contentScale = pill.width() / Math.max(1.0f, full.width());
        float contentAlpha = clamp01((gate - SHADE_CONTENT_GONE_BY) / SHADE_CONTENT_RANGE);
        float split = sp.split.value() * clamp01((gate - SHADE_MERGED_BY) / (1.0f - SHADE_MERGED_BY));
        float r = pill.height() / 2.0f;
        // the bubble also stays while a stack opens: it merges back into the pill instead of vanishing in one frame
        boolean hasBubble = split > 0.003f && (scene.mode != Mode.EXPANDED || !legacyMerge());
        boolean hasNeck = false;
        float neckAlpha = 0.0f;
        float bubbleX = 0.0f;
        float bubbleY = 0.0f;
        float bubbleRadius = 0.0f;
        if (hasBubble) {
            shapes.bubble(pill, split, bubble);
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

        // A returning compact body stays opaque; pillBlob only gates its content until the fold finishes.
        float bodyAlpha = scene.mode == Mode.COMPACT ? 1.0f : clamp01(sp.pillBlob.value());
        if (ModuleSettings.ambientGlow() && bodyAlpha > IslandView.MIN_VISIBLE_ALPHA) {
            int save = canvas.save();
            glowCutout.reset();
            if (pillVisible) glowCutout.addRoundRect(pill, r, r, Path.Direction.CW);
            if (hasBubble) glowCutout.addCircle(bubbleX, bubbleY, bubbleRadius, Path.Direction.CW);
            canvas.clipOutPath(glowCutout);
            if (hasNeck) canvas.clipOutPath(neck);
            // Also prime state if Android draws before admitting the first animation frame.
            stepGlow(0, null);
            float alpha = bodyAlpha * clamp01(contentScale) * glowAlpha;
            if (pillVisible) glow.draw(canvas, pill, glowMotion, alpha, ModuleSettings.glowStrength());
            if (hasBubble) bubbleGlow.draw(canvas, bubble, glowMotion, alpha, ModuleSettings.glowStrength());
            canvas.restoreToCount(save);
        }
        boolean outlinePill = pillVisible && scene.mode == Mode.COMPACT && bodyAlpha > IslandView.MIN_VISIBLE_ALPHA;
        if ((outlinePill || hasBubble) && sp.outlineFade.value() > IslandView.MIN_VISIBLE_ALPHA
                && scene.pillOutlineOpacity() > IslandView.MIN_VISIBLE_ALPHA) {
            drawOutline(canvas, pill, r, outlinePill, bodyAlpha, hasBubble, hasNeck, neckAlpha, bubbleX, bubbleY, bubbleRadius);
        }

        int mainColor = bodyColor(scene.mainIn);
        paints.shape.setColor(mainColor);
        paints.shape.setAlpha(Math.round(bodyAlpha * 255.0f));
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

        if (pillVisible && contentAlpha > IslandView.MIN_VISIBLE_ALPHA) {
            int contentSave = canvas.save();
            if (Math.abs(contentScale - 1.0f) > 0.001f) {
                canvas.scale(contentScale, contentScale, full.centerX(), full.centerY());
            }
            // the content keeps its full-size layout and is clipped to the (still shrinking) body
            drawPillContent(canvas, full, full.height() / 2.0f, t, contentAlpha);
            canvas.restoreToCount(contentSave);
        }
        if (hasBubble && split > BUBBLE_CONTENT_FROM) {
            float extra = clamp01((split - BUBBLE_CONTENT_FROM) / BUBBLE_CONTENT_RANGE) * contentAlpha;
            drawBubbleLayer(canvas, scene.bubbleOut, t, extra);
            drawBubbleLayer(canvas, scene.bubbleIn, t, extra);
        }
    }

    boolean stepGlow(float dt, AudioLevels audio) {
        long now = IslandView.now();
        if (!ModuleSettings.ambientGlow()) {
            glowPresence.set(0, now - 1200); glowAlpha = 0; lastGlowSession = null;
            return false;
        }
        if (scene.mode != Mode.COMPACT && sp.pillBlob.value() <= IslandView.MIN_VISIBLE_ALPHA) return false;
        IslandItem music = scene.musicForGlow();
        boolean show = music != null || !ModuleSettings.glowMusicOnly();
        glowPresence.set(show ? 1 : 0, now);
        glowAlpha = glowPresence.value(now);
        if (music != null) lastGlowSession = music;
        else if (!ModuleSettings.glowMusicOnly()) lastGlowSession = null;
        if (!show && glowAlpha <= 0) { lastGlowSession = null; return false; }
        // All compact bodies share this state, including pause and the last album colour on session end.
        boolean moving = glowMotion.step(dt, lastGlowSession, ModuleSettings.glowAlbum(),
                ModuleSettings.glowColour(), music == null ? null : audio);
        return glowPresence.running(now) || (glowAlpha > 0 && moving);
    }

    /** Only the outer rim is white. Filling underneath a fading black body produces a grey pill. */
    private void drawOutline(Canvas canvas, RectF pill, float r, boolean pillVisible, float bodyAlpha, boolean hasBubble, boolean hasNeck,
                             float neckAlpha, float bubbleX, float bubbleY, float bubbleRadius) {
        int save = canvas.save();
        outlineCutout.reset();
        if (pillVisible) outlineCutout.addRoundRect(pill, r, r, Path.Direction.CW);
        if (hasBubble) outlineCutout.addCircle(bubbleX, bubbleY, bubbleRadius, Path.Direction.CW);
        canvas.clipOutPath(outlineCutout);
        if (hasNeck) canvas.clipOutPath(neck);
        float fade = clamp01(sp.outlineFade.value());
        Paint paint = paints.outline;
        paint.setStyle(Paint.Style.FILL);
        if (pillVisible) {
            paint.setColor(Colors.withAlpha(Colors.PILL_OUTLINE, fade * bodyAlpha));
            outlineRect.set(pill);
            outlineRect.inset(-m.outlineW, -m.outlineW);
            canvas.drawRoundRect(outlineRect, r + m.outlineW, r + m.outlineW, paint);
        }
        if (hasBubble) {
            paint.setColor(Colors.withAlpha(Colors.PILL_OUTLINE, fade));
            canvas.drawCircle(bubbleX, bubbleY, bubbleRadius + m.outlineW, paint);
            if (hasNeck) {
                // squared: the outline is wider than the black neck, so it must fade before the neck is thin
                paint.setColor(Colors.withAlpha(Colors.PILL_OUTLINE,
                        fade * (ModuleSettings.legacyAnimation() ? neckAlpha : neckAlpha * neckAlpha)));
                paint.setStyle(Paint.Style.FILL_AND_STROKE);
                paint.setStrokeWidth(m.outlineW * 2.0f);
                canvas.drawPath(neck, paint);
                paint.setStyle(Paint.Style.FILL);
            }
        }
        canvas.restoreToCount(save);
    }

    private void drawPillContent(Canvas canvas, RectF pill, float r, long t, float extraAlpha) {
        int save = canvas.save();
        clip.reset();
        clip.addRoundRect(pill, r, r, Path.Direction.CW);
        canvas.clipPath(clip);
        if (scene.mainOut != null) {
            drawLayer(canvas, scene.mainOut, pill, t, extraAlpha);
        }
        if (scene.mainIn != null && scene.mode != Mode.EXPANDED) {
            drawLayer(canvas, scene.mainIn, pill, t, extraAlpha);
        }
        canvas.restoreToCount(save);
    }

    /** The pill takes its item's team colour while compact; otherwise (and while a card is out) it is black. */
    private int bodyColor(Layer layer) {
        return scene.pillBodyColor(layer);
    }

    private void drawLayer(Canvas canvas, Layer layer, RectF shape, long t, float extraAlpha) {
        // the content goes with the pill's body: a pill that is out of sight (the cards are folding back into it) shows nothing
        float alpha = layer.alpha(t) * (layer.handoff != null ? 1 : clamp01(sp.pillBlob.value())) * extraAlpha;
        if (alpha <= IslandView.MIN_VISIBLE_ALPHA) {
            return;
        }
        float scale = layer.scale(t);
        int save = canvas.save();
        canvas.translate(layer.offset(t) * m.dp(LAYER_SLIDE_DP), 0.0f);
        canvas.scale(scale, scale, shape.centerX(), shape.centerY());
        Canvas content = layer.contentBlur.begin(canvas, shape, layer.blurAmount(t), m.dp(ContentBlur.RADIUS_DP));
        try {
            layer.content.draw(content, shape, alpha, layer.elapsedIn(t));
        } finally {
            layer.contentBlur.end(canvas, content);
            canvas.restoreToCount(save);
        }
    }

    private void drawBubbleLayer(Canvas canvas, Layer layer, long t, float extraAlpha) {
        if (layer == null) {
            return;
        }
        float alpha = layer.alpha(t) * extraAlpha;
        if (alpha > IslandView.MIN_VISIBLE_ALPHA) {
            float merging = 1 - clamp01(sp.split.value());
            float blur = Math.max(layer.blurAmount(t), merging);
            Canvas content = layer.contentBlur.begin(canvas, bubble, blur, m.dp(ContentBlur.RADIUS_DP));
            try {
                layer.content.draw(content, bubble, alpha, layer.elapsedIn(t));
            } finally {
                layer.contentBlur.end(canvas, content);
            }
        }
    }
}
