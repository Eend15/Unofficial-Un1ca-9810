package dev.android.dynamicisland.island;

import android.os.SystemClock;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Remembers what happened to items between refreshes and turns a freshly gathered list into the
 * one the view gets: fly-in deferral after the foreground app leaves, boosting, minimizing into the
 * bubble, ordering and manual cycling.
 */
final class ItemLedger {
    /** An item that comes back after being hidden by the foreground app waits this long before flying in. */
    private static final long FLY_IN_DELAY_MS = 260;

    /** Outcome of {@link #arrange}. */
    static final class Arrangement {
        /** Items for the island, in display order. */
        final List<IslandItem> shown;
        /** Minimized items, oldest first. */
        final List<IslandItem> bubbled;
        final int hint;
        /** An item left its deferral while others were already on screen. */
        final boolean flyIn;
        /** Uptime of the earliest deferral still running, or {@link Long#MAX_VALUE}. */
        final long nextDeferredAt;

        Arrangement(List<IslandItem> shown, List<IslandItem> bubbled, int hint, boolean flyIn, long nextDeferredAt) {
            this.shown = shown;
            this.bubbled = bubbled;
            this.hint = hint;
            this.flyIn = flyIn;
            this.nextDeferredAt = nextDeferredAt;
        }
    }

    private Set<String> hiddenLastTime = new HashSet<>();
    private Set<String> shownKeys = new HashSet<>();
    private List<String> shownOrder = new ArrayList<>();
    /** Key to uptime until which the item stays out of the list. */
    private final Map<String, Long> deferredUntil = new HashMap<>();
    /** Key to uptime at which the item was promoted to the front; the newest boost sorts first. */
    private final Map<String, Long> boostedAt = new HashMap<>();
    /** Keys of items swiped into the small bubble, oldest first. */
    private final List<String> bubble = new ArrayList<>();
    /** Item the user cycled to; null = automatic order. */
    private String pinnedKey;
    /** Order of the items when cycling started. */
    private final List<String> ring = new ArrayList<>();
    /** Animation hint for the next list update. */
    private int pendingHint = IslandView.HINT_NONE;

    Arrangement arrange(List<IslandItem> items, Set<String> hiddenByForeground, long now) {
        Set<String> present = new HashSet<>(hiddenByForeground);
        for (IslandItem item : items) {
            present.add(item.key);
        }
        deferredUntil.keySet().retainAll(present);
        boostedAt.keySet().retainAll(present);
        bubble.retainAll(present);

        long nextDeferred = Long.MAX_VALUE;
        boolean flyIn = false;
        Map<String, IslandItem> bubbled = new HashMap<>();
        List<IslandItem> kept = new ArrayList<>(items.size());
        for (IslandItem item : items) {
            if (hiddenLastTime.contains(item.key) && !shownKeys.contains(item.key)) {
                // the foreground app just went away: let the item fly in again after a short delay
                deferredUntil.put(item.key, now + FLY_IN_DELAY_MS);
                boostedAt.put(item.key, now);
                bubble.remove(item.key);
                pinnedKey = null;
            }
            Long until = deferredUntil.get(item.key);
            if (until != null) {
                if (until > now) {
                    nextDeferred = Math.min(nextDeferred, until);
                    continue;
                }
                deferredUntil.remove(item.key);
                flyIn = true;
            }
            if (bubble.contains(item.key)) {
                bubbled.put(item.key, item);
                continue;
            }
            kept.add(item);
        }
        hiddenLastTime = hiddenByForeground;
        kept.sort(this::byBoostThenRank);
        List<IslandItem> shown = rotateToPinned(kept);

        boolean wasVisible = !shownKeys.isEmpty();
        shownKeys = new HashSet<>();
        shownOrder = new ArrayList<>(shown.size());
        for (IslandItem item : shown) {
            shownKeys.add(item.key);
            shownOrder.add(item.key);
        }
        List<IslandItem> bubbledInOrder = new ArrayList<>();
        for (String key : bubble) {
            IslandItem hidden = bubbled.get(key);
            if (hidden != null) {
                bubbledInOrder.add(hidden);
            }
        }
        int hint = pendingHint;
        pendingHint = IslandView.HINT_NONE;
        return new Arrangement(shown, bubbledInOrder, hint, flyIn && wasVisible, nextDeferred);
    }

    /** Boosted items first (newest boost first), then by priority, then newest post time. */
    private int byBoostThenRank(IslandItem a, IslandItem b) {
        Long boostA = boostedAt.get(a.key);
        Long boostB = boostedAt.get(b.key);
        if (boostA != null || boostB != null) {
            if (boostA == null) {
                return 1;
            }
            if (boostB == null) {
                return -1;
            }
            if (!boostA.equals(boostB)) {
                return Long.compare(boostB, boostA);
            }
        }
        if (a.priority() != b.priority()) {
            return Integer.compare(b.priority(), a.priority());
        }
        return Long.compare(b.postTime, a.postTime);
    }

    /**
     * While the user cycles by hand the list is the ring rotated so the pinned item leads. Cycling
     * ends when an item shows up that is not in the ring or the pinned item is gone.
     */
    private List<IslandItem> rotateToPinned(List<IslandItem> sorted) {
        if (pinnedKey == null) {
            return sorted;
        }
        Map<String, IslandItem> byKey = new HashMap<>();
        for (IslandItem item : sorted) {
            byKey.put(item.key, item);
        }
        if (!ring.containsAll(byKey.keySet()) || !byKey.containsKey(pinnedKey)) {
            pinnedKey = null;
            ring.clear();
            return sorted;
        }
        ring.retainAll(byKey.keySet());
        int start = ring.indexOf(pinnedKey);
        List<IslandItem> rotated = new ArrayList<>(ring.size());
        for (int n = 0; n < ring.size(); n++) {
            rotated.add(byKey.get(ring.get((start + n) % ring.size())));
        }
        return rotated;
    }

    /** @return false when there is nothing to cycle through */
    boolean cycle(int direction) {
        if (shownOrder.size() < 2) {
            return false;
        }
        if (pinnedKey == null) {
            ring.clear();
            ring.addAll(shownOrder);
        }
        int current = ring.indexOf(shownOrder.get(0));
        pinnedKey = ring.get(Math.floorMod(current + direction, ring.size()));
        pendingHint = direction > 0 ? IslandView.HINT_TO_LEFT : IslandView.HINT_FROM_LEFT;
        return true;
    }

    /** @return false when the item is unknown or already in the bubble */
    boolean minimize(IslandItem item) {
        if (item == null || bubble.contains(item.key)) {
            return false;
        }
        bubble.add(item.key);
        boostedAt.remove(item.key);
        pendingHint = IslandView.HINT_TO_LEFT;
        return true;
    }

    /** Brings the most recently minimized item back to the front. */
    boolean restore() {
        if (bubble.isEmpty()) {
            return false;
        }
        boostedAt.put(bubble.remove(bubble.size() - 1), SystemClock.uptimeMillis());
        pendingHint = IslandView.HINT_FROM_LEFT;
        return true;
    }

    boolean hasMinimized() {
        return !bubble.isEmpty();
    }
}
