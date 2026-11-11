package dev.android.dynamicisland.xposed;

import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;

import android.os.Looper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class GuardedHandlerTest {
    @Test public void aFailingTaskIsContainedAndTheNextOneStillRuns() {
        GuardedHandler handler = new GuardedHandler(Looper.getMainLooper());
        final boolean[] ran = {false};
        handler.post(() -> { throw new IllegalStateException("boom in a posted task"); });
        handler.post(() -> ran[0] = true);
        shadowOf(Looper.getMainLooper()).idle();
        assertTrue("the looper went on after the failure", ran[0]);
    }

    @Test public void aFailingDelayedTaskIsContainedToo() {
        GuardedHandler handler = new GuardedHandler(Looper.getMainLooper());
        handler.postDelayed(() -> { throw new NullPointerException("boom later"); }, 1_000);
        shadowOf(Looper.getMainLooper()).idleFor(java.time.Duration.ofSeconds(2));
        assertTrue(Diagnostics.report().contains("handler task"));
    }
}
