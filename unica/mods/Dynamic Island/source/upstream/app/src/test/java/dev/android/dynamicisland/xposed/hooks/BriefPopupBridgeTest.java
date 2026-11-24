package dev.android.dynamicisland.xposed.hooks;

import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;
import android.os.Handler;
import android.os.Looper;
import android.content.Context;
import android.content.ContextWrapper;
import dev.android.dynamicisland.settings.ModuleSettings;
import de.robv.android.xposed.XC_MethodHook;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.util.ReflectionHelpers;
import java.lang.ref.WeakReference;
import java.time.Duration;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=35)
public class BriefPopupBridgeTest {
    public static class Notifications { public Object mCurrentLightingScheduleInfo=new Object(); }
    final Handler handler=new Handler(Looper.getMainLooper());
    final Notifications notifications=new Notifications();
    int nativeFinish,stockFallback;
    boolean pinned;

    BriefPopupBridge.Pending pending() {
        return new BriefPopupBridge.Pending(handler,notifications,notifications.mCurrentLightingScheduleInfo,
                ()->pinned,()->nativeFinish++,()->stockFallback++);
    }

    @Test public void waitsForNativeBindingWithoutEverDrawingBothPopups() {
        var pending=pending();pending.start();shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(96));
        assertEquals(0,nativeFinish);assertEquals(0,stockFallback);
        pinned=true;shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(700));
        assertEquals(1,nativeFinish);assertEquals(0,stockFallback);
    }
    @Test public void failedOrUnsupportedNativeInflationReplaysTheStockPopupOnce() {
        var pending=pending();pending.start();shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(2));
        assertEquals(0,nativeFinish);assertEquals(1,stockFallback);
    }
    @Test public void removedOrReplacedNotificationsCannotResurfaceFromALateHandoff() {
        var pending=pending();pending.start();shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(48));
        notifications.mCurrentLightingScheduleInfo=new Object();
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(2));
        assertEquals(0,nativeFinish);assertEquals(0,stockFallback);assertTrue(pending.cancelled);
    }
    @Test public void serviceDestructionCancelsThePendingWork() {
        var pending=pending();pending.start();pending.cancel();
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(2));
        assertEquals(0,nativeFinish);assertEquals(0,stockFallback);
    }

    public static final class Info {
        public String mPackageName="org.telegram.messenger";
        public String getNotificationKey(){return "message";}
        public int getUserId(){return (android.os.Process.myUid() / 100_000);}
        public int getVisibility(){return 1;}
    }
    public static final class Requester {
        public boolean sensitive;
        public boolean isScreenOn(){return true;}
        public boolean isSensitiveStateActive(){return sensitive;}
        public boolean isNeedToSanitized(int user,int visibility,String key){return false;}
        public boolean isSupportAppLock(){return false;}
    }
    public static final class Binder {
        public int requests;
        public boolean pinned;
        public boolean isRowPinned(String key){return pinned;}
        public void turnToHeadsUp(String key){requests++;pinned=true;}
    }
    public static final class Service extends ContextWrapper {
        public final Binder mConditionListener=new Binder();
        Service(Context c){super(c);}
    }
    public static final class NotificationScheduler {
        public Object mCurrentLightingScheduleInfo=new Info();
        public int flushed;
        public void flushNotiNow(){flushed++;mCurrentLightingScheduleInfo=null;}
    }
    public static final class Scheduler {
        public NotificationScheduler mNotificationLightingScheduler=new NotificationScheduler();
        public Requester mRequester=new Requester();
        public Handler mHandler=new Handler(Looper.getMainLooper());
        public static void startEffect(Scheduler scheduler,boolean black){ }
    }
    @Test public void nativeEffectHookConvertsOnlyAnAcceptedUnredactedBriefNotification() throws Exception {
        Context context=RuntimeEnvironment.getApplication();Service service=new Service(context);Scheduler scheduler=new Scheduler();
        var preferences=context.getSharedPreferences("brief-native-handoff",0);
        preferences.edit().clear().putBoolean(ModuleSettings.KEY_SYSTEM_POPUP_STYLE,true).commit();ModuleSettings.configurePreview(preferences);
        ReflectionHelpers.setStaticField(BriefPopupBridge.class,"service",new WeakReference<Context>(service));
        shadowOf(context.getSystemService(android.app.KeyguardManager.class)).setKeyguardLocked(false);
        shadowOf(context.getSystemService(android.os.PowerManager.class)).setIsInteractive(true);
        var hook=BriefPopupBridge.class.getDeclaredMethod("beforeEffect",XC_MethodHook.MethodHookParam.class);hook.setAccessible(true);
        try {
            var param=ReflectionHelpers.callConstructor(XC_MethodHook.MethodHookParam.class);
            param.method=Scheduler.class.getDeclaredMethod("startEffect",Scheduler.class,boolean.class);param.args=new Object[]{scheduler,false};
            scheduler.mRequester.sensitive=true;hook.invoke(null,param);assertEquals(0,service.mConditionListener.requests);
            scheduler.mRequester.sensitive=false;hook.invoke(null,param);
            shadowOf(Looper.getMainLooper()).idle();assertEquals(1,service.mConditionListener.requests);
            assertEquals(1,scheduler.mNotificationLightingScheduler.flushed);
        } finally {
            ReflectionHelpers.setStaticField(BriefPopupBridge.class,"service",new WeakReference<Context>(null));
            preferences.edit().clear().commit();ModuleSettings.configurePreview(preferences);
        }
    }

    @Test public void inIslandModeThePopupIsSkippedOnlyOnceTheIslandHasTheBannerAndNeverTurnedIntoOne() throws Exception {
        Context context=RuntimeEnvironment.getApplication();Service service=new Service(context);Scheduler scheduler=new Scheduler();
        var preferences=context.getSharedPreferences("brief-island-mode",0);
        preferences.edit().clear().putBoolean(ModuleSettings.KEY_HEADS_UP_ISLAND,true).commit();ModuleSettings.configurePreview(preferences);
        ReflectionHelpers.setStaticField(BriefPopupBridge.class,"service",new WeakReference<Context>(service));
        var hook=BriefPopupBridge.class.getDeclaredMethod("beforeEffect",XC_MethodHook.MethodHookParam.class);hook.setAccessible(true);
        try {
            var param=ReflectionHelpers.callConstructor(XC_MethodHook.MethodHookParam.class);
            param.method=Scheduler.class.getDeclaredMethod("startEffect",Scheduler.class,boolean.class);param.args=new Object[]{scheduler,false};
            service.mConditionListener.pinned=false;hook.invoke(null,param);
            assertEquals("no banner yet: the popup is drawn as usual",0,scheduler.mNotificationLightingScheduler.flushed);
            assertEquals("and nothing is turned into a banner in this mode",0,service.mConditionListener.requests);
            service.mConditionListener.pinned=true;hook.invoke(null,param);
            assertEquals("the island has it now: no popup",1,scheduler.mNotificationLightingScheduler.flushed);
            assertEquals(0,service.mConditionListener.requests);
        } finally {
            ReflectionHelpers.setStaticField(BriefPopupBridge.class,"service",new WeakReference<Context>(null));
            preferences.edit().clear().commit();ModuleSettings.configurePreview(preferences);
        }
    }
}
