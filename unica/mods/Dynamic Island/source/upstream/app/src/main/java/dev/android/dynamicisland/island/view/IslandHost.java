package dev.android.dynamicisland.island.view;

import android.graphics.RectF;
import android.view.MotionEvent;
import dev.android.dynamicisland.island.feedback.AudioLevels;
import dev.android.dynamicisland.island.model.IslandItem;

/**
 * Callbacks from {@link IslandView} to whoever owns it (the island controller). All methods are
 * called on the main thread.
 */
public interface IslandHost {
    /** The notification popup was closed (by itself, by a swipe or by the reply): nothing of it stays behind. */
    default void onPeekClosed() { }

    /** Inert host: shade renderers and tests create views without a controller and get this instead of null. */
    IslandHost NONE = new IslandHost() {
        @Override
        public AudioLevels audio() {
            return null;
        }

        @Override
        public boolean hasMinimized() {
            return false;
        }

        @Override
        public void onCycle(int direction) { }

        @Override
        public void onExpandedChanged(boolean expanded) { }

        @Override
        public void onIslandFrame() { }

        @Override
        public void onItemAction(IslandItem item, IslandItem.Action action) { }

        @Override
        public void onMinimize(IslandItem item) { }

        @Override
        public void onOpenItem(IslandItem item, RectF from) { }

        @Override
        public void onRestore() { }

        @Override
        public void onShadeDragEvent(MotionEvent event) { }

        @Override
        public void onShadeDragStart(float downX, float downY, long downTime) { }

        @Override
        public boolean onShadeFade(float alpha, float scale, float pivotX, float pivotY) {
            return false;
        }

        @Override
        public void onWindowHeightNeeded(int heightPx) { }
    };

    /** Audio level source that drives the visualiser, or null when none is available. */
    AudioLevels audio();

    /** Whether an item is currently minimized into the camera hole. */
    boolean hasMinimized();

    /** Switches the shown item; {@code direction} is -1 for the previous and +1 for the next one. */
    void onCycle(int direction);

    /** The expanded card stack opened or closed. */
    void onExpandedChanged(boolean expanded);

    /** The island drew a frame; the host may need to refresh touch regions and fades. */
    void onIslandFrame();

    /** An action button of {@code item} was tapped. */
    void onItemAction(IslandItem item, IslandItem.Action action);

    /** The user minimized {@code item} into the camera hole. */
    void onMinimize(IslandItem item);

    /** Open the app behind {@code item}, animating from the screen rectangle {@code from}. */
    void onOpenItem(IslandItem item, RectF from);

    /** The user asked to bring the minimized item back. */
    void onRestore();

    /** Forwards a touch event of an ongoing pull-down gesture to the notification shade. */
    void onShadeDragEvent(MotionEvent event);

    /** A pull-down gesture on the island started at the given screen position. */
    void onShadeDragStart(float downX, float downY, long downTime);

    /** Fades the host window's surface while the shade opens; returns whether it was applied. */
    boolean onShadeFade(float alpha, float scale, float pivotX, float pivotY);

    /** The view needs a window at least {@code heightPx} tall. */
    void onWindowHeightNeeded(int heightPx);
}
