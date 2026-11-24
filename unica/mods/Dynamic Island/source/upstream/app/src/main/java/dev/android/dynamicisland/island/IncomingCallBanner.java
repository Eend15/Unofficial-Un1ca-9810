package dev.android.dynamicisland.island;

import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/** Announce each ringing call once, keep it open until it ends, and respect explicit dismissal. */
final class IncomingCallBanner {
    private final Set<String> announced = new HashSet<>();
    private IslandItem current;

    IslandItem owner(String notificationKey, IslandView view) {
        return current != null && notificationKey.equals(current.sourceKey) && view != null
                && !view.isSuppressedNow() && view.isShowingCard(current) ? current : null;
    }

    void beforeUpdate(IslandView view, Set<String> ringing, List<IslandItem> shown) {
        announced.retainAll(ringing);
        if (current == null) return;
        boolean visible = view.isShowingCard(current);
        if (!ringing.contains(current.key)) {
            if (visible) view.collapse();
            current = null;
        } else if (visible && !shown.isEmpty() && shown.get(0).priority() > current.priority()) {
            announced.remove(current.key); // Charging may interrupt; resume the ringing card after it leaves.
            current = null;
        }
    }

    boolean show(IslandView view, List<IslandItem> shown) {
        for (IslandItem item : shown) {
            if (!item.incomingCall || announced.contains(item.key)) continue;
            if (!shown.isEmpty() && shown.get(0).priority() > item.priority()) return false;
            if (view.peek(item, 1_000)) {
                announced.add(item.key); current = item;
                dev.android.dynamicisland.xposed.Diagnostics.fact("incoming call banner", "caller and answer/decline shown while ringing");
                return true;
            }
        }
        return false;
    }
}
