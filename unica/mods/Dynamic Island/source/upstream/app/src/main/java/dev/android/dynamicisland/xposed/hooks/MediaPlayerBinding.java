package dev.android.dynamicisland.xposed.hooks;

import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import dev.android.dynamicisland.island.material.MaterialFrame;
import dev.android.dynamicisland.island.window.ShadeMaterialBackdrop;
import android.media.session.MediaController;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import dev.android.dynamicisland.island.IslandController;
import dev.android.dynamicisland.island.graphics.FramePacer;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.settings.ModuleSettings;
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
    private final ShadeMaterialAppearance materialAppearance=new ShadeMaterialAppearance();
    private final RectF materialLocal=new RectF(),materialScreen=new RectF();
    private Runnable refresh;
    private final FramePacer framePacer = new FramePacer();
    private final HeldCard held = new HeldCard();
    /** What the glass of every shade music card did lately, for the diagnostics report. */
    static final dev.android.dynamicisland.island.material.GlassTrace TRACE = new dev.android.dynamicisland.island.material.GlassTrace();

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
        materialAppearance.follow(player, () -> item(player) != null);
        player.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() {
            @Override public void onViewAttachedToWindow(View view) { }
            @Override public void onViewDetachedFromWindow(View view) {
                ShadeMaterialBackdrop.release(view);materialAppearance.clear();renderer.clearShadeMaterial();
            }
        });
        slop = ViewConfiguration.get(ctx).getScaledTouchSlop();
    }

    /** Height in pixels the card needs at {@code width}. */
    int cardHeight(IslandItem item, int width) {
        return (int) Math.ceil(renderer.shadeCardHeight(item, width));
    }

    /** Makes the hosting row's background match whether our player is active; see {@link MediaRowBackground#sync}. */
    void syncBackground(View player, boolean active) {
        if(!active){ShadeMaterialBackdrop.release(player);materialAppearance.clear();renderer.clearShadeMaterial();}
        background.sync(player, active);
    }

    /**
     * The island item to draw for this player, or null when the stock player must show (touch exploration on,
     * options open, no session known to the island, or the user turned the island's player off). The lock screen shows the same themed player as the shade.
     */
    IslandItem item(View player) {
        int[] reason = new int[1];
        IslandItem live = liveItem(player, reason);
        return held.pick(live, reason[0], android.os.SystemClock.uptimeMillis());
    }

    /** The card the island has for the player right now; when there is none, {@code reason[0]} says why. */
    private IslandItem liveItem(View player, int[] reason) {
        if (!ModuleSettings.shadeMediaPlayer()) {
            reason[0] = HeldCard.SETTING_OFF; // the user keeps the stock music player in the shade
            return null;
        }
        Context ctx = player.getContext();
        AccessibilityManager accessibility = ctx.getSystemService(AccessibilityManager.class);
        if (accessibility != null && accessibility.isTouchExplorationEnabled()) {
            reason[0] = HeldCard.TOUCH_EXPLORATION;
            return null;
        }
        Object mediaPanel = panel.get();
        Object options = Refl.get(Refl.get(mediaPanel, "mViewHolder"), "options");
        if (options instanceof View && ((View) options).getVisibility() == View.VISIBLE) {
            reason[0] = HeldCard.OPTIONS_OPEN;
            return null;
        }
        Object controller = Refl.get(mediaPanel, "mController");
        IslandController source = IslandController.get();
        if (!(controller instanceof MediaController) || source == null) {
            reason[0] = HeldCard.NO_SOURCE;
            return null;
        }
        IslandItem card = source.mediaItemForSession(((MediaController) controller).getSessionToken());
        if (card == null) {
            reason[0] = HeldCard.NO_CARD;
        }
        return card;
    }

    /** Suppression is distinct from a missing card: a missing card normally restores the stock player. */
    boolean recording(View player) {
        if (!ModuleSettings.shadeMediaPlayer()) {
            return false;
        }
        AccessibilityManager accessibility = player.getContext().getSystemService(AccessibilityManager.class);
        if (accessibility != null && accessibility.isTouchExplorationEnabled()) {
            return false;
        }
        Object controller = Refl.get(panel.get(), "mController");
        IslandController source = IslandController.get();
        return controller instanceof MediaController && source != null
                && source.isRecordingSession(((MediaController) controller).getSessionToken());
    }

    /** Draws the card scaled down to fit the player's height, centred horizontally and vertically. */
    void draw(View player, Canvas canvas, IslandItem item) {
        framePacer.allow(false, false, System.nanoTime());
        float cardHeight = renderer.shadeCardHeight(item, player.getWidth());
        scale = Math.min(1.0f, player.getHeight() / Math.max(1.0f, cardHeight));
        if (scale <= 0.0f) {
            return;
        }
        offsetY = Math.max(0.0f, (player.getHeight() - scale * cardHeight) / 2.0f);
        int save = canvas.save();
        try {
            MaterialFrame frame=ShadeMaterialBackdrop.frame(player);
            materialLocal.set(player.getWidth()*(1-scale)/2,offsetY,
                    player.getWidth()*(1+scale)/2,offsetY+scale*cardHeight);
            ShadeMaterialBackdrop.screenBounds(player,materialLocal,materialScreen);
            canvas.translate(player.getWidth() * (1.0f - scale) / 2.0f, offsetY);
            canvas.scale(scale, scale);
            boolean frosted=renderer.drawShadeCard(canvas,item,player.getWidth(),frame,materialScreen);
            materialAppearance.sync(player,frosted);
            trace(player,canvas,item,frame,frosted);
        } finally {
            canvas.restoreToCount(save);
        }
        if (player.isShown() && player.getWindowVisibility() == View.VISIBLE) {
            scheduleRedraw(player, item);
        }
    }

    /** Notes what the glass of this frame did (see {@link dev.android.dynamicisland.island.material.GlassTrace}). */
    private void trace(View player, Canvas canvas, IslandItem item, MaterialFrame frame, boolean frosted) {
        int flags = 0;
        if (frosted) flags |= dev.android.dynamicisland.island.material.GlassTrace.FROSTED;
        if (canvas.isHardwareAccelerated()) flags |= dev.android.dynamicisland.island.material.GlassTrace.HARDWARE;
        if (frame != null) flags |= dev.android.dynamicisland.island.material.GlassTrace.BACKDROP;
        if (dev.android.dynamicisland.island.material.FrostedSurface.requested()) flags |= dev.android.dynamicisland.island.material.GlassTrace.AVAILABLE;
        if (held.holding()) flags |= dev.android.dynamicisland.island.material.GlassTrace.HELD;
        if (player.isShown()) flags |= dev.android.dynamicisland.island.material.GlassTrace.SHOWN;
        if (renderer.shadeMaterialBlending()) flags |= dev.android.dynamicisland.island.material.GlassTrace.BLENDING;
        if (darkTone(item)) flags |= dev.android.dynamicisland.island.material.GlassTrace.DARK_TONE;
        if (dev.android.dynamicisland.island.material.FrostedSurface.rejectionsNow() == 0) flags |= dev.android.dynamicisland.island.material.GlassTrace.CLEAN_GEOMETRY;
        TRACE.record(android.os.SystemClock.uptimeMillis(), flags, renderer.shadeMaterialResponse(), renderer.shadeMaterialLive(), renderer.shadeMaterialResponseMax());
    }

    /** True when a stop of the card's artwork palette is nearly black. */
    static boolean darkTone(IslandItem item) {
        dev.android.dynamicisland.island.graphics.ArtworkPalette palette = item.mediaPalette;
        if (palette == null) return nearlyBlack(item.accent);
        return nearlyBlack(palette.first) || nearlyBlack(palette.middle) || nearlyBlack(palette.last);
    }

    private static boolean nearlyBlack(int colour) {
        return Math.max((colour >> 16) & 255, Math.max((colour >> 8) & 255, colour & 255)) < 16;
    }

    /**
     * The glow moves continuously, so the player redraws on every display frame while it moves and
     * otherwise just keeps the clock fresh. Only one idle redraw is ever pending: queuing one per draw
     * (and per drag event) used to pile chains up until the player redrew at full frame rate.
     */
    private void scheduleRedraw(View player, IslandItem item) {
        if (refresh == null) {
            refresh = () -> {
                if (player.isAttachedToWindow() && player.isShown() && player.getWindowVisibility() == View.VISIBLE) player.invalidate();
            };
        }
        player.removeCallbacks(refresh);
        if (renderer.shadeButtonAnimating() || renderer.shadeMediaAnimating(item) || renderer.shadeMaterialAnimating()) {
            long delay = framePacer.delayMillis(ModuleSettings.limitFrameRate(), renderer.shadeButtonAnimating() || seeking, System.nanoTime());
            player.postOnAnimationDelayed(refresh, delay);
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
    // The hidden statusbar service is available in the SystemUI host, outside the public SDK list.
    @android.annotation.SuppressLint("WrongConstant")
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
