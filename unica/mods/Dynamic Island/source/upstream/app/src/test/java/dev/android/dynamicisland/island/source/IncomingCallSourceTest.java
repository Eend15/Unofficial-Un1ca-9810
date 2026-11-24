package dev.android.dynamicisland.island.source;

import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.Person;
import android.content.Intent;
import android.media.AudioManager;
import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.graphics.Glyphs;
import dev.android.dynamicisland.island.model.IslandItem;
import java.util.ArrayList;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=35)
public class IncomingCallSourceTest {
    private final android.app.Application app=RuntimeEnvironment.getApplication();
    private PendingIntent intent(String action) { return PendingIntent.getBroadcast(app,0,new Intent(action),PendingIntent.FLAG_IMMUTABLE); }
    private StatusBarNotification notification(String pkg,int id,Notification.Style style) {
        var n=new Notification.Builder(app,"calls").setSmallIcon(android.R.drawable.stat_sys_phone_call)
                .setOngoing(true).setCategory(Notification.CATEGORY_CALL).setStyle(style).build();
        return new StatusBarNotification(pkg,pkg,id,null,10100,1,0,n,android.os.Process.myUserHandle(),System.currentTimeMillis());
    }
    @Test public void samsungIncomingCallsNeedNoOngoingControllerAndCarryRealCallerAndControls() {
        var source=new IncomingCallSource(app);
        var incoming=notification("com.samsung.android.incallui",1,Notification.CallStyle.forIncomingCall(
                new Person.Builder().setName("Alice").build(),intent("audit.decline"),intent("audit.answer")));
        var item=source.build(incoming);assertNotNull(item);assertTrue(item.incomingCall);assertEquals("Alice",item.title);
        assertEquals(incoming.getKey(),item.sourceKey);assertEquals(2,item.actions.size());
        assertEquals(Glyphs.ANSWER,item.actions.get(0).glyph);assertEquals(Glyphs.HANGUP,item.actions.get(1).glyph);
        item.actions.get(0).runnable.run();item.actions.get(1).runnable.run();shadowOf(android.os.Looper.getMainLooper()).idle();
        var sent=shadowOf(app).getBroadcastIntents();assertTrue(sent.stream().anyMatch(i->"audit.answer".equals(i.getAction())));
        assertTrue(sent.stream().anyMatch(i->"audit.decline".equals(i.getAction())));
        source.update(List.of(incoming));var out=new ArrayList<IslandItem>();source.collect(out,"example.other");assertEquals(1,out.size());
        out.clear();source.collect(out,"com.samsung.android.incallui");assertTrue("full phone screen remains usable",out.isEmpty());
        var active=notification("com.samsung.android.incallui",1,Notification.CallStyle.forOngoingCall(new Person.Builder().setName("Alice").build(),intent("audit.end")));
        source.update(List.of(active));assertTrue(source.activeKeys().isEmpty());
    }
    @Test public void standardVoipIncomingIsAcceptedButOngoingScreeningAndUnstructuredOutgoingAreNot() {
        var source=new IncomingCallSource(app);var person=new Person.Builder().setName("Bob").build();
        assertNotNull(source.build(notification("example.voip",1,Notification.CallStyle.forIncomingCall(person,intent("decline"),intent("answer")))));
        assertNull(source.build(notification("example.voip",1,Notification.CallStyle.forOngoingCall(person,intent("end")))));
        assertNull(source.build(notification("example.voip",1,Notification.CallStyle.forScreeningCall(person,intent("hangup"),intent("answer")))));
        var plain=notification("com.samsung.android.incallui",2,null);
        app.getSystemService(AudioManager.class).setMode(AudioManager.MODE_IN_CALL);assertNull(source.build(plain));
        app.getSystemService(AudioManager.class).setMode(AudioManager.MODE_RINGTONE);assertNotNull(source.build(plain));
        plain.getNotification().extras.putBoolean(Notification.EXTRA_SHOW_CHRONOMETER,true);assertNull(source.build(plain));
    }

    @Test public void explicitIncomingActionsDoNotWaitForALatePhoneRingingCallback() {
        var source=new IncomingCallSource(app);
        app.getSystemService(AudioManager.class).setMode(AudioManager.MODE_NORMAL);
        for(String pkg:List.of("com.samsung.android.incallui","example.voip")) {
            var sbn=notification(pkg,3,null);
            sbn.getNotification().actions=new Notification.Action[]{
                    new Notification.Action.Builder(null,"Answer",intent("answer")).build(),
                    new Notification.Action.Builder(null,"Decline",intent("decline")).build()};
            assertNotNull(source.build(sbn));
            sbn.getNotification().extras.putInt("android.callType",2);
            assertNull("explicit ongoing type wins over stale actions",source.build(sbn));
        }
    }

    @Test public void incomingCallCardsOffLeavesEveryRingingCallToTheSystem() {
        dev.android.dynamicisland.settings.ModuleSettings.ensureStarted();
        var source=new IncomingCallSource(app);var person=new Person.Builder().setName("Alice").build();
        var phone=notification("com.samsung.android.incallui",1,Notification.CallStyle.forIncomingCall(person,intent("decline"),intent("answer")));
        var voip=notification("example.voip",2,Notification.CallStyle.forIncomingCall(person,intent("decline"),intent("answer")));
        source.update(List.of(phone,voip));assertEquals(2,source.activeKeys().size());
        org.robolectric.util.ReflectionHelpers.setStaticField(dev.android.dynamicisland.settings.ModuleSettings.class,"incomingCallCards",false);
        try {
            // cards built before the switch was turned off go at once, and no new one is built
            assertTrue(source.activeKeys().isEmpty());
            var out=new ArrayList<IslandItem>();source.collect(out,"example.other");assertTrue(out.isEmpty());
            assertNull(source.build(phone));assertNull(source.build(voip));
            assertFalse("the heads-up decision stays with the system",source.posted(phone));
            assertNull(source.item(phone.getKey()));
        } finally {
            org.robolectric.util.ReflectionHelpers.setStaticField(dev.android.dynamicisland.settings.ModuleSettings.class,"incomingCallCards",true);
        }
        assertNotNull(source.build(phone));
    }
}
