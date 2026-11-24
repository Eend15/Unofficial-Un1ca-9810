package dev.android.dynamicisland.island;

import static org.junit.Assert.*;
import dev.android.dynamicisland.island.model.IslandItem;
import java.util.List;
import org.junit.Test;

public class AutoOpenCardsTest {
    @Test public void optInDoesNotOpenTheBacklogOrReopenProgressUpdates() {
        AutoOpenCards policy = new AutoOpenCards();
        IslandItem old = new IslandItem("task:old"), fresh = new IslandItem("task:new");
        assertNull(policy.next(List.of(old), false, 0));
        assertNull(policy.next(List.of(old), true, 1));
        assertSame(fresh, policy.next(List.of(old, fresh), true, 2));
        policy.opened(fresh);
        fresh.progress = 0.5f;
        assertNull(policy.next(List.of(old, fresh), true, 3));
    }

    @Test public void suppressionKeepsHistoryButAnActualRemovalAllowsANewAnnouncement() {
        AutoOpenCards policy=new AutoOpenCards();
        IslandItem first=new IslandItem("task:first");first.sourceKey="notification";
        policy.notifications(java.util.Set.of());assertNull(policy.next(List.of(),true,0));
        policy.notifications(java.util.Set.of(first.sourceKey));
        assertSame(first,policy.next(List.of(first),true,1));policy.opened(first);
        assertNull(policy.next(List.of(),true,2)); // Foreground suppression/minimization only changes the shown list.
        assertNull(policy.next(List.of(first),true,3));
        IslandItem mirrored=new IslandItem("oa:first");mirrored.sourceKey=first.sourceKey;
        assertNull("a different source representing the same notification is not a new posting",policy.next(List.of(mirrored),true,4));
        policy.notifications(java.util.Set.of()); // Actual notification cancellation.
        policy.notifications(java.util.Set.of(first.sourceKey));
        assertSame(first,policy.next(List.of(first),true,5));
        policy.opened(first);
        IslandItem withoutSbn=new IslandItem("oa:unreported");
        assertSame(withoutSbn,policy.next(List.of(withoutSbn),true,6));policy.opened(withoutSbn);
        policy.notifications(java.util.Set.of(first.sourceKey));
        assertNull("a vendor activity missing its SBN is not cancelled by an unrelated snapshot",
                policy.next(List.of(withoutSbn),true,7));
    }

    @Test public void enablingWhileACardIsHiddenDoesNotOpenTheExistingBacklog() {
        AutoOpenCards policy=new AutoOpenCards();IslandItem hidden=new IslandItem("task:hidden");hidden.sourceKey="hidden";
        policy.notifications(java.util.Set.of(hidden.sourceKey));
        assertNull(policy.next(List.of(),true,0));
        assertNull(policy.next(List.of(hidden),true,1));
    }

}
