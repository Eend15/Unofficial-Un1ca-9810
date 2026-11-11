package dev.android.dynamicisland.island.source;

import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;

import android.app.Application;
import android.content.SharedPreferences;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.time.Duration;
import java.util.ArrayList;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.shadows.AudioDeviceInfoBuilder;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class HeadsetSourceTest {
    @Test public void usbConnectionIsAnnouncedOnceAndDisablingCancelsTheAnnouncement() {
        Application app = RuntimeEnvironment.getApplication();
        SharedPreferences prefs = ModuleSettings.openStore(app);
        ModuleSettings.configurePreview(prefs);
        HeadsetSource source = new HeadsetSource(app, new Handler(Looper.getMainLooper()), () -> { });
        source.syncSettings();
        prefs.edit().putBoolean(ModuleSettings.KEY_EVENT_HEADSET, true).apply();
        ModuleSettings.configurePreview(prefs);
        source.syncSettings();
        shadowOf(Looper.getMainLooper()).idle();
        ArrayList<IslandItem> cards = new ArrayList<>(); source.collect(cards); assertTrue(cards.isEmpty());
        AudioDeviceInfo device = AudioDeviceInfoBuilder.newBuilder().setType(AudioDeviceInfo.TYPE_USB_HEADSET).build();
        AudioManager audio = app.getSystemService(AudioManager.class);
        shadowOf(audio).addOutputDevice(device, true);
        shadowOf(Looper.getMainLooper()).idle();
        source.collect(cards); assertEquals(1, cards.size());
        long announced = cards.get(0).postTime;
        shadowOf(audio).addOutputDevice(device, true);
        shadowOf(Looper.getMainLooper()).idle();
        cards.clear(); source.collect(cards); assertEquals(announced, cards.get(0).postTime);
        shadowOf(audio).removeOutputDevice(device, true);
        shadowOf(Looper.getMainLooper()).idle();
        cards.clear(); source.collect(cards); assertEquals(1, cards.size());
        assertTrue(cards.get(0).postTime > announced);
        assertEquals(2500, cards.get(0).peekMillis);
        prefs.edit().putBoolean(ModuleSettings.KEY_EVENT_HEADSET, false).apply();
        ModuleSettings.configurePreview(prefs); source.syncSettings();
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(10));
        cards.clear(); source.collect(cards); assertTrue(cards.isEmpty());
    }

    @Test public void withTheOptionOnTheCardStaysWhileTheHeadsetIsInAndOffItIsGoneAfterTheAnnouncement() {
        Application app = RuntimeEnvironment.getApplication();
        SharedPreferences prefs = ModuleSettings.openStore(app);
        prefs.edit().putBoolean(ModuleSettings.KEY_EVENT_HEADSET, true).putBoolean(ModuleSettings.KEY_HEADSET_STAY, false).apply();
        ModuleSettings.configurePreview(prefs);
        HeadsetSource source = new HeadsetSource(app, new Handler(Looper.getMainLooper()), () -> { });
        source.syncSettings();
        AudioDeviceInfo device = AudioDeviceInfoBuilder.newBuilder().setType(AudioDeviceInfo.TYPE_WIRED_HEADSET).build();
        AudioManager audio = app.getSystemService(AudioManager.class);
        shadowOf(audio).addOutputDevice(device, true);
        shadowOf(Looper.getMainLooper()).idle();
        ArrayList<IslandItem> cards = new ArrayList<>(); source.collect(cards);
        assertEquals(1, cards.size());

        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(10));
        cards.clear(); source.collect(cards);
        assertTrue("without the option the card goes with its announcement", cards.isEmpty());

        prefs.edit().putBoolean(ModuleSettings.KEY_HEADSET_STAY, true).apply();
        ModuleSettings.configurePreview(prefs);
        cards.clear(); source.collect(cards);
        assertEquals(1, cards.size());
        IslandItem standing = cards.get(0);
        assertEquals("event:headset", standing.key);
        assertEquals(0L, standing.expiresAtUptime);
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMinutes(5));
        cards.clear(); source.collect(cards);
        assertEquals("it stays as long as the headset is in", 1, cards.size());
        assertEquals("and does not look new each time", standing.postTime, cards.get(0).postTime);

        shadowOf(audio).removeOutputDevice(device, true);
        shadowOf(Looper.getMainLooper()).idle();
        cards.clear(); source.collect(cards);
        assertEquals(1, cards.size());
        assertEquals(2500, cards.get(0).peekMillis);
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(10));
        cards.clear(); source.collect(cards);
        assertTrue("unplugged: nothing stays", cards.isEmpty());

        prefs.edit().putBoolean(ModuleSettings.KEY_EVENT_HEADSET, false).putBoolean(ModuleSettings.KEY_HEADSET_STAY, false).apply();
        ModuleSettings.configurePreview(prefs);
    }
}
