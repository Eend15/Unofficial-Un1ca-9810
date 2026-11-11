package dev.android.dynamicisland.island;

import dev.android.dynamicisland.island.model.IslandItem;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Function;

/**
 * Settles which of several islands made from the same notification stays, so the island never shows one
 * thing twice. The order of preference:
 * <ol>
 *   <li>A heads-up card ({@code peek:}) that is open right now wins over the rule or progress card of the same
 *       notification, which comes back once the heads-up folds.</li>
 *   <li>A rule card ({@code rule:}) wins over the progress card ({@code task:}) of the same notification and over
 *       a LiveBridge live copy ({@code oa:}) that stands for it.</li>
 * </ol>
 * Items One UI itself promotes keep their place: the rule source already leaves those alone.
 */
final class ItemDedupe {
    private static final String PEEK = "peek:";
    private static final String TASK = "task:";
    private static final String OA = "oa:";

    private ItemDedupe() {
    }

    /**
     * Removes the items that are shadowed by another one.
     *
     * @param copyKeysOf keys of the LiveBridge copies that stand for the notification with the given key
     */
    static void apply(List<IslandItem> items, Function<String, Set<String>> copyKeysOf) {
        Set<String> peeking = new HashSet<>();
        for (IslandItem it : items) {
            if (it.key.startsWith(PEEK)) {
                peeking.add(it.key.substring(PEEK.length()));
            }
        }
        Iterator<IslandItem> iterator = items.iterator();
        while (iterator.hasNext()) {
            IslandItem it = iterator.next();
            if (it.sourceKey != null && peeking.contains(it.sourceKey) && !it.key.startsWith(PEEK)) {
                iterator.remove();
            }
        }
        Set<String> ruled = new HashSet<>();
        for (IslandItem it : items) {
            if (it.sourceKey != null && it.key.startsWith("rule:")) {
                ruled.add(it.sourceKey);
            }
        }
        if (ruled.isEmpty()) {
            return;
        }
        Set<String> shadowed = new HashSet<>();
        for (String original : ruled) {
            shadowed.add(TASK + original);
            for (String copy : copyKeysOf.apply(original)) {
                shadowed.add(OA + copy);
            }
        }
        items.removeIf(it -> shadowed.contains(it.key));
    }
}
