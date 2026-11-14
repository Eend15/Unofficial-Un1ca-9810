package dev.android.dynamicisland.xposed.hooks;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import android.view.MotionEvent;
import java.util.function.Predicate;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class HandleInputLayerTest {
    private static MotionEvent event(int action, long down, long at, float x, float y) {
        return MotionEvent.obtain(down, at, action, x, y, 0);
    }

    @Test
    public void everyEventOfAGestureThatStartedOnTheIslandIsSkipped() {
        Predicate<MotionEvent> onIsland = e -> e.getRawX() < 100;
        assertTrue(HandleInputLayer.skips(event(MotionEvent.ACTION_DOWN, 1000, 1000, 50, 20), onIsland));
        assertTrue(HandleInputLayer.skips(event(MotionEvent.ACTION_MOVE, 1000, 1016, 400, 300), onIsland));
        assertTrue(HandleInputLayer.skips(event(MotionEvent.ACTION_UP, 1000, 1032, 400, 300), onIsland));
    }

    @Test
    public void aGestureThatStartedElsewhereIsNeverSkipped() {
        Predicate<MotionEvent> onIsland = e -> e.getRawX() < 100;
        assertFalse(HandleInputLayer.skips(event(MotionEvent.ACTION_DOWN, 2000, 2000, 500, 20), onIsland));
        assertFalse(HandleInputLayer.skips(event(MotionEvent.ACTION_MOVE, 2000, 2016, 50, 20), onIsland));
        assertFalse(HandleInputLayer.skips(event(MotionEvent.ACTION_UP, 2000, 2032, 50, 20), onIsland));
    }

    @Test
    public void theNextGestureIsJudgedOnItsOwn() {
        Predicate<MotionEvent> onIsland = e -> e.getRawX() < 100;
        assertTrue(HandleInputLayer.skips(event(MotionEvent.ACTION_DOWN, 3000, 3000, 50, 20), onIsland));
        assertFalse(HandleInputLayer.skips(event(MotionEvent.ACTION_DOWN, 4000, 4000, 500, 20), onIsland));
        assertFalse(HandleInputLayer.skips(event(MotionEvent.ACTION_MOVE, 4000, 4016, 500, 60), onIsland));
        assertTrue(HandleInputLayer.skips(event(MotionEvent.ACTION_DOWN, 5000, 5000, 60, 20), onIsland));
    }
}
