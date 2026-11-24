package dev.android.dynamicisland.island;

import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.Person;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.time.Duration;
import java.util.List;
import org.junit.Test;
import org.junit.Before;
import org.junit.After;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=35,qualifiers="w360dp-h800dp-mdpi")
public class IncomingCallControllerTest {
    private final Context app=RuntimeEnvironment.getApplication();
    private boolean previousHeadsUp, previousAutoOpen, previousIMotion;
    @Before public void rememberSettings() {
        previousHeadsUp=ReflectionHelpers.getStaticField(ModuleSettings.class,"headsUpIsland");
        previousAutoOpen=ReflectionHelpers.getStaticField(ModuleSettings.class,"autoOpenCards");
        previousIMotion=ReflectionHelpers.getStaticField(ModuleSettings.class,"iMode");
    }
    @After public void restoreSettings() {
        ReflectionHelpers.setStaticField(ModuleSettings.class,"headsUpIsland",previousHeadsUp);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"autoOpenCards",previousAutoOpen);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"iMode",previousIMotion);
    }
    private IslandController controller(boolean imotion) {
        var prefs=ModuleSettings.openStore(app);prefs.edit().clear().putBoolean(ModuleSettings.KEY_I_MODE,imotion).commit();ModuleSettings.configurePreview(prefs);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"autoOpenCards",false);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"headsUpIsland",false);
        var controller=ReflectionHelpers.callConstructor(IslandController.class,ReflectionHelpers.ClassParameter.from(Context.class,app),
                ReflectionHelpers.ClassParameter.from(ClassLoader.class,getClass().getClassLoader()));
        IslandPlacement placement=ReflectionHelpers.getField(controller,"placement");placement.ensureWindow(true);
        shadowOf(Looper.getMainLooper()).idle();
        return controller;
    }
    private StatusBarNotification call(boolean ringing) {
        var person=new Person.Builder().setName("Alice").build();
        var answer=PendingIntent.getBroadcast(app,0,new Intent("audit.answer.call"),PendingIntent.FLAG_IMMUTABLE);
        var decline=PendingIntent.getBroadcast(app,0,new Intent("audit.decline.call"),PendingIntent.FLAG_IMMUTABLE);
        Notification.Style style=ringing ? Notification.CallStyle.forIncomingCall(person,decline,answer) : Notification.CallStyle.forOngoingCall(person,decline);
        var n=new Notification.Builder(app,"calls").setSmallIcon(android.R.drawable.stat_sys_phone_call)
                .setCategory(Notification.CATEGORY_CALL).setOngoing(true).setStyle(style).build();
        return new StatusBarNotification("com.samsung.android.incallui","com.samsung.android.incallui",1,null,1001,1,0,n,android.os.Process.myUserHandle(),System.currentTimeMillis());
    }
    private IslandView view(IslandController controller) { IslandPlacement placement=ReflectionHelpers.getField(controller,"placement");return placement.view(); }
    @Test public void aSnapshotAloneAutoShowsTheCallerWithAutoOpenDisabledThenClosesOnAnswer() {
        for(boolean imotion:new boolean[]{false,true}) {
            var controller=controller(imotion);var call=call(true);
            controller.onNotificationsSnapshot(List.of(call));shadowOf(Looper.getMainLooper()).idle();
            assertTrue("a native incoming call refreshes the island without an ongoing chip; iMotion="+imotion+"; "+dev.android.dynamicisland.xposed.Diagnostics.report(),view(controller).isExpanded());
            assertTrue(controller.ownsHeadsUp(call.getKey()));
            Object owner=controller.headsUpOwner(call.getKey());assertNotNull(owner);
            assertEquals("Alice",((dev.android.dynamicisland.island.model.IslandItem)owner).title);
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(8));assertTrue(view(controller).isExpanded());
            controller.onNotificationsSnapshot(List.of(call(false)));shadowOf(Looper.getMainLooper()).idle();assertFalse(view(controller).isExpanded());
        }
    }
    @Test public void aCallPinDecisionCanShowTheBannerBeforeTheFullSnapshotButHiddenOverlayDoesNotClaimIt() {
        var controller=controller(false);var call=call(true);
        assertTrue(controller.peekHeadsUp(call));assertTrue(controller.ownsHeadsUp(call.getKey()));
        view(controller).setSuppressed(true);assertFalse(controller.peekHeadsUp(call));assertFalse(controller.ownsHeadsUp(call.getKey()));
    }
    private long hideRequests() {
        return shadowOf((android.app.Application) app).getBroadcastIntentsForUser(android.os.UserHandle.getUserHandleForUid(0)).stream()
                .filter(intent->SamsungCallPopupTakeover.HIDE_ACTION.equals(intent.getAction())).count();
    }
    @Test public void withIncomingCallCardsOffSamsungsWindowStaysWhileTheCallRingsEvenIfItsNotificationLooksLikeACallInProgress() {
        var controller=controller(false);var audio=app.getSystemService(android.media.AudioManager.class);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"incomingCallCards",false);
        try {
            // Samsung can post the ringing call as one in progress; the phone itself says that it still rings
            audio.setMode(android.media.AudioManager.MODE_RINGTONE);
            controller.onNotificationsSnapshot(List.of(call(false)));shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6));
            assertEquals("no hide request while the phone rings with the card off",0L,hideRequests());
            // answered: the phone stops ringing and the island takes the call over as before
            audio.setMode(android.media.AudioManager.MODE_IN_CALL);
            controller.onNotificationsSnapshot(List.of(call(false)));shadowOf(Looper.getMainLooper()).idle();
            assertTrue("the hide request goes once the call is answered",hideRequests()>=1L);
        } finally {
            ReflectionHelpers.setStaticField(ModuleSettings.class,"incomingCallCards",true);
            audio.setMode(android.media.AudioManager.MODE_NORMAL);
        }
    }
    @Test public void withIncomingCallCardsOnTheHoldDoesNotApplyWhileTheCallRings() {
        var controller=controller(false);var audio=app.getSystemService(android.media.AudioManager.class);
        try {
            audio.setMode(android.media.AudioManager.MODE_RINGTONE);
            controller.onNotificationsSnapshot(List.of(call(true)));shadowOf(Looper.getMainLooper()).idle();
            assertTrue("the island card replaces Samsung's window as before",hideRequests()>=1L);
        } finally { audio.setMode(android.media.AudioManager.MODE_NORMAL); }
    }
}
