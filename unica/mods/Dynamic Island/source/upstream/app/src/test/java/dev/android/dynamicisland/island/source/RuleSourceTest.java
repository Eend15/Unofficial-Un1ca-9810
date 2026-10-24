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
import java.util.Collections;
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
    public void ignoresWhatTheRulesDoNotKnow() throws Exception {
        RuleSource s = source();
        assertNull(s.build(sbn("com.example.chat", 5, "친구", "점심 뭐 먹을래?"), ko, Locale.KOREAN));
        // the app is a delivery app but the text is not a stage
        assertNull(s.build(sbn("com.coupang.mobile.eats", 6, "쿠팡이츠", "오늘의 이벤트를 확인하세요"), ko, Locale.KOREAN));
        // an excluded wording
        assertNull(s.build(sbn("com.coupang.mobile.eats", 7, "쿠팡이츠", "할인 쿠폰 주문 완료"), ko, Locale.KOREAN));
        // own progress bar: the progress source handles it
        assertNull(s.build(sbn("com.coupang.mobile.eats", 8, new Notification.Builder(app, "c").setSmallIcon(android.R.drawable.stat_notify_chat)
                .setContentTitle("쿠팡이츠").setContentText("배달이 완료되었습니다.").setProgress(100, 50, false)), ko, Locale.KOREAN));
        // our own and system notifications
        assertNull(s.build(sbn("android", 9, "x", "라이더님이 곧 도착해요!"), ko, Locale.KOREAN));
        // no rules loaded at all
        assertNull(s.build(sbn("com.coupang.mobile.eats", 10, "쿠팡이츠", "라이더님이 곧 도착해요!"), RuleDictionary.empty(), Locale.KOREAN));
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
    public void ruleFilesAddCodeWordsToTheCodeDetector() {
        String text = "Sveikas, tavo kodas 482913";
        assertNull(OtpDetector.detect(text)); // "kodas" is not a word the detector knows
        RuleStore.setForTesting(RuleDictionary.fromJson("{\"otp_strong_triggers\":[\"kodas\"]}"));
        try {
            OtpDetector.Match match = OtpDetector.detect(text);
            assertNotNull(match);
            assertEquals("482913", match.code);
        } finally {
            RuleStore.setForTesting(null);
        }
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

    @Test
    public void numbersThatAreNoCodesAreLeftAlone() {
        String[] texts = {
                "[한국리서치]주류에 대한 소비자 의견 조사(번호:0008_6) 설문에 정해진 응답은 없습니다.",
                "Registrant Country: KR Registrant Postal Code: 48454 Administrative Contact Name: DONG HYUK",
                "자동납부 안내 ② 은행(카드사)명 : 카카오뱅크 ③ 계좌(카드)번호 : 3333** ④ 인출(승인) 예정일 : 10월 21일",
                "발견 즉시 커널 코드 다수(PR #14613, #14616, #14806)와 런타임 버그를 수정함",
                "Google Play 주문 영수증 감사합니다. 정기 결제를 구매하셨습니다. 주문 번호: 33313547",
        };
        for (String text : texts) {
            assertNull(text, OtpDetector.detect(text));
        }
    }

    @Test
    public void downloadsThatOnlySayHowMuchIsDoneGetAPercentage() {
        // Obtainium and game launchers write "12.4 MB / 40 MB" instead of a progress bar
        assertEquals(31, dev.android.dynamicisland.island.detect.TextProgress.detect("Minis 다운로드 중 12.4 MB / 40 MB"));
        assertEquals(43, dev.android.dynamicisland.island.detect.TextProgress.detect("리소스 다운로드 중 6.7G/15.6G 현재 속도 109K/s"));
        assertEquals(25, dev.android.dynamicisland.island.detect.TextProgress.detect("Downloading 512 KB / 2 MB"));
        // no progress word, a larger part than the whole, or no unit: not a download
        assertEquals(-1, dev.android.dynamicisland.island.detect.TextProgress.detect("저장 공간 12 GB / 64 GB"));
        assertEquals(-1, dev.android.dynamicisland.island.detect.TextProgress.detect("다운로드 3 / 4"));
        assertEquals(-1, dev.android.dynamicisland.island.detect.TextProgress.detect("다운로드 50 MB / 40 MB"));
    }

    @Test
    public void eventsThatRepeatAllDayShowOnceInAWhile() throws Exception {
        RuleSource s = source();
        long[] now = {System.currentTimeMillis()};
        s.clock = () -> now[0];
        java.util.function.Supplier<List<StatusBarNotification>> post = () -> {
            try {
                Notification.Builder b = new Notification.Builder(app, "c").setSmallIcon(android.R.drawable.stat_notify_chat)
                        .setContentTitle("링과 폰 연결이 해제됨").setContentText("").setWhen(now[0]);
                return Collections.singletonList(sbnAt("com.samsung.android.ringplugin", 90, b, now[0]));
            } catch (Exception e) {
                throw new IllegalStateException(e);
            }
        };
        s.update(post.get());
        assertEquals(1, s.snapshot().size());                     // first disconnect: a card for 3 minutes
        now[0] += 4 * 60_000L;
        s.update(post.get());
        assertEquals(0, s.snapshot().size());                     // its time is up, although the notification stays
        now[0] += 3 * 60_000L;                                    // 7 minutes: the ring drops again
        s.update(post.get());
        assertEquals("a repost inside the cooldown stays quiet", 0, s.snapshot().size());
        now[0] += 14 * 60_000L;                                   // 21 minutes
        s.update(post.get());
        assertEquals("after the cooldown the next one is shown", 1, s.snapshot().size());
        // a notification that just sits in the shade is not shown again and again
        now[0] += 60 * 60_000L;
        List<StatusBarNotification> stale = post.get();
        now[0] += 3 * 60_000L;
        s.update(stale);
        assertEquals(0, s.snapshot().size());
    }

    @Test
    public void earbudsLowBatteryFromThePhoneServicesIsAlsoACard() throws Exception {
        IslandItem it = card("com.google.android.gms", "삼플의 JBL Tour Pro3 • Low battery", "왼쪽 8% 케이스 40% 오른쪽 30%");
        assertNotNull(it);
        assertEquals("rule:com.google.android.gms:battery", it.key);
        assertEquals(0.08f, it.progress, 0.001f);
        // the plain status line of connected earbuds (no "low battery") is no event
        assertNull(card("com.google.android.gms", "삼플의 JBL Tour Pro3", "왼쪽 85% 케이스 90% 오른쪽 84%"));
        assertNull(card("com.google.android.gms", "Windows에서 새로 로그인함", "다음 기기에서 내 Google 계정에 로그인함"));
    }

    @Test
    public void ruleFilesAddProgressWordsToTheTextProgressDetector() {
        String text = "Sinchronizuojama 61%";
        assertEquals(-1, dev.android.dynamicisland.island.detect.TextProgress.detect(text));
        RuleStore.setForTesting(RuleDictionary.fromJson("{\"text_progress_include_context_pattern\":\"(sinchronizuojama)\"}"));
        try {
            assertEquals(61, dev.android.dynamicisland.island.detect.TextProgress.detect(text));
        } finally {
            RuleStore.setForTesting(null);
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
    public void deliveryAndPickupAppsReachTheirStages() throws Exception {
        expect("com.coupang.mobile.eats", "주문이 수락되었습니다.", "매장에서 음식 준비를 시작합니다.", "food", 1);
        expect("com.coupang.mobile.eats", "배달원이 고객님의 음식을 픽업했습니다.", "쿠팡이츠 앱에서 배달 현황을 확인하세요.", "food", 2);
        expect("com.coupang.mobile.eats", "주문이 거의 도착했습니다.", "음식을 받고 맛있는 시간 보내세요!", "food", 3);
        expect("com.coupang.mobile.eats", "13분 일찍 배달 완료됐습니다.", "바로 드시면 제일 맛있어요!", "food", 4);
        expect("com.sampleapp", "라이더님이 곧 도착해요!", "배달을 받을 수 있게 준비해주세요", "food", 3);
        expect("com.paytalab.mkseo.passorder", "조리가 완료되었어요. 주문번호는 13번이에요.", "", "food", 3);
        expect("com.starbucks.co", "스타벅스", "메뉴가 준비되었어요. (A-74) 픽업대에서 메뉴를 픽업해 주세요!", "food", 3);
        expect("kr.co.subway.preorder", "픽업이 완료되었어요.", "", "food", 4);
        // reminders, reviews and cancellations are no stage of a delivery
        assertNull(card("com.coupang.mobile.eats", "메뉴 품절로 주문이 취소되었습니다.", "다시 주문해주세요."));
        assertNull(card("com.coupang.mobile.eats", "맘스터치 어떠셨나요?", "더 좋은 서비스를 제공할 수 있도록 리뷰를 남겨주세요."));
        assertNull(card("com.paytalab.mkseo.passorder", "아직 주문이 완료되지 않았어요", "패스오더앱으로 돌아와서 주문을 완료해 주세요"));
    }

    @Test
    public void parcelsFollowTheCourier() throws Exception {
        expect("com.sweettracker.smartparcel", "CJ대한통운 - 간선상차", "6946**** 택배는 '송파B'에 있어요~", "parcel", 1);
        expect("com.sweettracker.smartparcel", "CJ대한통운 - 간선하차", "6946**** 택배는 '부산남'에 있어요~", "parcel", 2);
        expect("com.sweettracker.smartparcel", "CJ대한통운 - 배송출발 (배달예정시간:13~15시)", "6946**** 택배는 오늘 도착 예정이에요~", "parcel", 3);
        expect("com.sweettracker.smartparcel", "CJ대한통운 - 배송완료", "6946**** 택배 왔어요!", "parcel", 4);
        expect("com.coupang.mobile", "배송 완료", "로켓배송 1박스 문 앞(으)로 배송완료했습니다.", "parcel", 4);
        // a food delivery of the same company's other app is not a parcel
        IslandItem eats = card("com.coupang.mobile.eats", "17분 만에 배달 완료됐습니다.", "바로 드시면 제일 맛있어요!");
        assertEquals("food", eats.key.substring(eats.key.lastIndexOf(':') + 1));
        assertNull(card("com.coupang.mobile", "[쿠팡] 이 상품 별점 몇 점 주시겠어요?", "눌러서 별점 남기러 가기"));
        assertNull(card("com.coupang.mobile", "반품 접수 완료", "반품 신청이 정상적으로 접수되었습니다."));
    }

    @Test
    public void routesOfTheMapAppAndTheTaxiAppAndTheWearables() throws Exception {
        expect("com.nhn.android.nmap", "남천역 부산3호선 열차 승차", "경성대.부경대역 방면 빠른 하차 2-3", "navigation", 2);
        expect("com.nhn.android.nmap", "하차까지 3개 역", "다음 역에서 하차", "navigation", 3);
        expect("com.nhn.android.nmap", "이번 역에서 하차", "문현역", "navigation", 3);
        expect("com.nhn.android.nmap", "문현역태영데시앙아파트까지 걷기", "5분 소요", "navigation", 1);
        expect("com.nhn.android.nmap", "길안내를 종료합니다.", "롯데마트 부산점 주변 도착", "navigation", 4);
        assertNull(card("com.nhn.android.nmap", "내일 가야 할 투표소는 어디에 있을까?", "네이버지도 앱에 투표소 정보가 추가되었어요."));
        expect("com.kakao.taxi", "카카오 T 택시", "자동결제 택시입니다. 기사님에게 택시 요금을 지불하지 마세요.", "taxi", 4);
        assertNull(card("com.kakao.taxi", "배지 획득", "블루 이용배지를 획득했습니다."));
        // a ring that drops its link gets a card like earbuds do (a cooldown keeps it from repeating all day)
        expect("com.samsung.android.ringplugin", "링과 폰 연결이 해제됨", "", "wearable", 0);
        expect("com.samsung.android.waterplugin", "워치 배터리 충전 완료", "", "wearable", 3);
        assertNull(card("com.samsung.android.ringplugin", "링 소프트웨어 업데이트", "소프트웨어를 업데이트했습니다."));
    }

    @Test
    public void aLowBatteryCardShowsThePercentage() throws Exception {
        IslandItem ring = card("com.samsung.android.ringplugin", "배터리 부족", "내 Ring: 배터리가 15% 남아있습니다.");
        assertEquals("rule:com.samsung.android.ringplugin:battery", ring.key);
        assertEquals(0.15f, ring.progress, 0.001f);
        assertEquals("15%", ring.trailingText.toString());
        IslandItem buds = card("com.android.bluetooth", "배터리 부족", "내 Buds3 Pro 블루투스 기기의 배터리가 7% 남음");
        assertEquals(0.07f, buds.progress, 0.001f);
    }

    @Test
    public void chatMailAndNewsAppsNeverMakeCards() throws Exception {
        // the same wording from a mail app or a channel quoting it
        assertNull(card("com.google.android.gm", "쿠팡", "배송 완료 로켓배송 1박스 문 앞(으)로 배송완료했습니다."));
        assertNull(card("fork.risin42.nagramx", "채널", "라이더님이 곧 도착해요! 배달을 받을 수 있게 준비해주세요"));
        assertNull(card("com.discord", "x", "길안내를 종료합니다. 롯데마트 부산점 주변 도착"));
    }

    @Test
    public void aFinishedProcessLeavesTheIslandAfterAWhile() throws Exception {
        RuleSource s = source();
        long now = System.currentTimeMillis();
        Notification.Builder done = new Notification.Builder(app, "c").setSmallIcon(android.R.drawable.stat_notify_chat)
                .setContentTitle("배송 완료").setContentText("로켓배송 1박스 문 앞(으)로 배송완료했습니다.").setWhen(now);
        IslandItem fresh = s.build(sbn("com.coupang.mobile", 80, done), ko, Locale.KOREAN);
        long minutes = (fresh.expiresAtWall - fresh.postTime) / 60_000L;
        assertTrue("finished parcel stays " + minutes + " min", minutes == 30);
        IslandItem running = card("com.sweettracker.smartparcel", "CJ대한통운 - 간선상차", "6946**** 택배는 '송파B'에 있어요~");
        assertEquals(180L, (running.expiresAtWall - running.postTime) / 60_000L);
        IslandItem event = card("com.samsung.android.ringplugin", "링 배터리 충전 완료", "");
        assertEquals(3L, (event.expiresAtWall - event.postTime) / 60_000L);
    }
}
