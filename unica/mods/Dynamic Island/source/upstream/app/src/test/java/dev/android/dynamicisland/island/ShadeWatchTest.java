package dev.android.dynamicisland.island;

import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;

import android.os.Handler;
import android.os.Looper;
import java.time.Duration;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class ShadeWatchTest {
    private static final class Island implements ShadeWatch.Target {
        float shade = 0.9f;
        int asked;
        @Override public boolean needsWatching() { return shade > 0.001f; }
        @Override public void shade(float fraction) { asked++; shade = fraction; }
    }

    @Test public void aShadeThatSystemUiSaysIsClosedIsClosedForTheIslandToo() {
        Island island = new Island();
        float[] actual = {0f};
        ShadeWatch watch = new ShadeWatch(new Handler(Looper.getMainLooper()), () -> island, () -> actual[0]);
        watch.poke();
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(ShadeWatch.PERIOD_MS + 100));
        assertEquals("the closing report that never came is replaced by what System UI says", 0f, island.shade, 0f);
        assertEquals(1, island.asked);
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(10));
        assertEquals("closed: nothing is asked any more", 1, island.asked);
    }

    @Test public void anOpenShadeStaysOpenAndIsKeptUnderWatch() {
        Island island = new Island();
        ShadeWatch watch = new ShadeWatch(new Handler(Looper.getMainLooper()), () -> island, () -> 0.9f);
        watch.poke();
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(ShadeWatch.PERIOD_MS * 3 + 100));
        assertEquals(0.9f, island.shade, 0f);
        assertEquals("asked every period while the shade is open", 3, island.asked);
    }

    @Test public void withoutAnAnswerFromSystemUiNothingChanges() {
        Island island = new Island();
        ShadeWatch watch = new ShadeWatch(new Handler(Looper.getMainLooper()), () -> island, () -> null);
        watch.poke();
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(ShadeWatch.PERIOD_MS * 2 + 100));
        assertEquals(0.9f, island.shade, 0f);
        assertEquals(0, island.asked);
    }
}
