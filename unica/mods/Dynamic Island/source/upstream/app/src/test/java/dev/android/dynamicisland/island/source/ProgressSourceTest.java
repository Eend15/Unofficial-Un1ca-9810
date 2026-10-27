package dev.android.dynamicisland.island.source;

import dev.android.dynamicisland.testutil.RenderCapture;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import android.app.Application;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import java.io.File;
import java.lang.reflect.Constructor;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class ProgressSourceTest {
    private final Application app = RuntimeEnvironment.getApplication();

    private StatusBarNotification sbn(String pkg, int id, Notification.Builder b) throws Exception {
        Constructor<StatusBarNotification> c = StatusBarNotification.class.getConstructor(String.class, String.class, int.class, String.class,
                int.class, int.class, Notification.class, UserHandle.class, String.class, long.class);
        return c.newInstance(pkg, pkg, id, null, 10100, 1, b.build(), android.os.Process.myUserHandle(), null, 1000L);
    }

    private Notification.Builder download(String title, int progress, int max) {
        Notification.Builder b = new Notification.Builder(app, "dl")
                .setSmallIcon(android.R.drawable.stat_sys_download)
                .setContentTitle(title)
                .setContentText("12.4 MB of 33 MB")
                .setProgress(max, progress, false)
                .setOngoing(true)
                .setColor(0xFF1E88E5);
        b.addAction(new Notification.Action.Builder(null, "Cancel",
                PendingIntent.getBroadcast(app, 0, new Intent("cancel"), PendingIntent.FLAG_IMMUTABLE)).build());
        b.addAction(new Notification.Action.Builder(null, "Pause",
                PendingIntent.getBroadcast(app, 0, new Intent("pause"), PendingIntent.FLAG_IMMUTABLE)).build());
        return b;
    }

    /** An app's Android 16 ProgressStyle notification, as an installer posts it. */
    private Notification.Builder progressStyle(String title, int progress, int max) {
        Notification.Builder b = download(title, progress, max);
        b.addExtras(androidx_style());
        return b;
    }

    private android.os.Bundle androidx_style() {
        android.os.Bundle extras = new android.os.Bundle();
        extras.putString(Notification.EXTRA_TEMPLATE, "android.app.Notification$ProgressStyle");
        return extras;
    }

    @Test
    public void aProgressStyleNotificationBecomesAProgressCard() throws Exception {
        IslandItem it = source().build(sbn("com.example.installer", 9, progressStyle("Installing app", 40, 100)));
        assertNotNull(it);
        assertEquals(0.4f, it.progress, 0.001f);
    }

    private ProgressSource source() {
        return new ProgressSource(app, new Handler(Looper.getMainLooper()), () -> { });
    }

    @Test
    public void ignoresWhatIsNotADownload() throws Exception {
        ProgressSource s = source();
        // not ongoing
        assertNull(s.build(sbn("p", 1, download("a", 1, 10).setOngoing(false))));
        // indeterminate without the progress category
        assertNull(s.build(sbn("p", 2, new Notification.Builder(app, "c").setSmallIcon(android.R.drawable.stat_sys_download)
                .setContentTitle("Syncing").setProgress(0, 0, true).setOngoing(true))));
        // indeterminate but categorised as progress: accepted
        assertNotNull(s.build(sbn("p", 3, new Notification.Builder(app, "c").setSmallIcon(android.R.drawable.stat_sys_download)
                .setContentTitle("Preparing").setCategory(Notification.CATEGORY_PROGRESS).setProgress(0, 0, true).setOngoing(true))));
        // our own and system packages
        assertNull(s.build(sbn("com.android.systemui", 4, download("x", 1, 2))));
        // a call
        assertNull(s.build(sbn("p", 5, download("c", 1, 2).setCategory(Notification.CATEGORY_CALL))));
        // no progress at all
        assertNull(s.build(sbn("p", 6, new Notification.Builder(app, "c").setSmallIcon(android.R.drawable.stat_sys_download)
                .setContentTitle("Hello").setOngoing(true))));
    }

    private void render(String name, IslandItem item) throws Exception {
        IslandView view = new IslandView(app, null);
        float w = 360f * app.getResources().getDisplayMetrics().density;
        float h = view.shadeCardHeight(item, w);
        Bitmap bmp = Bitmap.createBitmap(Math.round(w), Math.round(h), Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(bmp);
        c.drawColor(0xFF1B1B1F);
        view.drawShadeCard(c, item, w);
        File dir = new File("build/render");
        dir.mkdirs();
        RenderCapture.write(bmp, new File(dir, name + ".png"));
    }

    @Test
    public void textPercentagesNeedAProgressWordAndAnOngoingNotification() throws Exception {
        Notification.Builder coupon = new Notification.Builder(app, "x").setSmallIcon(android.R.drawable.stat_sys_download)
                .setContentTitle("쿠폰").setContentText("30% 할인 쿠폰 다운로드").setOngoing(true);
        assertNull(source().build(sbn("com.example.shop", 22, coupon)));
        Notification.Builder notOngoing = new Notification.Builder(app, "x").setSmallIcon(android.R.drawable.stat_sys_download)
                .setContentTitle("다운로드").setContentText("73% 완료");
        assertNull(source().build(sbn("com.example.updater", 23, notOngoing)));
    }
}
