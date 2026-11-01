package dev.android.dynamicisland.island.source;

import static org.junit.Assert.*;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.model.IslandItem;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class WhatsAppCallClockTest {
    private final Context context = RuntimeEnvironment.getApplication();
    public static class Info {
        public String key, packageName, appName = "WhatsApp";
        public long callStartTime;
        public boolean isOngoing = true;
    }
    public static class Controller {
        public Info callNotificationInfo = new Info();
        public boolean hasOngoingCall() { return true; }
    }
    private StatusBarNotification notification(String pkg, String title, String status, boolean clock, long when, int type) {
        PendingIntent end = PendingIntent.getBroadcast(context, 0, new Intent("hangup"), PendingIntent.FLAG_IMMUTABLE);
        Notification n = new Notification.Builder(context, "call")
                .setSmallIcon(android.R.drawable.stat_sys_phone_call).setCategory(Notification.CATEGORY_CALL)
                .setOngoing(true).setContentTitle(title).setContentText(status).setUsesChronometer(clock).setWhen(when)
                .addAction(new Notification.Action.Builder(null, "End call", end).build()).build();
        n.extras.putInt("android.callType", type);
        try {
            return StatusBarNotification.class.getConstructor(String.class, String.class, int.class, String.class,
                    int.class, int.class, Notification.class, android.os.UserHandle.class, String.class, long.class)
                    .newInstance(pkg, pkg, 1, null, 10100, 1, n, android.os.Process.myUserHandle(), null, when);
        } catch (ReflectiveOperationException error) {
            throw new AssertionError(error);
        }
    }
    private CallCardBuilder builder(WhatsAppCallClock clock) {
        return new CallCardBuilder(context, new IconLoader(context), new OaReader(getClass().getClassLoader()), () -> {}, clock);
    }
    private IslandItem nativeCard(CallCardBuilder builder, Controller controller) {
        List<IslandItem> items = new ArrayList<>();
        builder.collect(controller, items, new ArrayList<>(), new HashSet<>());
        assertEquals(1, items.size());
        return items.get(0);
    }
    private Controller controller(StatusBarNotification n, long start) {
        Controller controller = new Controller();
        controller.callNotificationInfo.key = n.getKey();
        controller.callNotificationInfo.packageName = n.getPackageName();
        controller.callNotificationInfo.callStartTime = start;
        return controller;
    }

    @Test public void bothCallSourcesWaitForConnectionAndDoNotReuseTheDialingTimestamp() {
        for (String pkg : List.of("com.whatsapp", "com.whatsapp.w4b")) {
            WhatsAppCallClock clock = new WhatsAppCallClock();
            CallSource source = new CallSource(context, new Handler(Looper.getMainLooper()), () -> {}, clock);
            CallCardBuilder builder = builder(clock);
            long outgoing = System.currentTimeMillis() - 60_000;
            StatusBarNotification n = notification(pkg, "Contact", "Calling...", false, outgoing, 2);
            Controller controller = controller(n, outgoing);
            // Even a system chip saying isOngoing=true and supplying a timestamp is insufficient.
            assertEquals(IslandItem.Trailing.NONE, nativeCard(builder, controller).trailing);
            source.update(List.of(n)); assertTrue(source.snapshot().isEmpty());
            assertEquals(IslandItem.Trailing.NONE, nativeCard(builder, controller).trailing);
            n = notification(pkg, "Contact", "Ringing…", true, outgoing, 2);
            source.update(List.of(n)); assertTrue(source.snapshot().isEmpty());
            assertEquals(IslandItem.Trailing.NONE, nativeCard(builder, controller).trailing);
            n = notification(pkg, "Contact", "Ongoing voice call", true, outgoing, 2);
            long before = System.currentTimeMillis();
            source.update(List.of(n));
            long after = System.currentTimeMillis();
            long connected = nativeCard(builder, controller).chronoBase;
            assertTrue("uses the observed connection instead of the minute-old outgoing timestamp", connected >= before && connected <= after);
            assertEquals(connected, source.snapshot().get(0).chronoBase);
            assertEquals(IslandItem.Trailing.CHRONOMETER, nativeCard(builder, controller).trailing);
            source.update(List.of(n));
            assertEquals("clock does not restart on every notification update", connected, nativeCard(builder, controller).chronoBase);
            n = notification(pkg, "Contact", "Ongoing voice call", false, outgoing, 2);
            source.update(List.of(n)); assertEquals(connected, nativeCard(builder, controller).chronoBase);
            // A reused notification key must not carry the previous call's connected state.
            n = notification(pkg, "Contact", "Calling...", false, outgoing, 2);
            source.update(List.of(n)); assertEquals(0, clock.start(n.getKey()));
            source.update(List.of()); assertEquals(IslandItem.Trailing.NONE, nativeCard(builder, controller).trailing);
            // Samsung/dialer timestamps remain governed by the existing system chip path.
            controller.callNotificationInfo.packageName = "com.samsung.android.incallui";
            assertEquals(outgoing, nativeCard(builder, controller).chronoBase);
        }
    }

    @Test public void explicitAppClockIsHonoredButCategoryHangupAndContactNamesAreNotConnectionEvidence() {
        WhatsAppCallClock clock = new WhatsAppCallClock();
        CallSource source = new CallSource(context, new Handler(Looper.getMainLooper()), () -> {}, clock);
        long now = System.currentTimeMillis();
        StatusBarNotification n = notification("com.whatsapp", "12:34", "Ongoing call", false, now - 60_000, 2);
        Controller controller = controller(n, now - 60_000);
        CallCardBuilder builder = builder(clock);
        source.update(List.of(n));
        assertEquals(IslandItem.Trailing.NONE, nativeCard(builder, controller).trailing);
        assertEquals("fallback also rejects a contact name mistaken for a clock", IslandItem.Trailing.NONE, source.snapshot().get(0).trailing);
        n = notification("com.whatsapp", "Contact", "00:05", false, now - 60_000, 2);
        long before = System.currentTimeMillis();
        source.update(List.of(n));
        long after = System.currentTimeMillis();
        long connected = nativeCard(builder, controller).chronoBase;
        assertTrue(connected >= before - 5000 && connected <= after - 5000);
        assertEquals(connected, source.snapshot().get(0).chronoBase);
        // A translated incoming/screening call is excluded by structured metadata.
        for (int type : new int[]{1, 3}) {
            n = notification("com.whatsapp", "Contact", "00:05", true, now - 60_000, type);
            source.update(List.of(n)); assertEquals(0, clock.start(n.getKey()));
        }
        source.update(List.of());
        long actualStart = now - 10_000;
        n = notification("com.whatsapp", "Contact", "Ongoing call", true, actualStart, 2);
        source.update(List.of(n)); assertEquals("already-connected calls keep the app's valid clock", actualStart, nativeCard(builder, controller).chronoBase);
    }
}
