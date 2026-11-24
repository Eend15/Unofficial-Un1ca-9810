package dev.android.dynamicisland.island.source;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import android.content.Context;
import dev.android.dynamicisland.island.graphics.Glyphs;
import dev.android.dynamicisland.island.model.IslandItem;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class CallCardBuilderTest {
    private static final String INCALLUI = "com.samsung.android.incallui";

    /** System UI's call info, as far as the builder reads it. */
    public static class Info {
        public String key = "0|" + INCALLUI + "|1|null|1000";
        public String packageName = INCALLUI;
        public boolean isOngoing = true;
        public Long callStartTime = 0L;
        public String appName = "Phone";
    }

    /** System UI's call controller: the info and whether the chip is shown. */
    public static class Controller {
        public Info callNotificationInfo = new Info();
        public boolean chipShown;

        public boolean hasOngoingCall() {
            return chipShown;
        }
    }

    private final Context ctx = RuntimeEnvironment.getApplication();
    private final Controller controller = new Controller();
    private final CallCardBuilder builder = new CallCardBuilder(ctx, new IconLoader(ctx), new OaReader(getClass().getClassLoader()),
            () -> { }, new WhatsAppCallClock());
    private final List<IslandItem> out = new ArrayList<>();
    private final Set<String> hidden = new HashSet<>();

    private void collect(String foreground, boolean confirmed) {
        out.clear();
        hidden.clear();
        builder.collect(controller, out, new HashSet<>(), hidden, foreground, confirmed);
    }

    @Test
    public void incomingCallCardsOffSkipsTheRingingCallAndKeepsTheAnsweredOne() {
        dev.android.dynamicisland.settings.ModuleSettings.ensureStarted();
        org.robolectric.util.ReflectionHelpers.setStaticField(dev.android.dynamicisland.settings.ModuleSettings.class, "incomingCallCards", false);
        try {
            controller.chipShown = true;
            builder.setPhoneRinging(() -> true);
            collect(null, false);
            assertTrue("a ringing call is left to the system's call screen", out.isEmpty());

            builder.setPhoneRinging(() -> false);
            collect(null, false);
            assertEquals("the answered call still gets its card", 1, out.size());
            assertFalse(out.get(0).incomingCall);
        } finally {
            org.robolectric.util.ReflectionHelpers.setStaticField(dev.android.dynamicisland.settings.ModuleSettings.class, "incomingCallCards", true);
        }
    }

    @Test
    public void aRingingCallOffersAnswerAndDeclineAndNoSpeaker() {
        controller.chipShown = true;
        builder.setPhoneRinging(() -> true);
        collect(null, false);

        assertEquals(1, out.size());
        IslandItem card = out.get(0);
        assertTrue("legacy ringing calls also need a persistent banner", card.incomingCall);
        assertTrue(card.transientPopup);
        assertEquals(controller.callNotificationInfo.key, card.sourceKey);
        assertEquals(IslandItem.Trailing.TEXT, card.trailing);
        assertEquals("Incoming call", String.valueOf(card.trailingText));
        assertEquals(2, card.actions.size());
        IslandItem.Action answer = card.actions.get(0);
        IslandItem.Action decline = card.actions.get(1);
        assertEquals("Answer", String.valueOf(answer.title));
        assertTrue(answer.affirmative);
        assertEquals(Glyphs.ANSWER, answer.glyph);
        assertEquals("Decline", String.valueOf(decline.title));
        assertTrue(decline.destructive);
        assertEquals(Glyphs.HANGUP, decline.glyph);
        for (IslandItem.Action action : card.actions) {
            assertFalse("no speaker before the call is answered", "Speaker".contentEquals(action.title));
        }
    }

    @Test
    public void anAnsweredCallKeepsSpeakerAndEndAndItsClock() {
        controller.chipShown = true;
        controller.callNotificationInfo.callStartTime = System.currentTimeMillis() - 5_000;
        builder.setPhoneRinging(() -> false);
        collect(null, false);

        IslandItem card = out.get(0);
        assertEquals(IslandItem.Trailing.CHRONOMETER, card.trailing);
        assertEquals(2, card.actions.size());
        assertEquals("Speaker", String.valueOf(card.actions.get(0).title));
        assertEquals("End call", String.valueOf(card.actions.get(1).title));
    }

    @Test
    public void aCallThatHasAStartTimeIsNotRingingWhateverThePhoneSays() {
        controller.chipShown = true;
        controller.callNotificationInfo.callStartTime = System.currentTimeMillis() - 5_000;
        builder.setPhoneRinging(() -> true);
        collect(null, false);
        assertEquals("End call", String.valueOf(out.get(0).actions.get(1).title));
    }

    @Test
    public void theCardAppearsAsSoonAsTheCallScreenIsGone() {
        controller.chipShown = false; // System UI still thinks the call app is visible
        builder.setPhoneRinging(() -> false);

        collect("com.sec.android.app.launcher", true);
        assertEquals("the launcher is on screen: no waiting for System UI", 1, out.size());
        assertTrue(hidden.isEmpty());

        collect(INCALLUI, true);
        assertTrue("the call screen is still up", out.isEmpty());
        assertEquals(Set.of("call:" + controller.callNotificationInfo.key), hidden);

        collect("com.samsung.android.dialer", true);
        assertTrue("the phone app's other package is still the call screen", out.isEmpty());

        collect("com.sec.android.app.launcher", false);
        assertTrue("an unconfirmed package is not enough", out.isEmpty());
        assertFalse(hidden.isEmpty());

        collect(null, true);
        assertTrue(out.isEmpty());
    }

    @Test
    public void theChipThatSystemUiShowsStaysShown() {
        controller.chipShown = true;
        collect(INCALLUI, true);
        assertEquals(1, out.size());
    }

    @Test
    public void callAppMatchingKnowsThePhoneAppPackages() {
        assertTrue(CallCardBuilder.isCallApp(INCALLUI, INCALLUI));
        assertTrue(CallCardBuilder.isCallApp(INCALLUI, "com.google.android.dialer"));
        assertTrue(CallCardBuilder.isCallApp(null, "anything"));
        assertFalse(CallCardBuilder.isCallApp(INCALLUI, "com.whatsapp"));
        assertFalse(CallCardBuilder.isCallApp("com.whatsapp", INCALLUI));
        assertNull(null);
    }
    public static class Actions { public List<android.app.Notification.Action> mActions; }
    private android.app.Notification.Action action(String name,String intent) {
        return new android.app.Notification.Action.Builder(null,name,
                android.app.PendingIntent.getBroadcast(ctx,0,new android.content.Intent(intent),android.app.PendingIntent.FLAG_IMMUTABLE)).build();
    }
    private IslandItem actionCard(String pkg,boolean ringing,android.app.Notification.Action... actions) throws Exception {
        Actions bar=new Actions();bar.mActions=List.of(actions);var item=new IslandItem("call:actions");
        var bind=CallCardBuilder.class.getDeclaredMethod("addButtons",IslandItem.class,Object.class,String.class,boolean.class);
        bind.setAccessible(true);bind.invoke(builder,item,bar,pkg,ringing);return item;
    }
    @Test public void hangupIsChosenByMeaningInsteadOfTheFirstActionPosition() throws Exception {
        var card=actionCard("example.voip",false,action("Mute","audit.mute"),action("End call","audit.end"));
        assertEquals(1,card.actions.size());card.actions.get(0).runnable.run();
        org.robolectric.Shadows.shadowOf(android.os.Looper.getMainLooper()).idle();
        var sent=org.robolectric.Shadows.shadowOf((android.app.Application)ctx).getBroadcastIntents();
        assertTrue(sent.stream().anyMatch(intent->"audit.end".equals(intent.getAction())));
        assertFalse(sent.stream().anyMatch(intent->"audit.mute".equals(intent.getAction())));
    }
    @Test public void otherDialersUseTheirProvidedSpeakerAction() throws Exception {
        var card=actionCard("com.google.android.dialer",false,action("Speaker","audit.google.speaker"),action("End call","audit.google.end"));
        card.actions.get(0).runnable.run();org.robolectric.Shadows.shadowOf(android.os.Looper.getMainLooper()).idle();
        var sent=org.robolectric.Shadows.shadowOf((android.app.Application)ctx).getBroadcastIntents();
        assertTrue(sent.stream().anyMatch(intent->"audit.google.speaker".equals(intent.getAction())));
        assertFalse(sent.stream().anyMatch(intent->"com.samsung.rcs.intent.action.SPEAKER_TOGGLE".equals(intent.getAction())));
    }
    @Test public void ringingAnswerAndDeclineDoNotDependOnActionOrderEither() throws Exception {
        var card=actionCard("example.voip",true,action("Mute","audit.ring.mute"),action("Answer","audit.ring.answer"),action("Decline","audit.ring.decline"));
        assertEquals(2,card.actions.size());card.actions.get(0).runnable.run();card.actions.get(1).runnable.run();
        org.robolectric.Shadows.shadowOf(android.os.Looper.getMainLooper()).idle();
        var sent=org.robolectric.Shadows.shadowOf((android.app.Application)ctx).getBroadcastIntents();
        assertTrue(sent.stream().anyMatch(intent->"audit.ring.answer".equals(intent.getAction())));
        assertTrue(sent.stream().anyMatch(intent->"audit.ring.decline".equals(intent.getAction())));
        assertFalse(sent.stream().anyMatch(intent->"audit.ring.mute".equals(intent.getAction())));
    }

}
