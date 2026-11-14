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

    @Test public void aPhoneThatReportsZeroCurrentWhileChargingGetsItFromTheChargeCounter() {
        Application app = RuntimeEnvironment.getApplication();
        SharedPreferences prefs = ModuleSettings.openStore(app);
        prefs.edit().putBoolean(ModuleSettings.KEY_CHARGING_INFO, true).apply();
        ModuleSettings.configurePreview(prefs);
        shadowOf(app.getSystemService(PowerManager.class)).setIsInteractive(true);
        org.robolectric.shadows.ShadowBatteryManager manager = shadowOf(app.getSystemService(BatteryManager.class));
        manager.setIntProperty(BatteryManager.BATTERY_PROPERTY_CURRENT_NOW, 0);
        long counter = 1_000_000;
        manager.setLongProperty(BatteryManager.BATTERY_PROPERTY_CHARGE_COUNTER, counter);
        ChargingSource source = new ChargingSource(app, new Handler(Looper.getMainLooper()), () -> { });
        source.syncSettings();
        app.sendBroadcast(battery(1));
        shadowOf(Looper.getMainLooper()).idle();
        ArrayList<IslandItem> cards = new ArrayList<>();
        source.collect(cards);
        assertEquals("nothing is known yet: no made-up 0 W", "50%", cards.get(0).trailingText.toString());
        assertFalse(cards.get(0).subtitle.toString().contains("0 mA"));

        for (int i = 0; i < 4; i++) { // 1.2 A, read every five seconds
            counter += 1_667;
            manager.setLongProperty(BatteryManager.BATTERY_PROPERTY_CHARGE_COUNTER, counter);
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(5));
        }
        cards.clear();
        source.collect(cards);
        assertEquals("4.0 V at about 1.2 A", "5W", cards.get(0).trailingText.toString());
        assertTrue(cards.get(0).subtitle.toString(), cards.get(0).subtitle.toString().matches("(?s).*1[12]\\d\\d mA.*"));

        manager.setIntProperty(BatteryManager.BATTERY_PROPERTY_CURRENT_NOW, -900_000);
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(5));
        cards.clear();
        source.collect(cards);
        assertEquals("a real reading wins: 0.9 A at 4.0 V", "4W", cards.get(0).trailingText.toString());
    }

    private ArrayList<IslandItem> collect(SharedPreferences prefs, boolean stats, boolean text, int currentMicro) {
        Application app = RuntimeEnvironment.getApplication();
        prefs.edit().clear().putBoolean(ModuleSettings.KEY_CHARGING_INFO, true).putBoolean(ModuleSettings.KEY_CHARGING_STATS, stats)
                .putBoolean(ModuleSettings.KEY_CHARGING_TEXT, text).apply();
        ModuleSettings.configurePreview(prefs);
        shadowOf(app.getSystemService(PowerManager.class)).setIsInteractive(true);
        org.robolectric.shadows.ShadowBatteryManager manager = shadowOf(app.getSystemService(BatteryManager.class));
        manager.setIntProperty(BatteryManager.BATTERY_PROPERTY_CURRENT_NOW, currentMicro);
        manager.setLongProperty(BatteryManager.BATTERY_PROPERTY_CHARGE_COUNTER, 1_000_000);
        ChargingSource source = new ChargingSource(app, new Handler(Looper.getMainLooper()), () -> { });
        source.syncSettings();
        app.sendBroadcast(battery(1));
        shadowOf(Looper.getMainLooper()).idle();
        ArrayList<IslandItem> cards = new ArrayList<>();
        source.collect(cards);
        return cards;
    }

    @Test public void theChargingCardCanBeLinesOfTextInsteadOfTheGauge() {
        SharedPreferences prefs = ModuleSettings.openStore(RuntimeEnvironment.getApplication());
        try {
            IslandItem gauge = collect(prefs, true, false, 1_000_000).get(0);
            assertEquals("the gauge is the default", IslandItem.EventLayout.BATTERY, gauge.eventLayout);
            assertEquals(50, gauge.batteryPercent);
            assertNotNull(gauge.subtitle);
            assertFalse(gauge.subtitle.toString().startsWith("Now"));

            IslandItem lines = collect(prefs, true, true, 1_000_000).get(0);
            assertEquals(IslandItem.EventLayout.DEFAULT, lines.eventLayout);
            assertNull("the live reading moves into the text block", lines.subtitle);
            String block = lines.description.toString();
            assertTrue(block, block.startsWith("Now: 1000 mA (4.0 W) \u2022 31.0\u00b0\n"));
            String[] rows = block.split("\n");
            assertEquals(block, 3, rows.length);
            assertTrue(rows[1], rows[1].matches("Screen On: \\d+s \u2022 (\\d+%|\u2014) \\(\\d+ mAh\\)"));
            assertTrue(rows[2], rows[2].matches("Screen Off: \\d+s \u2022 (\\d+%|\u2014) \\(\\d+ mAh\\)"));
            assertTrue("the gauge card keeps its own wording", gauge.description.toString().startsWith("Screen on: "));
            assertEquals("the pill shows the same power as before", gauge.trailingText.toString(), lines.trailingText.toString());
            assertEquals(gauge.title.toString(), lines.title.toString());

            IslandItem noStats = collect(prefs, false, true, 1_000_000).get(0);
            assertEquals("without statistics the reading is the subtitle", "Now: 1000 mA (4.0 W) \u2022 31.0\u00b0", noStats.subtitle.toString());
            assertNull(noStats.description);
        } finally { prefs.edit().clear().apply(); ModuleSettings.configurePreview(prefs); }
    }

    @Test public void theTextLinesNeverMakeUpAZeroCurrent() {
        SharedPreferences prefs = ModuleSettings.openStore(RuntimeEnvironment.getApplication());
        try {
            IslandItem unknown = collect(prefs, false, true, 0).get(0);
            assertEquals("no reading yet: a dash and no power", "Now: \u2014 \u2022 31.0\u00b0", unknown.subtitle.toString());
            assertFalse(unknown.subtitle.toString().contains("0 mA"));
        } finally { prefs.edit().clear().apply(); ModuleSettings.configurePreview(prefs); }
    }

    private Intent battery(int plug) {
        return new Intent(Intent.ACTION_BATTERY_CHANGED).putExtra(BatteryManager.EXTRA_PLUGGED, plug)
                .putExtra(BatteryManager.EXTRA_STATUS, BatteryManager.BATTERY_STATUS_CHARGING)
                .putExtra(BatteryManager.EXTRA_LEVEL, 50).putExtra(BatteryManager.EXTRA_SCALE, 100)
                .putExtra(BatteryManager.EXTRA_VOLTAGE, 4000).putExtra(BatteryManager.EXTRA_TEMPERATURE, 310);
    }

    @Test public void theTextLinesWriteTimesTheShortWay() {
        assertEquals("0s", ChargingSource.shortDuration(0));
        assertEquals("10s", ChargingSource.shortDuration(10_999));
        assertEquals("59s", ChargingSource.shortDuration(59_000));
        assertEquals("1m 5s", ChargingSource.shortDuration(65_000));
        assertEquals("59m 59s", ChargingSource.shortDuration(3_599_000));
        assertEquals("1h 5m", ChargingSource.shortDuration(3_900_000));
        assertEquals("26h 3m", ChargingSource.shortDuration(93_800_000));
    }
}
