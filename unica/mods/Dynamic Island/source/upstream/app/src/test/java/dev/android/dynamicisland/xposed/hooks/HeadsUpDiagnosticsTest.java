package dev.android.dynamicisland.xposed.hooks;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import android.app.Notification;
import android.service.notification.StatusBarNotification;
import de.robv.android.xposed.XC_MethodHook;
import dev.android.dynamicisland.xposed.Diagnostics;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.util.ReflectionHelpers;

/** The report says which heads-up methods a System UI has and which of the hooked ones it really calls. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class HeadsUpDiagnosticsTest {
    static class Base {
        void updateNotificationInternal(String key, boolean alert) { }
    }

    static class Manager extends Base {
        boolean shouldHeadsUpBecomePinned(Object entry) { return true; }
        void setEntryPinned(Object headsUpEntry, Object status, String reason) { }
        void showNotification(Object entry, boolean isPinnedByUser) { }
        void unrelated() { }
    }

    /** A newer build's entry: the notification is behind a getter, not in the mSbn field the hooks read. */
    static class NewEntry {
        private final StatusBarNotification sbn;
        NewEntry(StatusBarNotification sbn) { this.sbn = sbn; }
        public StatusBarNotification getSbn() { return sbn; }
    }

    private static void hook(String name, XC_MethodHook.MethodHookParam param) throws Exception {
        var method = HeadsUpHooks.class.getDeclaredMethod(name, XC_MethodHook.MethodHookParam.class);
        method.setAccessible(true);
        method.invoke(null, param);
    }

    private static String calls() {
        for (String line : Diagnostics.report().split("\n")) if (line.startsWith("heads-up calls")) return line;
        return "";
    }

    @Test public void listsTheManagersBannerMethodsWithTheirParametersAcrossSuperclasses() {
        String methods = HeadsUpHooks.describe(Manager.class);
        assertTrue(methods, methods.contains("setEntryPinned(Object,Object,String):void"));
        assertTrue(methods, methods.contains("shouldHeadsUpBecomePinned(Object):boolean"));
        assertTrue(methods, methods.contains("showNotification(Object,boolean):void"));
        assertTrue("inherited", methods.contains("updateNotificationInternal(String,boolean):void"));
        assertFalse(methods.contains("unrelated"));
        assertEquals("none", HeadsUpHooks.describe(null));
    }

    @Test public void countsTheCallsAndSaysWhetherTheNotificationCouldBeRead() throws Exception {
        var app = RuntimeEnvironment.getApplication();
        Notification notification = new Notification.Builder(app, "messages").setSmallIcon(android.R.drawable.ic_dialog_email).build();
        StatusBarNotification sbn = new StatusBarNotification("example.chat", "example.chat", 1, null, 10100, 1, 0, notification,
                android.os.Process.myUserHandle(), System.currentTimeMillis());

        var decision = ReflectionHelpers.callConstructor(XC_MethodHook.MethodHookParam.class);
        decision.thisObject = new Manager();
        decision.args = new Object[]{new NewEntry(sbn)};
        decision.setResult(false);
        hook("afterPinDecision", decision);
        assertEquals("the diagnostics change no decision", false, decision.getResult());
        String line = calls();
        assertTrue(line, line.contains("decision x"));
        assertTrue(line, line.contains("false for notification not read from NewEntry, the wider search finds example.chat"));

        var pin = ReflectionHelpers.callConstructor(XC_MethodHook.MethodHookParam.class);
        pin.thisObject = new Manager();
        pin.args = new Object[]{new Object(), "PinnedByUser", "tapped"};
        hook("beforeSetPinned", pin);
        assertEquals("PinnedByUser", pin.args[1]);
        line = calls();
        assertTrue(line, line.contains("status PinnedByUser, reason tapped, 3 arguments, notification not read from Object"));
    }
}
