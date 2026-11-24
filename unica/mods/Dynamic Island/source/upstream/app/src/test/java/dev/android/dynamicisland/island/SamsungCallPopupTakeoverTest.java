package dev.android.dynamicisland.island;

import static org.junit.Assert.*;
import android.app.Application;
import android.app.Notification;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.junit.After;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.Shadows;
import org.robolectric.annotation.Config;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class SamsungCallPopupTakeoverTest {
    private final Application app = RuntimeEnvironment.getApplication();
    private final Handler main = new Handler(Looper.getMainLooper());
    private final List<Integer> requests = new ArrayList<>();
    private final SamsungCallPopupTakeover takeover = new SamsungCallPopupTakeover(main, requests::add);

    @After public void restore() { main.removeCallbacksAndMessages(null); }

    private StatusBarNotification notification(String pkg, int id, int user, long postedAt, int type) {
        Notification n = new Notification.Builder(app, "calls").setSmallIcon(android.R.drawable.stat_sys_phone_call)
                .setContentTitle("Caller").setCategory(Notification.CATEGORY_CALL).setOngoing(true).build();
        n.extras.putInt("android.callType", type);
        UserHandle handle = ReflectionHelpers.callConstructor(UserHandle.class,
                ReflectionHelpers.ClassParameter.from(int.class, user));
        return new StatusBarNotification(pkg, pkg, id, null, Math.max(0, user) * 100_000 + 10001, 1, 0,
                n, handle, postedAt);
    }

    private StatusBarNotification notification(int id, long postedAt) {
        return notification(SamsungCallPopupTakeover.PACKAGE, id, 0, postedAt, 1);
    }

    private void advance(long millis) { Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(millis)); }

    @Test public void aCallNotificationStartsImmediatelyWithoutAnIslandCardAndUsesBoundedRetries() {
        StatusBarNotification sbn = notification(1, 1000);
        takeover.setNotifications(List.of(sbn));advance(0);assertEquals(List.of(0), requests);
        for (int i = 0; i < 500; i++) takeover.setNotifications(List.of(sbn));
        advance(149);assertEquals(1, requests.size());advance(1);assertEquals(2, requests.size());
        advance(850);assertEquals(4, requests.size());
        advance(4000);assertEquals(7, requests.size());
        takeover.setNotifications(List.of(sbn));advance(10_000);
        assertEquals("unchanged snapshots do not restart the retry burst", 7, requests.size());
    }

    @Test public void removalAndRepostingCancelOldRequestsAndStartOnlyTheNewGeneration() {
        StatusBarNotification sbn = notification(1, 1000);
        takeover.setNotifications(List.of(sbn));advance(0);assertEquals(1, requests.size());
        takeover.setNotifications(List.of());advance(2000);assertEquals(1, requests.size());
        takeover.setNotifications(List.of(sbn));
        takeover.setNotifications(List.of(notification(1, 2000)));
        advance(0);assertEquals("the obsolete queued first attempt was cancelled", 2, requests.size());
        takeover.setNotifications(List.of());advance(2000);assertEquals(2, requests.size());
    }

    @Test public void callWaitingAndMultipleCallsShareOneBurstPerUserAndProfilesRemainSeparate() {
        StatusBarNotification ringing = notification(1, 1000);
        StatusBarNotification active = notification(SamsungCallPopupTakeover.PACKAGE, 2, 0, 1000, 2);
        StatusBarNotification profile = notification(SamsungCallPopupTakeover.PACKAGE, 1, 10, 1000, 1);
        takeover.setNotifications(List.of(ringing, active, profile));advance(0);
        assertEquals(2, requests.size());assertTrue(requests.containsAll(List.of(0, 10)));
        takeover.setNotifications(List.of(profile));advance(1000);
        assertEquals("only profile retries remain after personal calls disappear", 1, java.util.Collections.frequency(requests, 0));
        assertEquals(4, java.util.Collections.frequency(requests, 10));
    }

    @Test public void unrelatedNotificationsThirdPartyCallsAndUnknownUsersAreIgnored() {
        StatusBarNotification unrelated = notification(1, 1000);unrelated.getNotification().category = Notification.CATEGORY_MESSAGE;
        StatusBarNotification thirdParty = notification("com.whatsapp", 1, 0, 1000, 1);
        StatusBarNotification allUsers = notification(SamsungCallPopupTakeover.PACKAGE, 1, -1, 1000, 1);
        takeover.setNotifications(Arrays.asList(null, unrelated, thirdParty, allUsers));advance(2000);
        assertTrue(requests.isEmpty());
        unrelated.getNotification().extras.putString(Notification.EXTRA_TEMPLATE, Notification.CallStyle.class.getName());
        takeover.setNotifications(List.of(unrelated));advance(0);assertEquals(List.of(0), requests);
    }

    @Test public void productionCommandIsPackageAndUserScopedEvenInActiveCallAudioMode() {
        app.getSystemService(AudioManager.class).setMode(AudioManager.MODE_IN_CALL);
        StatusBarNotification sbn = notification(SamsungCallPopupTakeover.PACKAGE, 1, 10, 1000, 1);
        SamsungCallPopupTakeover production = new SamsungCallPopupTakeover(app, main);
        production.setNotifications(List.of(sbn));advance(0);
        List<android.content.Intent> sent = Shadows.shadowOf(app).getBroadcastIntentsForUser(UserHandle.getUserHandleForUid(1_000_000));
        assertEquals(1, sent.size());assertEquals(SamsungCallPopupTakeover.HIDE_ACTION, sent.get(0).getAction());
        assertEquals(SamsungCallPopupTakeover.PACKAGE, sent.get(0).getPackage());
        assertEquals(android.content.Intent.FLAG_RECEIVER_FOREGROUND,
                sent.get(0).getFlags() & android.content.Intent.FLAG_RECEIVER_FOREGROUND);
        assertEquals("the notification and its incoming call state are unchanged", 1, sbn.getNotification().extras.getInt("android.callType"));
    }

    @Test public void aRejectedCommandDoesNotEscapeOrRetryForever() {
        SamsungCallPopupTakeover rejected = new SamsungCallPopupTakeover(main,
                ignored -> { requests.add(0);throw new SecurityException("unsupported sender"); });
        StatusBarNotification sbn = notification(1, 1000);
        rejected.setNotifications(List.of(sbn));advance(2000);assertEquals(1, requests.size());
        rejected.setNotifications(List.of(sbn));advance(2000);assertEquals(1, requests.size());
    }
    @Test public void aMiniWindowReceiverCreatedAfterThreeSecondsStillGetsTheHideRequest() {
        long ready=android.os.SystemClock.uptimeMillis()+3000;List<Integer> delivered=new ArrayList<>();
        var delayed=new SamsungCallPopupTakeover(main,user->{if(android.os.SystemClock.uptimeMillis()>=ready) delivered.add(user);});
        delayed.setNotifications(List.of(notification(1,1000)));advance(3000);assertTrue(delivered.isEmpty());
        advance(500);assertEquals(List.of(0),delivered);
        delayed.setNotifications(List.of());advance(10000);assertEquals("ending the call cancels later attempts",1,delivered.size());
    }


    @Test public void samsungsWindowStaysWhileTheIslandCannotTakeTheCallAndGoesWhenItCan() {
        StatusBarNotification sbn = notification(1, 1000);
        takeover.setNotifications(List.of(sbn), n -> false);advance(5000);
        assertTrue("the island cannot show the call: the stock window is left alone", requests.isEmpty());
        takeover.setNotifications(List.of(sbn), n -> true);advance(0);
        assertEquals("it goes once the island takes the call over", List.of(0), requests);
        takeover.setNotifications(List.of(sbn), n -> false);advance(5000);
        assertEquals("and the retries stop when the island lets go of it", 1, requests.size());
    }

    @Test public void aRingingCallNeedsACardAndACallInProgressOnlyAnIsland() {
        Notification ringing = notification(1, 1000).getNotification();
        assertFalse("no card could be built for it", SamsungCallPopupTakeover.replaceable(ringing, false, true));
        assertFalse("the island is hidden", SamsungCallPopupTakeover.replaceable(ringing, true, false));
        assertTrue(SamsungCallPopupTakeover.replaceable(ringing, true, true));
        Notification ongoing = notification(SamsungCallPopupTakeover.PACKAGE, 2, 0, 1000, 2).getNotification();
        assertTrue(SamsungCallPopupTakeover.replaceable(ongoing, false, true));
        assertFalse(SamsungCallPopupTakeover.replaceable(ongoing, false, false));
        Notification untyped = notification(SamsungCallPopupTakeover.PACKAGE, 3, 0, 1000, -1).getNotification();
        assertFalse("an old-style ringing call without a card stays stock", SamsungCallPopupTakeover.replaceable(untyped, false, true));
        untyped.extras.putBoolean(Notification.EXTRA_SHOW_CHRONOMETER, true);
        assertTrue("one that runs a clock is in progress", SamsungCallPopupTakeover.replaceable(untyped, false, true));
    }

    @Test public void whileTheHoldIsOnSamsungsWindowStaysWhateverShapeTheRingingNotificationHas() {
        // Notifications that look like a call in progress (type 2, or an untyped one with a clock) are replaceable on
        // their own; only the state of the phone can tell that the call is in fact still ringing.
        StatusBarNotification typedOngoing = notification(SamsungCallPopupTakeover.PACKAGE, 1, 0, 1000, 2);
        StatusBarNotification untypedClock = notification(SamsungCallPopupTakeover.PACKAGE, 2, 0, 1000, -1);
        untypedClock.getNotification().extras.putBoolean(Notification.EXTRA_SHOW_CHRONOMETER, true);
        boolean[] ringingWithCardOff = {true};
        takeover.holdWhile(() -> ringingWithCardOff[0]);

        takeover.setNotifications(List.of(typedOngoing, untypedClock));
        advance(5000);
        assertTrue("ringing with the card switched off: Samsung's window is not touched", requests.isEmpty());

        // answered: the phone stops ringing, the notification is reposted, the island takes over as before
        ringingWithCardOff[0] = false;
        takeover.setNotifications(List.of(notification(SamsungCallPopupTakeover.PACKAGE, 1, 0, 2000, 2)));
        advance(0);
        assertEquals(List.of(0), requests);

        // a hold that starts while a burst is running drops the rest of that burst
        ringingWithCardOff[0] = true;
        advance(5000);
        assertEquals("retries stop once the hold is on", 1, requests.size());
    }
}
