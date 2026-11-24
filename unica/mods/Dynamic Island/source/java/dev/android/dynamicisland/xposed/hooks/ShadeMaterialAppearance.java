package dev.android.dynamicisland.xposed.hooks;

import android.graphics.Path;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import dev.android.dynamicisland.island.material.FrostedSurface;
import dev.android.dynamicisland.xposed.Diagnostics;
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
    /** Keep a later native outline rebuild harmless too; the GPU card supplies its own perimeter. */
    private static final class CardOutline extends ViewOutlineProvider {
        final ViewOutlineProvider original;
        CardOutline(ViewOutlineProvider original) { this.original = original; }
        @Override public void getOutline(View view, Outline outline) {
            outline.setRect(0, 0, view.getWidth(), view.getHeight());
            outline.setAlpha(0); // no rectangular elevation shadow behind the card's own edge lighting
        }
    }
    private View owner, row;

    static void install(ClassLoader loader) {
        // System UI turns clipToOutline back on whenever it updates a row's outline (the roundness changes, the lock
        // screen opens). While a Frosted card owns the row the circular outline would cut the corners of its own
        // perimeter again, so the views the lease switched off stay off.
        Refl.hookAll(loader, "android.view.View", "setClipToOutline", SafeHook.before("shade material outline lease", p -> {
            if (p.args.length == 1 && Boolean.TRUE.equals(p.args[0]) && p.thisObject instanceof View
                    && keepsOutlineOff((View) p.thisObject)) {
                p.args[0] = Boolean.FALSE;
            }
        }));
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

    /** True while {@code view} belongs to a row a Frosted card has leased: its outline must not clip the card. */
    static boolean keepsOutlineOff(View view) {
        for (State state : ROWS.values()) {
            if (!state.owners.isEmpty() && state.outlines.containsKey(view)) return true;
        }
        return false;
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
        sync(host, painted, false);
    }

    /** A stock popup paints its material as the original child's background, rather than in onDraw. */
    void sync(View host, boolean painted, boolean keepHostBackground) {
        View next = painted ? MediaRowBackground.findRow(host) : null;
        if (row != next) { clear(); row = next; owner = host; }
        if (row == null) return;
        State state = ROWS.computeIfAbsent(row, State::new);
        state.owners.put(host, Boolean.TRUE);
        state.hide(host, keepHostBackground);
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
        // A native provider can capture its View. Only the View's leased provider may retain it,
        // not this static weak-row registry, or detached notification rows would be kept alive.
        final Map<View, WeakReference<CardOutline>> outlineProviders = new WeakHashMap<>();
        final Map<View, Drawable> hostBackgrounds = new WeakHashMap<>();
        /** The media player's own round clip, with the value it had before the lease switched it off. */
        final Map<View, Boolean> cornerClips = new WeakHashMap<>();
        static final long REPORT_MS = 5_000;
        long reportedAt = -REPORT_MS;
        final Path childClip = new Path();
        final RectF clipBounds = new RectF();
        State(View row) { this.row = new WeakReference<>(row); }

        void hide(View host, boolean keepHostBackground) {
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
                // Clearing the flag alone leaves Samsung's rounded outline on the RenderNode. Its own
                // updates can activate that outline again; a rectangular provider cannot cut our G2 corners.
                WeakReference<CardOutline> reference = outlineProviders.get(node);
                CardOutline leased = reference == null ? null : reference.get();
                if (leased == null || node.getOutlineProvider() != leased) {
                    leased = new CardOutline(node.getOutlineProvider());
                    outlineProviders.put(node, new WeakReference<>(leased));
                    node.setOutlineProvider(leased);
                    Diagnostics.fact("shade material perimeter", "parent outlines leased as rectangles; stock height and swipe clips retained");
                }
                if (isPlayerRoot(node)) releaseCornerClip(node);
                if (node == row) break;
            }
            // View.draw paints the player's own background before our dispatchDraw hook.
            if (!keepHostBackground && host.getBackground() != null) {
                hostBackgrounds.put(host, host.getBackground());
                host.setBackground(null);
            }
        }

        /**
         * The One UI media player is a QSMediaCornerRoundedView, and its draw() clips the whole canvas to a circular
         * round rect before anything inside it is drawn, our card included: the card's own corners (a squarer
         * shape than the circle) lose their edge light. The clip belongs to the stock look, so it is off while a
         * Frosted card draws.
         */
        private void releaseCornerClip(View player) {
            Object current = Refl.get(player, "mIsCornerRound");
            if (!(current instanceof Boolean)) return;
            if (!cornerClips.containsKey(player)) cornerClips.put(player, (Boolean) current);
            if ((Boolean) current && Refl.set(player, "mIsCornerRound", Boolean.FALSE)) {
                player.invalidate();
                Diagnostics.fact("shade material corner clip", "the media player's own round clip is off while the card draws");
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
                report();
            }
            return childClip;
        }

        /** What clips the card, for the diagnostics report: the stock clip against the card, and the flags above it. */
        private void report() {
            long now = android.os.SystemClock.uptimeMillis();
            if (now - reportedAt < REPORT_MS) return;
            reportedAt = now;
            View row = this.row.get();
            if (row == null || !(row instanceof ViewGroup)) return;
            try {
                StringBuilder sb = new StringBuilder();
                for (View host : owners.keySet()) {
                    Rect own = new Rect(0, 0, host.getWidth(), host.getHeight());
                    ((ViewGroup) row).offsetDescendantRectToMyCoords(host, own);
                    sb.append(String.format(java.util.Locale.ROOT, "stock clip %.0f,%.0f-%.0f,%.0f, card %d,%d-%d,%d (row %dx%d)",
                            clipBounds.left, clipBounds.top, clipBounds.right, clipBounds.bottom,
                            own.left, own.top, own.right, own.bottom, row.getWidth(), row.getHeight()));
                    break;
                }
                sb.append("; chain");
                int levels = 0;
                for (View node = row; node != null && levels < 5; node = parent(node), levels++) {
                    sb.append(" [").append(node.getClass().getSimpleName()).append(node.getClipToOutline() ? " outline" : "")
                            .append(node instanceof ViewGroup && ((ViewGroup) node).getClipChildren() ? " clipChildren" : "")
                            .append(node.getClipBounds() != null ? " bounds" : "").append(']');
                }
                Diagnostics.fact("shade material clip", sb.toString());
            } catch (RuntimeException ignored) {
                // a diagnostic line is never worth a failure in System UI's drawing
            }
        }

        void restore() {
            for (Map.Entry<View, Float> entry : backgrounds.entrySet())
                if (entry.getKey().getAlpha() == 0) entry.getKey().setAlpha(entry.getValue());
            for (Map.Entry<View, WeakReference<CardOutline>> entry : outlineProviders.entrySet()) {
                CardOutline leased = entry.getValue().get();
                if (leased != null && entry.getKey().getOutlineProvider() == leased)
                    entry.getKey().setOutlineProvider(leased.original);
            }
            for (Map.Entry<View, Boolean> entry : outlines.entrySet())
                if (!entry.getKey().getClipToOutline()) entry.getKey().setClipToOutline(entry.getValue());
            for (Map.Entry<View, Drawable> entry : hostBackgrounds.entrySet())
                if (entry.getKey().getBackground() == null) entry.getKey().setBackground(entry.getValue());
            for (Map.Entry<View, Boolean> entry : cornerClips.entrySet())
                if (Refl.set(entry.getKey(), "mIsCornerRound", entry.getValue())) entry.getKey().invalidate();
        }
    }

    /** The media player's root view, which draws its own circular corner clip (matched by name: System UI's class). */
    static boolean isPlayerRoot(View view) {
        return view.getClass().getName().endsWith("QSMediaCornerRoundedView");
    }

    private static View parent(View view) {
        ViewParent parent = view.getParent();
        return parent instanceof View ? (View) parent : null;
    }
}
