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
    public void adsAndChatAreLeftAlone() {
        assertTrue(hit("com.dd.doordash", "Save $5 off your next order! Free delivery on orders over $15") == null);
        assertTrue(hit("com.amazon.mshop.android.shopping", "Prime Day deal: 30% off, delivered fast") == null);
        assertTrue(hit("com.whatsapp", "Your driver is arriving in 3 min") == null);
        assertFalse(rules.blockedSourcePackages.isEmpty());
    }

}
