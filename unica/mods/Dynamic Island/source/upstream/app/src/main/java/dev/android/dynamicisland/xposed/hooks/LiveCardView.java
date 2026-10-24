package dev.android.dynamicisland.xposed.hooks;

import android.content.Context;
import android.graphics.Canvas;
import android.os.SystemClock;
import android.view.HapticFeedbackConstants;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import dev.android.dynamicisland.island.feedback.Haptics;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.XLog;

/**
 * The card shown in the shade for one live activity. It draws the island's card with an
 * {@link IslandView} renderer, or hosts the activity's remote views when it has custom content, and
 * keeps redrawing while something on it moves. Any failure hands the row back to System UI through
 * {@link CardRowState#fail}.
 */
final class LiveCardView extends FrameLayout {
    private static final long SECOND_MS = 1000;

    private final String key;
    private final CardRowState owner;
    private final IslandView renderer;
    private final RemoteCardContent remote;
    private final Runnable redraw = this::redrawIfVisible;
    private final float slop;
    private IslandItem current;
    private int desiredHeight;

    /** Touch gesture: the item and position at ACTION_DOWN, whether it left the slop, whether we own it. */
    private IslandItem downItem;
    private float downX;
    private float downY;
    private boolean moved;
    private boolean tracking;

    LiveCardView(Context ctx, CardRowState owner, String key, IslandItem item) {
        super(ctx);
        this.owner = owner;
        this.key = key;
        current = item;
        setWillNotDraw(false);
        remote = new RemoteCardContent(this);
        renderer = new IslandView(ctx, null);
        slop = ViewConfiguration.get(ctx).getScaledTouchSlop();
        setLayoutParams(new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        setOnClickListener(v -> onTapped());
        setOnLongClickListener(v -> forwardLongPress());
    }

    /** The haptics switch also covers the haptics the framework starts by itself (long press). */
    @Override
    public boolean performHapticFeedback(int feedbackConstant) {
        return ModuleSettings.haptics() && super.performHapticFeedback(feedbackConstant);
    }

    @Override
    public boolean performHapticFeedback(int feedbackConstant, int flags) {
        return ModuleSettings.haptics() && super.performHapticFeedback(feedbackConstant, flags);
    }

    CardRowState owner() {
        return owner;
    }

    /** Height the card wanted at its last measure; used before it has been laid out. */
    int desiredHeight() {
        return desiredHeight;
    }

    private boolean onScreen() {
        return isAttachedToWindow() && isShown() && getWindowVisibility() == View.VISIBLE;
    }

    private void redrawIfVisible() {
        if (onScreen() && !owner.isRestored()) {
            invalidate();
        }
    }

    private void onTapped() {
        try {
            IslandItem latest = ShadeLiveCards.item(key);
            boolean ours = !owner.isRestored() && !moved && latest != null && latest == downItem;
            if (ours && renderer.shadeCardTap(latest, getWidth(), downX, downY)) {
                Haptics.perform(this, HapticFeedbackConstants.CONTEXT_CLICK);
            }
        } catch (Throwable t) {
            owner.fail(t);
        }
    }

    /** Replays the long press on the stock row, in the row's coordinates, so its menu opens. */
    private boolean forwardLongPress() {
        moved = true;
        try {
            int[] mine = new int[2];
            int[] rows = new int[2];
            getLocationOnScreen(mine);
            owner.row.getLocationOnScreen(rows);
            int x = Math.round(downX + mine[0] - rows[0]);
            int y = Math.round(downY + mine[1] - rows[1]);
            CardRowState.requireMethod(owner.row, "doLongClickCallback", 2).invoke(owner.row, x, y);
            return true;
        } catch (Throwable t) {
            XLog.e("shade live card long click failed", t);
            return false;
        }
    }

    /** Re-reads the live item, lays the card out for {@code width} and returns the height it wants. */
    int heightFor(int width) {
        IslandItem latest = ShadeLiveCards.item(key);
        if (latest == null) {
            owner.fail(new IllegalStateException("live activity gone: " + key));
        } else {
            current = latest;
        }
        if (current.remoteView != null) {
            desiredHeight = remote.heightFor(current.remoteView, width);
        } else {
            remote.clear();
            desiredHeight = Math.max(1, (int) Math.ceil(renderer.shadeCardHeight(current, width)));
        }
        return desiredHeight;
    }

    @Override
    protected void onMeasure(int widthSpec, int heightSpec) {
        int width = View.MeasureSpec.getSize(widthSpec);
        try {
            setMeasuredDimension(width, resolveSize(heightFor(Math.max(1, width)), heightSpec));
            remote.measureInside(width, getMeasuredHeight());
        } catch (Throwable t) {
            setMeasuredDimension(width, View.MeasureSpec.getSize(heightSpec));
            owner.fail(t);
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        try {
            IslandItem latest = ShadeLiveCards.item(key);
            if (latest != null && latest.remoteView != null) {
                if (latest != current) {
                    current = latest;
                    post(this::requestLayout);
                }
            } else {
                if (heightFor(Math.max(1, getWidth())) != getMeasuredHeight()) {
                    requestLayout();
                }
                renderer.drawShadeCard(canvas, current, getWidth());
            }
            setContentDescription(describe(current));
            scheduleRedraw();
        } catch (Throwable t) {
            owner.fail(t);
        }
    }

    private static String describe(IslandItem item) {
        CharSequence title = item.title != null ? item.title : item.appName;
        String text = title == null ? "" : title.toString();
        return item.subtitle != null ? text + ", " + item.subtitle : text;
    }

    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        if (h != oldh) {
            post(this::notifyRowHeightChanged);
        }
    }

    /** Tells the row its height changed, so the shade list re-lays out around the card. */
    void notifyRowHeightChanged() {
        if (!owner.isRestored()) {
            Refl.call(owner.row, "notifyHeightChanged", "island live card size", false);
        }
    }

    /** Queues the next redraw when the card has content that changes over time. */
    private void scheduleRedraw() {
        removeCallbacks(redraw);
        if (owner.isRestored() || current == null || !onScreen()) {
            return;
        }
        IslandItem item = current;
        // sweeping bars, stopwatch hundredths and rolling digits need every frame; a clock anywhere on
        // the card (trailing, title or secondary line) needs one redraw per second
        boolean everyFrame = item.progressIndeterminate || (item.chronoMillis && item.hasChronometer()) || renderer.shadeRolling();
        boolean everySecond = item.trailing == IslandItem.Trailing.CHRONOMETER
                || item.kind == IslandItem.Kind.TIMER
                || item.kind == IslandItem.Kind.RECORDING
                || (item.hasChronometer() && item.chronoPosition != 0);
        if (everyFrame) {
            postOnAnimation(redraw);
        } else if (everySecond) {
            postDelayed(redraw, SECOND_MS - (SystemClock.uptimeMillis() % SECOND_MS));
        }
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        scheduleRedraw();
        invalidate();
    }

    @Override
    protected void onDetachedFromWindow() {
        removeCallbacks(redraw);
        super.onDetachedFromWindow();
    }

    @Override
    protected void onVisibilityChanged(View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        // called from the View constructor, before the fields exist
        if (renderer != null) {
            scheduleRedraw();
        }
    }

    @Override
    protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        if (renderer != null) {
            scheduleRedraw();
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        try {
            int action = event.getActionMasked();
            if (action == MotionEvent.ACTION_DOWN) {
                downItem = ShadeLiveCards.item(key);
                downX = event.getX();
                downY = event.getY();
                moved = false;
                tracking = downItem != null && downItem.remoteView == null
                        && renderer.shadeCardHasButton(downItem, getWidth(), downX, downY);
            }
            if (!tracking) {
                return false;
            }
            boolean outOfSlop = Math.abs(event.getX() - downX) > slop || Math.abs(event.getY() - downY) > slop;
            if (action == MotionEvent.ACTION_MOVE && outOfSlop) {
                moved = true;
                cancelLongPress();
                setPressed(false);
            }
            if (event.getPointerCount() > 1) {
                moved = true;
                cancelLongPress();
            }
            boolean handled = super.onTouchEvent(event);
            if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) {
                tracking = false;
            }
            return handled;
        } catch (Throwable t) {
            owner.fail(t);
            return false;
        }
    }
}
