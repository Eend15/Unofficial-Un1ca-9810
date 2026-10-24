package dev.android.dynamicisland.island.source;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import android.app.Application;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.model.IslandItem;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

/** The screen recorder's notification becomes a recording card unless the chip model already gave one. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class RecorderNotificationSourceTest {
    private final Application app = RuntimeEnvironment.getApplication();

    private StatusBarNotification note(String pkg, String channel, boolean ongoing) {
        return note(pkg, channel, ongoing, false);
    }

    private StatusBarNotification note(String pkg, String channel, boolean ongoing, boolean withIntent) {
        NotificationManager nm = app.getSystemService(NotificationManager.class);
        nm.createNotificationChannel(new NotificationChannel(channel, channel, NotificationManager.IMPORTANCE_LOW));
        Notification n = new Notification.Builder(app, channel).setSmallIcon(android.R.drawable.ic_media_play)
                .setContentTitle("Screen recording").setContentText("Tap to stop recording").setOngoing(ongoing).setUsesChronometer(true).setWhen(1000L)
                .setContentIntent(withIntent ? android.app.PendingIntent.getBroadcast(app, 1, new android.content.Intent("stop"), android.app.PendingIntent.FLAG_IMMUTABLE) : null).build();
        return new StatusBarNotification(pkg, pkg, 1, null, 1, 1, 0, n, android.os.Process.myUserHandle(), 5000L);
    }

    @Test
    public void recorderChannelIsRecognised() {
        assertTrue(RecorderNotificationSource.isRecorder(note("com.android.systemui", "screen_record", true)));
        assertTrue(RecorderNotificationSource.isRecorder(note("com.samsung.android.app.smartcapture", "capture", true)));
        assertFalse(RecorderNotificationSource.isRecorder(note("com.example", "downloads", true)));
        assertFalse(RecorderNotificationSource.isRecorder(note("com.android.systemui", "screen_record", false)));
    }

    @Test
    public void cardCarriesTheChronometer() {
        RecorderNotificationSource source = new RecorderNotificationSource(app, () -> { });
        source.update(Collections.singletonList(note("com.android.systemui", "screen_record", true)));
        List<IslandItem> out = new ArrayList<>();
        source.collect(out);
        assertEquals(1, out.size());
        assertEquals(IslandItem.Kind.RECORDING, out.get(0).kind);
        assertEquals(1000L, out.get(0).chronoBase);
        assertTrue(source.isShownOnIsland(out.get(0).sourceKey));
        assertEquals(0, out.get(0).actions.size()); // the test notification has no intent to stop with
    }

    @Test
    public void chipBasedRecordingCardWins() {
        RecorderNotificationSource source = new RecorderNotificationSource(app, () -> { });
        source.update(Collections.singletonList(note("com.android.systemui", "screen_record", true)));
        List<IslandItem> out = new ArrayList<>();
        IslandItem chip = new IslandItem("cast:record");
        chip.kind = IslandItem.Kind.RECORDING;
        out.add(chip);
        source.collect(out);
        assertEquals(1, out.size());
    }

    @Test
    public void tapToStopBecomesAStopButton() {
        RecorderNotificationSource source = new RecorderNotificationSource(app, () -> { });
        source.update(Collections.singletonList(note("com.android.systemui", "screen_record", true, true)));
        List<IslandItem> out = new ArrayList<>();
        source.collect(out);
        IslandItem card = out.get(0);
        assertEquals(1, card.actions.size());
        assertEquals("Stop", card.actions.get(0).title.toString());
        assertEquals("Recording", card.subtitle.toString());
        org.junit.Assert.assertNull(card.contentIntent);
    }
}
