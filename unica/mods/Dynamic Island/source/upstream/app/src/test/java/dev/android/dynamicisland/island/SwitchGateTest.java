package dev.android.dynamicisland.island;

import static org.junit.Assert.assertEquals;

import dev.android.dynamicisland.island.model.IslandItem;
import java.util.ArrayList;
import java.util.List;
import org.junit.Test;

public class SwitchGateTest {
    private static IslandItem item(String key, String pkg) {
        IslandItem it = new IslandItem(key);
        it.packageName = pkg;
        return it;
    }

    private static SwitchGate.Switches only(boolean charging, boolean privacy, boolean transfers) {
        return new SwitchGate.Switches() {
            public boolean charging() {
                return charging;
            }

            public boolean ringer() {
                return true;
            }

            public boolean bluetooth() {
                return true;
            }

            public boolean toggles() {
                return true;
            }

            public boolean privacy() {
                return privacy;
            }

            public boolean transfers() {
                return transfers;
            }
        };
    }

    private static List<IslandItem> all() {
        List<IslandItem> items = new ArrayList<>();
        items.add(item("event:charging", null));
        items.add(item("event:lowbattery", null));
        items.add(item("event:privacy", null));
        items.add(item("task:x", "com.example"));
        items.add(item("peek:y", "com.samsung.android.lool"));
        items.add(item("media:z", "com.music"));
        return items;
    }

    @Test
    public void switchedOffItemsAreDroppedWhateverMadeThem() {
        List<IslandItem> items = all();
        SwitchGate.apply(items, only(false, false, false));
        assertEquals(1, items.size());
        assertEquals("media:z", items.get(0).key);
    }

    @Test
    public void switchedOnItemsStay() {
        List<IslandItem> items = all();
        SwitchGate.apply(items, only(true, true, true));
        assertEquals(6, items.size());
    }
}
