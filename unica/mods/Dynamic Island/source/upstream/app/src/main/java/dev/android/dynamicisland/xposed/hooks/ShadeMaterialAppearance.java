package dev.android.dynamicisland.xposed.hooks;

import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import dev.android.dynamicisland.island.material.FrostedSurface;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;
import dev.android.dynamicisland.xposed.XLog;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.function.BooleanSupplier;

/** Lease the stock shell/rounding while a GPU card supplies its own perimeter. */
final class ShadeMaterialAppearance {
    private static final Map<View, State> ROWS = new WeakHashMap<>();
    private View owner, row;

    static void install(ClassLoader loader) {
        // clipToOutline is not the only clip: ExpandableOutlineView.drawChild explicitly
        // clips NotificationContentView with getCustomClipPath()/getClipPath(false).
        Refl.hookAllHierarchy(loader,
                "com.android.systemui.statusbar.notification.row.ExpandableNotificationRow",
                "getCustomClipPath", SafeHook.before("shade material child perimeter", p -> {
                    if (p.thisObject instanceof View && p.args.length == 1 && p.args[0] instanceof View) {
                        Path clip = childClip((View) p.thisObject, (View) p.args[0]);
                        if (clip != null) p.setResult(clip);
                    }
                }));
    }

    /** Run before RenderNode/parent clips are recorded, including the very first draw. */
    void follow(View host, BooleanSupplier active) {
        ViewTreeObserver.OnPreDrawListener listener = () -> {
            try {
                sync(host, FrostedSurface.requested() && host.isHardwareAccelerated()
                        && host.isShown() && host.getWindowVisibility() == View.VISIBLE && active.getAsBoolean());
            } catch (Throwable failure) {
                clear();
                XLog.once("shade material preparation", failure);
            }
            return true;
        };
        View.OnAttachStateChangeListener attachment = new View.OnAttachStateChangeListener() {
            private ViewTreeObserver observer;
            @Override public void onViewAttachedToWindow(View view) {
                if (observer != null && observer.isAlive()) observer.removeOnPreDrawListener(listener);
                observer = view.getViewTreeObserver();
                observer.addOnPreDrawListener(listener);
            }
            @Override public void onViewDetachedFromWindow(View view) {
                if (observer != null && observer.isAlive()) observer.removeOnPreDrawListener(listener);
                observer = null;
                clear();
            }
        };
        host.addOnAttachStateChangeListener(attachment);
        if (host.isAttachedToWindow()) attachment.onViewAttachedToWindow(host);
    }

    /** Keep Samsung's swipe/height bounds; only replace its incompatible circular corners. */
    static Path childClip(View row, View child) {
        State state = ROWS.get(row);
        if (state == null || !FrostedSurface.requested() || !state.contains(child)) return null;
        Object nativeClip = Refl.call(row, "getClipPath", false);
        if (!(nativeClip instanceof Path)) return null;
        return state.rectangularClip((Path) nativeClip);
    }

    void sync(View host, boolean painted) {
        View next = painted ? MediaRowBackground.findRow(host) : null;
        if (row != next) { clear(); row = next; owner = host; }
        if (row == null) return;
        State state = ROWS.computeIfAbsent(row, State::new);
        state.owners.put(host, Boolean.TRUE);
        state.hide(host);
    }

    void clear() {
        if (row != null) {
            State state = ROWS.get(row);
            if (state != null) {
                state.owners.remove(owner);
                if (state.owners.isEmpty()) { state.restore(); ROWS.remove(row); }
            }
        }
        row = null;
        owner = null;
    }

    private static final class State {
        final WeakReference<View> row;
        final Map<View, Boolean> owners = new WeakHashMap<>();
        final Map<View, Float> backgrounds = new WeakHashMap<>();
        final Map<View, Boolean> outlines = new WeakHashMap<>();
        final Map<View, Drawable> hostBackgrounds = new WeakHashMap<>();
        final Path childClip = new Path();
        final RectF clipBounds = new RectF();
        State(View row) { this.row = new WeakReference<>(row); }

        void hide(View host) {
            View row = this.row.get();
            if (row == null) return;
            for (String name : new String[]{"mBackgroundNormal", "mBackgroundDimmed"}) {
                if (Refl.field(row.getClass(), name) == null) continue;
                Object value = Refl.get(row, name);
                if (value instanceof View) {
                    View background = (View) value;
                    if (!backgrounds.containsKey(background) || background.getAlpha() != 0)
                        backgrounds.put(background, background.getAlpha());
                    background.setAlpha(0);
                }
            }
            for (View node = host; node != null; node = parent(node)) {
                if (!outlines.containsKey(node)) outlines.put(node, node.getClipToOutline());
                if (node.getClipToOutline()) node.setClipToOutline(false);
                if (node == row) break;
            }
            // View.draw paints the player's own background before our dispatchDraw hook.
            if (host.getBackground() != null) {
                hostBackgrounds.put(host, host.getBackground());
                host.setBackground(null);
            }
        }

        boolean contains(View child) {
            for (View host : owners.keySet()) for (View node = host; node != null; node = parent(node)) {
                if (node == child) return true;
                if (node == row.get()) break;
            }
            return false;
        }

        Path rectangularClip(Path nativeClip) {
            childClip.reset();
            if (!nativeClip.isEmpty()) {
                nativeClip.computeBounds(clipBounds, true);
                childClip.addRect(clipBounds, Path.Direction.CW);
            }
            return childClip;
        }

        void restore() {
            for (Map.Entry<View, Float> entry : backgrounds.entrySet())
                if (entry.getKey().getAlpha() == 0) entry.getKey().setAlpha(entry.getValue());
            for (Map.Entry<View, Boolean> entry : outlines.entrySet())
                if (!entry.getKey().getClipToOutline()) entry.getKey().setClipToOutline(entry.getValue());
            for (Map.Entry<View, Drawable> entry : hostBackgrounds.entrySet())
                if (entry.getKey().getBackground() == null) entry.getKey().setBackground(entry.getValue());
        }
    }

    private static View parent(View view) {
        ViewParent parent = view.getParent();
        return parent instanceof View ? (View) parent : null;
    }
}
