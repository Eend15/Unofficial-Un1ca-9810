package dev.android.dynamicisland.island.source;

import static org.junit.Assert.*;
import android.app.Application;
import android.app.Notification;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.detect.OtpDetector;
import dev.android.dynamicisland.island.detect.TextProgress;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.rules.RuleDictionary;
import dev.android.dynamicisland.island.rules.RuleStore;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.util.ArrayList;
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
public class AdditionalSourceRegressionTest {
    private final Application app = RuntimeEnvironment.getApplication();
    private final Handler main = new Handler(Looper.getMainLooper());
    @After public void reset() { RuleStore.setForTesting(null); }
    private StatusBarNotification note(int id, long post, String text) {
        Notification n = new Notification.Builder(app, "test").setSmallIcon(android.R.drawable.stat_notify_chat)
                .setContentTitle("Test").setContentText(text).build();
        return new StatusBarNotification("example.order", "example.order", id, null, 10100, 1, 0, n, android.os.Process.myUserHandle(), post);
    }
    @Test public void alphanumericCodesAreNeverReducedToTheirDigits() {
        assertEquals("AB1234", OtpDetector.detect("Your verification code is AB1234").code);
        assertEquals("12AB34", OtpDetector.detect("Your verification code is 12AB34").code);
        assertEquals("AB1234", OtpDetector.detect("Your verification code is AB1234").display());
        assertEquals("123456", OtpDetector.detect("Your verification code is 123 456").code);
        assertNull(OtpDetector.detect("Your verification code is WORDONLY"));
    }
    private void rules(String extra) {
        RuleStore.setForTesting(RuleDictionary.fromJson("{\"smart_rules\":[{\"id\":\"test\",\"package_hints\":[\"example.order\"],\"max_stage\":2,\"ttl_min\":1," + extra
                + "\"signals\":[{\"stage\":1,\"pattern\":\"working\"}]}]}"));
    }
    @Test public void theFirstPostAfterACooldownIsAcceptedEvenWithoutAnInterveningUpdate() {
        rules("\"cooldown_min\":1,");
        var source = new RuleSource(app, main, () -> {});
        long[] now = {1_000_000}; source.clock = () -> now[0];
        source.update(List.of(note(1, now[0], "working")));
        assertEquals(1, source.snapshot().size());
        now[0] += 180_000;
        source.update(List.of(note(1, now[0], "working")));
        var out = new ArrayList<IslandItem>(); source.collect(out, null);
        assertEquals("first fresh posting is not discarded", 1, out.size());
    }
    @Test public void aLateRefreshOfAnExpiredNotificationCannotRestartItsCooldown() {
        rules("\"cooldown_min\":1,");
        var source = new RuleSource(app, main, () -> {});
        long[] now = {1_000_000}; source.clock = () -> now[0];
        var original = note(1, now[0], "working");source.update(List.of(original));
        now[0] += 180_000;source.update(List.of(original));
        source.update(List.of(note(1, now[0], "working")));
        var out = new ArrayList<IslandItem>(); source.collect(out, null);assertEquals(1, out.size());
    }
    @Test public void expiringVisibleCardsPromotesAWaitingCandidateWithoutNewNotifications() {
        RuleStore.setForTesting(RuleDictionary.fromJson("{\"smart_rules\":[{\"id\":\"test\",\"package_hints\":[\"example.order\"],"
                + "\"max_stage\":2,\"ttl_min\":10,\"final_ttl_min\":1,\"signals\":[{\"stage\":1,\"pattern\":\"working\"},{\"stage\":2,\"pattern\":\"done\"}]}]}"));
        var source = new RuleSource(app, main, () -> {});
        long[] now = {1_000_000}; source.clock = () -> now[0];
        source.update(List.of(note(1, now[0], "done"), note(2, now[0], "done"), note(3, now[0], "done"),
                note(4, now[0] - 50_000, "working")));
        assertEquals(3, source.snapshot().size());
        now[0] += 61_000;
        var out = new ArrayList<IslandItem>(); source.collect(out, null);
        assertEquals(1, out.size());assertEquals(note(4, 0, "working").getKey(), out.get(0).sourceKey);
    }
    @Test public void progressContextUsesTheConfiguredWindowForBothFormats() {
        RuleStore.setForTesting(RuleDictionary.fromJson("{\"text_progress_context_window\":240}"));
        String prefix = "Downloading " + ".".repeat(100) + " ";
        assertEquals(50, TextProgress.detect(prefix + "50%"));
        assertEquals(50, TextProgress.detect(prefix + "500/1000 MB"));
        RuleStore.setForTesting(RuleDictionary.fromJson("{\"text_progress_context_window\":24}"));
        assertEquals(-1, TextProgress.detect(prefix + "50%"));
    }
    @Test public void aCameraSwitchRefreshesStrengthEvenWhenTheFlashStaysOn() {
        var source = new TorchSource(app, main, () -> {});
        source.configure("old", 5, 5, true);
        source.configure("new", 2, 1, false);
        source.configure("old", 5, 5, true);
        ReflectionHelpers.callInstanceMethod(source, "onCamera", ReflectionHelpers.ClassParameter.from(String.class, "new"),
                ReflectionHelpers.ClassParameter.from(boolean.class, true));
        assertTrue(source.card().sliderValue >= 0 && source.card().sliderValue <= 1);
        assertEquals("100%", source.card().trailingText.toString());
    }
    @Test public void aFailedClipboardWriteKeepsTheCopyButtonAndOriginalPopupDeadline() {
        Context missingClipboard = new ContextWrapper(app) {
            @Override public Object getSystemService(String name) { return Context.CLIPBOARD_SERVICE.equals(name) ? null : super.getSystemService(name); }
        };
        var source = new PeekSource(missingClipboard, main, () -> {});
        var n = note(10, System.currentTimeMillis(), "Verification code 123456");
        var card = source.otpItem(n, OtpDetector.detect("Verification code 123456"), false);
        source.show(card, 8_000);
        card.actions.get(0).runnable.run();
        assertSame(card, source.showing());assertFalse(source.showing().actions.get(0).active);
        assertFalse(source.copy("123456"));
        assertTrue(new PeekSource(app, main, () -> {}).copy("123456"));
    }
}
