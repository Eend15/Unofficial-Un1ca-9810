package dev.android.dynamicisland.island.source;

import android.os.SystemClock;
import dev.android.dynamicisland.island.model.IslandItem;
import java.util.LinkedHashMap;
import java.util.Map;

/** Anchors a reported wall-clock base once, then keeps counting through wall-clock corrections and reposts. */
final class ChronometerClock {
    java.util.function.LongSupplier wallTime = System::currentTimeMillis;
    private record Anchor(long reported, boolean down, long elapsed) { }
    private final Map<String, Anchor> anchors = new LinkedHashMap<>();

    void bind(IslandItem item) {
        if (!item.hasChronometer()) {
            anchors.remove(item.key);
            return;
        }
        if (item.chronoUsesElapsedRealtime) return;
        Anchor previous = anchors.get(item.key);
        if (previous == null || previous.reported != item.chronoBase || previous.down != item.chronoCountDown) {
            previous = new Anchor(item.chronoBase, item.chronoCountDown,
                    SystemClock.elapsedRealtime() + (item.chronoBase - wallTime.getAsLong()));
            if (anchors.size() >= 128) anchors.remove(anchors.keySet().iterator().next());
            anchors.put(item.key, previous);
        }
        item.chronoUsesElapsedRealtime = true;
        item.chronoElapsedBase = previous.elapsed;
    }
}
