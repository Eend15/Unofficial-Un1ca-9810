package dev.android.dynamicisland.island;

import static org.junit.Assert.*;

import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.service.notification.StatusBarNotification;
import com.android.systemui.statusbar.phone.ongoingactivity.OngoingActivityDataHelper;
import dev.android.dynamicisland.island.feedback.AudioLevels;
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
public class HeadsUpRecoveryTest {
    @After public void reset() {
        ReflectionHelpers.setStaticField(ModuleSettings.class, "experimentalRecovery", false);
        ReflectionHelpers.setStaticField(ModuleSettings.class, "allNotifications", false);
        ReflectionHelpers.setStaticField(HeadsUpHooks.class, "manager", null);
        OngoingActivityDataHelper.baseActivityComponentName = null;
    }

    @Test public void recoverySelectsAlternateNotificationAndBannerHandlingAndCanBeTurnedOff() {
        Context app = RuntimeEnvironment.getApplication();
        Handler main = new Handler(Looper.getMainLooper());
        IslandSources sources = new IslandSources(app, getClass().getClassLoader(), main, () -> { });
        IslandPlacement placement = new IslandPlacement(app, main, getClass().getClassLoader(), IslandHost.NONE,
                new IslandWindow.Listener() {
                    @Override public void onWindowConfigurationChanged() { }
                    @Override public void onWindowInsetsChanged() { }
                }, new AudioLevels());
        placement.ensureWindow(true);
        HeadsUpTakeover takeover = new HeadsUpTakeover(sources, placement, () -> {
            placement.view().setItems(List.of(sources.peeks.showing()));
        });
        ReflectionHelpers.setStaticField(ModuleSettings.class, "foregroundNotifications", false);
        ReflectionHelpers.setStaticField(ModuleSettings.class, "allNotifications", true);
        String pkg = app.getPackageName();
        OngoingActivityDataHelper.baseActivityComponentName = new ComponentName(pkg, "Main");
        StatusBarNotification child = note(app, 1, false, System.currentTimeMillis());
        StatusBarNotification summary = note(app, 2, true, System.currentTimeMillis() + 1);
        List<StatusBarNotification> snapshot = List.of(child, summary);
        takeover.setSnapshot(snapshot);
        assertFalse(takeover.take(child)); // normal mode excludes the app on screen
        OngoingActivityDataHelper.baseActivityComponentName = null;
        assertFalse(takeover.take(summary)); // normal mode prefers its child
        OngoingActivityDataHelper.baseActivityComponentName = new ComponentName(pkg, "Main");
        ReflectionHelpers.setStaticField(ModuleSettings.class, "experimentalRecovery", true);
        assertTrue(takeover.take(child));
        assertEquals(child.getKey(), sources.peeks.showing().sourceKey);
        takeover.scanAll(snapshot);
        assertEquals(summary.getKey(), sources.peeks.showing().sourceKey);

        BannerManager manager = new BannerManager();
        ReflectionHelpers.setStaticField(HeadsUpHooks.class, "manager", manager);
        HeadsUpHooks.dismissStock("alternate");
        assertEquals(2, manager.removals); // alternate build retries immediately, even without island ownership
        ReflectionHelpers.setStaticField(ModuleSettings.class, "experimentalRecovery", false);
        HeadsUpHooks.dismissStock("normal");
        assertEquals(2, manager.removals);
        assertFalse(takeover.take(note(app, 3, false, System.currentTimeMillis() + 2)));
    }

    private StatusBarNotification note(Context app, int id, boolean summary, long postTime) {
        Notification notification = new Notification.Builder(app, "messages")
                .setSmallIcon(android.R.drawable.stat_notify_chat).setContentTitle("Sender")
                .setContentText("Message " + id).setGroup("conversation").setGroupSummary(summary).build();
        return new StatusBarNotification(app.getPackageName(), app.getPackageName(), id, null, 10100, 1, 0,
                notification, android.os.Process.myUserHandle(), postTime);
    }

    public static final class BannerManager {
        int removals;
        public boolean removeNotification(String key, String reason, boolean immediately) { removals++; return true; }
        public Object getHeadsUpEntry(String key) { return removals < 2 ? this : null; }
    }
}
