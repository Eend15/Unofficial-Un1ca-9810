package dev.android.dynamicisland.island.source;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.util.ArrayList;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.util.ReflectionHelpers;

/** The screen-recording option removes the recording card and nothing else of the chip model. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class CastSourceTest {
    public static final class Bundle {
        public Object screenRecord = new Chip.Inactive();
        public Object shareToApp = new Chip.Inactive();
        public Object castToOtherDevice = new Chip.Inactive();
    }

    public static final class Chip {
        public static final class Inactive {
        }

        public static final class Active {
            public String managingPackageName;

            Active(String managingPackageName) {
                this.managingPackageName = managingPackageName;
            }
        }
    }

    private List<String> keys(Bundle bundle) {
        CastSource source = new CastSource(RuntimeEnvironment.getApplication());
        source.onBundle(bundle);
        List<IslandItem> out = new ArrayList<>();
        source.collect(out);
        List<String> keys = new ArrayList<>();
        for (IslandItem item : out) keys.add(item.key);
        return keys;
    }

    @Test
    public void screenRecordingOffRemovesOnlyTheRecordingCard() {
        ModuleSettings.ensureStarted();
        Bundle recording = new Bundle();
        recording.screenRecord = new Chip.Active("com.android.systemui");
        recording.castToOtherDevice = new Chip.Active("example.cast");
        Bundle samsungRecorder = new Bundle();
        samsungRecorder.shareToApp = new Chip.Active("com.samsung.android.app.smartcapture");
        Bundle sharing = new Bundle();
        sharing.shareToApp = new Chip.Active("example.meeting");

        assertEquals(List.of("cast:record", "cast:device"), keys(recording));
        assertEquals(List.of("cast:share"), keys(samsungRecorder));
        ReflectionHelpers.setStaticField(ModuleSettings.class, "screenRecordingCard", false);
        try {
            assertEquals(List.of("cast:device"), keys(recording));
            assertTrue("Samsung's recorder reports itself as a share", keys(samsungRecorder).isEmpty());
            assertEquals("sharing the screen with an app is not a recording", List.of("cast:share"), keys(sharing));
        } finally {
            ReflectionHelpers.setStaticField(ModuleSettings.class, "screenRecordingCard", true);
        }
    }
}
