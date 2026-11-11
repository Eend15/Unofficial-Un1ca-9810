package dev.android.dynamicisland.island.view;

import dev.android.dynamicisland.island.material.FrostedSurface;
import dev.android.dynamicisland.island.material.MaterialFrame;
import android.content.Context;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Choreographer;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import dev.android.dynamicisland.island.graphics.Easing;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.graphics.FramePacer;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.card.Btn;
import dev.android.dynamicisland.island.view.card.MediaBody;
import dev.android.dynamicisland.island.view.card.SliderBody;
import dev.android.dynamicisland.island.view.media.MediaFx;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.XLog;
import java.util.List;
import java.util.regex.Pattern;

/**
 * The Dynamic Island itself: one custom view that draws the pill, the secondary bubble and the expanded
 * card stack (with the metaball "goo" between them) and handles all touch gestures on them.
 *
 * <p>Created by the island controller and hosted in a window over the status bar; the host
 * ({@link IslandHost}) is told whenever the window needs another height or the shape moved. State
 * changes animate through {@link dev.android.dynamicisland.island.graphics.Spring}s that are stepped from the
 * {@link Choreographer}.
 *
 * <p>This class is the wiring: it owns the shared state ({@link Scene}, {@link Springs}, {@link Metrics}) and the
 * frame loop, and keeps the API the controller, the window and the shade hooks use. The work is split up:
 * {@link Director} decides transitions, {@link Shapes} turns springs into rectangles, {@link PillPainter} and
 * {@link StackPainter} draw, {@link TouchController} handles gestures.
 *
 * <p>Main thread only. Everything that can throw while drawing or handling touches is guarded so a bad
 * notification can never take System UI down.
 */
public final class IslandView extends View implements Choreographer.FrameCallback {
    static {
        BlurGovernor.INSTANCE.setReport(text -> dev.android.dynamicisland.xposed.Diagnostics.fact("transition blur", text));
    }

    /** {@link #setItems} direction hint: nothing special. */
    public static final int HINT_NONE = 0;
    /** {@link #setItems} direction hint: the change travels to the left (item minimized / swiped away). */
    public static final int HINT_TO_LEFT = 1;
    /** {@link #setItems} direction hint: the change comes in from the left (item restored). */
    public static final int HINT_FROM_LEFT = 2;

    public static final long FLIP_MS = 340;
    public static final long FX_COLOR_MS = 500;
    public static final long FX_EASE_MS = 600;
    public static final float PAUSED_GLOW = 0.72f;
    public static final float PAUSED_SPEED = 0.15f;
    public static final float TWO_PI = 6.2831855f;
    public static final long ROW_STAGGER_MS = 30;
    public static final int BLOB_STOPS = 13;
    static final long ROLL_MS = 520;

    /** Per blob of the music card glow: horizontal lane, radii (fractions of the card), peak alpha and drift rate. */
    public static final float[] GLOW_LANE = {0.16f, 0.52f, 0.86f};
    public static final float[] GLOW_RX = {0.5f, 0.42f, 0.5f};
    public static final float[] GLOW_RY = {0.46f, 0.34f, 0.44f};
    public static final float[] GLOW_PEAK = {0.95f, 0.55f, 0.9f};
    public static final float[] GLOW_RATE = {0.55f, 0.8f, 0.65f};

    /** Splits a score-like text such as "2 - 1" or "A: B" into its two sides. */
    static final Pattern SCORE = Pattern.compile("(\\S+?)\\s*[-–—:]\\s*(\\S+)");

    /** Layers and shapes fainter / smaller than this are not drawn. */
    static final float MIN_VISIBLE_ALPHA = 0.003f;
    static final float MIN_VISIBLE_SIZE = 0.5f;

    private static final float SHADE_COLLAPSE_AT = 0.04f;
    /** The shade is down this far (0..1) and the island is sent away: it shrinks into a dot and fades. */
    private static final float SHADE_GONE_AT = 0.02f;
    /** The island comes back when the shade has closed down to this (a little lower, so it does not flicker). */
    private static final float SHADE_BACK_AT = 0.01f;
    /** Shrinking into the dot is quick and does not overshoot; growing back is slower, with a small bounce. */
    static final float SHADE_GO_RESPONSE = 0.24f;
    static final float SHADE_GO_DAMPING = 1.0f;
    static final float SHADE_BACK_RESPONSE = 0.46f;
    static final float SHADE_BACK_DAMPING = 0.72f;
    private static final float DEFAULT_FRAME_DT = 0.008333334f;

    /** Choreographer#getFrameTimeNanos: hidden API, open to System UI (a platform app). */
    private static final java.lang.reflect.Method frameTimeNanos = findFrameTimeNanos();

    public final TextPaint bigTimePaint;
    public final TextPaint bodyPaint;
    public final TextPaint buttonPaint;
    public final TextPaint smallPaint;
    public final TextPaint titlePaint;
    public final TextPaint trailPaint;
    public final Paint fillPaint;
    /** Scratch objects shared with the card bodies and the media effects that draw through this view. */
    public final RectF tmpRect = new RectF();
    public final Path barClip = new Path();
    public final Camera flipCamera = new Camera();
    public final Matrix flipMatrix = new Matrix();
    /** Seek bar being dragged (in the island or in the shade) and the fraction it points at. */
    public MediaBody seekBody;
    /** The slider card being dragged and the position the finger is at (0..1). */
    public SliderBody sliderBody;
    public float sliderFraction;
    /** The slider that was just let go of glides from {@code sliderSettleFrom} to {@code sliderSettleTo} (a step). */
    public String sliderSettleKey;
    public float sliderSettleFrom;
    public float sliderSettleTo;
    public long sliderSettleStart;
    public float seekFraction;

    // layout values the content classes read; copies of the final ones in Metrics
    float bubbleR;
    final float holeGap;
    float holeTextPadding;
    final float innerGap;
    float leadSize;
    float minPillW;
    final float padding;
    float holeD;
    private float markerX = -1.0f;
    private float markerY;
    private float markerD;
    private final Paint markerPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    float maxPillW;

    private final IslandHost host;
    private final Choreographer choreographer = Choreographer.getInstance();
    /** The shade gate value last handed to the host, so an unchanged one is not sent again. */
    private float appliedGate = 1.0f;
    private final Metrics metrics;
    private final Springs springs = new Springs();
    private final Scene scene = new Scene(springs);
    private final Paints paints;
    private final Shapes shapes;
    private final MediaFxCache mediaFx;
    private final Waveform waveform;
    private final RecordingWaveform recordingWaveform;
    private final DigitClock clock;
    private final ButtonPress buttons = new ButtonPress();
    private final IconPainter icons;
    private final RemoteCards remote;
    private final BodyFactory bodies;
    private final StackPainter stackPainter;
    private final PillPainter pillPainter;
    private final Director director;
    private final TouchController touch;
    private final SecondTicker ticker;
    private final Footprint footprint;
    private final ShadeCards shadeCards;
    private final RectF pillRect = new RectF();
    private final RectF samplingPill = new RectF();
    private final RectF samplingBubble = new RectF();
    private final int[] samplingLocation = new int[2];
    private Runnable pillSamplingStateChanged;

    public void setPillSamplingStateChanged(Runnable listener) {
        pillSamplingStateChanged = listener;
    }

    private void notifyPillSamplingVisibility() {
        if (pillSamplingStateChanged != null) pillSamplingStateChanged.run();
    }

    private final FramePacer framePacer = new FramePacer();
    private TorchBeamVisual torchBeamVisual;
    public TorchBeamVisual torchBeamVisual() {
        if (torchBeamVisual == null) torchBeamVisual = new TorchBeamVisual();
        return torchBeamVisual;
    }
    private boolean renderingPaused;
    private long touchActiveUntil;
    private boolean frameScheduled;
    private static final int MAX_FAILED_FRAMES = 3;
    private int failedFrames;
    private long lastFrameNanos;

    public IslandView(Context context, IslandHost host) {
        super(context);
        this.host = host != null ? host : IslandHost.NONE;
        metrics = new Metrics(context.getResources().getDisplayMetrics().density);
        paints = new Paints(context.getResources().getDisplayMetrics(), metrics.outlineW);
        trailPaint = paints.trail;
        smallPaint = paints.small;
        titlePaint = paints.title;
        bodyPaint = paints.body;
        bigTimePaint = paints.bigTime;
        buttonPaint = paints.button;
        fillPaint = paints.fill;
        bubbleR = metrics.bubbleR;
        holeGap = metrics.holeGap;
        innerGap = metrics.innerGap;
        leadSize = metrics.leadSize;
        minPillW = metrics.minPillW;
        padding = metrics.padding;

        shapes = new Shapes(metrics, scene);
        mediaFx = new MediaFxCache(this);
        waveform = new Waveform(metrics);
        recordingWaveform = new RecordingWaveform(this.host.recordingAudio());
        clock = new DigitClock(this);
        icons = new IconPainter(metrics, paints, waveform, recordingWaveform, clock, mediaFx, tmpRect, barClip);
        remote = new RemoteCards(this, shapes, scene);
        bodies = new BodyFactory(this, remote);
        stackPainter = new StackPainter(metrics, paints, scene, shapes);
        stackPainter.setMaterialFrameRequester(this::scheduleFrame);
        CardBridge bridge = new CardBridge(this, metrics, paints, scene, shapes, stackPainter);
        pillPainter = new PillPainter(metrics, paints, scene, shapes, stackPainter, bridge);
        director = new Director(this, this.host, metrics, scene, shapes, bodies, mediaFx);
        touch = new TouchController(this, this.host, metrics, scene, shapes, director, buttons);
        ticker = new SecondTicker(this, scene, stackPainter);
        footprint = new Footprint(this, this.host, metrics, scene, shapes);
        shadeCards = new ShadeCards(this, stackPainter);
        setWillNotDraw(false);
    }

    // ---- wiring used by the helper classes -----------------------------------------------------------------------

    BodyFactory bodies() {
        return bodies;
    }

    ButtonPress buttons() {
        return buttons;
    }

    void notifyHost() {
        host.onIslandFrame();
    }

    void scheduleTick() {
        ticker.schedule();
    }

    void scheduleFrame() {
        if (!frameScheduled && !renderingPaused) {
            frameScheduled = true;
            long delay = framePacer.delayMillis(ModuleSettings.lowPerformance(), interactiveMotion(), System.nanoTime());
            choreographer.postFrameCallbackDelayed(this, delay);
        }
    }

    /** Keep direct manipulation and structural transitions responsive; ambient motion uses the smaller budget. */
    boolean interactiveMotion() {
        long t = now();
        if (scene.iMode != null && scene.iMode.animating()) return true;
        if (t < touchActiveUntil || springs.animating() || buttons.animating() || seekBody != null || sliderBody != null
                || scene.mainOut != null || scene.bubbleOut != null
                || scene.contentHandoff != null && !scene.contentHandoff.finished(t)) return true;
        for (Card c : scene.cards) {
            if (c.leaving || t < c.startAt || c.iMode && !c.cx.isAtRest() || !c.cy.isAtRest() || !c.w.isAtRest() || !c.h.isAtRest() || !c.dx.isAtRest()) return true;
        }
        return false;
    }

    /** Wake an input-driven frame even if a slower ambient callback was already queued. */
    private void touchFrame() {
        touchActiveUntil = now() + 250;
        choreographer.removeFrameCallback(this);
        frameScheduled = false;
        scheduleFrame();
    }

    // ---- seams for the tests in this package -----------------------------------------------------------------------

    /** The open cards, topmost first (leaving ones last). */
    List<Card> cards() {
        return scene.cards;
    }

    /** The delayed task that closes the open stack; tests run it instead of waiting for the looper. */
    Runnable autoCollapseTask() {
        return director.autoCollapseTask();
    }

    /** Draws a card the way the blur layer does on a device, where the cards live under the island. */
    void drawCard(Canvas canvas, Card card, long t) {
        RectF r = new RectF();
        shapes.card(card, r);
        if (r.width() >= 1.0f && r.height() >= 1.0f) {
            stackPainter.drawCard(canvas, card, r, t, shapes.expansion(card));
        }
    }

    void computeMain(RectF out) {
        shapes.paintedMain(out);
    }

    void computeCard(Card card, RectF out) {
        shapes.card(card, out);
    }

    /** Raw compositor luma below this window; null means unsupported/unavailable, never guessed. */
    public void setPillBackgroundLuma(Float luma) {
        if (android.os.Looper.myLooper() != android.os.Looper.getMainLooper()) {
            post(() -> setPillBackgroundLuma(luma));
            return;
        }
        float before = scene.pillOutlineTarget();
        scene.pillOutline.sample(luma);
        if(scene.iMode!=null) scene.iMode.syncOutlineTarget();
        if (before != scene.pillOutlineTarget()) {
            invalidate();
            scheduleFrame();
        }
    }

    /** A thin bottom-edge band avoids sampling the physical camera hole in the pill's centre. */
    public boolean pillBackgroundSamplingRegion(Rect out) {
        out.setEmpty();
        boolean iMotion=scene.iMode!=null;
        if (!isAttachedToWindow() || !isShown() || getWindowVisibility() != VISIBLE
                || scene.shadePulled()
                || (iMotion ? scene.sleeping || scene.suppressed
                    : scene.mode != Mode.COMPACT || scene.visibleAlpha() <= MIN_VISIBLE_ALPHA)) {
            return false;
        }
        if(iMotion) scene.iMode.outlineSamplingBounds(samplingPill);else shapes.paintedMain(samplingPill);
        if (samplingPill.width() < 2f || samplingPill.height() < 2f) return false;
        float left = samplingPill.left;
        float right = samplingPill.right;
        if (!iMotion && springs.split.value() > 0.003f) {
            shapes.bubble(samplingPill, samplingBubble);
            left = Math.min(left, samplingBubble.left);
            right = Math.max(right, samplingBubble.right);
        }
        getLocationOnScreen(samplingLocation);
        float band = Math.max(1f, Math.min(metrics.dp(3f), samplingPill.height() * 0.12f));
        out.set((int) Math.floor(left + samplingLocation[0]),
                (int) Math.floor(samplingPill.bottom - band + samplingLocation[1]),
                (int) Math.ceil(right + samplingLocation[0]),
                (int) Math.ceil(samplingPill.bottom + samplingLocation[1]));
        return out.intersect(samplingLocation[0], samplingLocation[1],
                samplingLocation[0] + getWidth(), samplingLocation[1] + getHeight()) && !out.isEmpty();
    }

    // ---- configuration -------------------------------------------------------------------------------------------

    public void setBlurSink(BlurSink sink) {
        scene.blur = sink;
        sink.setPainter(stackPainter::paintInBlurSlot);
    }

    /** Already-filtered compositor pixels excluding this entire window; foreground is never part of it. */
    public void setMaterialBackdrop(MaterialFrame frame) {
        if (scene.materialFrame == frame) return;
        scene.materialFrame = frame;
        invalidate();
        scheduleFrame();
    }

    /** Hard reset only when the host is actually hidden/detached, never on a missed readback. */
    public void clearMaterialBackdrop() {
        scene.materialFrame=null;
        for(Card card:scene.cards)card.material.clear();
    }

    /** Capture the target stack extent up front, so opening does not chase a growing crop. */
    public boolean materialBackdropRegion(Rect out) {
        out.setEmpty();
        if (!FrostedSurface.requested() || renderingPaused
                || scene.visibleAlpha() <= MIN_VISIBLE_ALPHA || scene.frozenByShade()) return false;
        if(scene.cards.isEmpty()) {
            if(scene.mode!=Mode.COMPACT||scene.primary==null)return false;
            // MaterialCapture clips this to the physical display. Prime the
            // background before a tap; do not wait for an expanded card to exist.
            out.set(0,0,metrics.screenW,Math.max(getResources().getDisplayMetrics().heightPixels,getHeight()));
            return !out.isEmpty();
        }
        float bottom = 0;
        for (Card card : scene.cards) {
            bottom = Math.max(bottom, Math.max(card.cy.value() + card.h.value() / 2f,
                    card.targetCy + card.body.h / 2f));
        }
        int[] location = new int[2];
        getLocationOnScreen(location);
        out.set(0, 0, metrics.screenW, (int)Math.ceil((bottom + location[1] + dp(64)) / 128f) * 128);
        return !out.isEmpty();
    }

    public boolean materialBackdropPrewarming() { return scene.cards.isEmpty(); }
    private Runnable materialCaptureRefresh;
    public void setMaterialCaptureRefresh(Runnable refresh) { materialCaptureRefresh=refresh; }

    public boolean iModeGestureEnabled() {
        return scene.iMode!=null && !scene.held && !isSuppressedNow();
    }

    public boolean iModeTouchEnabled() {
        return iModeGestureEnabled()
                && (scene.iMode.hiddenByGesture() || scene.visibleAlpha()>.4f);
    }

    public boolean iModeOwnsTouch(float x,float y) {
        if(!iModeTouchEnabled()) return false;
        if(scene.iMode.hiddenByGesture()) return x>=metrics.cx-dp(46) && x<=metrics.cx+dp(46)
                && y>=metrics.cy-metrics.pillH/2-dp(4) && y<=metrics.cy+metrics.pillH/2+dp(4);
        if(scene.iMode.hit(x,y,dp(4))!=null) return true;
        RectF bounds=new RectF();
        for(Card card:scene.cards) if(card.iMode) {
            shapes.card(card,bounds);
            if(bounds.contains(x,y) && (card.leaving || Math.abs(card.w.value()-card.body.w)>dp(3)
                    || Math.abs(card.h.value()-card.body.h)>dp(3))) return true;
        }
        return false;
    }

    public void setRemoteLayer(ViewGroup layer) {
        remote.setLayer(layer);
    }

    public View remoteViewFor(IslandItem item) {
        return remote.viewFor(item);
    }

    /** Tells the view where the camera hole is; call whenever the display geometry may have changed. */
    /** The size the user set: height in percent, narrowest and widest in dp (0 = automatic). */
    public void setPillSize(int heightPercent, int minWidthDp, int maxWidthDp) {
        if (metrics.applySize(heightPercent, minWidthDp, maxWidthDp)) {
            afterMetricsChanged();
        }
    }

    public void setHoleTextPadding(int extraDp) {
        float padding = dp(Math.max(0, Math.min(ModuleSettings.HOLE_TEXT_PADDING_MAX_DP, extraDp)));
        if (Math.abs(holeTextPadding - padding) < 0.01f) return;
        holeTextPadding = padding;
        afterMetricsChanged();
    }

    public void setGeometry(int screenWidth, float centerX, float centerY, float holeDiameter, boolean isTablet) {
        if (!metrics.update(screenWidth, centerX, centerY, holeDiameter, isTablet)) {
            return;
        }
        afterMetricsChanged();
    }

    private void afterMetricsChanged() {
        holeD = metrics.holeD;
        maxPillW = metrics.maxPillW;
        // the size the user set reaches the content classes through these copies
        minPillW = metrics.minPillW;
        leadSize = metrics.leadSize;
        bubbleR = metrics.bubbleR;
        if (scene.mode == Mode.COMPACT && scene.primary != null) {
            director.refreshMain();
            scheduleFrame();
        } else if (scene.mode == Mode.EXPANDED) {
            collapse();
        }
        if (scene.secondary != null) {
            director.refreshBubble();
        }
        invalidate();
        notifyHost();
    }

    /** The ring that shows where the camera hole is set to while the settings page is open; {@code x < 0} = none. */
    public void setHoleMarker(float x, float y, float diameter) {
        if (markerX == x && markerY == y && markerD == diameter) {
            return;
        }
        markerX = x;
        markerY = y;
        markerD = diameter;
        invalidate();
    }

    private void drawHoleMarker(Canvas canvas) {
        if (markerX < 0.0f) {
            return;
        }
        markerPaint.setStyle(Paint.Style.STROKE);
        markerPaint.setStrokeWidth(dp(2.0f));
        markerPaint.setColor(0xFF3E91FF);
        canvas.drawCircle(markerX, markerY, markerD / 2.0f, markerPaint);
        markerPaint.setStrokeWidth(dp(1.0f));
        float arm = (markerD / 2.0f) + dp(5.0f);
        canvas.drawLine(markerX - arm, markerY, markerX + arm, markerY, markerPaint);
        canvas.drawLine(markerX, markerY - arm, markerX, markerY + arm, markerPaint);
    }

    public void setItems(List<IslandItem> sorted) {
        setItems(sorted, HINT_NONE);
    }

    /** Session metadata is independent of whether the music pill is currently visible. */
    public void setGlowSession(IslandItem item) {
        if (scene.explicitGlowSession && scene.glowSession == item) return;
        scene.explicitGlowSession = true;
        scene.glowSession = item;
        scheduleFrame();
    }

    public void setItems(List<IslandItem> sorted, int hint, List<IslandItem> minimizedItems) {
        scene.minimized.clear();
        if (minimizedItems != null) {
            scene.minimized.addAll(minimizedItems);
        }
        setItems(sorted, hint);
    }

    /**
     * Replaces the shown items (already sorted, most important first).
     *
     * @param hint one of {@link #HINT_NONE}, {@link #HINT_TO_LEFT}, {@link #HINT_FROM_LEFT}; steers the
     *             direction the pill content slides and the island appears or disappears in
     */
    public void setItems(List<IslandItem> list, int hint) {
        director.update(list, hint);
    }

    public void setSuppressed(boolean value) {
        if (scene.suppressed == value) {
            return;
        }
        scene.suppressed = value;
        if (value && scene.mode == Mode.EXPANDED) {
            collapse();
        }
        springs.suppress.animateTo(value ? 0.0f : 1.0f, value ? 0.18f : 0.32f, 1.0f);
        if (!value) retargetVisibilityGate();
        scheduleFrame();
    }

    public boolean isSuppressedNow() {
        return scene.suppressed || scene.sleeping;
    }

    /** Begin before keyguard/doze removes the window, sharing the existing liquid gate with the shade. */
    public void setSleeping(boolean sleeping) {
        if (scene.sleeping == sleeping) return;
        if (sleeping) {
            long now = android.os.SystemClock.uptimeMillis();
            MotionEvent cancel = MotionEvent.obtain(now, now, MotionEvent.ACTION_CANCEL, 0, 0, 0);
            try { touch.handle(cancel); } finally { cancel.recycle(); }
        }
        scene.sleeping = sleeping;
        if (sleeping) {
            if (scene.mode == Mode.EXPANDED) collapse();
            ticker.cancel();
            // System UI closes the shade when the screen goes off. If the closing report never reached us, the pill
            // would stay gone behind a shade that is not there (nothing else brings it back), so start from closed.
            scene.shade = 0f;
            scene.shadeGone = false;
        }
        // A wake on the lock screen must not reopen the gate before keyguard permits the reveal.
        if (sleeping || !scene.suppressed) retargetVisibilityGate();
        scheduleFrame();
        notifyHost();
    }

    /** The display is off: no unfinished spring or stale surface may be exposed on the next wake. */
    public void finishSleeping() {
        setSleeping(true);
        springs.shadeGate.snapTo(0);
        applyShadeFade();
        director.finishSleeping();
        stackPainter.placeBlurs();
        remote.sync();
        ticker.cancel();
        scheduleFrame();
        notifyHost();
    }

    private void retargetVisibilityGate() {
        boolean gone = scene.shadeGone || scene.sleeping;
        if (scene.sleeping) springs.shadeGate.animateTo(0, .24f, 1f);
        else springs.shadeGate.animateTo(gone ? 0 : 1,
                gone ? SHADE_GO_RESPONSE : SHADE_BACK_RESPONSE,
                gone ? SHADE_GO_DAMPING : SHADE_BACK_DAMPING);
    }

    public void reveal() {
        if (isSuppressedNow()) {
            return; // suppressed again while the reveal delay ran; leaving it stays the job of setSuppressed(false)
        }
        springs.suppress.snapTo(1.0f);
        if (scene.primary != null && scene.mode != Mode.EXPANDED) {
            director.reveal();
        }
        scheduleFrame();
    }

    /**
     * How far the notification shade is pulled down (0..1). The first bit of the pull sends the island away and the
     * shade being nearly shut brings it back; it shrinks into a dot (and grows out of it) by time, not by distance.
     */
    public void setShadeFraction(float fraction) {
        float clamped = clamp01(fraction);
        if (Math.abs(clamped - scene.shade) < Scene.SHADE_PULLED_EPS) {
            return;
        }
        scene.shade = clamped;
        if (clamped > SHADE_COLLAPSE_AT && scene.mode == Mode.EXPANDED) {
            collapse();
        }
        boolean gone = scene.shadeGone ? clamped > SHADE_BACK_AT : clamped > SHADE_GONE_AT;
        if (gone != scene.shadeGone) {
            scene.shadeGone = gone;
            if (scene.sleeping || !scene.suppressed) retargetVisibilityGate();
        }
        applyShadeFade();
        // After the compact pill has disappeared, subsequent panel-drag fractions
        // need no frames or window updates. A return changes the spring target,
        // so frozenByShade becomes false and the existing return animation wakes.
        if (!scene.frozenByShade()) {
            scheduleFrame();
            notifyHost();
        }
    }

    /**
     * Hands the host the island's opacity for the shade gate: the whole window surface is faded. The island's shape
     * shrinking into the dot is drawn by the pill painter.
     */
    private void applyShadeFade() {
        float g = springs.shadeGate.value();
        if (g == appliedGate && g >= 0.999f) {
            return;
        }
        appliedGate = g;
        scene.surfaceFade = host.onShadeFade(scene.shadeAlpha(), 1.0f, metrics.cx, metrics.cy);
    }

    /** True while the shade is, or was last reported to be, pulled: its real position is then worth asking for. */
    public boolean shadeNeedsWatching() {
        return scene.shade > Scene.SHADE_PULLED_EPS || scene.shadeGone;
    }

    public boolean shadePulled() {
        return scene.shadePulled();
    }

    // ---- commands ------------------------------------------------------------------------------------------------

    /** Jelly squash of the pill, e.g. when something flies into it. */
    public void absorb() {
        if (scene.mode == Mode.HIDDEN) {
            return;
        }
        springs.width.setParams(0.32f, 0.58f);
        springs.height.setParams(0.32f, 0.58f);
        springs.width.impulse(((springs.width.target() * 0.1f) * 19.634954f) / 0.52f);
        springs.height.impulse((metrics.dp(4.0f) * 19.634954f) / 0.52f);
        scheduleFrame();
    }

    /** Pops the island open on {@code item} for {@code ms}, like a banner. */
    public boolean peek(IslandItem item, long ms) {
        if (!canPeek() || item == null) {
            return false;
        }
        director.peek(item, ms);
        return true;
    }

    /** Incoming cards may replace a manual card, but never a reply or a pulled-down shade. */
    public boolean canPeek() {
        return metrics.screenW > 0 && !isSuppressedNow() && !scene.held && !scene.shadePulled()
                && !(scene.iMode!=null && scene.iMode.hiddenByGesture());
    }

    public boolean isShowingCard(IslandItem item) {
        if (item == null || !isExpanded() || scene.shadePulled()) return false;
        for (Card card : scene.cards) {
            if (card.item != null && (card.item.key.equals(item.key)
                    || item.sourceKey != null && item.sourceKey.equals(card.item.sourceKey))) return true;
        }
        return false;
    }

    private boolean cardOccupiesOverlay(Card card) {
        return (!card.iMode || card.iModeOpacity.value() > MIN_VISIBLE_ALPHA)
                && scene.visibleAlpha() > MIN_VISIBLE_ALPHA && (isExpanded()
                || card.leaving && StackPainter.contentAlpha(card, now(), 1) > MIN_VISIBLE_ALPHA);
    }

    /** Keep the shade copy out until the overlay's departing text has actually faded. */
    public boolean isPaintingCard(IslandItem item) {
        if (item == null) return false;
        for (Card card : scene.cards) {
            if (cardOccupiesOverlay(card) && card.item != null && (card.item.key.equals(item.key)
                    || item.sourceKey != null && item.sourceKey.equals(card.item.sourceKey))) return true;
        }
        return false;
    }

    /** Changes only when the set of painted overlay cards changes, so rows need no per-frame rebinding. */
    public int shadeCardCoverageToken() {
        int token = 0;
        for (Card card : scene.cards) if (cardOccupiesOverlay(card) && card.item != null) token += card.item.key.hashCode();
        return token;
    }

    public boolean isExpanded() {
        return scene.mode == Mode.EXPANDED;
    }

    /** True while the open card is a notification popup (it closes by itself and ignores touches elsewhere). */
    public boolean isPeekOpen() {
        return scene.mode == Mode.EXPANDED && scene.peekOpen;
    }

    /** While held (the user types a reply) the open card does not close by itself; releasing does not close it either. */
    public void setHeld(boolean held) {
        scene.held = held;
        if (held) {
            director.cancelAutoCollapse();
        }
    }

    public void collapse() {
        director.collapse();
    }

    public void regrowPillNow() {
        director.regrowPillNow();
    }

    public void fadePillBlobNow() {
        director.fadePillBlobNow();
    }

    // ---- state queries -------------------------------------------------------------------------------------------

    /** True when nothing of the island is visible or touchable, so the window can be skipped. */
    public boolean isFullyHidden() {
        if (scene.mode == Mode.HIDDEN && host.hasMinimized() && !scene.suppressed) {
            return false;
        }
        boolean nothingDrawn = scene.mode == Mode.HIDDEN && springs.visibility.isAtRest()
                && springs.visibility.value() <= 0.001f && scene.cards.isEmpty();
        if (nothingDrawn) {
            return true;
        }
        boolean fadedOut = scene.suppressed && springs.suppress.isAtRest() && springs.suppress.value() <= 0.001f;
        return fadedOut || scene.shadeAlpha() <= 0.001f;
    }

    public float visibleAlpha() {
        return scene.visibleAlpha();
    }

    public boolean needsAudio() {
        if (scene.sleeping || ModuleSettings.lowPerformance() || renderingPaused || !isShown() || getWindowVisibility() != VISIBLE) return false;
        if ((scene.mode != Mode.COMPACT && scene.iMode==null) || scene.visibleAlpha() < 0.2f) {
            return false;
        }
        IslandItem music = scene.musicForGlow();
        if(music != null && music.playing && ModuleSettings.ambientGlow() && ModuleSettings.glowMotion() > 0) return true;
        if(scene.iMode!=null) {
            for(IslandItem item:scene.iMode.visibleItems())
                if(item.playing && item.trailing==IslandItem.Trailing.WAVEFORM && ModuleSettings.visualizer()) return true;
            return false;
        }
        return needsAudio(scene.mainIn) || (springs.split.value() > .003f && needsAudio(scene.bubbleIn));
    }

    public boolean hasRecordingWaveform(IslandItem item) {
        return item != null && item.voiceRecording && ModuleSettings.concurrentRecordingInput();
    }

    public String recordingInputTarget() {
        if (!ModuleSettings.concurrentRecordingInput() || renderingPaused || !isAttachedToWindow()
                || !isShown() || getWindowVisibility() != VISIBLE || scene.visibleAlpha() < .2f
                || isSuppressedNow() || scene.frozenByShade()) return null;
        if (scene.mode == Mode.EXPANDED) {
            for (Card card : scene.cards) {
                if (!card.leaving && capturesRecording(card.item)) return card.item.key;
            }
        }
        if(scene.iMode!=null) {
            for(IslandItem item:scene.iMode.visibleItems()) if(capturesRecording(item)) return item.key;
            return null;
        }
        if (scene.mode == Mode.COMPACT) {
            if (scene.mainIn != null && capturesRecording(scene.mainIn.content.item)) return scene.mainIn.content.item.key;
            if (scene.bubbleIn != null && springs.split.value() > .05f && capturesRecording(scene.bubbleIn.content.item)) return scene.bubbleIn.content.item.key;
        }
        return null;
    }

    private boolean capturesRecording(IslandItem item) {
        return item.voiceRecording && !item.voiceRecordingPaused
                && item.userId == android.os.Process.myUid() / 100_000;
    }

    public void onRecordingAudioFrame() {
        if (isAttachedToWindow() && !renderingPaused) scheduleFrame();
    }

    public void drawRecordingWaveform(Canvas canvas, IslandItem item, float left, float midY, float width, float height, float alpha) {
        recordingWaveform.draw(canvas, item, left, midY, width, height, alpha);
    }

    private boolean needsAudio(Layer layer) {
        if (layer == null) return false;
        IslandItem item = layer.content.item;
        return item.playing && item.trailing == IslandItem.Trailing.WAVEFORM && ModuleSettings.visualizer();
    }

    public void getCoverageBounds(RectF out) {
        footprint.coverage(out);
    }

    public void getRestingPillBounds(RectF out) {
        footprint.restingPill(out);
    }

    /** The part of the window that should receive touches; everything else lets them through. */
    public void getTouchRegion(Region out) {
        footprint.touchRegion(out);
    }

    // ---- frame loop ----------------------------------------------------------------------------------------------

    @Override
    public void doFrame(long frameTimeNanos) {
        frameScheduled = false;
        if (renderingPaused) return;
        if (!framePacer.allow(ModuleSettings.lowPerformance(), interactiveMotion(), frameTimeNanos)) {
            scheduleFrame();
            return;
        }
        BlurGovernor.INSTANCE.onFrame(frameTimeNanos, SystemClock.uptimeMillis());
        try {
            step(frameTimeNanos);
            failedFrames = 0;
        } catch (Throwable t) {
            lastFrameNanos = 0L;
            XLog.once("IslandView.doFrame", t);
            if (++failedFrames <= MAX_FAILED_FRAMES) {
                scheduleFrame(); // one bad frame must not freeze the animations for good
            }
            return;
        }
    }

    private void step(long frameTimeNanos) {
        frameScheduled = false;
        if (scene.frozenByShade()) {
            lastFrameNanos = 0L;
            if (scene.sleeping && isFullyHidden()) {
                director.finishSleeping();
                stackPainter.placeBlurs();
                remote.sync();
            }
            ticker.cancel();
            notifyHost();
            return;
        }
        float dt = lastFrameNanos == 0 ? DEFAULT_FRAME_DT : (frameTimeNanos - lastFrameNanos) / 1.0E9f;
        lastFrameNanos = frameTimeNanos;
        long t = now();
        boolean active = springs.step(dt) | buttons.animating();
        applyShadeFade();
        if (scene.mode == Mode.HIDDEN && metrics.holeD > 0.0f && springs.visibility.target() > 0.0f
                && springs.width.value() <= metrics.restWidth() + metrics.dp(5.0f)) {
            springs.visibility.animateTo(0.0f, 0.12f, 1.0f);
            active = true;
        }
        active |= director.stepCards(dt, t);
        for (Card c : scene.cards) {
            active |= c.bridge.animating(t);
        }
        springs.outlineFade.animateTo((ModuleSettings.legacyAnimation() ? scene.cards.isEmpty() : allLeaving()) ? 1.0f : 0.0f);
        if (scene.mainOut != null && scene.mainOut.finished(t)) {
            scene.mainOut = null;
        }
        if (scene.bubbleOut != null && scene.bubbleOut.finished(t)) {
            scene.bubbleOut = null;
        }
        active |= scene.mainOut != null || scene.bubbleOut != null;
        active |= scene.mainIn != null && !scene.mainIn.settled(t);
        active |= scene.bubbleIn != null && !scene.bubbleIn.settled(t);
        active |= hasContinuousMotion(dt);
        if (scene.sleeping && isFullyHidden()) director.finishSleeping();
        stackPainter.placeBlurs();
        remote.sync();
        if (isFullyHidden()) ticker.cancel(); else scheduleTick();
        invalidate();
        notifyHost();
        if (active && !isFullyHidden() && !scene.frozenByShade()) {
            scheduleFrame();
        } else {
            lastFrameNanos = 0L;
        }
    }

    /**
     * Steps what moves without a state change (waveform, pulsing dot, running timers, media effects).
     *
     * @return true while something keeps the frame loop alive
     */
    private boolean hasContinuousMotion(float dt) {
        if (scene.visibleAlpha() <= 0.01f) {
            return false;
        }
        Layer main = scene.mainIn;
        Layer bubble = scene.bubbleIn;
        boolean need = false;
        if(scene.iMode!=null) {
            for(IslandItem item:scene.iMode.visibleItems())
                need |= runningStopwatch(item) || iconPlaying(item);
        }
        need |= pillPainter.stepGlow(dt, host.audio());
        IslandItem waveItem = null;
        if (main != null && scene.mode == Mode.COMPACT) {
            IslandItem it = main.content.item;
            waveItem = it.trailing == IslandItem.Trailing.WAVEFORM ? it : null;
            boolean compactMotion=it.pulsingDot | (it.trailing == IslandItem.Trailing.PROGRESS_RING && it.progress < 0.0f);
            need=scene.iMode==null ? compactMotion : need | compactMotion;
        }
        if (main != null) {
            need |= runningStopwatch(main.content.item) || (main.content.item.isMedia && mediaFx.animating(main.content.item))
                    || iconPlaying(main.content.item);
        }
        need |= clock.rolling();
        if (bubble != null) {
            IslandItem it = bubble.content.item;
            need |= it.pulsingDot || runningStopwatch(it) || (it.isMedia && mediaFx.animating(it)) || iconPlaying(it);
        }
        if (sliderSettleKey != null) {
            need |= now() - sliderSettleStart < SliderBody.SETTLE_MS;
        }
        for (Card c : scene.cards) {
            need |= c.item.pulsingDot || c.item.progressIndeterminate || runningStopwatch(c.item) || iconPlaying(c.item)
                    || c.body.animating(now())
                    || c.material.animating(now()) || (scene.mode == Mode.EXPANDED && c.item.isMedia && !ModuleSettings.lowPerformance());
        }
        if(scene.iMode!=null) {
            waveItem=null;
            for(IslandItem item:scene.iMode.visibleItems())
                if(item.trailing==IslandItem.Trailing.WAVEFORM) { waveItem=item; break; }
        }
        if (waveItem != null) {
            need |= waveform.step(dt, waveItem, host.audio());
        }
        // Microphone reads arrive at 25 Hz, independently of the display. Keep the
        // visible history moving between reads instead of painting only on input.
        String recordingKey = recordingInputTarget();
        if (recordingKey != null && host.recordingAudio() != null) {
            need |= host.recordingAudio().envelope.isAnimating(recordingKey, SystemClock.elapsedRealtime());
        }
        return need;
    }

    /** An animated pictogram (battery, ringer, camera ...) is still playing, so frames must keep coming. */
    private static boolean iconPlaying(IslandItem item) {
        return (item.icon instanceof GlyphIcon && ((GlyphIcon) item.icon).animating())
                || (item.mediaOutputIcon instanceof GlyphIcon && ((GlyphIcon) item.mediaOutputIcon).animating());
    }

    private static boolean runningStopwatch(IslandItem item) {
        return item.chronoMillis && item.trailing == IslandItem.Trailing.CHRONOMETER;
    }

    public void onSecondTick() {
        ticker.onTick();
    }

    /** The haptics switch also covers the haptics the framework starts by itself. */
    @Override
    public boolean performHapticFeedback(int feedbackConstant) {
        return ModuleSettings.haptics() && super.performHapticFeedback(feedbackConstant);
    }

    @Override
    public boolean performHapticFeedback(int feedbackConstant, int flags) {
        return ModuleSettings.haptics() && super.performHapticFeedback(feedbackConstant, flags);
    }

    /** True when no card is staying: the pill is (or is about to be) all there is, so it shows its outline again. */
    private boolean allLeaving() {
        for (Card c : scene.cards) {
            if (!c.leaving) {
                return false;
            }
        }
        return true;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        renderingPaused = !isShown() || getWindowVisibility() != VISIBLE;
        framePacer.reset();
        scheduleTick();
        scheduleFrame();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        clearMaterialBackdrop();
        choreographer.removeFrameCallback(this);
        frameScheduled = false;
        lastFrameNanos = 0L;
        ticker.cancel();
        framePacer.reset();
        renderingPaused = true;
        notifyHost();
    }

    @Override protected void onVisibilityChanged(View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        updateRenderingVisibility();
        notifyPillSamplingVisibility();
    }

    @Override protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        updateRenderingVisibility();
        notifyPillSamplingVisibility();
    }

    private void updateRenderingVisibility() {
        // Visibility callbacks can arrive from the View constructor before our fields have been initialized.
        if (ticker == null || !isAttachedToWindow()) return;
        renderingPaused = !isShown() || getWindowVisibility() != VISIBLE;
        lastFrameNanos = 0L;
        framePacer.reset();
        if (renderingPaused) {
            choreographer.removeFrameCallback(this);
            frameScheduled = false;
            ticker.cancel();
        } else {
            scheduleTick();
            scheduleFrame();
        }
        notifyHost();
    }

    void drawCompactGlow(Canvas canvas,RectF bounds,float alpha) {
        pillPainter.drawCompactGlow(canvas,bounds,alpha);
    }

    // ---- drawing -------------------------------------------------------------------------------------------------

    @Override
    protected void onDraw(Canvas canvas) {
        try {
            paint(canvas);
        } catch (Throwable t) {
            XLog.once("IslandView.onDraw", t);
        }
    }

    private void paint(Canvas canvas) {
        try {
            paintIsland(canvas);
        } finally {
            drawHoleMarker(canvas);
        }
    }

    private void paintIsland(Canvas canvas) {
        followFont();
        if (metrics.screenW == 0) {
            return;
        }
        float alpha = scene.surfaceFade ? springs.visibility.value() * springs.suppress.value() : scene.visibleAlpha();
        boolean showsHole = scene.mode == Mode.HIDDEN && host.hasMinimized();
        if (alpha <= MIN_VISIBLE_ALPHA && !showsHole) {
            return;
        }
        shapes.main(pillRect);
        int save = canvas.save();
        if (alpha < 0.995f) {
            canvas.saveLayerAlpha(0.0f, 0.0f, metrics.screenW, getHeight(), Math.round(255.0f * alpha));
        }
        if(scene.iMode!=null) {
            scene.iMode.draw(canvas,now());
            canvas.restoreToCount(save);
            return;
        }
        stackPainter.drawGoo(canvas);
        float scale = springs.press.value() * (springs.pulse.value() + 1.0f);
        int pillSave = canvas.save();
        canvas.scale(scale, scale, pillRect.centerX(), metrics.cy);
        pillPainter.draw(canvas, pillRect, now());
        canvas.restoreToCount(pillSave);
        canvas.restoreToCount(save);
    }

    /** One UI "flip font" changes the system typeface at runtime; follow it. */
    void followFont() {
        if (!paints.followSystemFont()) {
            return;
        }
        shadeCards.forget();
        try {
            director.refreshFontLayouts();
        } catch (Throwable t) {
            XLog.once("IslandView.relayoutFonts", t);
        }
    }

    /** Draws a time string, rolling each digit that changed vertically (down for countdowns). */
    public void drawTime(Canvas c, String key, String text, Paint paint, float left, float baseline, boolean countDown) {
        clock.draw(c, key, text, paint, left, baseline, countDown);
    }

    public void drawLeadingMono(Canvas c, IslandItem item, float left, float midY, float size, float alpha) {
        icons.drawLeadingMono(c, item, left, midY, size, alpha);
    }

    public void drawLeading(Canvas c, IslandItem item, float left, float midY, float size, float alpha) {
        icons.drawLeading(c, item, left, midY, size, alpha);
    }

    public void drawDrawable(Canvas c, Drawable d, boolean image, int tint, float left, float top, float size, float alpha, float corner) {
        icons.drawDrawable(c, d, image, tint, left, top, size, alpha, corner);
    }

    public float trailingWidth(IslandItem item, String text) {
        return icons.trailingWidth(item, text);
    }

    public void drawTrailing(Canvas c, IslandItem item, String text, float right, float midY, float w, float alpha) {
        icons.drawTrailing(c, item, text, right, midY, w, alpha);
    }

    public void drawRing(Canvas c, float x, float y, float radius, float progress, int color, float alpha) {
        icons.drawRing(c, x, y, radius, progress, color, alpha);
    }

    public void drawSegmentedBarOn(Canvas c, IslandItem it, float left, float right, float top, float boxH, float alpha) {
        icons.drawSegmentedBar(c, it, left, right, top, boxH, alpha);
    }

    public MediaFx mediaFx(IslandItem item) {
        return mediaFx.obtain(item);
    }

    // ---- the card renderer lent to the notification shade ------------------------------------------------------------

    public float shadeCardHeight(IslandItem item, float width) {
        return shadeCards.heightOf(item, width);
    }

    public void drawShadeCard(Canvas canvas, IslandItem item, float width) {
        shadeCards.draw(canvas, item, width);
    }

    public boolean drawShadeCard(Canvas canvas, IslandItem item, float width, MaterialFrame backdrop, RectF screenBounds) {
        return shadeCards.draw(canvas, item, width, backdrop, screenBounds);
    }
    public void clearShadeMaterial() { shadeCards.clearMaterial(); }
    public boolean shadeMaterialAnimating() { return shadeCards.materialAnimating(); }

    public boolean shadeCardHasButton(IslandItem item, float width, float x, float y) {
        return shadeCards.hasButtonAt(item, width, x, y);
    }

    public boolean shadeCardTap(IslandItem item, float width, float x, float y) {
        return shadeCards.tap(item, width, x, y);
    }

    public boolean shadeButtonDown(IslandItem item, float width, float x, float y) {
        return shadeCards.buttonDown(item, width, x, y);
    }

    public void shadeButtonUp() {
        buttons.release();
    }

    public boolean shadeButtonAnimating() {
        return buttons.animating();
    }

    public boolean shadeMediaSeekStart(IslandItem item, float width, float x, float y) {
        return shadeCards.seekStart(item, width, x, y);
    }

    public void shadeMediaSeekMove(float x) {
        shadeCards.seekMove(x);
    }

    public void shadeMediaSeekEnd(boolean commit) {
        shadeCards.seekEnd(commit);
    }

    /** Something on a card drawn by this renderer moves between ticks: rolling digits or a pressed button. */
    public boolean shadeRolling() {
        return clock.rolling() || buttons.animating();
    }

    /** The music card's glow is still moving or fading (playing, or easing into / out of pause). */
    public boolean shadeMediaAnimating(IslandItem item) {
        if (item == null || !item.isMedia) {
            return false;
        }
        return !ModuleSettings.lowPerformance() && (item.playing || mediaFx.animating(item));
    }

    boolean buttonAnimating() {
        return buttons.animating();
    }

    public float pressOf(Btn b, IslandItem item) {
        return buttons.of(b, item);
    }

    // ---- touch -----------------------------------------------------------------------------------------------------

    @Override
    public boolean onTouchEvent(MotionEvent e) {
        try {
            if (scene.sleeping) return false;
            if(e.getActionMasked()==MotionEvent.ACTION_DOWN&&materialCaptureRefresh!=null)materialCaptureRefresh.run();
            touchFrame();
            return touch.handle(e);
        } catch (Throwable t) {
            XLog.once("IslandView.onTouchEvent", t);
            return false;
        }
    }

    // ---- text and time helpers -----------------------------------------------------------------------------------------

    public TextPaint mediaTitlePaint() {
        return paints.mediaTitle();
    }

    public TextPaint mediaArtistPaint() {
        return paints.mediaArtist();
    }

    private static final int MAX_LAYOUT_CHARS = 600;

    public static StaticLayout layout(CharSequence text, TextPaint paint, int width, int maxLines) {
        if (text.length() > MAX_LAYOUT_CHARS) {
            text = text.subSequence(0, MAX_LAYOUT_CHARS); // a huge notification text must not stall the main thread
        }
        return StaticLayout.Builder.obtain(text, 0, text.length(), paint, width)
                .setAlignment(Layout.Alignment.ALIGN_NORMAL)
                .setMaxLines(maxLines)
                .setEllipsize(TextUtils.TruncateAt.END)
                .setIncludePad(false)
                .build();
    }

    public static void drawLayout(Canvas c, StaticLayout l, float x, float y) {
        int save = c.save();
        c.translate(x, y);
        l.draw(c);
        c.restoreToCount(save);
    }

    public String trailingString(IslandItem item) {
        switch (item.trailing) {
            case TEXT:
                return item.trailingText == null ? null : item.trailingText.toString();
            case CHRONOMETER:
                return chronoText(item);
            default:
                return null;
        }
    }

    /** Elapsed / remaining time of a chronometer item, 0:00 style (hundredths for stopwatches). */
    public String chronoText(IslandItem item) {
        return TimeFormat.chronometer(item);
    }

    public static String formatTimeCentis(long ms) {
        return TimeFormat.withHundredths(ms);
    }

    public static String formatTimePadded(long ms) {
        return TimeFormat.padded(ms);
    }

    static String formatTime(long ms) {
        return TimeFormat.clock(ms);
    }

    public static float easeInOut(float t) {
        return Easing.easeInOut(t);
    }

    /**
     * Soft, bell-shaped falloff of a glow blob: 1 in the middle, about 0.41 at 55 % of the radius (the
     * brightness the blobs always had there) and flat at the rim, so no ring shows where a blob ends.
     */
    public static float blobFalloff(float r) {
        return Easing.blobFalloff(r);
    }

    public static float clamp01(float v) {
        return Easing.clamp01(v);
    }

    public float dp(float v) {
        return metrics.dp(v);
    }

    public static long now() {
        return SystemClock.uptimeMillis();
    }

    /** The current display frame's vsync time; outside a frame (or off the main thread) the plain clock. */
    public static long frameNanos() {
        try {
            if (frameTimeNanos != null && android.os.Looper.myLooper() == android.os.Looper.getMainLooper()) {
                return ((Long) frameTimeNanos.invoke(Choreographer.getInstance())).longValue();
            }
        } catch (Throwable ignored) {
            // not inside a frame callback
        }
        return System.nanoTime();
    }

    private static java.lang.reflect.Method findFrameTimeNanos() {
        try {
            return Choreographer.class.getMethod("getFrameTimeNanos");
        } catch (Throwable t) {
            return null;
        }
    }
}
