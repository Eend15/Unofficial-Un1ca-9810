package dev.android.dynamicisland.island;

import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import java.time.Duration;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35, qualifiers = "mdpi")
public class ShadeDragRelayTest {
    private final Context context = RuntimeEnvironment.getApplication();
    private final int[] opened = {0};
    private float[] shade = {0f};

    /** A status bar that takes every touch, like the real one, without ever opening the shade by itself. */
    private ShadeDragRelay relay() {
        View bar = new View(context) {
            @Override public boolean dispatchTouchEvent(MotionEvent event) { return true; }
        };
        return new ShadeDragRelay(context, () -> bar, () -> shade[0], () -> opened[0]++, new Handler(Looper.getMainLooper()));
    }

    private void pull(ShadeDragRelay relay, float distance) {
        long down = SystemClock.uptimeMillis();
        relay.start(200, 10, down);
        relay.move(MotionEvent.obtain(down, down, MotionEvent.ACTION_MOVE, 200, 10 + distance / 2, 0));
        relay.move(MotionEvent.obtain(down, down + 100, MotionEvent.ACTION_UP, 200, 10 + distance, 0));
    }

    private void settle() {
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(ShadeDragRelay.SETTLE_MS + 50));
    }

    @Test public void aLongPullThatLeavesTheShadeClosedOpensItDirectly() {
        pull(relay(), 140);
        settle();
        assertEquals(1, opened[0]);
    }

    @Test public void aPullThatTheStatusBarTurnedIntoAnOpeningShadeIsLeftAlone() {
        ShadeDragRelay relay = relay();
        shade[0] = 0.4f;
        pull(relay, 140);
        settle();
        assertEquals(0, opened[0]);
    }

    @Test public void aShortPullIsNotForcedOpenAndNeitherIsOneWhenTheShadeCannotBeRead() {
        pull(relay(), 30);
        settle();
        assertEquals("a short pull was a nudge, not a request", 0, opened[0]);
        ShadeDragRelay unreadable = new ShadeDragRelay(context, () -> new View(context) {
            @Override public boolean dispatchTouchEvent(MotionEvent event) { return true; }
        }, () -> null, () -> opened[0]++, new Handler(Looper.getMainLooper()));
        pull(unreadable, 140);
        settle();
        assertEquals("nothing is forced when the shade position is unknown", 0, opened[0]);
    }

    @Test public void aNewPullBeforeTheWaitIsOverCancelsTheCheck() {
        ShadeDragRelay relay = relay();
        pull(relay, 140);
        relay.start(200, 10, SystemClock.uptimeMillis());
        settle();
        assertEquals(0, opened[0]);
    }
}
