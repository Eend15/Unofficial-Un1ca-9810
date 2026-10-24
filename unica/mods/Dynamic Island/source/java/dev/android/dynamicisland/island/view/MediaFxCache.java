package dev.android.dynamicisland.island.view;

import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.media.MediaFx;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/** One {@link MediaFx} (album art flip, accent colour, glow) per media item, kept while the item lives. */
final class MediaFxCache {
    private final IslandView view;
    private final Map<String, MediaFx> byKey = new HashMap<>();

    MediaFxCache(IslandView view) {
        this.view = view;
    }

    /** The effect state of {@code item}, created on first use and synced to the item's current data. */
    MediaFx obtain(IslandItem item) {
        MediaFx fx = byKey.get(item.key);
        if (fx == null) {
            fx = new MediaFx(view);
            byKey.put(item.key, fx);
        }
        fx.sync(item, IslandView.now());
        return fx;
    }

    /** The existing state without creating or syncing it; null when none. */
    MediaFx peek(IslandItem item) {
        return byKey.get(item.key);
    }

    /** Drops the state of every item that is neither in {@code shown} nor in {@code minimized}. */
    void retainFor(List<IslandItem> shown, List<IslandItem> minimized) {
        if (byKey.isEmpty()) {
            return;
        }
        Set<String> live = new HashSet<>();
        for (IslandItem item : shown) {
            live.add(item.key);
        }
        for (IslandItem item : minimized) {
            live.add(item.key);
        }
        byKey.keySet().retainAll(live);
    }

    /** True while the effect of {@code item} (a media item) still moves, e.g. a running art flip. */
    boolean animating(IslandItem item) {
        MediaFx fx = byKey.get(item.key);
        return fx != null && fx.animating(IslandView.now());
    }
}
