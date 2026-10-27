package dev.android.dynamicisland.island.source;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import android.app.Application;
import android.app.Notification;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.detect.OtpDetector;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.rules.RuleConfig;
import dev.android.dynamicisland.island.rules.RuleDictionary;
import dev.android.dynamicisland.island.rules.RuleStore;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class RuleSourceTest {
    private final Application app = RuntimeEnvironment.getApplication();
    private final RuleDictionary ko = RuleStore.build(new RuleConfig(null));

    private StatusBarNotification sbn(String pkg, int id, String title, String text) throws Exception {
        Notification.Builder b = new Notification.Builder(app, "c").setSmallIcon(android.R.drawable.stat_notify_chat)
                .setContentTitle(title).setContentText(text);
        return sbn(pkg, id, b);
    }

    private StatusBarNotification sbn(String pkg, int id, Notification.Builder b) throws Exception {
        return sbnAt(pkg, id, b, System.currentTimeMillis());
    }

    private StatusBarNotification sbnAt(String pkg, int id, Notification.Builder b, long postTime) throws Exception {
        Constructor<StatusBarNotification> c = StatusBarNotification.class.getConstructor(String.class, String.class, int.class, String.class,
                int.class, int.class, Notification.class, UserHandle.class, String.class, long.class);
        return c.newInstance(pkg, pkg, id, null, 10100, 1, b.build(), android.os.Process.myUserHandle(), null, postTime);
    }

    private RuleSource source() {
        return new RuleSource(app, new Handler(Looper.getMainLooper()), () -> { });
    }

    @Test
    public void deliveryStageBecomesAProgressCard() throws Exception {
        IslandItem it = source().build(sbn("com.coupang.mobile.eats", 1, "쿠팡이츠", "라이더님이 곧 도착해요!"), ko, Locale.KOREAN);
        assertNotNull(it);
        assertEquals("rule:com.coupang.mobile.eats:food", it.key);
        assertEquals(3, it.stage);
        assertEquals(0.75f, it.progress, 0.001f);
        assertEquals("곧 도착", it.trailingText.toString()); // the status of stage 3 is the pill text
        assertEquals("쿠팡이츠", it.title.toString());
        assertEquals("라이더님이 곧 도착해요!", it.subtitle.toString());
        assertEquals(IslandItem.Kind.TASK, it.kind);
    }

    @Test
    public void taxiAndRouteAndDevice() throws Exception {
        IslandItem taxi = source().build(sbn("com.kakao.taxi", 2, "카카오 T", "기사님이 도착해요."), ko, Locale.KOREAN);
        assertEquals(2, taxi.stage);
        assertEquals("접근 중", taxi.trailingText.toString());
        IslandItem route = source().build(sbn("com.nhn.android.nmap", 3, "길안내", "이번 정류장에서 하차 300m"), ko, Locale.KOREAN);
        assertEquals(IslandItem.Kind.NAVIGATION, route.kind);
        assertEquals(3, route.stage);
        assertEquals("300m", route.trailingText.toString()); // the distance wins over the status on the pill
        RuleDictionary both = RuleStore.build(new RuleConfig(null));
        IslandItem device = source().build(sbn("com.samsung.bluetooth", 4, "블루투스", "Connected to Galaxy Buds2 Pro"), both, Locale.ENGLISH);
        assertNotNull(device);
        assertEquals("Galaxy Buds2 Pro", device.title.toString());
        assertEquals(2, device.stage);
    }

    @Test
    public void updateKeepsTheHighestStageOfADelivery() throws Exception {
        RuleSource s = source();
        List<StatusBarNotification> list = new ArrayList<>();
        list.add(sbn("com.coupang.mobile.eats", 11, "쿠팡이츠", "라이더님이 배달을 시작했어요"));
        list.add(sbn("com.coupang.mobile.eats", 12, "쿠팡이츠", "라이더님이 곧 도착해요!"));
        s.update(list);
        List<IslandItem> shown = s.snapshot();
        assertEquals(1, shown.size());
        assertEquals(3, shown.get(0).stage);
        List<IslandItem> out = new ArrayList<>();
        s.collect(out, "com.example.other");
        assertEquals(1, out.size());
        out.clear();
        s.collect(out, "com.coupang.mobile.eats"); // the app is on screen
        assertTrue(out.isEmpty());
        s.update(new ArrayList<>());
        assertTrue(s.snapshot().isEmpty());
    }

    @Test
    public void codesRecordedFromRealMessagesAreFound() {
        String[][] messages = {
                {"[국제발신] Steam: 모바일 인증기 추가를 승인하려면 57256 코드를 입력하세요.", "57256"},
                {"[국제발신] 184979 is your Infomaniak validation code.", "184979"},
                {"[Web발신] [G마켓] [679448] 아이디 찾기 휴대폰 인증번호", "679448"},
                {"[Web발신] [KB국민카드] 인증번호 [333028]입니다. 정확히 입력해 주시기 바랍니다 .", "333028"},
                {"Beeper code: 935 418 Your login code for Beeper", "935418"},
        };
        for (String[] m : messages) {
            OtpDetector.Match match = OtpDetector.detect(m[0]);
            assertNotNull(m[0], match);
            assertEquals(m[0], m[1], match.code);
        }
    }

    // ---- the module's own rules, built from a year of recorded notifications --------------------------------------

    private IslandItem card(String pkg, String title, String text) throws Exception {
        return source().build(sbn(pkg, 77, title, text), ko, Locale.KOREAN);
    }

    private void expect(String pkg, String title, String text, String rule, int stage) throws Exception {
        IslandItem it = card(pkg, title, text);
        assertNotNull(pkg + " / " + text, it);
        assertEquals(text, "rule:" + pkg + ":" + rule, it.key);
        assertEquals(text, stage, it.stage);
    }

    @Test
    public void chatMailAndNewsAppsNeverMakeCards() throws Exception {
        // the same wording from a mail app or a channel quoting it
        assertNull(card("com.google.android.gm", "쿠팡", "배송 완료 로켓배송 1박스 문 앞(으)로 배송완료했습니다."));
        assertNull(card("fork.risin42.nagramx", "채널", "라이더님이 곧 도착해요! 배달을 받을 수 있게 준비해주세요"));
        assertNull(card("com.discord", "x", "길안내를 종료합니다. 롯데마트 부산점 주변 도착"));
    }

}
