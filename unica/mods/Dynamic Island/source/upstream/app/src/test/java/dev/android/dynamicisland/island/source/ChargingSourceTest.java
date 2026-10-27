package dev.android.dynamicisland.island.source;

import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;

import android.app.Application;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.BatteryManager;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
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
@Config(sdk = 35)
public class ChargingSourceTest {
    @Test public void sleepAndCoarseSignedCounterChangesKeepMeasuredTimeAndNetCharge() throws Exception {
        ChargingSession session = new ChargingSession(1_000, true);
        session.sample(1_000, true, 50, 1_000_000);
        session.sample(11_000, false, 51, 1_000_000);
        session.sample(131_000, false, 54, 1_030_000);
        assertEquals(10_000, session.onMs);
        assertEquals(120_000, session.offMs);
        assertEquals(30_000d * 10 / 130, session.onUah, .01);
        session.sample(141_000, false, 53, 1_025_000);
        assertEquals(25_000, session.onUah + session.offUah, .01);
        assertEquals(3, session.onPercent + session.offPercent, .01);

        String saved = session.checkpoint(7, 1).toString();
        assertNull(ChargingSession.restore(saved, 146_000, 8, 1, true, 53, 1_025_000));
        assertNull(ChargingSession.restore(saved, 300_000, 7, 1, true, 53, 1_025_000));
        ChargingSession restored = ChargingSession.restore(saved, 146_000, 7, 1, true, 53, 1_025_000);
        assertNotNull(restored);
        restored.sample(156_000, true, 53, 1_025_000);
        assertEquals(20_000, restored.onMs);
        assertEquals(130_000, restored.offMs);
        assertEquals(25_000, restored.onUah + restored.offUah, .01);
    }

    @Test public void optionalCardAndStatisticsStartOnDemandAndStopTheirListenersAndTimer() {
        Application app = RuntimeEnvironment.getApplication();
        SharedPreferences prefs = ModuleSettings.openStore(app);
        ModuleSettings.configurePreview(prefs);
        shadowOf(app.getSystemService(PowerManager.class)).setIsInteractive(true);
        shadowOf(app.getSystemService(BatteryManager.class)).setIntProperty(BatteryManager.BATTERY_PROPERTY_CURRENT_NOW, 1_000_000);
        shadowOf(app.getSystemService(BatteryManager.class)).setLongProperty(BatteryManager.BATTERY_PROPERTY_CHARGE_COUNTER, 1_000_000);
        int initialReceivers = shadowOf(app).getRegisteredReceivers().size();
        int[] changes = {0};
        ChargingSource source = new ChargingSource(app, new Handler(Looper.getMainLooper()), () -> changes[0]++);
        source.syncSettings();
        assertEquals(initialReceivers, shadowOf(app).getRegisteredReceivers().size());
        prefs.edit().putBoolean(ModuleSettings.KEY_CHARGING_INFO, true).apply();
        ModuleSettings.configurePreview(prefs);
        source.syncSettings();
        app.sendBroadcast(battery(1));
        shadowOf(Looper.getMainLooper()).idle();
        ArrayList<IslandItem> cards = new ArrayList<>();
        source.collect(cards);
        assertEquals(1, cards.size());
        assertEquals(IslandItem.Kind.EVENT, cards.get(0).kind);
        assertNull(cards.get(0).description);
        assertEquals("4W", cards.get(0).trailingText.toString());

        prefs.edit().putBoolean(ModuleSettings.KEY_CHARGING_STATS, true).apply();
        ModuleSettings.configurePreview(prefs);
        source.syncSettings();
        cards.clear(); source.collect(cards);
        assertNotNull(cards.get(0).description);
        prefs.edit().putBoolean(ModuleSettings.KEY_CHARGING_INFO, false).apply();
        ModuleSettings.configurePreview(prefs);
        source.syncSettings();
        int stopped = changes[0];
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(30));
        assertEquals(stopped, changes[0]);
        assertEquals(initialReceivers, shadowOf(app).getRegisteredReceivers().size());
        cards.clear(); source.collect(cards); assertTrue(cards.isEmpty());
    }

    private Intent battery(int plug) {
        return new Intent(Intent.ACTION_BATTERY_CHANGED).putExtra(BatteryManager.EXTRA_PLUGGED, plug)
                .putExtra(BatteryManager.EXTRA_STATUS, BatteryManager.BATTERY_STATUS_CHARGING)
                .putExtra(BatteryManager.EXTRA_LEVEL, 50).putExtra(BatteryManager.EXTRA_SCALE, 100)
                .putExtra(BatteryManager.EXTRA_VOLTAGE, 4000).putExtra(BatteryManager.EXTRA_TEMPERATURE, 310);
    }
}
