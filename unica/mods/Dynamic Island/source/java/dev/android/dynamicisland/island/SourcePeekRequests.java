package dev.android.dynamicisland.island;

import dev.android.dynamicisland.island.model.IslandItem;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/** Future source-requested announcements. The controller's internal feature gate is off by default. */
final class SourcePeekRequests {
    private final Map<String, Long> opened = new HashMap<>();
    private boolean enabledBefore;

    IslandItem next(List<IslandItem> sorted, boolean enabled, long now) {
        Set<String> live = new HashSet<>();
        for (IslandItem item : sorted) if (eligible(item)) live.add(item.key);
        opened.keySet().retainAll(live);
        if (!enabled || !enabledBefore) {
            opened.clear();
            for (IslandItem item : sorted) if (eligible(item) && opened.size() < 32) opened.put(item.key, item.postTime);
            enabledBefore = enabled;
            return null; // Enabling never opens the backlog.
        }
        int highestPriority = Integer.MIN_VALUE;
        for (IslandItem item : sorted) if (item != null && item.kind != null) highestPriority = Math.max(highestPriority, item.kind.priority);
        for (IslandItem item : sorted) {
            if (!eligible(item)
                    || item.kind.priority < highestPriority
                    || item.expiresAtUptime > 0 && item.expiresAtUptime <= now) continue;
            Long previous = opened.get(item.key);
            if (previous == null && opened.size() >= 32) continue;
            if (previous == null || previous.longValue() != item.postTime) return item;
        }
        return null;
    }

    private boolean eligible(IslandItem item) {
        return item != null && item.key != null && item.kind == IslandItem.Kind.EVENT && item.peekMillis > 0;
    }

    long duration(IslandItem item, long now) {
        long duration = Math.min(30_000, item.peekMillis);
        return item.expiresAtUptime > 0 ? Math.max(0, Math.min(duration, item.expiresAtUptime - now)) : duration;
    }

    void opened(IslandItem item) {
        if (opened.size() < 32 || opened.containsKey(item.key)) opened.put(item.key, item.postTime);
    }
}
