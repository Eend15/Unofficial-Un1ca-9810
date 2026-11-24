package dev.android.dynamicisland.xposed.hooks;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PixelFormat;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.service.notification.StatusBarNotification;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import dev.android.dynamicisland.island.IslandController;
import dev.android.dynamicisland.island.material.FrostedSurface;
import dev.android.dynamicisland.island.material.MaterialShape;
import dev.android.dynamicisland.island.window.ShadeMaterialBackdrop;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;
import dev.android.dynamicisland.xposed.XLog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * An in-place skin, not a second notification presenter. The original heads-up child, wrappers,
 * actions and RemoteInput views stay attached and receive their original events. No pin decisions,
 * timers, touch listeners, dimensions or visibility policies are replaced here.
 */
public final class StockPopupStyle {
    private static final String CONTENT = "com.android.systemui.statusbar.notification.row.NotificationContentView";
    private static final Map<View, WeakReference<State>> CONTENTS = new WeakHashMap<>();
    private static boolean supported;

    private StockPopupStyle() { }

    static void install(ClassLoader loader) {
        Class<?> type = Refl.findClass(CONTENT, loader);
        if (type == null || Refl.field(type, "mHeadsUpChild") == null || Refl.field(type, "mVisibleType") == null) return;
        int attach = Refl.hookAll(type, "onAttachedToWindow", SafeHook.after("system popup appearance", p -> watch((View) p.thisObject)));
        int detach = Refl.hookAll(type, "onDetachedFromWindow", SafeHook.before("system popup release", p -> forget((View) p.thisObject)));
        supported = attach > 0 && detach > 0;
        if (!supported) return;
        Diagnostics.fact("system popup renderer", "native heads-up content; stock swipe, remote input and lifetime retained");
    }

    static State watch(View content) {
        WeakReference<State> ref = CONTENTS.get(content);
        State state = ref == null ? null : ref.get();
        if (state == null) { state = new State(content); CONTENTS.put(content, new WeakReference<>(state)); state.attach(); }
        return state;
    }

    static void forget(View content) {
        WeakReference<State> ref = CONTENTS.remove(content);
        State state = ref == null ? null : ref.get();
        if (state != null) state.detach();
    }

    /** Called by the settings listener; also restores an already visible popup when this option is turned off. */
    public static void refresh() {
        for (WeakReference<State> ref : new ArrayList<>(CONTENTS.values())) { State state = ref.get(); if (state != null) state.prepare(); }
    }

    public static boolean isShowing(String key) {
        for (WeakReference<State> ref : CONTENTS.values()) {
            State state = ref.get();
            View host = state == null ? null : state.content.get();
            if (host != null && state.active && eligible(host) && key.equals(state.key)) return true;
        }
        return false;
    }

    /** Only the heads-up slot is styled. A shade expansion, redaction or unpin restores the original appearance. */
    static boolean eligible(View content) {
        return ModuleSettings.systemPopupStyle() && content.isShown()
                && (Boolean.TRUE.equals(Refl.get(content, "mIsHeadsUp"))
                    || Boolean.TRUE.equals(Refl.get(content, "mHeadsUpAnimatingAway")))
                && popupChild(content) != null;
    }

    private static View popupChild(View content) {
        Object type = Refl.get(content, "mVisibleType");
        if (Integer.valueOf(2).equals(type)) {
            Object child = Refl.get(content, "mHeadsUpChild");
            return child instanceof View ? (View) child : null;
        }
        // A pinned popup can switch to the expanded child for its native reply editor.
        // A regular expanded notification in the shade must keep its original appearance.
        if (Integer.valueOf(1).equals(type)
                && Boolean.TRUE.equals(Refl.call(Refl.get(content, "mContainingNotification"), "isPinned"))) {
            Object child = Refl.get(content, "mExpandedChild");
            return child instanceof View ? (View) child : null;
        }
        return null;
    }

    static final class State implements ViewTreeObserver.OnPreDrawListener {
        final WeakReference<View> content;
        final ShadeMaterialAppearance appearance = new ShadeMaterialAppearance();
        private record TextTint(ColorStateList original, ColorStateList applied) { }
        final Map<TextView, TextTint> textColors = new WeakHashMap<>();
        final PopupSurface surface;
        WeakReference<View> head = new WeakReference<>(null);
        Drawable original;
        ViewTreeObserver observer;
        boolean active;
        String key;

        State(View content) { this.content = new WeakReference<>(content); surface = new PopupSurface(content); }

        void attach() {
            View host = content.get();
            if (host == null) return;
            observer = host.getViewTreeObserver(); observer.addOnPreDrawListener(this);
        }

        @Override public boolean onPreDraw() { prepare(); return true; }

        void prepare() {
            View host = content.get();
            try {
                if (host == null || !eligible(host)) { restore(); return; }
                CardRowState previous = CardRowState.installedIn(host);
                if (previous != null) previous.restore();
                View next = popupChild(host);
                View old = head.get();
                if (old != next) { restore(); head = new WeakReference<>(next); }
                // Reapply can replace either the child or its background. Never restore an obsolete app background.
                if (next.getBackground() != surface) {
                    original = next.getBackground(); surface.original = original;
                    surface.host = new WeakReference<>(next); next.setBackground(surface);
                }
                tintText(next);
                boolean changed = !active;
                active = true;
                Object entry = Refl.get(Refl.get(host, "mContainingNotification"), "mEntryAdapter|mEntry");
                Object sbn = entry == null ? null : Refl.call(entry, "getSbn");
                if (sbn == null && entry != null) sbn = Refl.get(entry, "mSbn");
                if (sbn instanceof StatusBarNotification) key = ((StatusBarNotification) sbn).getKey();
                // Prepare before the row background and its RenderNode clips are recorded on the first frame.
                appearance.sync(next, true, true);
                if (changed) notifyController(host);
            } catch (Throwable error) {
                restore(); XLog.once("system popup appearance", error);
            }
        }

        private void tintText(View view) {
            if (view instanceof TextView) {
                TextView text = (TextView) view;
                TextTint owned = textColors.get(text);
                if (owned != null && text.getTextColors() == owned.applied()) return;
                textColors.remove(text); // System UI may have rebound the original text/state colours.
                int color = text.getCurrentTextColor();
                if (Color.alpha(color) > 0 && Color.luminance(color) < .3) {
                    ColorStateList original = text.getTextColors(), applied = original.withLStar(100);
                    textColors.put(text, new TextTint(original, applied));
                    text.setTextColor(applied); // Retain disabled/pressed states and their alpha.
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup group = (ViewGroup) view;
                for (int i = 0; i < group.getChildCount(); i++) tintText(group.getChildAt(i));
            }
        }

        void restore() {
            View old = head.get();
            if (!active && old == null) return;
            if (old != null && old.getBackground() == surface) old.setBackground(original);
            for (Map.Entry<TextView, TextTint> entry : textColors.entrySet())
                if (entry.getKey().getTextColors() == entry.getValue().applied()) entry.getKey().setTextColor(entry.getValue().original());
            textColors.clear();
            appearance.clear();
            boolean changed = active;
            active = false; key = null; original = null; head.clear();
            View host = content.get();
            if (old != null) ShadeMaterialBackdrop.release(old);
            if (host != null && changed) notifyController(host);
            surface.clear();
        }

        void detach() {
            if (observer != null && observer.isAlive()) observer.removeOnPreDrawListener(this);
            observer = null; restore();
        }
    }

    private static void notifyController(View host) {
        host.post(() -> {
            IslandController controller = IslandController.get();
            if (controller != null) controller.onSystemPopupChanged();
        });
    }

    /** The same material as island cards, behind the system's actual notification content. */
    private static final class PopupSurface extends Drawable {
        WeakReference<View> host;
        Drawable original;
        final FrostedSurface frosted = new FrostedSurface();
        final RectF local = new RectF(), screen = new RectF();
        final Path shape = new Path();
        final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        int alpha = 255;

        PopupSurface(View content) { this.host = new WeakReference<>(content); }

        @Override public void draw(Canvas canvas) {
            View host = this.host.get();
            if (host == null) return;
            int save = alpha == 255 ? -1 : canvas.saveLayerAlpha(null, alpha);
            try {
                local.set(getBounds());
                float density = host.getResources().getDisplayMetrics().density;
                float radius = ModuleSettings.customCardRoundness() ? ModuleSettings.cardCornerRadiusDp() * density
                        : local.width() * 100 / 1072;
                radius = Math.min(radius, local.height() / 2);
                ShadeMaterialBackdrop.screenBounds(host, local, screen);
                if (!frosted.draw(canvas, ShadeMaterialBackdrop.frame(host), local, screen, radius, 1, null, SystemClock.uptimeMillis())) {
                    MaterialShape.path(shape, local, radius);
                    paint.setColor(0xFF141416); paint.setStyle(Paint.Style.FILL);
                    canvas.drawPath(shape, paint);
                    paint.setStyle(Paint.Style.STROKE); paint.setStrokeWidth(density * .5f); paint.setColor(0x38FFFFFF);
                    canvas.drawPath(shape, paint);
                }
                if (frosted.animating(SystemClock.uptimeMillis())) host.postInvalidateOnAnimation();
            } finally { if (save >= 0) canvas.restoreToCount(save); }
        }
        void clear() { frosted.clear(); original = null; host.clear(); alpha = 255; }
        @Override public boolean getPadding(android.graphics.Rect out) { return original != null ? original.getPadding(out) : super.getPadding(out); }
        @Override public int getMinimumWidth() { return original == null ? 0 : original.getMinimumWidth(); }
        @Override public int getMinimumHeight() { return original == null ? 0 : original.getMinimumHeight(); }
        @Override public void setAlpha(int alpha) { this.alpha = Math.max(0, Math.min(255, alpha)); invalidateSelf(); }
        @Override public int getAlpha() { return alpha; }
        @Override public void setColorFilter(ColorFilter filter) { }
        @Override public int getOpacity() { return PixelFormat.TRANSLUCENT; }
    }
}
