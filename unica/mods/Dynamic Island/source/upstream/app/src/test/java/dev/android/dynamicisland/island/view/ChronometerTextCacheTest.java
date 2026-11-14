package dev.android.dynamicisland.island.view;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertSame;

import dev.android.dynamicisland.island.model.IslandItem;
import org.junit.Test;

public class ChronometerTextCacheTest {
    private static IslandItem running(boolean countDown, long offsetMs) {
        IslandItem item = new IslandItem("t");
        item.trailing = IslandItem.Trailing.CHRONOMETER;
        item.chronoCountDown = countDown;
        item.chronoBase = System.currentTimeMillis() + (countDown ? offsetMs : -offsetMs);
        return item;
    }

    @Test
    public void theTextIsTheSameAsWithoutTheCacheAndReusedWithinASecond() {
        IslandItem item = running(false, 65_300);
        String first = TimeFormat.chronometer(item);
        assertEquals("1:05", first);
        assertSame("the same second reuses the text", first, TimeFormat.chronometer(item));
        item.chronoBase -= 1000;
        assertEquals("a later second is made afresh", "1:06", TimeFormat.chronometer(item));
        IslandItem down = running(true, 90_900);
        assertEquals("1:30", TimeFormat.chronometer(down));
        down.chronoBase = System.currentTimeMillis() - 5_000;
        assertEquals("a finished countdown reads zero", "0:00", TimeFormat.chronometer(down));
    }

    @Test
    public void aStopwatchWithHundredthsIsNeverCached() {
        IslandItem item = running(false, 1_230);
        item.chronoMillis = true;
        String first = TimeFormat.chronometer(item);
        item.chronoBase -= 10;
        org.junit.Assert.assertNotEquals(first, TimeFormat.chronometer(item));
    }
}
