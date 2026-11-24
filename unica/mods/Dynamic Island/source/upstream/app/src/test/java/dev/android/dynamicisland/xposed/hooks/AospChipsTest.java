package dev.android.dynamicisland.xposed.hooks;

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
    public void screenRecordChipStaysWhenTheIslandShowsNoRecording() {
        Class<?> settings = dev.android.dynamicisland.settings.ModuleSettings.class;
        boolean started = org.robolectric.util.ReflectionHelpers.getStaticField(settings, "started");
        org.robolectric.util.ReflectionHelpers.setStaticField(settings, "started", true);
        org.robolectric.util.ReflectionHelpers.setStaticField(settings, "screenRecordingCard", false);
        try {
            AospChips.reset(empty);
            Bundle bundle = new Bundle();
            Active record = new Active();
            Active share = new Active();
            bundle.screenRecord = record;
            bundle.shareToApp = share;

            AospChips.takeOut(bundle, true, true);

            assertSame("the stock recording chip is left alone", record, bundle.screenRecord);
            assertSame(null, feed.screenRecord);
            assertSame("sharing still goes to the island", empty, bundle.shareToApp);
            assertSame(share, feed.shareToApp);
        } finally {
            org.robolectric.util.ReflectionHelpers.setStaticField(settings, "screenRecordingCard", true);
            org.robolectric.util.ReflectionHelpers.setStaticField(settings, "started", started);
        }
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

}
