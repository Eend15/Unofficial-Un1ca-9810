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
}
