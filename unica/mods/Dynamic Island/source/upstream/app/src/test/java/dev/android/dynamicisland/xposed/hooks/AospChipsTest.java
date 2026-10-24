package dev.android.dynamicisland.xposed.hooks;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotSame;
import static org.junit.Assert.assertSame;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

public class AospChipsTest {
    static final class Bundle {
        Object screenRecord = new Inactive();
        Object shareToApp = new Inactive();
        Object castToOtherDevice = new Inactive();
        Object call = new Inactive();
        Object notifs = new java.util.ArrayList<Object>(java.util.Arrays.asList(new Active()));
    }

    static final class Inactive {
    }

    static final class Active {
    }

    private final Object empty = new Inactive();
    private final AospChips.Feed feed = (AospChips.Feed) AospChips.feed();

    @Test
    public void activeChipsGoToTheIslandAndLeaveTheBundleEmpty() {
        AospChips.reset(empty);
        Bundle bundle = new Bundle();
        Active record = new Active();
        bundle.screenRecord = record;
        bundle.call = new Active();

        assertTrue(AospChips.takeOut(bundle, true, true));

        assertSame(empty, bundle.screenRecord);
        assertSame(empty, bundle.call);
        assertSame(record, feed.screenRecord);
    }

    @Test
    public void liveNotificationChipsAreTakenOut() {
        AospChips.reset(empty);
        Bundle bundle = new Bundle();

        AospChips.takeOut(bundle, true, true);

        assertTrue(((java.util.List<?>) bundle.notifs).isEmpty());
    }

    @Test
    public void callChipStaysWhenTheIslandHasNoCallCard() {
        AospChips.reset(empty);
        Bundle bundle = new Bundle();
        Active call = new Active();
        bundle.call = call;

        AospChips.takeOut(bundle, false, true);

        assertSame(call, bundle.call);
    }

    @Test
    public void rankingAgainWithTheEmptiedBundleKeepsTheIslandModels() {
        AospChips.reset(empty);
        Bundle bundle = new Bundle();
        Active cast = new Active();
        bundle.castToOtherDevice = cast;
        AospChips.takeOut(bundle, true, true);

        assertFalse(AospChips.takeOut(bundle, true, true));
        assertSame(cast, feed.castToOtherDevice);
    }

    @Test
    public void stoppedChipIsDroppedFromTheIsland() {
        AospChips.reset(empty);
        Bundle bundle = new Bundle();
        bundle.shareToApp = new Active();
        AospChips.takeOut(bundle, true, true);

        Bundle later = new Bundle();
        assertTrue(AospChips.takeOut(later, true, true));
        assertNotSame(bundle.shareToApp, feed.shareToApp);
        assertSame(null, feed.shareToApp);
    }
}
