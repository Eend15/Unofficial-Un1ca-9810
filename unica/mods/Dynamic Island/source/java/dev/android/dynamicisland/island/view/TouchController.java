package dev.android.dynamicisland.island.view;

import static dev.android.dynamicisland.island.graphics.Easing.rubber;

import android.graphics.RectF;
import android.os.SystemClock;
import android.view.HapticFeedbackConstants;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.VelocityTracker;
import dev.android.dynamicisland.island.feedback.Haptics;
import dev.android.dynamicisland.island.graphics.Motion;
import dev.android.dynamicisland.island.view.card.Btn;
import dev.android.dynamicisland.island.view.card.MediaBody;
import dev.android.dynamicisland.island.view.card.SliderBody;
import dev.android.dynamicisland.settings.ModuleSettings;

/**
 * Turns touches on the island into actions: pressing and tapping the pill, swiping it away or back, handing a
 * downward drag over to the notification shade, dragging the open card stack, pressing card buttons and
 * scrubbing the music progress bar.
 */
final class TouchController {
    private static final float TOUCH_MARGIN_DP = 6.0f;
    /** Below this overall alpha the island ignores touches. */
    static final float MIN_TOUCHABLE_ALPHA = 0.4f;
    private static final float SWIPE_MIN_DP = 26.0f;
    private static final float SWIPE_DOMINANCE = 1.2f;
    private static final float SWIPE_UP_DISMISS_DP = 40.0f;
    /** How much more a move must go down than sideways to count as a pull down on a pill that began to page. */
    private static final float PULL_DOWN_DOMINANCE = 1.5f;
    private static final float SWIPE_UP_CLOSE_DP = 30.0f;
    /** A flick this fast (dp per second) closes after a short move: speed counts for distance. */
    private static final float FLICK_UP_DP_PER_S = 900.0f;
    private static final float FLICK_UP_MIN_DP = 10.0f;
    /** On release the finger is taken as travelling this much longer: where the swipe was heading counts. */
    private static final float RELEASE_LOOKAHEAD_S = 0.12f;
    private static final int HAPTIC_SEEK_DONE = HapticFeedbackConstants.CLOCK_TICK;
    private static final int HAPTIC_CONFIRM = HapticFeedbackConstants.CONTEXT_CLICK;

    private enum Axis { UNDECIDED, HORIZONTAL, VERTICAL }

    private final IslandView view;
    private final IslandHost host;
    private final Metrics m;
    private final Scene scene;
    private final Springs sp;
    private final Shapes shapes;
    private final Director director;
    private final ButtonPress buttons;
    private final float touchSlop;
    private final RectF slot = new RectF();

    private float downX;
    private float downY;
    private boolean dragging;
    private boolean downOnPill;
    private boolean downOnBubble;
    /** Touch started on the empty hole while an item is minimized there. */
    private boolean downOnHole;
    private Card downCard;
    private String downActivity;
    /** Value of the dragged slider when the finger touched down. */
    private float sliderStart;
    /** Last slider position passed on during the current drag. */
    private float lastSliderFraction = -1.0f;
    /** The gesture already did its job (e.g. collapsed the stack): swallow the rest of it. */
    private boolean ignoreGesture;
    private int pointerId;
    /** A downward drag on the pill is being forwarded to the notification shade. */
    private boolean forwardingShade;
    /** A downward drag on the pill opens its cards under the finger (see {@link Director#beginPullOpen}). */
    private boolean pullingOpen;
    /** Holding the small pill still hides the island (iMotion), for when a swipe up is awkward to make. */
    private final Runnable hideByHolding = this::hideByHolding;
    private boolean holdPending;
    private long traceStart;
    private int traceMoves;
    private Axis axis = Axis.UNDECIDED;
    private boolean stackDragging;
    private VelocityTracker velocity;

    TouchController(IslandView view, IslandHost host, Metrics m, Scene scene, Shapes shapes, Director director, ButtonPress buttons) {
        this.view = view;
        this.host = host;
        this.m = m;
        this.scene = scene;
        this.sp = scene.springs;
        this.shapes = shapes;
        this.director = director;
        this.buttons = buttons;
        this.touchSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
    }

    /** Position of the finger that started the gesture; a second finger never moves it. */
    private float x(MotionEvent e) {
        int index = e.findPointerIndex(pointerId);
        return e.getX(index < 0 ? 0 : index);
    }

    private float y(MotionEvent e) {
        int index = e.findPointerIndex(pointerId);
        return e.getY(index < 0 ? 0 : index);
    }

    private void cancelHold() {
        if (!holdPending) return;
        holdPending = false;
        view.removeCallbacks(hideByHolding);
    }

    /** The finger stayed on the small pill without moving: hide the island, like a swipe up would. */
    private void hideByHolding() {
        holdPending = false;
        if (scene.iMode == null || dragging || ignoreGesture || forwardingShade || downActivity == null
                || scene.mode != Mode.COMPACT || scene.iMode.hiddenByGesture()) {
            return;
        }
        scene.iMode.releasePress();
        sp.press.animateTo(1.0f, Motion.PRESS_UP);
        scene.iMode.hideByGesture(0);
        if (scene.iMode.hiddenByGesture()) ignoreGesture = true; // lifting the finger afterwards is not a tap
        view.scheduleFrame();
    }

    boolean handle(MotionEvent e) {
        int action = e.getActionMasked();
        if (action == MotionEvent.ACTION_DOWN || action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) {
            cancelHold();
        }
        if(action==MotionEvent.ACTION_DOWN) {
            recycleVelocity();
            velocity=VelocityTracker.obtain();
        }
        if(velocity!=null) velocity.addMovement(e);
        traceTouch(e, action);
        if (action != MotionEvent.ACTION_DOWN && ignoreGesture) {
            if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) {
                ignoreGesture = false;
                recycleVelocity();
            }
            return true;
        }
        switch (action) {
            case MotionEvent.ACTION_DOWN:
                down(e);
                break;
            case MotionEvent.ACTION_UP:
                up(e);
                break;
            case MotionEvent.ACTION_MOVE:
                move(e);
                break;
            case MotionEvent.ACTION_POINTER_UP:
                if (e.getPointerId(e.getActionIndex()) == pointerId) {
                    up(e); // the finger that owns the gesture lifted first: finish with its position
                    ignoreGesture = true;
                }
                break;
            case MotionEvent.ACTION_CANCEL:
                cancel(e);
                break;
            case MotionEvent.ACTION_OUTSIDE:
                if (scene.mode == Mode.EXPANDED && !scene.peekOpen) {
                    director.collapse();
                }
                break;
            default:
                break;
        }
        if(action==MotionEvent.ACTION_UP || action==MotionEvent.ACTION_CANCEL) recycleVelocity();
        return true;
    }
    /** Writes how a drag that began on the pill ended (how many moves came, which action ended it, how far it went). */
    private void traceTouch(MotionEvent e, int action) {
        if (action == MotionEvent.ACTION_DOWN) {
            traceStart = e.getEventTime();
            traceMoves = 0;
        } else if (action == MotionEvent.ACTION_MOVE) {
            traceMoves++;
        } else if ((action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) && traceMoves > 0
                && (downOnPill || downOnBubble)) {
            dev.android.dynamicisland.xposed.Diagnostics.event("pill touch ended by " + (action == MotionEvent.ACTION_UP ? "UP" : "CANCEL")
                    + " after " + (e.getEventTime() - traceStart) + " ms, " + traceMoves + " moves, dy "
                    + Math.round(y(e) - downY) + " px, dx " + Math.round(x(e) - downX) + " px, "
                    + (pullingOpen ? "pulling" : "not pulling") + ", " + (scene.iMode != null ? "iMotion" : "stack"));
        }
    }

    private void recycleVelocity() { if(velocity!=null) velocity.recycle();velocity=null; }

    /** How fast the finger is moving up right now, in px per second (0 when it is not, or nothing is tracked). */
    private float upwardSpeed() {
        if(velocity==null) return 0;
        velocity.computeCurrentVelocity(1000,m.dp(8000));
        return Math.max(0,-velocity.getYVelocity(pointerId));
    }

    /** A swipe up has gone far enough to act on: far enough, or a quick flick that only needs a short move. */
    private boolean swipedUp(float dy) {
        return dy < -m.dp(SWIPE_UP_CLOSE_DP) || (dy < -m.dp(FLICK_UP_MIN_DP) && upwardSpeed() > m.dp(FLICK_UP_DP_PER_S));
    }

    // ---- down -------------------------------------------------------------------------------------------------------

    private void down(MotionEvent e) {
        if(scene.iMode!=null) scene.iMode.finishCompactInteraction();
        ignoreGesture = false;
        axis = Axis.UNDECIDED;
        pointerId = e.getPointerId(0);
        downX = x(e);
        downY = y(e);
        dragging = false;
        downOnPill = false;
        downOnBubble = false;
        downCard = null;
        downActivity = null;
        downOnHole = false;
        if (scene.mode == Mode.HIDDEN) {
            downOnHole = host.hasMinimized() || scene.iMode!=null && scene.iMode.hiddenByGesture();
            return;
        }
        if (scene.visibleAlpha() < MIN_TOUCHABLE_ALPHA) {
            return;
        }
        float margin = m.dp(TOUCH_MARGIN_DP);
        if(scene.iMode!=null) {
            downActivity=scene.iMode.hit(downX,downY,margin);
            if(downActivity!=null) {
                downOnPill=true; scene.iMode.press(downActivity); director.cancelAutoCollapse();
                if (scene.mode == Mode.COMPACT) {
                    holdPending = true;
                    view.postDelayed(hideByHolding, ViewConfiguration.getLongPressTimeout());
                }
                return;
            }
        }
        if (scene.mode == Mode.EXPANDED) {
            downOnCards(margin);
        } else {
            downOnIsland(margin);
        }
    }

    private void downOnCards(float margin) {
        for (Card c : scene.cards) {
            if (!c.leaving) {
                shapes.card(c, slot);
                slot.inset(-margin, -margin);
                if (slot.contains(downX, downY)) {
                    downCard = c;
                }
            }
        }
        if (downCard == null) {
            // touch outside every card closes the stack (a notification popup just goes away on its own)
            if (!scene.peekOpen) {
                director.collapse();
            }
            ignoreGesture = true;
            return;
        }
        director.cancelAutoCollapse();
        shapes.card(downCard, slot);
        float left = shapes.contentLeft(downCard);
        if(downCard.iMode && !cardReady(downCard)) return;
        if (downCard.body instanceof MediaBody) {
            MediaBody media = (MediaBody) downCard.body;
            if (media.onSeekBar(downX - left, downY - slot.top)) {
                view.seekBody = media;
                view.seekFraction = media.fractionAt(downX - left);
                view.getParent().requestDisallowInterceptTouchEvent(true);
                view.invalidate();
            }
        }
        if (downCard.body instanceof SliderBody) {
            SliderBody slider = (SliderBody) downCard.body;
            if (slider.onSlider(downX - left, downY - slot.top)) {
                // relative drag: the bar stays where it is and moves with the finger, it does not jump to the touch
                sliderStart = slider.shownValue();
                view.sliderBody = slider;
                view.sliderFraction = sliderStart;
                lastSliderFraction = slider.snapped(sliderStart);
                slider.onSliderStart();
                view.getParent().requestDisallowInterceptTouchEvent(true);
                view.invalidate();
            }
        }
        if (view.seekBody == null && view.sliderBody == null) {
            Btn pressed = downCard.body.hit(downX - left, downY - slot.top);
            if (pressed != null) {
                buttons.press(pressed, downCard.item);
                view.scheduleFrame();
                view.invalidate();
            }
        }
    }

    private void downOnIsland(float margin) {
        shapes.paintedMain(slot);
        downOnPill = downX >= slot.left - margin && downX <= slot.right + margin
                && downY >= slot.top - margin && downY <= slot.bottom + margin;
        if (!downOnPill && sp.split.value() > 0.6f) {
            RectF bubble = new RectF();
            shapes.bubble(slot, bubble);
            bubble.inset(-margin, -margin);
            downOnBubble = bubble.contains(downX, downY);
        }
        if (downOnPill || downOnBubble) {
            sp.press.animateTo(0.94f, Motion.PRESS_DOWN);
            view.scheduleFrame();
        }
    }

    // ---- move -------------------------------------------------------------------------------------------------------

    private void move(MotionEvent e) {
        if (forwardingShade) {
            host.onShadeDragEvent(e);
            return;
        }
        if (pullingOpen) {
            director.pullOpen(pullProgress(y(e) - downY));
            return;
        }
        if (view.sliderBody != null && downCard != null) {
            view.sliderFraction = view.sliderBody.valueAfterDrag(sliderStart, x(e) - downX);
            view.sliderBody.onSliderMove(y(e) - downY);
            tellSlider(view.sliderBody);
            view.scheduleFrame();
            view.invalidate();
            return;
        }
        if (view.seekBody != null && downCard != null) {
            view.seekFraction = view.seekBody.fractionAt(x(e) - shapes.contentLeft(downCard));
            view.scheduleFrame();
            view.invalidate();
            return;
        }
        float dx = x(e) - downX;
        float dy = y(e) - downY;
        if(downOnHole && scene.iMode!=null && scene.iMode.hiddenByGesture()
                && dy>m.dp(12) && dy>Math.abs(dx)*SWIPE_DOMINANCE) {
            scene.iMode.restoreByGesture();ignoreGesture=true;return;
        }
        if (!dragging && (Math.abs(dx) > touchSlop || Math.abs(dy) > touchSlop)) {
            dragging = true;
            cancelHold();
            if(scene.iMode!=null) scene.iMode.releasePress();
            buttons.release();
            sp.press.animateTo(1.0f, Motion.PRESS_UP);
        }
        if (!dragging) {
            return;
        }
        boolean onIsland = downOnPill || downOnBubble;
        if(scene.iMode!=null && downActivity!=null) {
            // Status-row paging owns horizontal drags; downward drags still open the system shade.
            if(scene.iMode.hasCompactDrag() && dy>touchSlop*2 && dy>Math.abs(dx)*PULL_DOWN_DOMINANCE) {
                // a sideways wobble at the start must not keep a clear pull down from reaching the shade
                scene.iMode.cancelCompactPage();
                pullDown(e);
            }
            else if(scene.iMode.hasCompactDrag()) scene.iMode.dragCompact(dx);
            else if(ModuleSettings.swipeUpHides() && swipedUp(dy) && -dy>Math.abs(dx)*SWIPE_DOMINANCE) {
                scene.iMode.hideByGesture(upwardSpeed());ignoreGesture=true;return;
            }
            else if(dy>touchSlop && Math.abs(dy)>Math.abs(dx)) pullDown(e);
            else if(Math.abs(dx)>touchSlop && Math.abs(dx)>Math.abs(dy)) scene.iMode.dragCompact(dx);
        } else if (scene.mode == Mode.EXPANDED && downCardAlive()) {
            dragStack(dx, dy);
        } else if (scene.mode == Mode.COMPACT && onIsland && dy > touchSlop && Math.abs(dy) > Math.abs(dx)) {
            pullDown(e);
        } else if (scene.mode == Mode.COMPACT && onIsland) {
            sp.offsetX.snapTo(Math.signum(dx) * Math.min(m.dp(16.0f), Math.abs(dx) * 0.18f));
            view.invalidate();
            view.notifyHost();
        }
    }

    /**
     * A clear pull down on the small pill. Normally it goes to the notification panel; with "swipe down opens the
     * island" it opens the pill's cards as a tap would, which is easier to reach than the pill itself.
     */
    private void pullDown(MotionEvent e) {
        if (!ModuleSettings.swipeDownOpens()) {
            handOverToShade(e);
            return;
        }
        sp.press.animateTo(1.0f, Motion.PRESS_UP);
        sp.offsetX.animateTo(0.0f, Motion.RUBBER_RELEASE);
        if (scene.iMode == null && director.beginPullOpen()) {
            // the cards follow the finger; letting go decides whether they open or fold back
            pullingOpen = true;
            director.pullOpen(pullProgress(y(e) - downY));
            view.scheduleFrame();
            return;
        }
        ignoreGesture = true; // the rest of this gesture, including lifting the finger, is not a tap
        Haptics.perform(view, HAPTIC_CONFIRM);
        if (scene.iMode != null && downActivity != null) {
            scene.iMode.open(downActivity, true);
        } else {
            director.expandFromPill();
        }
        view.scheduleFrame();
    }

    /** How far the cards are open for a pull of {@code dy} px: 0 at the touch slop, 1 after the full distance. */
    private float pullProgress(float dy) {
        return Math.max(0.0f, dy - touchSlop) / Math.max(1.0f, m.dp(Director.PULL_OPEN_DISTANCE_DP));
    }

    /** How fast the finger is moving down right now, in px per second (0 when it is not, or nothing is tracked). */
    private float downwardSpeed() {
        if (velocity == null) return 0;
        velocity.computeCurrentVelocity(1000, m.dp(8000));
        return Math.max(0, velocity.getYVelocity(pointerId));
    }

    /** The finger let go while it was opening the cards: open them for good, or let them fold back. */
    private void finishPullOpen(MotionEvent e) {
        pullingOpen = false;
        float dy = y(e) - downY;
        float speed = downwardSpeed();
        float distance = Math.max(1.0f, m.dp(Director.PULL_OPEN_DISTANCE_DP));
        // where the finger was heading counts, as it does for the swipe up
        float heading = pullProgress(dy) + (speed * RELEASE_LOOKAHEAD_S) / distance;
        boolean flick = dy > m.dp(Director.PULL_OPEN_FLICK_MIN_DP) && speed > m.dp(Director.PULL_OPEN_FLICK_DP_PER_S);
        director.endPullOpen(heading >= Director.PULL_OPEN_COMMIT || flick, speed);
    }

    private void handOverToShade(MotionEvent e) {
        forwardingShade = true;
        sp.press.animateTo(1.0f, Motion.PRESS_UP);
        sp.offsetX.animateTo(0.0f, Motion.RUBBER_RELEASE);
        view.scheduleFrame();
        host.onShadeDragStart(downX, downY, e.getDownTime());
        host.onShadeDragEvent(e);
    }

    /** Rubber-band drag of the open card stack: sideways moves one card, vertical moves the whole stack. */
    private void dragStack(float dx, float dy) {
        if (axis == Axis.UNDECIDED) {
            axis = Math.abs(dx) > Math.abs(dy) ? Axis.HORIZONTAL : Axis.VERTICAL;
        }
        stackDragging = true;
        if (axis == Axis.HORIZONTAL) {
            if(scene.iMode!=null && !incomingPopup()) { scene.iMode.dragPage(dx);return; }
            float pull = rubber(dx, downCard.body.w * 0.55f);
            downCard.dx.snapTo(pull);
            for (Card other : scene.cards) {
                if (other != downCard && !other.leaving) {
                    other.dx.animateTo((0.12f * pull) / (Math.abs(other.order - downCard.order) + 1), 0.25f, 0.8f);
                }
            }
        } else if (dy < -m.dp(FLICK_UP_MIN_DP) && upwardSpeed() > m.dp(FLICK_UP_DP_PER_S)) {
            // a quick flick up folds the cards back at once, with the speed it was thrown at
            foldCards(upwardSpeed());
            ignoreGesture = true;
            return;
        } else {
            sp.stackDy.snapTo(rubber(dy, m.dp(dy > 0.0f ? 90.0f : 60.0f)));
            sp.stackDx.snapTo(rubber(dx, m.dp(24.0f)));
        }
        view.scheduleFrame();
        view.invalidate();
        view.notifyHost();
    }

    // ---- up / cancel ------------------------------------------------------------------------------------------------

    private void up(MotionEvent e) {
        if(scene.iMode!=null) scene.iMode.releasePress();
        if (pullingOpen) {
            finishPullOpen(e);
            return;
        }
        if (forwardingShade) {
            forwardingShade = false;
            host.onShadeDragEvent(e);
            return;
        }
        if (view.sliderBody != null) {
            finishSlider();
            return;
        }
        if (view.seekBody != null) {
            commitSeek();
            return;
        }
        buttons.release();
        sp.press.animateTo(1.0f, Motion.PRESS_UP);
        if (sp.offsetX.value() != 0.0f) {
            sp.offsetX.animateTo(0.0f, Motion.RUBBER_RELEASE);
        }
        view.scheduleFrame();
        float dx = x(e) - downX;
        float dy = y(e) - downY;
        boolean horizontal = Math.abs(dx) > m.dp(SWIPE_MIN_DP) && Math.abs(dx) > Math.abs(dy) * SWIPE_DOMINANCE;
        if (downOnHole) {
            if(scene.iMode!=null && scene.iMode.hiddenByGesture()) return;
            if ((horizontal && dx > 0.0f) || !dragging) {
                host.onRestore();
            }
        } else if (dragging) {
            dragReleased(horizontal, dx, dy);
        } else {
            tap(x(e), y(e));
        }
    }

    /** Passes the dragged slider position on whenever it lands on another step (the flashlight changes at once). */
    private void tellSlider(SliderBody body) {
        float value = body.snapped(view.sliderFraction); // the bar follows the finger smoothly, the brightness goes by steps
        if (value == lastSliderFraction) {
            return;
        }
        lastSliderFraction = value;
        body.item.sliderValue = value;
        if (body.item.sliderChange != null) {
            body.item.sliderChange.accept(value);
        }
        Haptics.perform(view, HAPTIC_SEEK_DONE);
    }

    private void finishSlider() {
        SliderBody body = view.sliderBody;
        if (body != null) body.onSliderEnd();
        view.sliderBody = null;
        lastSliderFraction = -1.0f;
        if (body != null) {
            // let go: the bar glides to the nearest step
            float target = body.snapped(view.sliderFraction);
            body.item.sliderValue = target;
            view.sliderSettleKey = body.item.key;
            view.sliderSettleFrom = view.sliderFraction;
            view.sliderSettleTo = target;
            view.sliderSettleStart = IslandView.now();
            view.scheduleFrame();
        }
        director.postAutoCollapse();
        view.invalidate();
    }

    /** Commits the media seek that was dragged on a card's progress bar. */
    private void commitSeek() {
        MediaBody body = view.seekBody;
        view.seekBody = null;
        long target = (long) (view.seekFraction * body.item.mediaDuration);
        body.item.mediaPosition = target;
        body.item.mediaPositionUpdateTime = SystemClock.elapsedRealtime();
        if (body.item.mediaSeek != null) {
            body.item.mediaSeek.accept(target);
        }
        Haptics.perform(view, HAPTIC_SEEK_DONE);
        director.postAutoCollapse();
        view.invalidate();
    }

    private void dragReleased(boolean horizontal, float dx, float dy) {
        if (incomingPopup() && scene.mode == Mode.EXPANDED && axis == Axis.HORIZONTAL) {
            releaseStack();
            if (horizontal) director.collapse();
            return;
        }
        if(scene.iMode!=null && scene.iMode.hasCompactDrag()) {
            float speed=0;
            if(velocity!=null) { velocity.computeCurrentVelocity(1000,m.dp(5000));speed=velocity.getXVelocity(pointerId); }
            scene.iMode.finishCompactPage(speed);axis=Axis.UNDECIDED;return;
        }
        if(scene.iMode!=null && scene.iMode.hasPageDrag()) {
            float speed=0;
            if(velocity!=null) { velocity.computeCurrentVelocity(1000,m.dp(5000));speed=velocity.getXVelocity(pointerId); }
            scene.iMode.finishPage(speed);
            stackDragging=false;axis=Axis.UNDECIDED;
            return;
        }
        if(scene.iMode!=null && horizontal && (downActivity!=null || downCardAlive())) {
            releaseStack();
            scene.iMode.next(dx<0 ? 1 : -1);
            director.postAutoCollapse();
            return;
        }
        if (scene.mode == Mode.COMPACT && horizontal) {
            Haptics.perform(view, HAPTIC_CONFIRM);
            if (dx < 0.0f) {
                boolean bubbleSwiped = downOnBubble && scene.secondary != null;
                host.onMinimize(bubbleSwiped ? scene.secondary : scene.primary);
            } else if (host.hasMinimized()) {
                host.onRestore();
            } else {
                host.onCycle(-1);
            }
        } else if (scene.mode == Mode.EXPANDED && axis == Axis.VERTICAL && dy < -m.dp(6)
                && dy - (upwardSpeed() * RELEASE_LOOKAHEAD_S) < -m.dp(SWIPE_UP_DISMISS_DP)) {
            // let go: far enough, counting where the finger was heading, folds the cards; otherwise they spring back
            foldCards(upwardSpeed());
        } else if (scene.mode == Mode.EXPANDED && axis == Axis.VERTICAL && dy > m.dp(SWIPE_MIN_DP) && popupHidesButtons()) {
            // pulled down: the popup shows its buttons, as a banner does on iOS, and stays at least a while for them
            long now = SystemClock.uptimeMillis();
            downCard.item.actionsHidden = false;
            downCard.item.expiresAtUptime = Math.max(downCard.item.expiresAtUptime, now + ModuleSettings.autoCollapseMs());
            Haptics.perform(view, HAPTIC_CONFIRM);
            releaseStack();
            director.refreshFontLayouts(); // the same remeasure as a font change: the open card takes its new height
            downCard.h.snapTo(downCard.targetH); // at once: growing would squash the open content on the way
            downCard.cy.snapTo(downCard.targetCy);
            director.scheduleAutoCollapse(downCard.item.expiresAtUptime - now);
        } else if (scene.mode == Mode.EXPANDED) {
            releaseStack();
            director.postAutoCollapse();
        }
    }

    /** Folds the open cards back into the pill (the island stays); a fast swipe carries its speed into the fold. */
    private void foldCards(float upwardSpeed) {
        releaseStack();
        if(scene.iMode!=null) scene.iMode.collapse(upwardSpeed);else director.collapse();
    }

    /** A ringing banner can be put away without rejecting the call or paging to another activity. */
    private boolean incomingPopup() {
        return downCardAlive() && downCard.item.incomingCall;
    }

    /** A notification popup whose buttons wait for a pull down. */
    private boolean popupHidesButtons() {
        return downCardAlive() && downCard.item.actionsHidden;
    }

    private void cancel(MotionEvent e) {
        if (pullingOpen) {
            pullingOpen = false;
            // System UI takes a pull down from the top of an app for its own gestures and cancels ours; a pull that
            // had clearly started is what the finger meant, so the cards open instead of folding back
            boolean meant = y(e) - downY > touchSlop;
            dev.android.dynamicisland.xposed.Diagnostics.event("pull down cancelled by the system, cards " + (meant ? "opened" : "folded"));
            director.endPullOpen(meant, meant ? downwardSpeed() : 0.0f, Director.PULL_CUT_MAX_SPEED_PER_S);
        } else if (cutShortPullDown(e)) {
            dev.android.dynamicisland.xposed.Diagnostics.event("pull down cancelled by the system before it began, cards opened");
            ignoreGesture = true;
            if (director.beginPullOpen()) {
                director.pullOpen(pullProgress(y(e) - downY));
                director.endPullOpen(true, downwardSpeed(), Director.PULL_CUT_MAX_SPEED_PER_S);
            } else {
                Haptics.perform(view, HAPTIC_CONFIRM);
                director.expandFromPill();
            }
        }
        if(scene.iMode!=null) scene.iMode.releasePress();
        if(scene.iMode!=null) scene.iMode.cancelPage();
        if(scene.iMode!=null) scene.iMode.cancelCompactPage();
        if (forwardingShade) {
            forwardingShade = false;
            host.onShadeDragEvent(e);
        }
        view.seekBody = null;
        if (view.sliderBody != null) view.sliderBody.onSliderEnd();
        view.sliderBody = null;
        releaseStack();
        buttons.release();
        sp.press.animateTo(1.0f, Motion.PRESS_UP);
        sp.offsetX.animateTo(0.0f, Motion.RUBBER_RELEASE);
        if (scene.mode == Mode.EXPANDED) {
            director.postAutoCollapse();
        }
        view.scheduleFrame();
    }

    /** A clear start of a pull down on the small pill that the system cancelled before it was a pull of ours. */
    private boolean cutShortPullDown(MotionEvent e) {
        if (scene.iMode != null || scene.mode != Mode.COMPACT || !(downOnPill || downOnBubble) || forwardingShade
                || !ModuleSettings.swipeDownOpens() || ignoreGesture) {
            return false;
        }
        float dy = y(e) - downY;
        float dx = x(e) - downX;
        return dy > touchSlop * 0.5f && dy > Math.abs(dx) * SWIPE_DOMINANCE;
    }

    /** Lets the dragged cards spring back to their places. */
    private void releaseStack() {
        axis = Axis.UNDECIDED;
        for (Card c : scene.cards) {
            // iMode's pager owns both page offsets, including an interrupted gesture's return.
            if (c.iModePaging) continue;
            if (c.dx.value() != 0.0f || c.dx.target() != 0.0f) {
                c.dx.animateTo(0.0f, Motion.RUBBER_RELEASE);
            }
        }
        boolean idle = !stackDragging && sp.stackDx.value() == 0.0f && sp.stackDy.value() == 0.0f;
        if (!idle) {
            stackDragging = false;
            sp.stackDx.animateTo(0.0f, Motion.RUBBER_RELEASE);
            sp.stackDy.animateTo(0.0f, Motion.RUBBER_RELEASE);
        }
        view.scheduleFrame();
    }

    /** The pressed card is still there: its item may have been dismissed (call ended) while the finger was down. */
    private boolean cardReady(Card c) {
        return Math.abs(c.w.value()-c.body.w)<m.dp(3) && Math.abs(c.h.value()-c.body.h)<m.dp(3);
    }

    private boolean downCardAlive() {
        return downCard != null && !downCard.leaving && scene.cards.contains(downCard);
    }

    private void tap(float x, float y) {
        if(scene.iMode!=null && downActivity!=null) {
            // Resolve by key again: the source may have ended while the finger was down.
            scene.iMode.open(downActivity,true);
            return;
        }
        if (scene.mode == Mode.COMPACT) {
            director.expandFromPill();
            return;
        }
        if (scene.mode != Mode.EXPANDED || !downCardAlive()) {
            return;
        }
        Card c = downCard;
        if(c.iMode && !cardReady(c)) return;
        shapes.card(c, slot);
        Btn b = c.body.hit(x - shapes.contentLeft(c), y - slot.top);
        if (b != null) {
            Haptics.perform(view, HAPTIC_CONFIRM);
            if (b.run != null) {
                b.run.run();
            } else if (b.action != null) {
                host.onItemAction(c.item, b.action);
            }
            director.postAutoCollapse();
            return;
        }
        host.onOpenItem(c.item, new RectF(slot));
        director.collapse();
    }
}
