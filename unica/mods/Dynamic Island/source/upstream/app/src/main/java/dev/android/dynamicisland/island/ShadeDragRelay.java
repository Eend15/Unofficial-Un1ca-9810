package dev.android.dynamicisland.island;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.XLog;
import dev.android.dynamicisland.xposed.hooks.SystemUiHooks;
import java.util.function.Supplier;

/**
 * Pulling the island down opens the notification shade: touches are replayed into the status bar so
 * its own gesture handling does the work, with a direct panel expansion when it does not take over.
 * A pull the status bar accepted but did not turn into an open shade (right after the phone is unlocked, say)
 * is finished by opening the shade directly.
 */
final class ShadeDragRelay {
    /** A pull this long (dp) that ends with the shade still closed is one the user meant. */
    static final float MEANT_PULL_DP = 64.0f;
    /** The shade gets this long to start opening after the finger lifts. */
    static final long SETTLE_MS = 280;
    private static final float STILL_CLOSED = 0.02f;

    private final Context ctx;
    private final Supplier<View> statusBar;
    private final Supplier<Float> fraction;
    private final Runnable expand;
    private final Handler main;
    private boolean handedOver;
    private boolean expandedDirectly;
    private float downY;
    private int generation;

    ShadeDragRelay(Context ctx, Supplier<View> statusBar) {
        this(ctx, statusBar, SystemUiHooks::shadeFraction, null, new Handler(Looper.getMainLooper()));
    }

    /** For tests: the shade position, the direct expansion and the handler are supplied. */
    ShadeDragRelay(Context ctx, Supplier<View> statusBar, Supplier<Float> fraction, Runnable expand, Handler main) {
        this.ctx = ctx;
        this.statusBar = statusBar;
        this.fraction = fraction;
        this.expand = expand;
        this.main = main;
    }

    void start(float downX, float downY, long downTime) {
        generation++;
        this.downY = downY;
        handedOver = false;
        expandedDirectly = false;
        View bar = statusBar.get();
        if (bar != null) {
            MotionEvent down = MotionEvent.obtain(downTime, downTime, MotionEvent.ACTION_DOWN, downX, downY, 0);
            try {
                handedOver = bar.dispatchTouchEvent(down);
            } finally {
                down.recycle();
            }
        }
        if (!handedOver) {
            expandPanel();
        }
    }

    void move(MotionEvent event) {
        View bar = statusBar.get();
        if (!handedOver || bar == null) {
            return;
        }
        MotionEvent copy = MotionEvent.obtain(event);
        try {
            bar.dispatchTouchEvent(copy);
        } finally {
            copy.recycle();
        }
        if (event.getActionMasked() == MotionEvent.ACTION_UP) finishPull(event.getY() - downY);
    }

    /** The finger lifted after a long pull: if the shade has not started to open by now, open it. */
    private void finishPull(float pulled) {
        float density = ctx.getResources().getDisplayMetrics().density;
        boolean meant = pulled >= MEANT_PULL_DP * density;
        Float at = fraction.get();
        Diagnostics.event("shade pull: handed over, " + Math.round(pulled / density) + " dp, shade at "
                + (at == null ? "unknown" : String.format(java.util.Locale.ROOT, "%.2f", at)));
        if (!meant) return;
        int mine = generation;
        main.postDelayed(() -> {
            if (mine != generation) return; // another pull started meanwhile
            Float now = fraction.get();
            if (now != null && now < STILL_CLOSED) {
                Diagnostics.event("shade pull: the shade stayed closed, opening it");
                expandPanel();
            }
        }, SETTLE_MS);
    }

    // The hidden statusbar service is used only from the SystemUI host.
    @android.annotation.SuppressLint("WrongConstant")
    private void expandPanel() {
        if (expandedDirectly) {
            return;
        }
        expandedDirectly = true;
        if (expand != null) {
            expand.run();
            return;
        }
        try {
            Object manager = ctx.getSystemService("statusbar");
            if (manager != null) {
                manager.getClass().getMethod("expandNotificationsPanel").invoke(manager);
            }
        } catch (Throwable t) {
            XLog.e("expand shade failed", t);
        }
    }
}
