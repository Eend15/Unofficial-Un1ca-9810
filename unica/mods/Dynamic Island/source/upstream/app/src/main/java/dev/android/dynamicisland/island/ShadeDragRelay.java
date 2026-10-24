package dev.android.dynamicisland.island;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import dev.android.dynamicisland.xposed.XLog;
import java.util.function.Supplier;

/**
 * Pulling the island down opens the notification shade: touches are replayed into the status bar so
 * its own gesture handling does the work, with a direct panel expansion when it does not take over.
 */
final class ShadeDragRelay {
    private final Context ctx;
    private final Supplier<View> statusBar;
    private boolean handedOver;
    private boolean expandedDirectly;

    ShadeDragRelay(Context ctx, Supplier<View> statusBar) {
        this.ctx = ctx;
        this.statusBar = statusBar;
    }

    void start(float downX, float downY, long downTime) {
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
    }

    private void expandPanel() {
        if (expandedDirectly) {
            return;
        }
        expandedDirectly = true;
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
