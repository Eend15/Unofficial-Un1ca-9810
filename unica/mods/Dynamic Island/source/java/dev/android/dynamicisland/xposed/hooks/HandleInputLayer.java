package dev.android.dynamicisland.xposed.hooks;

import android.view.MotionEvent;
import dev.android.dynamicisland.island.IslandController;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;
import java.util.function.Predicate;

/**
 * While an app is in front, One UI keeps an invisible window over the top centre of the status bar for its
 * multitasking handle, and the moment a finger lands in it the window takes that finger away from every other window
 * ({@code pilferPointers}). A touch that lands on the island is left alone by those listeners, so the island keeps
 * receiving the whole gesture.
 */
final class HandleInputLayer {
    private static final String[] LISTENERS = {
            "com.android.wm.shell.windowdecor.viewholder.MultiTaskingHandleViewHolder$createStatusBarInputLayer$2",
            "com.android.wm.shell.windowdecor.viewholder.MultiTaskingHandleViewHolder$createStatusBarInputLayer$4",
            "com.android.wm.shell.windowdecor.viewholder.AppHandleViewHolder$createStatusBarInputLayer$2"};

    /** Down time of the gesture that started on the island, or -1 (main thread only). */
    private static long islandGesture = -1;

    private HandleInputLayer() { }

    static void install(ClassLoader cl) {
        int hooked = 0;
        for (String listener : LISTENERS) {
            if (!Refl.hasClass(listener, cl)) continue;
            hooked += Refl.hookAll(cl, listener, "onTouch", SafeHook.before("handle input layer touch", p -> {
                if (p.args.length == 2 && p.args[1] instanceof MotionEvent
                        && skips((MotionEvent) p.args[1], HandleInputLayer::onIsland)) {
                    p.setResult(Boolean.FALSE);
                }
            }));
        }
        Diagnostics.fact("handle input layer", hooked + " touch listeners");
    }

    /** True for every event of a gesture whose first touch landed on the island. */
    static boolean skips(MotionEvent event, Predicate<MotionEvent> onIsland) {
        if (event.getActionMasked() == MotionEvent.ACTION_DOWN) {
            islandGesture = onIsland.test(event) ? event.getDownTime() : -1;
        }
        return islandGesture == event.getDownTime();
    }

    private static boolean onIsland(MotionEvent event) {
        IslandController island = IslandController.get();
        return island != null && island.isOnIsland(event.getRawX(), event.getRawY());
    }
}
