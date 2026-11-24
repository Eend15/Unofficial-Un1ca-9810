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
    private Set<String> notifications = Set.of();

    /** Main thread: only a real removal, not foreground suppression or minimization, ends an announcement. */
    void notifications(Set<String> live) {
        for (String key : notifications) if (!live.contains(key)) {
            seen.remove(key);
            waiting.remove(key);
        }
        notifications = Set.copyOf(live);
    }

    IslandItem next(List<IslandItem> shown, boolean enabled, long now) {
        Set<String> live = new HashSet<>();
        for (IslandItem item : shown) if (eligible(item)) live.add(identity(item));
        if (!enabled || !enabledBefore) {
            seen.clear();
            waiting.clear();
            seen.addAll(live); // Enabling never opens the whole backlog.
            seen.addAll(notifications);
            enabledBefore = enabled;
            return null;
        }
        waiting.entrySet().removeIf(e -> now > e.getValue());
        for (String key : live) if (seen.add(key) && waiting.size() < 32) waiting.put(key, now + 8000);
        for (IslandItem item : shown) if (eligible(item) && waiting.containsKey(identity(item))) return item;
        return null;
    }

    void opened(IslandItem item) { waiting.remove(identity(item)); }

    private static String identity(IslandItem item) {
        return item.sourceKey != null ? item.sourceKey : item.key.substring(item.key.indexOf(':') + 1);
    }

    private static boolean eligible(IslandItem item) {
        return item != null && (item.key.startsWith("task:") || item.key.startsWith("oa:")
                || item.key.startsWith("rec:") || item.key.startsWith("live:") || item.key.startsWith("rule:"));
    }
}
