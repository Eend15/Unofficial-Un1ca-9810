package dev.android.dynamicisland.island.source;

import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;
import android.app.Notification;
import android.app.PendingIntent;
import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.os.BatteryManager;
import android.os.Handler;
import android.os.Looper;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=35)
public class AdditionalElevenSourceTest {
    @Test public void theFirstOffAfterAnInitiallyLitTorchProducesATogglePopup() {
        var app=RuntimeEnvironment.getApplication();var prefs=ModuleSettings.openStore(app);
        prefs.edit().clear().putBoolean(ModuleSettings.KEY_TORCH_PILL,false).commit();ModuleSettings.configurePreview(prefs);
        var source=new EventSource(app,new Handler(Looper.getMainLooper()),()->{});
        source.onTorch("0",true);
        var cards=new ArrayList<IslandItem>();source.collect(cards);assertTrue(cards.isEmpty());
        source.onTorch("0",false);source.collect(cards);
        assertEquals(1,cards.size());assertTrue(cards.get(0).key.contains("torch"));
        assertTrue(cards.get(0).title.toString().toLowerCase().contains("off"));
    }
    @Test public void dischargingMeasurementsKeepTheirSignEvenWhileStatusSaysCharging() {
        var app=RuntimeEnvironment.getApplication();var prefs=ModuleSettings.openStore(app);
        prefs.edit().clear().putBoolean(ModuleSettings.KEY_CHARGING_INFO,true).commit();ModuleSettings.configurePreview(prefs);
        shadowOf(app.getSystemService(BatteryManager.class)).setIntProperty(BatteryManager.BATTERY_PROPERTY_CURRENT_NOW,-500_000);
        var source=new ChargingSource(app,new Handler(Looper.getMainLooper()),()->{});source.syncSettings();
        app.sendBroadcast(new Intent(Intent.ACTION_BATTERY_CHANGED).putExtra(BatteryManager.EXTRA_PLUGGED,1)
                .putExtra(BatteryManager.EXTRA_STATUS,BatteryManager.BATTERY_STATUS_CHARGING)
                .putExtra(BatteryManager.EXTRA_LEVEL,50).putExtra(BatteryManager.EXTRA_SCALE,100).putExtra(BatteryManager.EXTRA_VOLTAGE,4000));
        shadowOf(Looper.getMainLooper()).idle();
        var cards=new ArrayList<IslandItem>();source.collect(cards);assertEquals(1,cards.size());
        assertTrue(cards.get(0).subtitle.toString().contains("-500"));
        assertTrue(cards.get(0).trailingText.toString().contains("-2"));
        prefs.edit().putBoolean(ModuleSettings.KEY_CHARGING_INFO,false).commit();ModuleSettings.configurePreview(prefs);source.syncSettings();
    }
    @Test public void promotedIndeterminateProgressSurvivesTheSourceAndSubsequentUpdates() {
        var app=RuntimeEnvironment.getApplication();ModuleSettings.configurePreview(ModuleSettings.openStore(app));
        var source=new PromotedSource(app,new Handler(Looper.getMainLooper()),()->{});
        try {
            PromotedSource.setEnabled(true);
            var n=new Notification.Builder(app,"live").setSmallIcon(android.R.drawable.stat_notify_chat)
                    .setContentTitle("Preparing").setOngoing(true).setProgress(0,0,true).build();
            n.extras.putBoolean("android.requestPromotedOngoing",true);
            var sbn=new android.service.notification.StatusBarNotification("example.live","example.live",1,null,10100,1,0,n,android.os.Process.myUserHandle(),System.currentTimeMillis());
            n.flags |= 0x40000;
            source.update(List.of(sbn));var cards=new ArrayList<IslandItem>();source.collect(cards,null);
            assertEquals(1,cards.size());assertTrue(cards.get(0).progressIndeterminate);
            assertEquals(IslandItem.Trailing.PROGRESS_RING,cards.get(0).trailing);
            n.extras.putBoolean(Notification.EXTRA_PROGRESS_INDETERMINATE,false);
            source.update(List.of(sbn));cards.clear();source.collect(cards,null);assertFalse(cards.get(0).progressIndeterminate);
            n.extras.putBoolean(Notification.EXTRA_PROGRESS_INDETERMINATE,true);
            source.update(List.of(sbn));cards.clear();source.collect(cards,null);assertTrue(cards.get(0).progressIndeterminate);
        } finally { PromotedSource.setEnabled(false); }
    }
    @Test public void matchingBluetoothAddressesBeatDuplicateNamesAndAmbiguityHasNoBatteryGuess() {
        var adapter=android.bluetooth.BluetoothAdapter.getDefaultAdapter();
        BluetoothDevice other=adapter.getRemoteDevice("00:11:22:33:44:55"),active=adapter.getRemoteDevice("00:11:22:33:44:66");
        shadowOf(other).setName("Same name");shadowOf(active).setName("Same name");
        shadowOf(other).setConnected(true);shadowOf(active).setConnected(true);
        var devices=new LinkedHashSet<>(List.of(other,active));
        assertSame(active,OutputSource.selectBluetooth(devices,"Same name",active.getAddress()));
        assertNull(OutputSource.selectBluetooth(devices,"Same name",null));
        assertNull(OutputSource.selectBluetooth(devices,"Same name","00:00:00:00:00:00"));
        shadowOf(other).setConnected(false);
        assertSame(active,OutputSource.selectBluetooth(devices,"Same name",null));
    }
}
