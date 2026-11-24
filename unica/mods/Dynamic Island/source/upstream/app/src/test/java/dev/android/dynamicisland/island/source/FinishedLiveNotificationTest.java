package dev.android.dynamicisland.island.source;

import static org.junit.Assert.*;

import com.android.systemui.statusbar.phone.ongoingactivity.OngoingActivityDataHelper;
import dev.android.dynamicisland.island.model.IslandItem;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

/** A live notification that ended must not leave a blank card over its row in the shade. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class FinishedLiveNotificationTest {
    public static final class Activity {
        public String mNotiID = "0|com.example.app|7|null|10100";
        public String mPackageName = "com.example.app";
        public String mAppName = "Example";
        public String mPrimaryInfo;
        public String mSecondaryInfo;
        public Object mNotificationEntry;
    }

    public static final class DemotedEntry {
        public Object mSbn;
        public boolean isPromotedState() { return false; }
    }

    @Before @After public void clearStore() {
        OngoingActivityDataHelper.mOngoingActivityLists.clear();
        OngoingActivityDataHelper.hiddenOngoingActivityDataList.clear();
        OngoingActivityDataHelper.onlyShownNowbarItemMap.clear();
    }

    private OaSource source() { return new OaSource(RuntimeEnvironment.getApplication(), getClass().getClassLoader()); }

    @Test public void anActivitySystemUiNoLongerPromotesGetsNoCardSoItsOwnRowShows() {
        Activity ended = new Activity();
        ended.mPrimaryInfo = "Order delivered";
        ended.mNotificationEntry = new DemotedEntry();
        OngoingActivityDataHelper.hiddenOngoingActivityDataList.add(ended);
        assertNull(source().itemForKey(ended.mNotiID));
    }

    @Test public void anActivityWithNothingLeftToShowGetsNoBlankCard() {
        Activity empty = new Activity();
        OngoingActivityDataHelper.hiddenOngoingActivityDataList.add(empty);
        assertNull(source().itemForKey(empty.mNotiID));
    }

    @Test public void aLiveActivityWithTextStillGetsItsCard() {
        Activity running = new Activity();
        running.mPrimaryInfo = "Order on its way";
        running.mSecondaryInfo = "12 min";
        OngoingActivityDataHelper.mOngoingActivityLists.add(running);
        IslandItem card = source().itemForKey(running.mNotiID);
        assertNotNull(card);
        assertEquals("Order on its way", String.valueOf(card.title));
    }

    @Test public void theBlankTestIsTheSameForACardBuiltByHand() {
        IslandItem it = new IslandItem("oa:k");
        assertTrue(OaSource.hasNothingToShow(it));
        it.subtitle = "  ";
        assertTrue(OaSource.hasNothingToShow(it));
        it.subtitle = "text";
        assertFalse(OaSource.hasNothingToShow(it));
        IslandItem bar = new IslandItem("oa:b");
        bar.progress = 0.5f;
        assertFalse(OaSource.hasNothingToShow(bar));
    }
}
