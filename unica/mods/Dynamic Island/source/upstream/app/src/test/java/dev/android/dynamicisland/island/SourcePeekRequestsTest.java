package dev.android.dynamicisland.island;

import static org.junit.Assert.*;
import dev.android.dynamicisland.island.model.IslandItem;
import java.util.List;
import org.junit.Test;

public class SourcePeekRequestsTest {
    @Test public void requestsRespectOrderLifetimeAndEachAnnouncementIdentity() {
        SourcePeekRequests requests = new SourcePeekRequests();
        assertNull(requests.next(List.of(), true, 0));
        IslandItem first = item("first", 1), second = item("second", 1);
        List<IslandItem> visible = List.of(first, second);
        assertSame(first, requests.next(visible, true, 100));
        assertEquals(900, requests.duration(first, 100));
        requests.opened(first);
        assertSame(second, requests.next(visible, true, 100));
        requests.opened(second); assertNull(requests.next(visible, true, 100));
        first.postTime = 2; assertSame(first, requests.next(visible, true, 100));
        IslandItem call = item("call", 1); call.kind = IslandItem.Kind.CALL;
        assertNull(requests.next(List.of(call, first), true, 100));
        assertNull(requests.next(visible, false, 100));
        assertNull(requests.next(visible, true, 100));
        assertNull(requests.next(visible, true, 1000));
    }
    private IslandItem item(String key, long event) {
        IslandItem item = new IslandItem(key); item.postTime = event;
        item.kind = IslandItem.Kind.EVENT;
        item.peekMillis = 4000; item.expiresAtUptime = 1000; return item;
    }
}
