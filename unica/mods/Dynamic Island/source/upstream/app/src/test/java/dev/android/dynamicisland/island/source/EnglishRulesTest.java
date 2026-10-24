package dev.android.dynamicisland.island.source;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import dev.android.dynamicisland.island.rules.RuleConfig;
import dev.android.dynamicisland.island.rules.RuleDictionary;
import dev.android.dynamicisland.island.rules.RuleStore;
import java.util.List;
import java.util.Locale;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

/** The English rules read the wording of English-language apps and give English stage names. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class EnglishRulesTest {
    private final RuleDictionary rules = RuleStore.build(new RuleConfig(null));

    private RuleSource.Hit hit(String pkg, String text) {
        List<RuleSource.Hit> hits = RuleSource.hits(pkg, text, rules);
        return hits.isEmpty() ? null : hits.get(0);
    }

    private void expect(String pkg, String text, String rule, int stage) {
        RuleSource.Hit h = hit(pkg, text);
        assertTrue(pkg + ": " + text, h != null);
        assertEquals(text, rule, h.rule.id);
        assertEquals(text, stage, h.stage);
    }

    @Test
    public void foodDelivery() {
        expect("com.dd.doordash", "Your order from Chipotle has been confirmed", "food", 0);
        expect("com.dd.doordash", "Chipotle is preparing your order", "food", 1);
        expect("com.dd.doordash", "Your Dasher is on the way with your order", "food", 2);
        expect("com.dd.doordash", "Your Dasher is arriving soon", "food", 3);
        expect("com.dd.doordash", "Your order has been delivered. Enjoy your meal!", "food", 4);
        assertEquals("Delivered", rules.statusText("food", 4, Locale.ENGLISH));
        assertEquals("배달 완료", rules.statusText("food", 4, Locale.KOREAN));
    }

    @Test
    public void parcels() {
        expect("com.amazon.mshop.android.shopping", "Your package has shipped", "parcel", 1);
        expect("com.ups.mobile.android", "Package arrived at the local facility", "parcel", 2);
        expect("com.fedex.mobile.android", "Out for delivery. Arriving today", "parcel", 3);
        expect("com.amazon.mshop.android.shopping", "Delivered: your package was left at the front door", "parcel", 4);
        assertEquals("Out for delivery", rules.statusText("parcel", 3, Locale.ENGLISH));
    }

    @Test
    public void rideHailing() {
        expect("com.ubercab", "Looking for a driver", "taxi", 0);
        expect("com.ubercab", "Your driver is arriving in 3 min", "taxi", 2);
        expect("com.lyft.android", "Your driver has arrived", "taxi", 3);
        expect("com.ubercab", "You've arrived at your destination", "taxi", 4);
        assertEquals("Driver arrived", rules.statusText("taxi", 3, Locale.ENGLISH));
    }

    @Test
    public void navigationWithDistance() {
        RuleSource.Hit turn = hit("com.google.android.apps.maps", "Turn left onto Main St · 300 ft");
        assertTrue(turn != null);
        assertEquals("navigation", turn.rule.id);
        assertEquals(1, turn.stage);
        assertEquals("300 ft", turn.distance);
        expect("com.google.android.apps.maps", "Get off at Union Station", "navigation", 3);
        expect("com.google.android.apps.maps", "You have arrived", "navigation", 4);
    }

    @Test
    public void batteryOfAnAccessory() {
        RuleSource.Hit low = hit("com.google.android.apps.wearables", "Pixel Buds Pro battery low: 15%");
        assertTrue(low != null);
        assertEquals("battery", low.rule.id);
        assertEquals(0.15f, low.percent, 0.001f);
    }

    @Test
    public void adsAndChatAreLeftAlone() {
        assertTrue(hit("com.dd.doordash", "Save $5 off your next order! Free delivery on orders over $15") == null);
        assertTrue(hit("com.amazon.mshop.android.shopping", "Prime Day deal: 30% off, delivered fast") == null);
        assertTrue(hit("com.whatsapp", "Your driver is arriving in 3 min") == null);
        assertFalse(rules.blockedSourcePackages.isEmpty());
    }

    @Test
    public void wordsThatOnlyContainOtherWordsDoNotMatch() {
        assertTrue(hit("com.dd.doordash", "Your order has been picked up by Alex") == null
                || hit("com.dd.doordash", "Your order has been picked up by Alex").stage != 4);
        assertTrue(hit("com.fedex.mobile.android", "FedEx picked up your package") == null
                || hit("com.fedex.mobile.android", "FedEx picked up your package").stage != 4);
        RuleSource.Hit off = hit("com.samsung.android.app.watchmanager", "Galaxy Watch disconnected");
        assertTrue(off == null || off.stage == 0);
        RuleSource.Hit notConnected = hit("com.samsung.android.app.watchmanager", "Galaxy Watch is not connected");
        assertTrue(notConnected == null || notConnected.stage == 0);
        assertTrue(hit("com.google.android.apps.maps", "Moderate traffic. Head north on Main St") != null);
    }

    @Test
    public void irisRelayServiceBecomesACard() {
        RuleSource.Hit hit = hit("app.iris.relay", "릴레이 실행 중 수신 552 · 업로드 552 · 전송 0");
        assertTrue(hit != null);
        assertEquals("relay", hit.rule.id);
        assertEquals(1, hit.stage);
        // a running service has no beginning and end: no progress bar; and its original leaves the shade
        assertTrue(!hit.rule.showsProgress());
        assertTrue(hit.rule.hidesOriginal());
    }

    @Test
    public void disconnectedAndDischargedAreNotTheOppositeStage() {
        RuleSource.Hit gone = hit("com.samsung.android.app.watchmanager", "Galaxy Buds disconnected");
        assertTrue(gone == null || gone.stage != 2 || !"external_device".equals(gone.rule.id));
        RuleSource.Hit flat = hit("com.samsung.android.app.watchmanager", "Watch discharged");
        assertTrue(flat == null || flat.stage != 3);
    }

    @Test
    public void milesAreNotCutToMeters() {
        RuleSource.Hit h = hit("com.google.android.apps.maps", "Turn left in 0.5 miles onto Main St");
        assertTrue(h != null && h.rule.id.equals("navigation"));
    }

    @Test
    public void assistantRequestBecomesACardForAnyApp() {
        expect("com.example.unknown", "처리하는 중... 어시스턴트의 요청을 처리하는 중", "assistant", 1);
        assertEquals("처리 중", rules.statusText("assistant", 1, Locale.KOREAN));
    }

    @Test
    public void onlyALowBatteryIsALowBatteryCard() {
        RuleSource.Hit low = hit("com.android.bluetooth", "Buds battery is 15%");
        assertTrue(low != null && low.rule.id.equals("battery"));
        RuleSource.Hit fine = hit("com.android.bluetooth", "Buds battery is 85%");
        assertTrue(fine == null || !fine.rule.id.equals("battery"));
    }
}
