package dev.android.dynamicisland.island.source;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import android.app.Application;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.graphics.Glyphs;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class CallSourceTest {
    private final Application app = RuntimeEnvironment.getApplication();

    private StatusBarNotification sbn(String pkg, int id, Notification.Builder b) throws Exception {
        Constructor<StatusBarNotification> c = StatusBarNotification.class.getConstructor(String.class, String.class, int.class, String.class,
                int.class, int.class, Notification.class, UserHandle.class, String.class, long.class);
        return c.newInstance(pkg, pkg, id, null, 10100, 1, b.build(), android.os.Process.myUserHandle(), null, System.currentTimeMillis() - 30_000);
    }

    private CallSource source() {
        return new CallSource(app, new Handler(Looper.getMainLooper()), () -> { });
    }

    private PendingIntent pi(String action) {
        return PendingIntent.getBroadcast(app, 0, new Intent(action), PendingIntent.FLAG_IMMUTABLE);
    }

    private Notification.Builder voiceCall(long when) {
        Notification.Builder b = new Notification.Builder(app, "call")
                .setSmallIcon(android.R.drawable.stat_sys_phone_call)
                .setContentTitle("홍길동")
                .setContentText("보이스톡 통화 중")
                .setLargeIcon(avatar())
                .setOngoing(true)
                .setUsesChronometer(true)
                .setWhen(when);
        b.addAction(new Notification.Action.Builder(null, "스피커", pi("speaker")).build());
        b.addAction(new Notification.Action.Builder(null, "종료", pi("end")).build());
        return b;
    }

    private Bitmap avatar() {
        Bitmap av = Bitmap.createBitmap(96, 96, Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(av);
        c.drawColor(0xFF5E35B1);
        android.graphics.Paint p = new android.graphics.Paint(android.graphics.Paint.ANTI_ALIAS_FLAG);
        p.setColor(0xFFFFFFFF);
        c.drawCircle(48, 36, 18, p);
        c.drawCircle(48, 110, 44, p);
        return av;
    }

    @Test
    public void anOngoingVoiceCallBecomesACallCardWithItsOwnClock() throws Exception {
        long when = System.currentTimeMillis() - 65_000;
        IslandItem it = source().build(sbn("com.kakao.talk", 1, voiceCall(when)));
        assertNotNull(it);
        assertEquals(IslandItem.Kind.CALL, it.kind);
        assertEquals("홍길동", it.title.toString());
        assertEquals(IslandItem.Trailing.CHRONOMETER, it.trailing);
        assertEquals(when, it.chronoBase);
        assertEquals(2, it.actions.size());
        assertEquals(Glyphs.SPEAKER, it.actions.get(0).glyph);
        assertEquals(Glyphs.HANGUP, it.actions.get(1).glyph);
        assertTrue(it.actions.get(1).destructive);
        render("call_voice", it);
    }

    @Test
    public void discordVoiceChannelNeedsNoClockInTheNotification() throws Exception {
        NotificationChannel ch = new NotificationChannel("mediaConnections", "Voice", android.app.NotificationManager.IMPORTANCE_LOW);
        app.getSystemService(android.app.NotificationManager.class).createNotificationChannel(ch);
        Notification.Builder b = new Notification.Builder(app, "mediaConnections")
                .setSmallIcon(android.R.drawable.stat_sys_phone_call)
                .setContentTitle("Voice Connected")
                .setContentText("#general / My Server")
                .setOngoing(true);
        b.addAction(new Notification.Action.Builder(null, "Disconnect", pi("leave")).build());
        IslandItem it = source().build(sbn("com.discord", 2, b));
        assertNotNull(it);
        assertEquals("Voice Connected", it.title.toString());
        assertTrue(it.chronoBase > 0);
        assertEquals(1, it.actions.size());
        assertTrue(it.actions.get(0).destructive);
    }

    @Test
    public void ringingNativeDialerAndOrdinaryOngoingAreLeftAlone() throws Exception {
        Notification.Builder ringing = new Notification.Builder(app, "call").setSmallIcon(android.R.drawable.stat_sys_phone_call)
                .setContentTitle("홍길동").setContentText("수신 전화").setOngoing(true).setCategory(Notification.CATEGORY_CALL);
        ringing.addAction(new Notification.Action.Builder(null, "수락", pi("a")).build());
        ringing.addAction(new Notification.Action.Builder(null, "거절", pi("d")).build());
        assertNull(source().build(sbn("com.kakao.talk", 3, ringing)));
        assertNull(source().build(sbn("com.samsung.android.incallui", 4, voiceCall(System.currentTimeMillis()))));
        Notification.Builder sync = new Notification.Builder(app, "x").setSmallIcon(android.R.drawable.stat_notify_sync)
                .setContentTitle("동기화 중").setContentText("메시지 수신 대기").setOngoing(true);
        assertNull(source().build(sbn("com.example.mail", 5, sync)));
    }

    @Test
    public void updateAndCollectKeepOneCardAndYieldToTheSystemCallCard() throws Exception {
        CallSource s = source();
        long when = System.currentTimeMillis() - 5_000;
        s.update(Collections.singletonList(sbn("com.kakao.talk", 1, voiceCall(when))));
        assertEquals(1, s.snapshot().size());
        List<IslandItem> out = new ArrayList<>();
        s.collect(out, "other.app");
        assertEquals(1, out.size());
        out.clear();
        s.collect(out, "com.kakao.talk"); // you are in the app already
        assertTrue(out.isEmpty());
        IslandItem system = new IslandItem("call:x");
        system.kind = IslandItem.Kind.CALL;
        out.add(system);
        s.collect(out, "other.app");
        assertEquals(1, out.size());
        s.update(Collections.<StatusBarNotification>emptyList());
        assertTrue(s.snapshot().isEmpty());
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
        try (FileOutputStream out = new FileOutputStream(new File(dir, name + ".png"))) {
            bmp.compress(Bitmap.CompressFormat.PNG, 100, out);
        }
    }
}
