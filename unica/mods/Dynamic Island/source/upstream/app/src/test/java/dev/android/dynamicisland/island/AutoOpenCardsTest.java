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

}
