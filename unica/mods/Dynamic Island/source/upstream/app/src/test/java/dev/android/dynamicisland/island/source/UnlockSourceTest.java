package dev.android.dynamicisland.island.source;

import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;

import android.app.Application;
import android.app.KeyguardManager;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Looper;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.time.Duration;
import java.util.ArrayList;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@org.robolectric.annotation.GraphicsMode(org.robolectric.annotation.GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class UnlockSourceTest {
    /** Stands in for System UI's KeyguardUpdateMonitor: the same three questions. */
    public static final class FakeMonitor {
        boolean face, biometric, trust;
        public boolean getUserUnlockedWithFace(int user) { return face; }
        public boolean getUserUnlockedWithBiometric(int user) { return biometric; }
        public boolean getUserHasTrust(int user) { return trust; }
    }

    @org.junit.Before public void noBiometricYet() {
        UnlockSource.forgetBiometric();
    }

    @Test public void aBiometricAcceptedJustBeforeTheKeyguardWentAwayIsTheMethodEvenWhenSystemUiForgotIt() {
        FakeMonitor forgotten = new FakeMonitor(); // System UI clears its record before the keyguard has gone
        long now = android.os.SystemClock.uptimeMillis();
        assertEquals(UnlockSource.Method.PIN, UnlockSource.decide(forgotten, 0, now));

        UnlockSource.biometricAuthenticated(false);
        assertEquals("a fingerprint was accepted a moment ago", UnlockSource.Method.FINGERPRINT, UnlockSource.decide(forgotten, 0, now + 1500));
        UnlockSource.biometricAuthenticated(true);
        assertEquals(UnlockSource.Method.FACE, UnlockSource.decide(forgotten, 0, android.os.SystemClock.uptimeMillis() + 800));
        assertEquals("an old one is not the way this unlock happened", UnlockSource.Method.PIN,
                UnlockSource.decide(forgotten, 0, android.os.SystemClock.uptimeMillis() + 60_000));
        forgotten.trust = true;
        assertEquals(UnlockSource.Method.TRUSTED, UnlockSource.decide(forgotten, 0, android.os.SystemClock.uptimeMillis() + 60_000));
    }

    @Test public void theMethodIsWhatTheKeyguardMonitorReportsAndPinWhenItReportsNothing() {
        FakeMonitor monitor = new FakeMonitor();
        assertEquals(UnlockSource.Method.PIN, UnlockSource.read(monitor, 0));
        monitor.trust = true;
        assertEquals(UnlockSource.Method.TRUSTED, UnlockSource.read(monitor, 0));
        monitor.biometric = true;
        assertEquals("a biometric that is not the face is the fingerprint", UnlockSource.Method.FINGERPRINT, UnlockSource.read(monitor, 0));
        monitor.face = true;
        assertEquals(UnlockSource.Method.FACE, UnlockSource.read(monitor, 0));
        assertEquals("nothing known: the PIN", UnlockSource.Method.PIN, UnlockSource.read(null, 0));
    }

    @Test public void theCardAppearsOnlyWithTheOptionOnAndALockSetAndGoesAway() {
        Application app = RuntimeEnvironment.getApplication();
        SharedPreferences prefs = ModuleSettings.openStore(app);
        UnlockSource source = new UnlockSource(app, new Handler(Looper.getMainLooper()), () -> { });
        shadowOf(app.getSystemService(KeyguardManager.class)).setIsDeviceSecure(true);
        FakeMonitor monitor = new FakeMonitor();
        monitor.face = true;
        UnlockSource.rememberMonitor(monitor);

        prefs.edit().putBoolean(ModuleSettings.KEY_UNLOCK_NOTICE, false).apply();
        ModuleSettings.configurePreview(prefs);
        source.onUnlocked();
        ArrayList<IslandItem> cards = new ArrayList<>(); source.collect(cards);
        assertTrue("option off: no card", cards.isEmpty());

        prefs.edit().putBoolean(ModuleSettings.KEY_UNLOCK_NOTICE, true).apply();
        ModuleSettings.configurePreview(prefs);
        shadowOf(app.getSystemService(KeyguardManager.class)).setIsDeviceSecure(false);
        source.onUnlocked();
        source.collect(cards);
        assertTrue("no lock set: nothing to say", cards.isEmpty());

        shadowOf(app.getSystemService(KeyguardManager.class)).setIsDeviceSecure(true);
        source.onUnlocked();
        source.collect(cards);
        assertEquals(1, cards.size());
        assertEquals("event:unlock", cards.get(0).key);
        assertEquals("the right half of the pill says how", IslandItem.Trailing.TEXT, cards.get(0).trailing);
        assertEquals(app.getString(app.getResources().getIdentifier("island_unlock_label_face", "string", app.getPackageName())),
                cards.get(0).trailingText.toString());
        assertEquals(app.getString(app.getResources().getIdentifier("island_unlocked_face", "string", app.getPackageName())),
                cards.get(0).title.toString());

        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(5));
        cards.clear(); source.collect(cards);
        assertTrue("it goes after a few seconds", cards.isEmpty());

        prefs.edit().putBoolean(ModuleSettings.KEY_UNLOCK_NOTICE, false).apply();
        ModuleSettings.configurePreview(prefs);
    }

    @Test public void theNewGlyphsDrawSomething() {
        for (GlyphIcon.Kind kind : new GlyphIcon.Kind[] {GlyphIcon.Kind.FINGERPRINT, GlyphIcon.Kind.FACE, GlyphIcon.Kind.PIN}) {
            Bitmap bitmap = Bitmap.createBitmap(96, 96, Bitmap.Config.ARGB_8888);
            GlyphIcon icon = GlyphIcon.of(kind);
            icon.setBounds(0, 0, 96, 96);
            icon.setTint(0xFFFFFFFF);
            icon.draw(new Canvas(bitmap));
            int lit = 0;
            for (int y = 0; y < 96; y++) for (int x = 0; x < 96; x++) if ((bitmap.getPixel(x, y) >>> 24) > 0) lit++;
            assertTrue(kind + " draws something but not a filled square", lit > 150 && lit < 96 * 96 / 2);
        }
    }

    @Test public void theKindOfBiometricComesFromTheNameOfTheEnumConstantInTheArguments() throws Exception {
        Class<?> hooks = Class.forName("dev.android.dynamicisland.xposed.hooks.UnlockHooks");
        java.lang.reflect.Method kind = hooks.getDeclaredMethod("faceOrFingerprint", Object[].class);
        kind.setAccessible(true);
        enum Source { FACE, FINGERPRINT, IRIS }
        assertEquals(Boolean.TRUE, kind.invoke(null, (Object) new Object[] {0, Source.FACE, true}));
        assertEquals(Boolean.FALSE, kind.invoke(null, (Object) new Object[] {0, Source.FINGERPRINT, true}));
        assertEquals(Boolean.FALSE, kind.invoke(null, (Object) new Object[] {0, Source.IRIS, true}));
        assertNull(kind.invoke(null, (Object) new Object[] {0, "something else", true}));
        assertNull(kind.invoke(null, (Object) null));
    }
}
