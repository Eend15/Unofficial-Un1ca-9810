package dev.android.dynamicisland.island.source;

import static org.junit.Assert.*;
import android.app.Notification;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.util.List;
import org.junit.After;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class NotificationRecoveryTest {
    final Context app = RuntimeEnvironment.getApplication();
    @After public void reset() {
        ReflectionHelpers.setStaticField(ModuleSettings.class, "experimentalRecovery", false);
        PromotedSource.setEnabled(false);
    }
    StatusBarNotification note(String pkg, int id, Notification.Builder builder, UserHandle user) {
        return new StatusBarNotification(pkg, pkg, id, null, 10100, 1, 0, builder.build(), user, 5000);
    }
    Notification.Builder basic() {
        return new Notification.Builder(app, "test").setSmallIcon(android.R.drawable.stat_sys_download)
                .setContentTitle("A notification").setContentText("Text");
    }

    @Test public void broaderIndeterminateAndRecorderDetectionRequireExplicitOptIn() {
        ProgressSource progress = new ProgressSource(app, new Handler(Looper.getMainLooper()), () -> { });
        StatusBarNotification installing = note("installer", 1, basic().setOngoing(true).setProgress(0, 0, true), android.os.Process.myUserHandle());
        StatusBarNotification recorder = note("com.example.screenrecorder", 2, basic().setOngoing(true), android.os.Process.myUserHandle());
        assertFalse(ModuleSettings.experimentalRecovery());
        assertNull(progress.build(installing));
        assertFalse(RecorderNotificationSource.isRecorder(recorder));
        ReflectionHelpers.setStaticField(ModuleSettings.class, "experimentalRecovery", true);
        assertNotNull(progress.build(installing));
        assertTrue(RecorderNotificationSource.isRecorder(recorder));
        ReflectionHelpers.setStaticField(ModuleSettings.class, "experimentalRecovery", false);
        progress.update(List.of(installing));
        assertTrue(progress.snapshot().isEmpty());
    }

}
