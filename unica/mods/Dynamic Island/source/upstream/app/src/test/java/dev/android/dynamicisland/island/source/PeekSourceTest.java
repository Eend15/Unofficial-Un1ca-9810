package dev.android.dynamicisland.island.source;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import android.app.Application;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.Person;
import android.app.RemoteInput;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.Icon;
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
public class PeekSourceTest {
    private final Application app = RuntimeEnvironment.getApplication();

    private StatusBarNotification sbn(String pkg, int id, Notification.Builder b) throws Exception {
        Constructor<StatusBarNotification> c = StatusBarNotification.class.getConstructor(String.class, String.class, int.class, String.class,
                int.class, int.class, Notification.class, UserHandle.class, String.class, long.class);
        return c.newInstance(pkg, pkg, id, null, 10100, 1, b.build(), android.os.Process.myUserHandle(), null, 5000L);
    }

    private PeekSource source() {
        return new PeekSource(app, new Handler(Looper.getMainLooper()), () -> { });
    }

    private Notification.Builder message(boolean group) {
        Bitmap av = Bitmap.createBitmap(96, 96, Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(av);
        c.drawColor(0xFFEF6C00);
        android.graphics.Paint p = new android.graphics.Paint(android.graphics.Paint.ANTI_ALIAS_FLAG);
        p.setColor(Color.WHITE);
        c.drawCircle(48, 36, 18, p);
        c.drawCircle(48, 110, 44, p);
        Person sender = new Person.Builder().setName("Minji").setIcon(Icon.createWithBitmap(av)).build();
        Notification.MessagingStyle style = new Notification.MessagingStyle(new Person.Builder().setName("me").build());
        if (group) {
            style.setConversationTitle("Weekend trip").setGroupConversation(true);
        }
        style.addMessage("Are we still meeting at 7?", 1000L, sender);
        style.addMessage("I booked the table, bring the tickets!", 2000L, sender);
        Intent i = new Intent("open");
        Notification.Builder b = new Notification.Builder(app, "msg")
                .setSmallIcon(android.R.drawable.stat_notify_chat)
                .setStyle(style)
                .setCategory(Notification.CATEGORY_MESSAGE)
                .setColor(0xFFFEE500)
                .setContentIntent(PendingIntent.getActivity(app, 0, i, PendingIntent.FLAG_IMMUTABLE));
        b.addAction(new Notification.Action.Builder(null, "Reply",
                PendingIntent.getBroadcast(app, 1, new Intent("reply"), PendingIntent.FLAG_MUTABLE))
                .addRemoteInput(new RemoteInput.Builder("text").build()).build());
        b.addAction(new Notification.Action.Builder(null, "Mark as read",
                PendingIntent.getBroadcast(app, 2, new Intent("read"), PendingIntent.FLAG_IMMUTABLE)).build());
        return b;
    }

    @Test
    public void messagesBecomeAPeekCardWithSenderAndLastMessage() throws Exception {
        PeekSource s = source();
        StatusBarNotification sbn = sbn("com.kakao.talk", 1, message(false));
        assertTrue(PeekSource.eligible(sbn));
        IslandItem it = s.build(sbn);
        assertNotNull(it);
        assertEquals(IslandItem.Kind.PEEK, it.kind);
        assertEquals("Minji", it.title.toString());
        assertEquals("I booked the table, bring the tickets!", it.subtitle.toString());
        assertTrue(it.cardImageRound);
        assertEquals(2, it.actions.size());
        assertEquals("Reply", it.actions.get(0).title.toString());
        // the reply button asks for a text on the island and sends it through the app's reply intent
        assertNotNull(it.actions.get(0).remoteInputs);
        assertEquals("text", it.actions.get(0).remoteInputs[0].getResultKey());
        assertNotNull(it.actions.get(0).intent);
        assertEquals(null, it.actions.get(1).remoteInputs);
        render("peek_message", it);

        IslandItem groupItem = s.build(sbn("com.kakao.talk", 2, message(true)));
        assertEquals("Weekend trip", groupItem.title.toString());
        assertEquals("Minji: I booked the table, bring the tickets!", groupItem.subtitle.toString());
        render("peek_group", groupItem);
    }

    @Test
    public void callsAlarmsOngoingAndMediaStayWithTheStockBanner() throws Exception {
        Notification.Builder base = new Notification.Builder(app, "c").setSmallIcon(android.R.drawable.stat_notify_chat).setContentTitle("x").setContentText("y");
        assertTrue(PeekSource.eligible(sbn("p", 1, base)));
        assertFalse(PeekSource.eligible(sbn("p", 2, new Notification.Builder(app, "c").setSmallIcon(android.R.drawable.stat_notify_chat)
                .setContentTitle("x").setCategory(Notification.CATEGORY_CALL))));
        assertFalse(PeekSource.eligible(sbn("p", 3, new Notification.Builder(app, "c").setSmallIcon(android.R.drawable.stat_notify_chat)
                .setContentTitle("x").setCategory(Notification.CATEGORY_ALARM))));
        assertFalse(PeekSource.eligible(sbn("p", 4, new Notification.Builder(app, "c").setSmallIcon(android.R.drawable.stat_notify_chat)
                .setContentTitle("x").setOngoing(true))));
        assertFalse(PeekSource.eligible(sbn("p", 5, new Notification.Builder(app, "c").setSmallIcon(android.R.drawable.stat_notify_chat)
                .setContentTitle("x").setFullScreenIntent(PendingIntent.getActivity(app, 0, new Intent("fs"), PendingIntent.FLAG_IMMUTABLE), true))));
    }

    @Test
    public void thePeekExpiresOnItsOwn() throws Exception {
        PeekSource s = source();
        IslandItem it = s.build(sbn("com.kakao.talk", 1, message(false)));
        s.show(it, 1000);
        List<IslandItem> out = new ArrayList<>();
        s.collect(out);
        assertEquals(1, out.size());
        org.robolectric.shadows.ShadowSystemClock.advanceBy(java.time.Duration.ofSeconds(2));
        out.clear();
        s.collect(out);
        assertTrue(out.isEmpty());
    }

    private Notification.Builder sms(String sender, String body) {
        return new Notification.Builder(app, "sms")
                .setSmallIcon(android.R.drawable.stat_notify_chat)
                .setContentTitle(sender)
                .setContentText(body)
                .setCategory(Notification.CATEGORY_MESSAGE)
                .setContentIntent(PendingIntent.getActivity(app, 0, new Intent("open"), PendingIntent.FLAG_IMMUTABLE));
    }

    @Test
    public void aVerificationCodeBecomesACodeCardWithACopyButton() throws Exception {
        PeekSource s = source();
        // an installed package, so the card has a real app icon like on the phone
        StatusBarNotification sbn = sbn(app.getPackageName(), 1, sms("카카오뱅크", "[Web발신] [카카오뱅크] 인증번호 [482913]를 입력해 주세요."));
        assertTrue(PeekSource.eligible(sbn));
        IslandItem it = s.build(sbn);
        assertNotNull(it);
        assertEquals(IslandItem.Kind.PEEK, it.kind);
        assertTrue(it.bigNumber);
        assertEquals("482 913", it.trailingText.toString());
        assertEquals("카카오뱅크 · Verification code", it.title.toString());
        assertTrue(it.peekMillis > 5000);
        assertEquals(1, it.actions.size());
        assertEquals("Copy", it.actions.get(0).title.toString());
        assertEquals(Glyphs.COPY, it.actions.get(0).glyph);
        render("otp_card", it);

        it.actions.get(0).runnable.run();
        android.content.ClipboardManager cm = app.getSystemService(android.content.ClipboardManager.class);
        assertEquals("482913", cm.getPrimaryClip().getItemAt(0).getText().toString());
        List<IslandItem> out = new ArrayList<>();
        s.collect(out);
        assertEquals(1, out.size());
        assertTrue(out.get(0).title.toString().endsWith("Copied"));
        assertEquals(Glyphs.CHECK, out.get(0).actions.get(0).glyph);
        assertTrue(out.get(0).actions.get(0).active);
        render("otp_card_copied", out.get(0));
    }

    @Test
    public void anInternationalSmsInAConversationIsACodeToo() throws Exception {
        // how Samsung Messages posts a text: a conversation whose newest message carries the code
        Notification.MessagingStyle style = new Notification.MessagingStyle(new Person.Builder().setName("me").build());
        Person sender = new Person.Builder().setName("+1 555-0100").build();
        style.addMessage("[국제발신]\nDiscord 확인 코드: 448413", 1000L, sender);
        Notification.Builder b = new Notification.Builder(app, "sms").setSmallIcon(android.R.drawable.stat_notify_chat)
                .setStyle(style).setCategory(Notification.CATEGORY_MESSAGE);
        StatusBarNotification sbn = sbn("com.samsung.android.messaging", 7, b);
        assertTrue(PeekSource.eligible(sbn));
        IslandItem it = source().buildOtp(sbn);
        assertNotNull(it);
        assertEquals("448 413", it.trailingText.toString());
        // without a code there is no code card, and the message card is a separate step
        assertEquals(null, source().buildOtp(sbn("com.samsung.android.messaging", 8, sms("엄마", "저녁 먹자"))));
        assertNotNull(source().buildMessage(sbn("com.samsung.android.messaging", 8, sms("엄마", "저녁 먹자"))));
    }

    @Test
    public void anOrdinaryTextStaysAnOrdinaryMessageCard() throws Exception {
        PeekSource s = source();
        IslandItem it = s.build(sbn("com.samsung.android.messaging", 2, sms("엄마", "저녁 먹으러 7시까지 와")));
        assertEquals("엄마", it.title.toString());
        assertEquals("저녁 먹으러 7시까지 와", it.subtitle.toString());
        IslandItem card = s.build(sbn("com.samsung.android.messaging", 3, sms("신한카드", "[Web발신] 신한카드(1234) 승인 10,000원 일시불")));
        assertEquals("신한카드", card.title.toString());
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
