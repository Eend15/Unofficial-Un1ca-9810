package dev.android.dynamicisland.island.source;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.assertNotEquals;

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

    private RecorderNotificationSource source() {
        return source(new long[]{10000L, 20000L});
    }

    private RecorderNotificationSource source(long[] time) {
        return new RecorderNotificationSource(app, () -> { }, () -> time[0], () -> time[1]);
    }

    private IslandItem card(RecorderNotificationSource source) {
        List<IslandItem> out = new ArrayList<>();
        source.collect(out);
        assertEquals(1, out.size());
        return out.get(0);
    }

    private StatusBarNotification note(String pkg, String channel, boolean ongoing) {
        return note(pkg, channel, ongoing, false);
    }

    private StatusBarNotification note(String pkg, String channel, boolean ongoing, boolean withIntent) {
        return note(pkg, channel, ongoing, withIntent, true, 1, null, 5000L);
    }

    private StatusBarNotification note(String pkg, String channel, boolean ongoing, boolean withIntent,
            boolean usesChronometer, int id, String tag, long postTime) {
        return note(pkg, channel, ongoing, withIntent, usesChronometer, id, tag, postTime, 1000L);
    }

    private StatusBarNotification note(String pkg, String channel, boolean ongoing, boolean withIntent,
            boolean usesChronometer, int id, String tag, long postTime, long when) {
        NotificationManager nm = app.getSystemService(NotificationManager.class);
        nm.createNotificationChannel(new NotificationChannel(channel, channel, NotificationManager.IMPORTANCE_LOW));
        Notification n = new Notification.Builder(app, channel).setSmallIcon(android.R.drawable.ic_media_play)
                .setContentTitle("Screen recording").setContentText("Tap to stop recording").setOngoing(ongoing)
                .setUsesChronometer(usesChronometer).setWhen(when)
                .setContentIntent(withIntent ? android.app.PendingIntent.getBroadcast(app, 1, new android.content.Intent("stop"), android.app.PendingIntent.FLAG_IMMUTABLE) : null).build();
        return new StatusBarNotification(pkg, pkg, id, tag, 1, 1, 0, n, android.os.Process.myUserHandle(), postTime);
    }

    @Test
    public void cardCarriesTheChronometer() {
        RecorderNotificationSource source = source();
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
    public void fallbackTimerResetsAfterRecorderNotificationDisappears() {
        RecorderNotificationSource source = source();
        source.update(Collections.singletonList(note("com.samsung.android.app.smartcapture", "capture", true,
                false, false, 1, null, 5000L)));
        source.update(Collections.emptyList());
        source.update(Collections.singletonList(note("com.samsung.android.app.smartcapture", "capture", true,
                false, false, 1, null, 9000L)));

        List<IslandItem> out = new ArrayList<>();
        source.collect(out);
        assertEquals(9000L, out.get(0).chronoBase);
    }

    @Test
    public void lateSystemChronometerRecoversEarlierStartWithoutMovingItForwardAgain() {
        long[] time={10000,20000};
        RecorderNotificationSource source=source(time);
        source.update(List.of(recording(1332,10000,0,false)));
        assertEquals(20000,card(source).chronoElapsedBase);
        time[0]=11000;time[1]=21000;
        source.update(List.of(recording(1332,11000,5000,true)));
        assertEquals(15000,card(source).chronoElapsedBase);
        time[0]=14000;time[1]=24000;
        source.update(List.of(recording(1332,14000,11000,true)));
        assertEquals(15000,card(source).chronoElapsedBase);
    }

    @Test public void rollingAndSettledNotificationTimesCannotRestartAnActiveRecording() {
        long[] time={1000000,100000};
        RecorderNotificationSource source=source(time);
        source.update(List.of(recording(1332,time[0],time[0],true)));
        String key=card(source).key;
        // A fresh timestamp then left stable for 1.5 seconds used to turn 11.5 seconds into 1.5.
        for(long age:new long[]{10000,11500,13000,16000}){
            time[0]=1000000+age;time[1]=100000+age;
            long notificationTime=age<=11500?1010000:1013000;
            source.update(List.of(recording(1333,time[0],notificationTime,true)));
            IslandItem item=card(source);
            assertEquals(key,item.key);assertEquals(100000,item.chronoElapsedBase);
            assertEquals(age,time[1]-item.chronoElapsedBase);
        }
        time[0]+=60000; // changing the wall clock must not affect the elapsed recording duration
        source.update(List.of(recording(1333,time[0],time[0],true)));
        assertEquals(100000,card(source).chronoElapsedBase);
    }

    @Test public void sameObservedStartSurvivesAGapButAConfirmedNewStartResetsTheTimer() {
        long[] time={1000000,100000};
        java.util.concurrent.atomic.AtomicReference<CastSource.RecorderLifecycle> lifecycle=
                new java.util.concurrent.atomic.AtomicReference<>(new CastSource.RecorderLifecycle("recorder",1,1));
        RecorderNotificationSource source=source(time);source.setLifecycleSession(pkg->lifecycle.get());
        source.update(List.of(recording(1332,time[0],time[0],true)));
        String key=card(source).key;
        time[0]+=10000;time[1]+=10000;
        source.update(Collections.emptyList());
        // A model read gap changes continuity, but not the positively observed recording start.
        lifecycle.set(new CastSource.RecorderLifecycle("recorder",2,1));
        source.update(List.of(recording(1333,time[0],time[0],true)));
        assertEquals(key,card(source).key);assertEquals(100000,card(source).chronoElapsedBase);
        time[0]+=2000;time[1]+=2000;
        lifecycle.set(new CastSource.RecorderLifecycle("recorder",3,2));
        source.update(List.of(recording(1334,time[0],time[0],true)));
        assertNotEquals(key,card(source).key);assertEquals(time[1],card(source).chronoElapsedBase);
    }

    private StatusBarNotification recording(int id, long post, long when, boolean systemClock) {
        return note("com.samsung.android.app.smartcapture", "CHANNEL_ID_RECORDING_SCREEN", true,
                false, systemClock, id, null, post, when);
    }

}
