package dev.android.dynamicisland.xposed.hooks;

import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Canvas;
import android.media.session.MediaController;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import dev.android.dynamicisland.island.IslandController;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.XLog;
import java.lang.ref.WeakReference;
import java.util.Objects;

/**
 * One stock shade media player taken over by the island's card: finds the island item for the player's
 * session, draws the card scaled into the player's box and turns touches on the player into card
 * gestures (buttons, seek drag, tap to open). The touch state of the current gesture lives here.
 */
final class MediaPlayerBinding {
    /** Redraw period for the player clock when nothing is animating. */
    private static final long IDLE_REDRAW_MS = 250L;

    private final WeakReference<Object> panel;
    private final IslandView renderer;
    private final float slop;
    private final MediaRowBackground background = new MediaRowBackground();
    private Runnable refresh;

    /** Scale and vertical offset the card was drawn with, to map touches back into card coordinates. */
    private float scale = 1.0f;
    private float offsetY;

    /** Gesture: item and card position at ACTION_DOWN, whether it left the slop, whether it is a seek drag. */
    private IslandItem downItem;
    private float downX;
    private float downY;
    private boolean moved;
    private boolean seeking;

    MediaPlayerBinding(View player, Object panel) {
        this.panel = new WeakReference<>(panel);
        Context ctx = player.getContext();
        renderer = new IslandView(ctx, null);
        slop = ViewConfiguration.get(ctx).getScaledTouchSlop();
    }

    /** Height in pixels the card needs at {@code width}. */
    int cardHeight(IslandItem item, int width) {
        return (int) Math.ceil(renderer.shadeCardHeight(item, width));
    }

    /** Makes the hosting row's background match whether our player is active; see {@link MediaRowBackground#sync}. */
    void syncBackground(View player, boolean active) {
        background.sync(player, active);
    }

    /**
     * The island item to draw for this player, or null when the stock player must show (touch exploration on,
     * options open, no session known to the island). The lock screen shows the same themed player as the shade.
     */
    IslandItem item(View player) {
        Context ctx = player.getContext();
        AccessibilityManager accessibility = ctx.getSystemService(AccessibilityManager.class);
        if (accessibility != null && accessibility.isTouchExplorationEnabled()) {
            return null;
        }
        Object mediaPanel = panel.get();
        Object options = Refl.get(Refl.get(mediaPanel, "mViewHolder"), "options");
        if (options instanceof View && ((View) options).getVisibility() == View.VISIBLE) {
            return null;
        }
        Object controller = Refl.get(mediaPanel, "mController");
        IslandController source = IslandController.get();
        if (!(controller instanceof MediaController) || source == null) {
            return null;
        }
        return source.mediaItemForSession(((MediaController) controller).getSessionToken());
    }

    /** Draws the card scaled down to fit the player's height, centred horizontally and vertically. */
    void draw(View player, Canvas canvas, IslandItem item) {
        float cardHeight = renderer.shadeCardHeight(item, player.getWidth());
        scale = Math.min(1.0f, player.getHeight() / Math.max(1.0f, cardHeight));
        if (scale <= 0.0f) {
            return;
        }
        offsetY = Math.max(0.0f, (player.getHeight() - scale * cardHeight) / 2.0f);
        int save = canvas.save();
        try {
            canvas.translate(player.getWidth() * (1.0f - scale) / 2.0f, offsetY);
            canvas.scale(scale, scale);
            renderer.drawShadeCard(canvas, item, player.getWidth());
        } finally {
            canvas.restoreToCount(save);
        }
        if (player.isShown() && player.getWindowVisibility() == View.VISIBLE) {
            scheduleRedraw(player, item);
        }
    }

    /**
     * The glow moves continuously, so the player redraws on every display frame while it moves and
     * otherwise just keeps the clock fresh. Only one idle redraw is ever pending: queuing one per draw
     * (and per drag event) used to pile chains up until the player redrew at full frame rate.
     */
    private void scheduleRedraw(View player, IslandItem item) {
        if (refresh == null) {
            refresh = player::invalidate;
        }
        player.removeCallbacks(refresh);
        if (renderer.shadeButtonAnimating() || renderer.shadeMediaAnimating(item)) {
            player.postInvalidateOnAnimation();
        } else {
            player.postDelayed(refresh, IDLE_REDRAW_MS);
        }
    }

    /** Ends any press or seek in progress. */
    void cancel() {
        renderer.shadeButtonUp();
        renderer.shadeMediaSeekEnd(false);
        downItem = null;
        seeking = false;
    }

    /** Handles a touch on the player in card coordinates; always consumed. */
    boolean touch(View player, MotionEvent event, IslandItem item) {
        int width = player.getWidth();
        float px = (event.getX() - width * (1.0f - scale) / 2.0f) / scale;
        float py = (event.getY() - offsetY) / scale;
        switch (event.getActionMasked()) {
            case MotionEvent.ACTION_DOWN:
                onDown(player, item, width, px, py);
                break;
            case MotionEvent.ACTION_UP:
                onUp(player, item, width);
                break;
            case MotionEvent.ACTION_MOVE:
                onMove(player, px, py);
                break;
            case MotionEvent.ACTION_CANCEL:
            case MotionEvent.ACTION_POINTER_DOWN:
                cancel();
                allowParentIntercept(player, true);
                break;
            default:
                break;
        }
        return true;
    }

    private void onDown(View player, IslandItem item, int width, float px, float py) {
        downItem = item;
        downX = px;
        downY = py;
        moved = false;
        seeking = renderer.shadeMediaSeekStart(item, width, px, py);
        if (!seeking && renderer.shadeButtonDown(item, width, px, py)) {
            player.invalidate();
        }
    }

    private void onUp(View player, IslandItem item, int width) {
        if (downItem != null && Objects.equals(downItem.key, item.key)) {
            if (seeking) {
                renderer.shadeMediaSeekEnd(true);
            } else if (!moved && !renderer.shadeCardTap(item, width, downX, downY)) {
                openApp(player, item);
            }
        }
        cancel();
        allowParentIntercept(player, true);
        player.invalidate();
    }

    private void onMove(View player, float px, float py) {
        if (downItem == null) {
            return;
        }
        if (!moved && (Math.abs(px - downX) > slop || Math.abs(py - downY) > slop)) {
            moved = true;
            renderer.shadeButtonUp();
            player.invalidate();
        }
        if (seeking) {
            if (Math.abs(px - downX) > slop) {
                allowParentIntercept(player, false);
            }
            renderer.shadeMediaSeekMove(px);
            player.invalidate();
        }
    }

    /** {@code allowed == false} keeps the scrolling parents from stealing a horizontal seek drag. */
    private static void allowParentIntercept(View player, boolean allowed) {
        ViewParent parent = player.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(!allowed);
        }
    }

    /** A tap on the card body: opens the media app through the island and collapses the shade. */
    private void openApp(View player, IslandItem item) {
        KeyguardManager keyguard = player.getContext().getSystemService(KeyguardManager.class);
        if (keyguard != null && keyguard.isKeyguardLocked()) {
            return; // the buttons and the seek bar work on the lock screen; opening the app has to wait for the unlock
        }
        IslandController source = IslandController.get();
        XLog.i("shade media open " + item.packageName + " intent=" + (item.contentIntent != null));
        if (source != null) {
            source.onOpenItem(item, null);
        }
        try {
            Object statusBar = player.getContext().getSystemService("statusbar");
            statusBar.getClass().getMethod("collapsePanels").invoke(statusBar);
        } catch (Throwable t) {
            XLog.e("shade media collapse failed", t);
        }
    }
}
