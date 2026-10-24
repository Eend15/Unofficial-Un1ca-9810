package dev.android.dynamicisland.island.view;

import android.graphics.RectF;
import android.view.HapticFeedbackConstants;
import dev.android.dynamicisland.island.feedback.Haptics;
import dev.android.dynamicisland.island.graphics.Motion;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.card.MediaBody;
import dev.android.dynamicisland.island.view.card.SliderBody;
import dev.android.dynamicisland.island.view.card.CardBody;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Decides how the island changes from one state to the next: the pill appearing and disappearing, the items
 * list changing, the card stack opening, collapsing and being rebuilt, and the cards being swallowed by the
 * pill again. It only sets targets on the springs and layers of the {@link Scene}; stepping them is the
 * frame loop's job.
 */
final class Director {
    /** Cards shown at once. */
    static final int MAX_CARDS = 4;

    private static final long CARD_STAGGER_MS = 70;
    /** Delay before the content of a freshly opened card fades in, after the card started growing. */
    private static final long CARD_CONTENT_DELAY_MS = 230;
    /** How long a card's backdrop blur keeps the frame loop alive after it was switched on. */
    private static final long BLUR_SETTLE_MS = 320;
    private static final long IN_DELAY_MS = 60;
    private static final long LEGACY_IN_DELAY_MS = 115;
    private static final long FIRST_CONTENT_IN_MS = 60;
    private static final long APPEAR_IN_MS = 90;
    private static final long LEGACY_APPEAR_IN_MS = 150;
    /** The first bubble waits this long after the pill appeared. */
    private static final long SPLIT_AFTER_APPEAR_MS = 220;
    private static final long BUBBLE_FIRST_IN_MS = 180;
    private static final long COLLAPSE_IN_MS = 330;
    private static final long REGROW_DELAY_MS = 70;
    private static final long LEGACY_REGROW_DELAY_MS = 420;
    /** A closing card waits for the pill to grow back at most this long before it is dropped anyway. */
    private static final long PILL_SETTLE_TIMEOUT_MS = 1200;
    private static final long FADE_PILL_BLOB_DELAY_MS = 260;

    /** Horizontal speed kick (dp) when the shown item changes towards the given side. */
    private static final float SWIPE_IMPULSE_DP = 220.0f;
    private static final float APPEAR_FROM_LEFT_IMPULSE_DP = 260.0f;
    private static final float HIDE_TO_LEFT_IMPULSE_DP = 200.0f;
    /** Height the pill starts at when it appears, as a fraction of its final height. */
    private static final float APPEAR_HEIGHT_FROM = 0.55f;
    private static final float ABSORB_HEIGHT_KICK_DP = 40.0f;
    /** Upward speed given to the pill's height when it swallows the cards, in dp per second. */

    private final IslandView view;
    private final IslandHost host;
    private final Metrics m;
    private final Scene scene;
    private final Springs sp;
    private final Shapes shapes;
    private final BodyFactory bodies;
    private final MediaFxCache mediaFx;

    private final Runnable autoCollapse = this::collapseIfExpanded;
    private final Runnable fadePillBlob = this::fadePillBlobNow;
    private final Runnable regrowPill = this::regrowPillNow;

    private final Runnable startSplit = this::startSplitNow;
    /** When the pill last appeared from nothing, for the timing of the first bubble. */
    private long appearedAt;

    Director(IslandView view, IslandHost host, Metrics m, Scene scene, Shapes shapes, BodyFactory bodies, MediaFxCache mediaFx) {
        this.view = view;
        this.host = host;
        this.m = m;
        this.scene = scene;
        this.sp = scene.springs;
        this.shapes = shapes;
        this.bodies = bodies;
        this.mediaFx = mediaFx;
    }

    // ---- auto collapse -------------------------------------------------------------------------------------------

    private void collapseIfExpanded() {
        if (scene.mode == Mode.EXPANDED) {
            collapse();
        }
    }

    Runnable autoCollapseTask() {
        return autoCollapse;
    }

    void cancelAutoCollapse() {
        view.removeCallbacks(autoCollapse);
    }

    /** (Re)starts the countdown after which the open stack closes by itself. */
    void scheduleAutoCollapse(long ms) {
        view.removeCallbacks(autoCollapse);
        if (!scene.held) {
            view.postDelayed(autoCollapse, ms);
        }
    }

    /** Like {@link #scheduleAutoCollapse} with the user's setting, but without cancelling an earlier countdown. */
    void postAutoCollapse() {
        if (!scene.held) {
            view.postDelayed(autoCollapse, ModuleSettings.autoCollapseMs());
        }
    }

    // ---- the item list ---------------------------------------------------------------------------------------------

    /** Applies a new sorted item list: decides between appearing, cross-fading, updating the stack or hiding. */
    void update(List<IslandItem> list, int hint) {
        IslandItem oldPrimary = scene.primary;
        IslandItem oldSecondary = scene.secondary;
        scene.items.clear();
        scene.items.addAll(list);
        mediaFx.retainFor(scene.items, scene.minimized);
        scene.primary = list.isEmpty() ? null : list.get(0);
        scene.secondary = list.size() > 1 ? list.get(1) : null;
        IslandItem primary = scene.primary;
        if (primary == null) {
            if (scene.mode == Mode.EXPANDED) {
                collapseCards(false);
            }
            goHidden(hint == IslandView.HINT_TO_LEFT);
            return;
        }
        if (scene.mode == Mode.EXPANDED) {
            rebuildStack();
        } else if (scene.mode == Mode.HIDDEN) {
            appear(primary, hint == IslandView.HINT_FROM_LEFT);
        } else {
            switchCompact(oldPrimary, primary, hint);
            sp.width.animateTo(scene.pillWidthFor(scene.mainIn.content), Motion.PILL_RESIZE);
            sp.height.animateTo(m.pillH, Motion.PILL_RESIZE);
        }
        updateBubble(oldSecondary, scene.secondary);
        view.scheduleFrame();
        view.scheduleTick();
        view.notifyHost();
    }

    /** The compact pill gets (possibly) another primary item: update in place or slide the new content in. */
    private void switchCompact(IslandItem oldPrimary, IslandItem primary, int hint) {
        boolean sameLook = oldPrimary != null && oldPrimary.key.equals(primary.key) && oldPrimary.sameCompactLook(primary);
        if (sameLook) {
            replaceMain(new CompactContent(view, primary), false, 0, 0);
            return;
        }
        int outDir = 0;
        int inDir = 0;
        if (hint == IslandView.HINT_TO_LEFT) {
            outDir = -1;
            inDir = 1;
        } else if (hint == IslandView.HINT_FROM_LEFT) {
            outDir = 1;
            inDir = -1;
        }
        replaceMain(new CompactContent(view, primary), true, outDir, inDir);
        if (hint == IslandView.HINT_TO_LEFT) {
            sp.offsetX.impulse(-m.dp(SWIPE_IMPULSE_DP));
        } else if (hint == IslandView.HINT_FROM_LEFT) {
            sp.offsetX.impulse(m.dp(SWIPE_IMPULSE_DP));
        } else {
            sp.pulse.impulse(1.6f);
            view.scheduleFrame();
        }
    }

    private void replaceMain(Content content, boolean crossfade, int outDir, int inDir) {
        long t = IslandView.now();
        if (crossfade && scene.mainIn != null) {
            scene.mainOut = scene.mainIn.toOutgoing(t, outDir);
            scene.mainIn = Layer.incoming(content, t, inDelay()).slide(inDir);
        } else if (scene.mainIn == null) {
            scene.mainIn = Layer.incoming(content, t, FIRST_CONTENT_IN_MS);
        } else {
            scene.mainIn = Layer.shownLike(content, scene.mainIn);
        }
    }

    /** Re-creates the content of the compact pill, keeping the running animation (e.g. after a geometry change). */
    void refreshMain() {
        IslandItem primary = scene.primary;
        scene.mainIn = scene.mainIn == null
                ? Layer.shown(new CompactContent(view, primary))
                : Layer.shownLike(new CompactContent(view, primary), scene.mainIn);
        sp.width.animateTo(scene.pillWidthFor(scene.mainIn.content), Motion.PILL_RESIZE);
        sp.height.animateTo(m.pillH, Motion.PILL_RESIZE);
    }

    void refreshBubble() {
        scene.bubbleIn = Layer.shown(new BubbleContent(view, scene.secondary));
    }

    private void updateBubble(IslandItem oldSecondary, IslandItem secondary) {
        long t = IslandView.now();
        if (secondary == null) {
            if (scene.bubbleIn != null) {
                scene.bubbleOut = scene.bubbleIn.toOutgoing(t, 0);
            }
            scene.bubbleIn = null;
            sp.split.animateTo(0.0f, Motion.BUBBLE_MERGE);
            return;
        }
        boolean same = oldSecondary != null && oldSecondary.key.equals(secondary.key);
        if (scene.bubbleIn == null) {
            scene.bubbleIn = Layer.incoming(new BubbleContent(view, secondary), t, BUBBLE_FIRST_IN_MS);
        } else if (same) {
            scene.bubbleIn = Layer.shownLike(new BubbleContent(view, secondary), scene.bubbleIn);
        } else {
            scene.bubbleOut = scene.bubbleIn.toOutgoing(t, 0);
            scene.bubbleIn = Layer.incoming(new BubbleContent(view, secondary), t, inDelay());
        }
        if (scene.mode == Mode.COMPACT) {
            long sinceAppear = t - appearedAt;
            if (!legacy() && sinceAppear < SPLIT_AFTER_APPEAR_MS) {
                // the pill is still landing: the bubble leaves it a moment later instead of competing with the drop
                view.removeCallbacks(startSplit);
                view.postDelayed(startSplit, SPLIT_AFTER_APPEAR_MS - sinceAppear);
            } else {
                sp.split.animateTo(1.0f, Motion.BUBBLE_SPLIT);
            }
        }
    }

    private void startSplitNow() {
        if (scene.mode == Mode.COMPACT && scene.secondary != null) {
            sp.split.animateTo(1.0f, Motion.BUBBLE_SPLIT);
            view.scheduleFrame();
        }
    }

    // ---- appearing and hiding --------------------------------------------------------------------------------------

    /** Shows the island again for the current primary item (after being suppressed). */
    void reveal() {
        scene.mode = Mode.HIDDEN;
        scene.keptWidth = 0.0f; // the next pill starts from its own width
        appear(scene.primary, false);
    }

    private void appear(IslandItem primary, boolean fromLeft) {
        scene.mode = Mode.COMPACT;
        appearedAt = IslandView.now();
        view.removeCallbacks(fadePillBlob);
        sp.pillBlob.snapTo(1.0f);
        float start = m.restWidth();
        sp.width.snapTo(start);
        // starts as a flattened drop so the pill visibly lands and bounces instead of only widening
        sp.height.snapTo(Math.min(start, m.pillH) * APPEAR_HEIGHT_FROM);
        if (m.holeD > 0.0f) {
            sp.visibility.snapTo(1.0f);
        } else {
            sp.visibility.animateTo(1.0f, 0.22f, 1.0f);
        }
        sp.offsetX.snapTo(0.0f);
        if (fromLeft) {
            sp.offsetX.impulse(m.dp(APPEAR_FROM_LEFT_IMPULSE_DP));
        }
        scene.mainOut = null;
        scene.mainIn = Layer.incoming(new CompactContent(view, primary), IslandView.now(), legacy() ? LEGACY_APPEAR_IN_MS : APPEAR_IN_MS).slide(fromLeft ? -1 : 0);
        sp.width.animateTo(scene.pillWidthFor(scene.mainIn.content), Motion.PILL_GROW);
        sp.height.animateTo(m.pillH, Motion.PILL_DROP);
        host.onWindowHeightNeeded(m.compactWindowHeight());
    }

    private void goHidden(boolean toLeft) {
        cancelAutoCollapse();
        view.removeCallbacks(fadePillBlob);
        sp.pillBlob.animateTo(1.0f, 0.1f, 1.0f);
        boolean wasExpanded = scene.mode == Mode.EXPANDED;
        if (scene.mode == Mode.HIDDEN) {
            return;
        }
        scene.mode = Mode.HIDDEN;
        long t = IslandView.now();
        if (scene.mainIn != null) {
            scene.mainOut = scene.mainIn.toOutgoing(t, toLeft ? -1 : 0);
        }
        scene.mainIn = null;
        if (scene.bubbleIn != null) {
            scene.bubbleOut = scene.bubbleIn.toOutgoing(t, 0);
        }
        scene.bubbleIn = null;
        float end = m.restWidth();
        sp.width.animateTo(end, Motion.PILL_SHRINK);
        sp.height.animateTo(Math.min(end, m.pillH), Motion.PILL_SHRINK);
        sp.split.animateTo(0.0f, Motion.BUBBLE_MERGE);
        if (toLeft) {
            sp.offsetX.impulse(-m.dp(HIDE_TO_LEFT_IMPULSE_DP));
        }
        if (m.holeD <= 0.0f) {
            sp.visibility.animateTo(0.0f, 0.22f, 1.0f);
        }
        view.scheduleFrame();
        if (wasExpanded) {
            host.onExpandedChanged(false);
        }
        view.notifyHost();
    }

    // ---- the card stack ------------------------------------------------------------------------------------------

    /** Opens the card stack on {@code show}; it closes itself after {@code autoCollapseMs} (default from the settings). */
    void expand(List<IslandItem> show, long autoCollapseMs) {
        if (show.isEmpty()) {
            return;
        }
        boolean wasExpanded = scene.mode == Mode.EXPANDED;
        scene.mode = Mode.EXPANDED;
        layoutCards(show);
        sp.width.animateTo(m.restWidth(), Motion.PILL_GATHER);
        sp.height.animateTo(Math.min(m.restWidth(), m.pillH), Motion.PILL_GATHER);
        if (!wasExpanded && scene.mainIn != null) {
            scene.mainOut = scene.mainIn.toOutgoing(IslandView.now(), 0);
        }
        sp.split.animateTo(0.0f, Motion.BUBBLE_MERGE);
        sp.offsetX.animateTo(0.0f);
        view.removeCallbacks(fadePillBlob);
        view.postDelayed(fadePillBlob, FADE_PILL_BLOB_DELAY_MS);
        scheduleAutoCollapse(autoCollapseMs > 0 ? autoCollapseMs : ModuleSettings.autoCollapseMs());
        host.onWindowHeightNeeded(expandedWindowHeight());
        view.scheduleFrame();
        view.scheduleTick();
        if (!wasExpanded) {
            host.onExpandedChanged(true);
            Haptics.perform(view, HapticFeedbackConstants.CONTEXT_CLICK);
        }
        view.notifyHost();
    }

    void peek(IslandItem item, long ms) {
        scene.peekOpen = true;
        expand(Collections.singletonList(item), ms);
    }

    /** The items changed while the stack is open: reuse the cards that stay, let the others leave. */
    private void rebuildStack() {
        List<IslandItem> show = scene.stackItems(MAX_CARDS);
        if (show.isEmpty()) {
            collapse();
        } else {
            layoutCards(show);
            host.onWindowHeightNeeded(expandedWindowHeight());
        }
    }

    /** Opens the stack from the current item lists (a tap on the pill). */
    void expandFromPill() {
        scene.peekOpen = false;
        expand(scene.stackItems(MAX_CARDS), ModuleSettings.autoCollapseMs());
    }

    void collapse() {
        if (scene.mode != Mode.EXPANDED) {
            return;
        }
        boolean peek = scene.peekOpen;
        scene.peekOpen = false;
        scene.held = false;
        cancelAutoCollapse();
        view.removeCallbacks(fadePillBlob);
        sp.pillBlob.animateTo(1.0f, 0.1f, 1.0f);
        view.scheduleFrame();
        if (peek) {
            host.onPeekClosed(); // a notification popup is not kept as a pill: it goes away with its card
        }
        if (scene.primary == null || (peek && scene.primary.kind == IslandItem.Kind.PEEK)) {
            collapseCards(true);
            scene.mode = Mode.COMPACT;
            goHidden(false);
            host.onExpandedChanged(false);
            return;
        }
        scene.mode = Mode.COMPACT;
        collapseCards(true);
        replaceMain(new CompactContent(view, scene.primary), true, 0, 0);
        scene.mainIn = Layer.incoming(scene.mainIn.content, IslandView.now(), COLLAPSE_IN_MS);
        view.removeCallbacks(regrowPill);
        view.postDelayed(regrowPill, legacy() ? LEGACY_REGROW_DELAY_MS : REGROW_DELAY_MS);
        view.scheduleFrame();
        host.onExpandedChanged(false);
        view.notifyHost();
    }

    void regrowPillNow() {
        if (scene.mode != Mode.COMPACT || scene.mainIn == null) {
            return;
        }
        sp.width.animateTo(scene.pillWidthFor(scene.mainIn.content), Motion.PILL_REGROW);
        sp.height.animateTo(m.pillH, Motion.PILL_REGROW);
        sp.split.animateTo(scene.secondary != null ? 1.0f : 0.0f, Motion.BUBBLE_SPLIT);
        view.scheduleFrame();
    }

    void fadePillBlobNow() {
        if (scene.mode != Mode.EXPANDED) {
            return;
        }
        sp.pillBlob.animateTo(0.0f, 0.22f, 1.0f);
        view.scheduleFrame();
    }

    /** Gives every item of {@code show} a card (new ones pour out of the pill) and sends the others away. */
    private void layoutCards(List<IslandItem> show) {
        float w = m.cardWidth();
        float y = m.stackTop();
        long t = IslandView.now();
        List<Card> next = new ArrayList<>();
        RectF pill = new RectF();
        shapes.main(pill);
        int created = 0;
        for (IslandItem it : show) {
            Card c = scene.findCard(it.key);
            CardBody body = bodies.create(it, w, false);
            if (c == null || c.leaving) {
                c = new Card(it, body);
                if (created == 0 && pill.width() > m.pillH) {
                    // the first card is the pill itself pouring out, so the shapes morph instead of popping
                    c.cy.snapTo(m.cy);
                    c.w.snapTo(pill.width());
                    c.h.snapTo(pill.height());
                } else {
                    c.cy.snapTo(m.cy + (m.pillH * IslandView.PAUSED_SPEED));
                    c.w.snapTo(m.pillH * 1.8f);
                    c.h.snapTo(m.pillH * 0.8f);
                }
                c.startAt = (created * CARD_STAGGER_MS) + t;
                c.contentStart = c.startAt + CARD_CONTENT_DELAY_MS;
                created++;
            } else {
                c.item = it;
                if (view.seekBody != null && view.seekBody == c.body && body instanceof MediaBody) {
                    view.seekBody = (MediaBody) body; // the dragged seek bar follows the rebuilt body
                }
                if (view.sliderBody != null && view.sliderBody == c.body && body instanceof SliderBody) {
                    view.sliderBody = (SliderBody) body; // and so does a dragged slider
                }
                c.body = body;
            }
            c.targetW = w;
            c.targetH = body.h;
            c.targetCy = (body.h / 2.0f) + y;
            c.order = next.size();
            c.launched = false;
            y += body.h + m.cardGap;
            next.add(c);
        }
        List<Card> leaving = new ArrayList<>();
        for (Card old : scene.cards) {
            if (!next.contains(old) && !old.leaving) {
                startLeaving(old, t);
            }
            if (old.leaving) {
                leaving.add(old);
            }
        }
        scene.cards.clear();
        scene.cards.addAll(next);
        scene.cards.addAll(leaving);
    }

    /** Sends every staying card back into the pill; the top one goes slightly later so they peel off in turn. */
    void collapseCards(boolean animate) {
        long t = IslandView.now();
        sp.stackDx.animateTo(0.0f, 0.3f, 0.9f);
        sp.stackDy.animateTo(0.0f, 0.3f, 0.9f);
        int staying = 0;
        for (Card c : scene.cards) {
            if (!c.leaving) {
                staying++;
            }
        }
        for (Card c : scene.cards) {
            if (!c.leaving) {
                long delay = (animate && c.order == 0 && staying > 1) ? CARD_STAGGER_MS : 0L;
                startLeaving(c, t + delay);
            }
        }
    }

    private void startLeaving(Card c, long at) {
        c.leaving = true;
        c.leaveAt = at;
        c.leaveFromH = c.h.value();
        c.leaveFromW = c.w.value();
        c.launched = false;
        c.targetCy = m.cy;
        if (!legacy() && scene.mode == Mode.COMPACT && scene.mainIn != null) {
            // closing the stack: the card folds into the shape the pill is growing back to, so nothing pops when it ends
            c.targetW = Math.max(m.pillH, scene.pillWidthFor(scene.mainIn.content));
            c.targetH = m.pillH;
        } else {
            c.targetW = m.pillH * 1.6f;
            c.targetH = m.pillH * 0.8f;
        }
    }

    private int expandedWindowHeight() {
        float bottom = m.stackTop();
        for (Card c : scene.cards) {
            if (!c.leaving) {
                bottom = Math.max(bottom, c.targetCy + (c.targetH / 2.0f));
            }
        }
        return m.windowHeightFor(bottom);
    }

    /**
     * Advances the cards' springs and launches the ones whose start time has come; cards that finished folding
     * into the pill are removed.
     *
     * @return true while any card still needs frames
     */
    boolean stepCards(float dt, long t) {
        if (scene.cards.isEmpty()) {
            return false;
        }
        boolean active = false;
        for (int i = scene.cards.size() - 1; i >= 0; i--) {
            Card c = scene.cards.get(i);
            if (!c.launched && t >= (c.leaving ? c.leaveAt : c.startAt)) {
                launch(c);
            }
            // non-short-circuit on purpose: every spring must be stepped
            boolean moving = !c.launched | c.cy.step(dt) | c.w.step(dt) | c.h.step(dt) | c.dx.step(dt);
            if (moving) {
                c.blurOnAt = t;
            }
            // frames go on a little after the last movement so the blur window catches up with the card
            active |= moving || t - c.blurOnAt < BLUR_SETTLE_MS;
            boolean gone = c.leaving && c.launched && Math.abs(c.cy.value() - c.targetCy) < m.dp(4.0f)
                    && (legacy() ? c.h.value() < m.pillH * 0.95f
                    : Math.abs(c.h.value() - c.targetH) < m.dp(3.0f) && Math.abs(c.w.value() - c.targetW) < m.dp(6.0f)
                    && (pillSettled() || t - c.leaveAt > PILL_SETTLE_TIMEOUT_MS));
            if (gone) {
                scene.cards.remove(i);
                if (scene.blur != null) {
                    scene.blur.release(c);
                }
            } else if (c.leaving) {
                active = true; // a leaving card has to reach "gone" even if its springs rest early
            }
        }
        if (scene.cards.isEmpty() && scene.mode != Mode.EXPANDED) {
            host.onWindowHeightNeeded(m.compactWindowHeight());
            if (scene.mode == Mode.COMPACT) {
                view.removeCallbacks(regrowPill);
                regrowPillNow();
                if (legacy()) {
                    sp.pulse.impulse(1.4f);
                    // the swallowed cards make the pill wobble once vertically
                    sp.height.impulse(m.dp(ABSORB_HEIGHT_KICK_DP));
                } else {
                    sp.pulse.impulse(0.8f);
                }
            }
        }
        return active;
    }

    /** While the stack closes the card keeps covering the pill until the pill itself has grown back, so no step shows. */
    private boolean pillSettled() {
        if (scene.mode != Mode.COMPACT || scene.mainIn == null) {
            return true;
        }
        // close enough that the black card handing over to the pill does not show; waiting for the pill's last wobble
        // left an empty dark smear around the island for a third of a second
        return Math.abs(sp.width.value() - scene.pillWidthFor(scene.mainIn.content)) < m.dp(8.0f)
                && Math.abs(sp.height.value() - m.pillH) < m.dp(4.0f);
    }

    /** True when the user chose the animations of 0.1.3 and before. */
    private static boolean legacy() {
        return ModuleSettings.legacyAnimation();
    }

    private static long inDelay() {
        return legacy() ? LEGACY_IN_DELAY_MS : IN_DELAY_MS;
    }

    private void launch(Card c) {
        c.launched = true;
        if (c.leaving) {
            // lower cards travel further, so they are pulled in a little faster
            float speedUp = 1.0f / (1.0f - Math.min(0.3f, c.order * 0.1f));
            c.cy.animateTo(c.targetCy, Motion.CARD_RETURN.faster(speedUp));
            c.w.animateTo(c.targetW, Motion.CARD_FOLD.faster(speedUp));
            c.h.animateTo(c.targetH, Motion.CARD_FOLD.faster(speedUp));
        } else {
            c.cy.animateTo(c.targetCy, Motion.CARD_DROP);
            c.w.animateTo(c.targetW, Motion.CARD_WIDEN);
            c.h.animateTo(c.targetH, Motion.CARD_GROW);
        }
    }
}
