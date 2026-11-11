package dev.android.dynamicisland.island.source;

import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;

import android.app.Application;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.io.File;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Set;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.TemporaryFolder;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class HotspotSourceTest {
    @Rule public TemporaryFolder folder = new TemporaryFolder();

    private static void write(File file, String text) throws java.io.IOException {
        Files.write(file.toPath(), text.getBytes(java.nio.charset.StandardCharsets.UTF_8));
    }

    @Test public void trafficIsTheBytesInAndOutOfTheHotspotInterfacesOnly() throws Exception {
        File dev = folder.newFile("dev");
        write(dev,
                "Inter-|   Receive                                                |  Transmit\n"
                + " face |bytes    packets errs drop fifo frame compressed multicast|bytes    packets errs drop fifo colls carrier compressed\n"
                + "    lo: 1000 10 0 0 0 0 0 0 1000 10 0 0 0 0 0 0\n"
                + " wlan0: 5000 50 0 0 0 0 0 0 7000 70 0 0 0 0 0 0\n"
                + "swlan0: 2000 20 0 0 0 0 0 0 3000 30 0 0 0 0 0 0\n");
        assertEquals(5000L, HotspotSource.traffic(Set.of("swlan0"), dev));
        assertEquals(-1L, HotspotSource.traffic(Set.of("ap0"), dev));
        assertEquals(-1L, HotspotSource.traffic(Set.of("swlan0"), new File(folder.getRoot(), "missing")));
    }

    @Test public void clientsAreTheResolvedEntriesOnTheHotspotInterface() throws Exception {
        File arp = folder.newFile("arp");
        write(arp,
                "IP address       HW type     Flags       HW address            Mask     Device\n"
                + "192.168.43.10    0x1         0x2         aa:bb:cc:dd:ee:01     *        swlan0\n"
                + "192.168.43.11    0x1         0x2         aa:bb:cc:dd:ee:02     *        swlan0\n"
                + "192.168.43.12    0x1         0x0         aa:bb:cc:dd:ee:03     *        swlan0\n"
                + "10.0.0.1         0x1         0x2         aa:bb:cc:dd:ee:04     *        wlan0\n");
        assertEquals(2, HotspotSource.clientsOn(Set.of("swlan0"), arp));
        assertEquals(0, HotspotSource.clientsOn(Set.of("swlan0"), new File(folder.getRoot(), "missing")));
    }

    @Test public void theCardIsThereOnlyWhileTheOptionIsOnAndTheHotspotIsOn() {
        Application app = RuntimeEnvironment.getApplication();
        SharedPreferences prefs = ModuleSettings.openStore(app);
        prefs.edit().putBoolean(ModuleSettings.KEY_HOTSPOT_CARD, false).apply();
        ModuleSettings.configurePreview(prefs);
        HotspotSource source = new HotspotSource(app, new Handler(Looper.getMainLooper()), () -> { }, () -> Set.of("swlan0"));
        source.syncSettings();
        app.sendBroadcast(new Intent("android.net.wifi.WIFI_AP_STATE_CHANGED").putExtra("wifi_state", 13));
        shadowOf(Looper.getMainLooper()).idle();
        ArrayList<IslandItem> cards = new ArrayList<>(); source.collect(cards);
        assertTrue("option off: nothing is listened to", cards.isEmpty());

        prefs.edit().putBoolean(ModuleSettings.KEY_HOTSPOT_CARD, true).apply();
        ModuleSettings.configurePreview(prefs);
        source.syncSettings();
        app.sendBroadcast(new Intent("android.net.wifi.WIFI_AP_STATE_CHANGED").putExtra("wifi_state", 13));
        shadowOf(Looper.getMainLooper()).idle();
        source.collect(cards);
        assertEquals(1, cards.size());
        assertEquals("event:hotspot", cards.get(0).key);
        assertTrue(cards.get(0).subtitle.toString().contains("0"));

        app.sendBroadcast(new Intent("android.net.wifi.WIFI_AP_STATE_CHANGED").putExtra("wifi_state", 11));
        shadowOf(Looper.getMainLooper()).idle();
        cards.clear(); source.collect(cards);
        assertTrue("hotspot off: the card is gone", cards.isEmpty());

        prefs.edit().putBoolean(ModuleSettings.KEY_HOTSPOT_CARD, false).apply();
        ModuleSettings.configurePreview(prefs);
        source.syncSettings();
    }
}
