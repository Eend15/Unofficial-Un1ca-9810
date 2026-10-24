package dev.android.dynamicisland.xposed.hooks;

import android.app.Notification;
import android.view.View;
import android.view.ViewParent;
import de.robv.android.xposed.XC_MethodHook;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;
import dev.android.dynamicisland.xposed.XLog;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.Optional;
import java.util.WeakHashMap;

/**
 * Keeps the background of the notification row that holds the media player in step with the player:
 * a normal blurred / solid card while our player is drawn, the stock transparent media look while the
 * stock player shows. System UI rebuilds row backgrounds on its own (lock / unlock, theme, shade alpha);
 * a rebuild during a moment when our player is not active would leave the row transparent, so the
 * rebuilds are observed ({@link #APPLIED}) and corrected. One instance per player binding tracks that
 * player's row; the registries are shared.
 */
final class MediaRowBackground {
    private static final String ACTIVATABLE_ROW = "com.android.systemui.statusbar.notification.row.ActivatableNotificationView";
    private static final int MAX_DRIFT_LOGS = 5;

    /**
     * What System UI last built each followed row's background as: true = a card (what our player needs),
     * false = the stock media look. A null value means the row is followed but nothing was observed yet.
     */
    private static final Map<Object, Boolean> APPLIED = new WeakHashMap<>();
    /** Rows that currently show our player, with the player view. */
    private static final Map<Object, WeakReference<View>> MEDIA_ROWS = new WeakHashMap<>();
    /** The notification whose background colour is being decided, see {@link BlurBackgroundHook}. */
    private static final ThreadLocal<Object> BLUR_NOTIFICATION = new ThreadLocal<>();
    private static int driftLogs;

    private WeakReference<View> trackedRow;
    private boolean trackedActive;
    /** The row with a rebuild queued; a detached row may hold its queued rebuild for a while. */
    private WeakReference<View> pendingRow;

    /**
     * Makes the stock row background fit our player: no media accent gradient, not treated as a
     * media notification, and a blurred background even though the stock media look has none.
     */
    static void install(ClassLoader cl) {
        Refl.hookAll(cl, ACTIVATABLE_ROW, "initBackground", SafeHook.after("media background rebuilt", p -> recordApplied(p.thisObject)));
        Refl.hookAll(cl, ACTIVATABLE_ROW, "applyGradientBackground", SafeHook.before("media notification accent", MediaRowBackground::dropAccentGradient));
        Refl.hookAll(cl, ACTIVATABLE_ROW, "isMediaNotification", SafeHook.before("media native background", MediaRowBackground::denyMediaLook));
        Refl.hookAll(cl, ACTIVATABLE_ROW, "isBlurBackground", new BlurBackgroundHook());
        Refl.hookAll(Notification.class, "isColorized", SafeHook.before("media blur color eligibility", MediaRowBackground::denyColorizedForBlur));
    }

    /** True when the notification row shows our player right now. */
    static boolean isActive(Object row) {
        WeakReference<View> ref = MEDIA_ROWS.get(row);
        View player = ref == null ? null : ref.get();
        MediaPlayerBinding binding = player == null ? null : ShadeMediaPlayer.bindingOf(player);
        return binding != null && binding.item(player) != null;
    }

    /** After the row background was rebuilt: notes whether it was built for our player or in the stock look. */
    static void recordApplied(Object row) {
        if (APPLIED.containsKey(row)) {
            APPLIED.put(row, isActive(row));
        }
    }

    /** Notes that the row is about to be (or was) cleared to the stock media look. */
    static void recordStockLook(Object row) {
        if (APPLIED.containsKey(row)) {
            APPLIED.put(row, Boolean.FALSE);
        }
    }

    /**
     * Whether the row background has to be rebuilt: not only when our own on/off state flips, but also
     * when System UI rebuilt it in the stock look behind our back (applied != wanted).
     */
    static boolean needsRebuild(boolean sameRow, boolean lastActive, boolean active, Boolean applied, boolean pending) {
        if (pending) {
            return false;
        }
        if (!sameRow || lastActive != active) {
            return true;
        }
        return applied == null || applied != active;
    }

    /**
     * Rebuilds the background of the row that holds {@code player} when it no longer matches whether our
     * player is {@code active}. The rebuild is posted, once per row.
     */
    void sync(View player, boolean active) {
        View row = findRow(player);
        if (row == null) {
            return;
        }
        View previous = trackedRow == null ? null : trackedRow.get();
        boolean sameRow = previous == row;
        Boolean applied = APPLIED.get(row);
        boolean pending = pendingRow != null && pendingRow.get() == row;
        if (!needsRebuild(sameRow, trackedActive, active, applied, pending)) {
            return;
        }
        if (sameRow && trackedActive == active && applied != null && driftLogs < MAX_DRIFT_LOGS) {
            driftLogs++;
            XLog.i("shade media background was rebuilt by System UI as " + (applied ? "card" : "stock media") + ", restoring");
        }
        trackedRow = new WeakReference<>(row);
        trackedActive = active;
        pendingRow = new WeakReference<>(row);
        if (active) {
            MEDIA_ROWS.put(row, new WeakReference<>(player));
        } else {
            MEDIA_ROWS.remove(row);
        }
        if (!APPLIED.containsKey(row)) {
            APPLIED.put(row, null); // start following this row's rebuilds
        }
        row.post(() -> {
            if (pendingRow != null && pendingRow.get() == row) {
                pendingRow = null;
            }
            rebuild(row, active);
        });
    }

    private static View findRow(View player) {
        for (ViewParent parent = player.getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof View && parent.getClass().getName().endsWith("ExpandableNotificationRow")) {
                return (View) parent;
            }
        }
        return null;
    }

    private static void rebuild(View row, boolean active) {
        Refl.call(row, "initBackground");
        if (active) {
            Refl.call(row, "applyGradientBackground", row.getWidth(), row.getHeight(), false);
        }
        Refl.call(row, "updateBackground");
        row.invalidate();
    }

    /** Before {@code applyGradientBackground(width, height, accent)}: our player rows never use the accent gradient. */
    private static void dropAccentGradient(XC_MethodHook.MethodHookParam p) {
        if (isActive(p.thisObject) && p.args.length == 3) {
            p.args[2] = false;
        }
    }

    /** Before {@code isMediaNotification(row)}: our player row must not get the stock media background. */
    private static void denyMediaLook(XC_MethodHook.MethodHookParam p) {
        if (p.args.length == 1 && isActive(p.args[0])) {
            p.setResult(false);
        }
    }

    /** Before {@code Notification.isColorized}: answers false for the notification set by {@link BlurBackgroundHook}. */
    private static void denyColorizedForBlur(XC_MethodHook.MethodHookParam p) {
        if (p.thisObject == BLUR_NOTIFICATION.get()) {
            p.setResult(false);
        }
    }

    /**
     * Wraps {@code ActivatableNotificationView.isBlurBackground}: remembers which notification belongs
     * to the row being asked, so {@code Notification.isColorized} can answer "not colorized" for it
     * (a colorized notification would not get the blur background our player needs).
     */
    private static final class BlurBackgroundHook extends SafeHook {
        private final ArrayDeque<Optional<Object>> outer = new ArrayDeque<>();

        BlurBackgroundHook() {
            super("media native blur");
        }

        @Override
        protected void before(XC_MethodHook.MethodHookParam p) {
            outer.push(Optional.ofNullable(BLUR_NOTIFICATION.get()));
            if (isActive(p.thisObject)) {
                Object sbn = Refl.call(Refl.get(p.thisObject, "mEntryAdapter"), "getSbn");
                BLUR_NOTIFICATION.set(Refl.call(sbn, "getNotification"));
            } else {
                // a "no blur" answer clears the row's blur on the spot: remember that it needs rebuilding
                recordStockLook(p.thisObject);
            }
        }

        @Override
        protected void after(XC_MethodHook.MethodHookParam p) {
            Optional<Object> previous = outer.pop();
            if (previous.isPresent()) {
                BLUR_NOTIFICATION.set(previous.get());
            } else {
                BLUR_NOTIFICATION.remove();
            }
        }
    }
}
