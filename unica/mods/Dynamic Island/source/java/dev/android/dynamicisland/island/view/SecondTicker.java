package dev.android.dynamicisland.island.view;

import dev.android.dynamicisland.island.graphics.Motion;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.xposed.XLog;

/**
 * Once-a-second redraw for content that changes with the clock (chronometers, the elapsed time of playing
 * media) while nothing animates. The tick is aligned to the second boundary of the first running chronometer
 * so its digits roll exactly on time.
 */
final class SecondTicker {
    /** The tick fires this long after the boundary so the clock has surely moved on. */
    private static final long SLACK_MS = 8;

    private final IslandView view;
    private final Scene scene;
    private final StackPainter stack;
    private final Runnable tick = this::onTick;
    private boolean posted;

    SecondTicker(IslandView view, Scene scene, StackPainter stack) {
        this.view = view;
        this.scene = scene;
        this.stack = stack;
    }

    /** Posts the next tick unless one is pending or nothing needs ticking. */
    void schedule() {
        if (posted || !needed()) {
            return;
        }
        posted = true;
        IslandItem chrono = firstChronometer();
        boolean monotonic = chrono != null && chrono.chronoUsesElapsedRealtime;
        long now = monotonic ? android.os.SystemClock.elapsedRealtime() : System.currentTimeMillis();
        long base = chrono == null ? 0L : (monotonic ? chrono.chronoElapsedBase : chrono.chronoBase);
        long delay = chrono != null
                ? Math.floorMod(base - now, 1000L) + SLACK_MS
                : (1000 - (now % 1000)) + SLACK_MS;
        view.postDelayed(tick, delay);
    }

    void cancel() {
        view.removeCallbacks(tick);
        posted = false;
    }

    void onTick() {
        try {
            posted = false;
            if (!needed() || scene.frozenByShade()) return;
            stack.placeBlurs();
            remeasureChronometer();
            view.invalidate();
            schedule();
        } catch (Throwable t) {
            XLog.once("IslandView.onSecondTick", t);
            schedule();
        }
    }

    /** A chronometer in the pill changes width as its digits grow (9:59 to 10:00). */
    private void remeasureChronometer() {
        Layer main = scene.mainIn;
        if (scene.mode != Mode.COMPACT || main == null || !(main.content instanceof CompactContent)) {
            return;
        }
        CompactContent content = (CompactContent) main.content;
        if (content.item.trailing == IslandItem.Trailing.CHRONOMETER && content.remeasure()) {
            scene.springs.width.animateTo(scene.pillWidthFor(content), Motion.PILL_RESIZE);
            view.scheduleFrame();
        }
    }

    private boolean needed() {
        if (scene.mode == Mode.HIDDEN || view.isFullyHidden() || !view.isAttachedToWindow() || !view.isShown() || view.getWindowVisibility() != android.view.View.VISIBLE) {
            return false;
        }
        if (scene.mainIn != null && scene.mainIn.content.item.trailing == IslandItem.Trailing.CHRONOMETER) {
            return true;
        }
        for (Card c : scene.cards) {
            IslandItem item = c.item;
            boolean ticking = item.trailing == IslandItem.Trailing.CHRONOMETER
                    || (item.hasChronometer() && item.chronoPosition != 0)
                    || (item.isMedia && item.playing);
            if (ticking) {
                return true;
            }
        }
        return false;
    }

    private IslandItem firstChronometer() {
        if (scene.mainIn != null && scene.mainIn.content.item.trailing == IslandItem.Trailing.CHRONOMETER) {
            return scene.mainIn.content.item;
        }
        for (Card c : scene.cards) {
            if (c.item.trailing == IslandItem.Trailing.CHRONOMETER) {
                return c.item;
            }
        }
        return null;
    }
}
