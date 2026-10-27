package dev.android.dynamicisland.island;

import dev.android.dynamicisland.island.model.IslandItem;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/** New ongoing notification cards may open once; updates never restart the popup or clear its history. */
final class AutoOpenCards {
    private final Set<String> seen = new HashSet<>();
    private final Map<String, Long> waiting = new LinkedHashMap<>();
    private boolean enabledBefore;

    IslandItem next(List<IslandItem> shown, boolean enabled, long now) {
        Set<String> live = new HashSet<>();
        for (IslandItem item : shown) if (eligible(item)) live.add(item.key);
        if (!enabled || !enabledBefore) {
            seen.clear();
            waiting.clear();
            seen.addAll(live); // Enabling never opens the whole backlog.
            enabledBefore = enabled;
            return null;
        }
        seen.retainAll(live);
        waiting.entrySet().removeIf(e -> !live.contains(e.getKey()) || now > e.getValue());
        for (String key : live) if (seen.add(key) && waiting.size() < 32) waiting.put(key, now + 8000);
        for (IslandItem item : shown) if (waiting.containsKey(item.key)) return item;
        return null;
    }

    void opened(IslandItem item) { waiting.remove(item.key); }

    private static boolean eligible(IslandItem item) {
        return item != null && (item.key.startsWith("task:") || item.key.startsWith("oa:")
                || item.key.startsWith("rec:") || item.key.startsWith("live:") || item.key.startsWith("rule:"));
    }
}
