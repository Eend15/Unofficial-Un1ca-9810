package dev.android.dynamicisland.xposed.hooks;

import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;
import dev.android.dynamicisland.xposed.XLog;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/**
 * Draws the island's media card in place of the stock media player of the notification shade
 * ({@code SecMediaControlPanel}, type "ENR"), so playback looks and behaves the same in both places.
 * The stock view is kept and still lays out and receives events; its draw and touch methods are
 * intercepted while the island has a media item for the session. When the island cannot show the
 * session (locked screen, accessibility touch exploration, options open) the stock player is used.
 * This class installs the hooks and owns the registry of taken-over players; sizing is in
 * {@link MediaMeasure}, the row background in {@link MediaRowBackground} and the per-player drawing
 * and touch handling in {@link MediaPlayerBinding}. Everything runs on the System UI main thread.
 */
public final class ShadeMediaPlayer {
    private static final String QS_PACKAGE = "com.android.systemui.qs.";
    private static final String CONTENT_VIEW = "com.android.systemui.statusbar.notification.row.NotificationContentView";
    private static final String MEDIA_PANEL = "com.android.systemui.media.SecMediaControlPanel";
    /** The panel type of the player in the notification shade. */
    private static final String SHADE_PANEL_TYPE = "ENR";

    /** Stock player views that are drawn by us. */
    private static final Map<View, MediaPlayerBinding> PLAYERS = new WeakHashMap<>();
    /** Methods already hooked, so a player class shared by several views is hooked once. */
    private static final Set<Method> HOOKED = new HashSet<>();

    ShadeMediaPlayer() {
    }

    static void install(ClassLoader cl) {
        XLog.i("shade media hooks installing v1");
        MediaRowBackground.install(cl);
        // the base picker declares getMediaPlayerExpandHeight abstract (nothing to hook there); the concrete
        // pickers implement it, and which of them exist differs between System UI builds
        String[] pickers = {"SecQSPanelResourcePicker", "panelresource.SecQSPanelResourceNormalPicker", "panelresource.SecQSPanelResourceWalletPicker"};
        for (String picker : pickers) {
            Refl.hookAll(cl, QS_PACKAGE + picker, "getMediaPlayerExpandHeight", SafeHook.after("notification media height", MediaMeasure::useCardHeight));
        }
        Refl.hookAll(cl, CONTENT_VIEW, "onMeasure", new MediaMeasure.ContentMeasureHook());
        Refl.hookAll(cl, MEDIA_PANEL, "bind", SafeHook.after("shade media bind", ShadeMediaPlayer::takeOverAfterBind));
    }

    /** True when the notification row shows our player right now (used by {@link ShadeCardTheme}). */
    static boolean activeRow(Object row) {
        return MediaRowBackground.isActive(row);
    }

    /** See {@link MediaRowBackground#needsRebuild}. */
    static boolean needsRebuild(boolean sameRow, boolean lastActive, boolean active, Boolean applied, boolean pending) {
        return MediaRowBackground.needsRebuild(sameRow, lastActive, active, applied, pending);
    }

    static MediaPlayerBinding bindingOf(Object player) {
        return PLAYERS.get(player);
    }

    static Map<View, MediaPlayerBinding> players() {
        return PLAYERS;
    }

    /**
     * After {@code SecMediaControlPanel.bind}: for the shade player hooks the player view's draw, touch
     * and measure methods once and registers a {@link MediaPlayerBinding} for it.
     */
    private static void takeOverAfterBind(XC_MethodHook.MethodHookParam p) {
        if (p.hasThrowable() || !SHADE_PANEL_TYPE.equals(String.valueOf(Refl.get(p.thisObject, "mType")))) {
            return;
        }
        Object root = Refl.get(Refl.get(p.thisObject, "mViewHolder"), "playerView");
        if (!(root instanceof ViewGroup)) {
            return;
        }
        ViewGroup player = (ViewGroup) root;
        if (!PLAYERS.containsKey(player)) {
            Class<?> cls = player.getClass();
            hookPlayerMethod(cls, "dispatchDraw", true);
            hookPlayerMethod(cls, "dispatchTouchEvent", false);
            Method onMeasure = Refl.method(cls, "onMeasure", 2);
            if (onMeasure != null && HOOKED.add(onMeasure)) {
                XposedBridge.hookMethod(onMeasure, SafeHook.before("media body measure", MediaMeasure::forcePlayerHeight));
            }
            PLAYERS.put(player, new MediaPlayerBinding(player, p.thisObject));
            XLog.i("shade media renderer attached: " + cls.getName());
        }
        player.invalidate();
        player.requestLayout();
    }

    /** Hooks {@code dispatchDraw(Canvas)} ({@code draw}) or {@code dispatchTouchEvent(MotionEvent)} of the player class. */
    private static void hookPlayerMethod(Class<?> cls, String name, boolean draw) {
        Method method = Refl.method(cls, name, 1);
        if (method == null) {
            throw new IllegalStateException(name);
        }
        if (HOOKED.add(method)) {
            XposedBridge.hookMethod(method, SafeHook.before("shade media " + name, p -> drawOrTouch(draw, p)));
        }
    }

    /**
     * Before the player view's {@code dispatchDraw} or {@code dispatchTouchEvent}: when the island has
     * an item, draws the card or handles the touch and skips the stock method. If our code throws, the
     * stock player is restored for good.
     */
    private static void drawOrTouch(boolean draw, XC_MethodHook.MethodHookParam p) {
        MediaPlayerBinding binding = PLAYERS.get(p.thisObject);
        if (binding == null) {
            return;
        }
        View player = (View) p.thisObject;
        try {
            IslandItem item = binding.item(player);
            binding.syncBackground(player, item != null);
            if (item == null) {
                binding.cancel();
            } else if (draw) {
                binding.draw(player, (Canvas) p.args[0], item);
                p.setResult(null);
            } else {
                p.setResult(binding.touch(player, (MotionEvent) p.args[0], item));
            }
        } catch (Throwable error) {
            binding.cancel();
            binding.syncBackground(player, false);
            PLAYERS.remove(player);
            player.invalidate();
            XLog.e("shade media restored stock player", error);
        }
    }
}
