package dev.android.dynamicisland.island.source;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import com.android.systemui.statusbar.phone.ongoingactivity.OngoingActivityDataHelper;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class VoiceRecordingTest {
    static final String RECORDER = "com.sec.android.app.voicenote";

    public static final class Activity {
        public String mNotiID = "voice";
        public String mPackageName = RECORDER;
        public int mUserId;
        public boolean mIsMediaOngoingData;
        public Object mNotificationEntry;
        public Object mPendingIntent;
    }

    public static final class RemovedEntry {
        public Object mSbn;
        public boolean isPromotedState() { return false; }
    }

    @Before
    @After
    public void clearStore() {
        OngoingActivityDataHelper.mOngoingActivityLists.clear();
        OngoingActivityDataHelper.hiddenOngoingActivityDataList.clear();
        OngoingActivityDataHelper.onlyShownNowbarItemMap.clear();
        OngoingActivityDataHelper.baseActivityComponentName = null;
    }

    private OaSource source() {
        return new OaSource(RuntimeEnvironment.getApplication(), getClass().getClassLoader());
    }

    @Test
    public void recordingDoesNotSuppressOtherAppsOrProfiles() {
        OngoingActivityDataHelper.mOngoingActivityLists.add(new Activity());
        OaSource source = source();
        assertTrue(source.isVoiceRecording(RECORDER, 0));
        assertFalse(source.isVoiceRecording("com.music", 0));
        assertFalse(source.isVoiceRecording(RECORDER, 10));
        assertFalse(source.isVoiceRecording(RECORDER, -1));
    }

}
