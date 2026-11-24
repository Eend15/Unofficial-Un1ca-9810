package dev.android.dynamicisland.island;

import static org.junit.Assert.*;

import android.app.Notification;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.feedback.AudioLevels;
import dev.android.dynamicisland.island.source.PeekSource;
import dev.android.dynamicisland.island.view.IslandHost;
import dev.android.dynamicisland.island.window.IslandWindow;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.hooks.HeadsUpHooks;
import java.util.List;
import org.junit.After;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35, qualifiers = "w360dp-h800dp-mdpi")
public class NotificationRepeatTest {
    private final Context app = RuntimeEnvironment.getApplication();

    @After public void reset() {
        ReflectionHelpers.setStaticField(ModuleSettings.class, "allNotifications", false);
        ReflectionHelpers.setStaticField(HeadsUpHooks.class, "manager", null);
    }

    private StatusBarNotification note(int id, Notification.Builder builder, long postTime) {
        return new StatusBarNotification(app.getPackageName(), app.getPackageName(), id, null, 10100, 1, 0,
                builder.build(), android.os.Process.myUserHandle(), postTime);
    }

    private Notification.Builder chat(String text) {
        return new Notification.Builder(app, "messages").setSmallIcon(android.R.drawable.stat_notify_chat)
                .setContentTitle("Sender").setContentText(text);
    }

    private HeadsUpTakeover takeover(IslandSources[] out) {
        Handler main = new Handler(Looper.getMainLooper());
        IslandSources sources = new IslandSources(app, getClass().getClassLoader(), main, () -> { });
        IslandPlacement placement = new IslandPlacement(app, main, getClass().getClassLoader(), IslandHost.NONE,
                new IslandWindow.Listener() {
                    @Override public void onWindowConfigurationChanged() { }
                    @Override public void onWindowInsetsChanged() { }
                }, new AudioLevels());
        placement.ensureWindow(true);
        out[0] = sources;
        return new HeadsUpTakeover(sources, placement, () -> placement.view().setItems(
                sources.peeks.showing() == null ? List.of() : List.of(sources.peeks.showing())));
    }

    @Test public void anEmptyPlaceholderNotificationIsNotAnIslandCard() {
        // System UI's own "INSIGNIFICANT" placeholder: no title, no text, no views
        Notification placeholder = new Notification.Builder(app, "INSIGNIFICANT")
                .setSmallIcon(android.R.drawable.stat_notify_chat).setGroup("INSIGNIFICANT").build();
        assertFalse(PeekSource.eligible(new StatusBarNotification(app.getPackageName(), app.getPackageName(), 123,
                "INSIGNIFICANT", 10100, 1, 0, placeholder, android.os.Process.myUserHandle(), 1L)));
        assertTrue(PeekSource.eligible(note(1, chat("hello"), 1L)));
        assertTrue("a notification with only a title is still a message",
                PeekSource.eligible(note(2, new Notification.Builder(app, "messages")
                        .setSmallIcon(android.R.drawable.stat_notify_chat).setContentTitle("Ring"), 1L)));
    }

    @Test public void aRepostOfTheSameMessageGetsNoSecondCard() {
        IslandSources[] sources = new IslandSources[1];
        HeadsUpTakeover takeover = takeover(sources);
        long sent = System.currentTimeMillis();
        StatusBarNotification first = note(5, chat("on my way").setStyle(new Notification.MessagingStyle("Me")
                .addMessage("on my way", sent, "Sender")), sent);
        takeover.setSnapshot(List.of(first));
        assertTrue(takeover.take(first));
        assertNotNull(sources[0].peeks.showing());
        sources[0].peeks.dismiss(sources[0].peeks.showing());

        // A new notification post time with the same actual message timestamp is a refresh of that message.
        StatusBarNotification again = note(5, chat("on my way").setStyle(new Notification.MessagingStyle("Me")
                .addMessage("on my way", sent, "Sender")), sent + 4000);
        takeover.setSnapshot(List.of(again));
        assertTrue("the banner stays away", takeover.take(again));
        assertNull("but no second card", sources[0].peeks.showing());
    }

    @Test public void aNewTextUnderTheSameKeyStillGetsItsCard() {
        IslandSources[] sources = new IslandSources[1];
        HeadsUpTakeover takeover = takeover(sources);
        StatusBarNotification first = note(6, chat("on my way"), System.currentTimeMillis());
        takeover.setSnapshot(List.of(first));
        assertTrue(takeover.take(first));
        sources[0].peeks.dismiss(sources[0].peeks.showing());

        StatusBarNotification next = note(6, chat("I am here"), System.currentTimeMillis() + 4000);
        takeover.setSnapshot(List.of(next));
        assertTrue(takeover.take(next));
        assertNotNull(sources[0].peeks.showing());
    }

    @Test public void theSameWordsSentAgainInAConversationStillGetACard() {
        IslandSources[] sources = new IslandSources[1];
        HeadsUpTakeover takeover = takeover(sources);
        long now = System.currentTimeMillis();
        StatusBarNotification first = note(7, chat("ok").setStyle(new Notification.MessagingStyle("Me")
                .addMessage("ok", now, "Sender")), now);
        takeover.setSnapshot(List.of(first));
        assertTrue(takeover.take(first));
        sources[0].peeks.dismiss(sources[0].peeks.showing());

        // The app retains only the newest message: same words and message count, but a new message timestamp.
        StatusBarNotification second = note(7, chat("ok").setStyle(new Notification.MessagingStyle("Me")
                .addMessage("ok", now + 5000, "Sender")), now + 5000);
        takeover.setSnapshot(List.of(second));
        assertTrue(takeover.take(second));
        assertNotNull("a new message with the same words is still news", sources[0].peeks.showing());
    }

    private boolean scannedCardFor(Notification.Builder builder, long postTime, HeadsUpTakeover takeover, IslandSources[] sources) {
        StatusBarNotification sbn = note(9, builder, postTime);
        takeover.setSnapshot(List.of(sbn));
        takeover.scanAll(List.of(sbn));
        boolean shown = sources[0].peeks.showing() != null;
        if (shown) sources[0].peeks.dismiss(sources[0].peeks.showing());
        return shown;
    }

    @Test public void aNumberChangedInAnAlertOnceNotificationIsNotAnotherCard() {
        ReflectionHelpers.setStaticField(ModuleSettings.class, "allNotifications", true);
        IslandSources[] sources = new IslandSources[1];
        HeadsUpTakeover takeover = takeover(sources);
        long now = System.currentTimeMillis();
        assertTrue("the first posting gets its card",
                scannedCardFor(chat("Battery power 11%").setOnlyAlertOnce(true), now, takeover, sources));
        assertFalse("the level dropping is not announced again",
                scannedCardFor(chat("Battery power 10%").setOnlyAlertOnce(true), now + 2000, takeover, sources));
    }

    @Test public void anUpdateThatDoesNotAskToAlertOnlyOnceStillGetsItsCard() {
        ReflectionHelpers.setStaticField(ModuleSettings.class, "allNotifications", true);
        IslandSources[] sources = new IslandSources[1];
        HeadsUpTakeover takeover = takeover(sources);
        long now = System.currentTimeMillis();
        assertTrue(scannedCardFor(chat("Parcel on its way"), now, takeover, sources));
        assertTrue("an ordinary update is news", scannedCardFor(chat("Parcel delivered"), now + 2000, takeover, sources));
    }

    @Test public void aSilentNotificationGetsNoCardAndOneThatMakesASoundDoes() {
        ReflectionHelpers.setStaticField(ModuleSettings.class, "allNotifications", true);
        long now = System.currentTimeMillis();
        for (int[] c : new int[][] {{android.app.NotificationManager.IMPORTANCE_LOW, 0}, {android.app.NotificationManager.IMPORTANCE_DEFAULT, 1}}) {
            IslandSources[] sources = new IslandSources[1];
            HeadsUpTakeover takeover = takeover(sources);
            StatusBarNotification sbn = note(40 + c[0], chat("Hello " + c[0]), now);
            takeover.setImportance(java.util.Map.of(sbn.getKey(), c[0]));
            takeover.setSnapshot(List.of(sbn));
            takeover.scanAll(List.of(sbn));
            assertEquals("importance " + c[0], c[1] == 1, sources[0].peeks.showing() != null);
        }
    }

    @Test public void theIslandClaimsWhatItWillTakeFromTheStockBannerAndNothingElse() {
        ReflectionHelpers.setStaticField(ModuleSettings.class, "allNotifications", true);
        IslandSources[] sources = new IslandSources[1];
        HeadsUpTakeover takeover = takeover(sources);
        long now = System.currentTimeMillis();
        StatusBarNotification message = note(61, chat("Hello"), now);
        assertTrue("an ordinary message is the island's", takeover.claims(message));
        StatusBarNotification ongoing = note(62, chat("Syncing").setOngoing(true), now);
        assertFalse("an ongoing one stays with the system", takeover.claims(ongoing));
        assertEquals("claiming shows nothing", null, sources[0].peeks.showing());
    }

    @Test public void aNotificationDoNotDisturbBlocksGetsNoCard() {
        ReflectionHelpers.setStaticField(ModuleSettings.class, "allNotifications", true);
        long now = System.currentTimeMillis();
        for (boolean blocked : new boolean[] {true, false}) {
            IslandSources[] sources = new IslandSources[1];
            HeadsUpTakeover takeover = takeover(sources);
            StatusBarNotification sbn = note(blocked ? 71 : 72, chat("Hello " + blocked), now);
            takeover.setBlocked(blocked ? java.util.Set.of(sbn.getKey()) : java.util.Set.of());
            takeover.setSnapshot(List.of(sbn));
            takeover.scanAll(List.of(sbn));
            assertEquals("blocked " + blocked, !blocked, sources[0].peeks.showing() != null);
        }
    }

    @Test public void theIslandClaimsABannerOnlyForANotificationTheSystemWouldPopUp() {
        long now = System.currentTimeMillis();
        IslandSources[] sources = new IslandSources[1];
        HeadsUpTakeover takeover = takeover(sources);
        StatusBarNotification message = note(81, chat("Hello"), now);
        assertTrue("rated high: the system makes a banner and the island takes it",
                takeover.claims(message, android.app.NotificationManager.IMPORTANCE_HIGH));
        assertFalse("rated default: the system makes no banner, so there is nothing to take over",
                takeover.claims(message, android.app.NotificationManager.IMPORTANCE_DEFAULT));
        assertTrue("not known: as before", takeover.claims(message, null));
        ReflectionHelpers.setStaticField(ModuleSettings.class, "allNotifications", true);
        assertTrue("All notifications shows the quieter ones as well",
                takeover.claims(message, android.app.NotificationManager.IMPORTANCE_DEFAULT));
    }
}
