package dev.android.dynamicisland.island.source;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import android.app.Application;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.media.AudioManager;
import android.os.BatteryManager;
import android.os.Looper;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandHost;
import dev.android.dynamicisland.island.view.IslandView;
import java.io.File;
import java.io.FileOutputStream;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.shadows.ShadowSystemClock;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class EventSourceTest {
    private final IslandHost host = IslandHost.NONE;

    private static Intent battery(int level, int plugged) {
        return new Intent(Intent.ACTION_BATTERY_CHANGED)
                .putExtra(BatteryManager.EXTRA_LEVEL, level)
                .putExtra(BatteryManager.EXTRA_SCALE, 100)
                .putExtra(BatteryManager.EXTRA_PLUGGED, plugged)
                .putExtra("max_charging_current", 3_000_000)
                .putExtra("max_charging_voltage", 9_000_000);
    }

    private EventSource source(int[] changes) {
        Application app = RuntimeEnvironment.getApplication();
        return new EventSource(app, new android.os.Handler(Looper.getMainLooper()), () -> changes[0]++);
    }

    private void render(String name, IslandItem item) throws Exception {
        Application app = RuntimeEnvironment.getApplication();
        IslandView view = new IslandView(app, host);
        float w = 360f * app.getResources().getDisplayMetrics().density;
        float h = view.shadeCardHeight(item, w);
        Bitmap bmp = Bitmap.createBitmap(Math.round(w), Math.round(h), Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(bmp);
        c.drawColor(0xFF1B1B1F);
        view.drawShadeCard(c, item, w);
        File dir = new File("build/render");
        dir.mkdirs();
        try (FileOutputStream out = new FileOutputStream(new File(dir, name + ".png"))) {
            bmp.compress(Bitmap.CompressFormat.PNG, 100, out);
        }
    }

    @Test
    public void chargingPopupAppearsOnPlugAndExpires() throws Exception {
        int[] changes = {0};
        EventSource s = source(changes);
        s.onBattery(battery(54, 0));   // first sticky: no popup
        List<IslandItem> out = new ArrayList<>();
        s.collect(out);
        assertTrue(out.isEmpty());

        s.onBattery(battery(54, BatteryManager.BATTERY_PLUGGED_AC));
        s.collect(out);
        assertEquals(1, out.size());
        IslandItem it = out.get(0);
        assertEquals(IslandItem.Kind.EVENT, it.kind);
        assertEquals("54%", it.trailingText.toString());
        assertEquals(0.54f, it.progress, 0.001f);
        assertNotNull(it.icon);
        assertTrue(changes[0] > 0);
        render("event_charging", it);

        // percentage keeps updating while visible
        s.onBattery(battery(55, BatteryManager.BATTERY_PLUGGED_AC));
        out.clear();
        s.collect(out);
        assertEquals("55%", out.get(0).trailingText.toString());

        ShadowSystemClock.advanceBy(Duration.ofSeconds(5));
        out.clear();
        s.collect(out);
        assertTrue(out.isEmpty());
    }

    @Test
    public void unplugRemovesChargingAndLowBatteryFiresOnce() throws Exception {
        EventSource s = source(new int[1]);
        s.onBattery(battery(40, BatteryManager.BATTERY_PLUGGED_AC));
        s.onBattery(battery(41, 0));
        List<IslandItem> out = new ArrayList<>();
        s.collect(out);
        assertTrue(out.isEmpty());

        s.onBattery(battery(15, 0));
        s.collect(out);
        assertEquals(1, out.size());
        render("event_low_battery", out.get(0));
        out.clear();
        s.onBattery(battery(14, 0));  // must not retrigger
        ShadowSystemClock.advanceBy(Duration.ofSeconds(7));
        s.collect(out);
        assertTrue(out.isEmpty());
    }

    @Test
    public void ringerModes() throws Exception {
        EventSource s = source(new int[1]);
        int[] modes = {AudioManager.RINGER_MODE_SILENT, AudioManager.RINGER_MODE_VIBRATE, AudioManager.RINGER_MODE_NORMAL};
        String[] names = {"event_silent", "event_vibrate", "event_ring"};
        for (int i = 0; i < modes.length; i++) {
            s.onRinger(new Intent(AudioManager.RINGER_MODE_CHANGED_ACTION).putExtra(AudioManager.EXTRA_RINGER_MODE, modes[i]));
            List<IslandItem> out = new ArrayList<>();
            s.collect(out);
            assertEquals(1, out.size());
            render(names[i], out.get(0));
            ShadowSystemClock.advanceBy(Duration.ofSeconds(3));
        }
    }

    @Test
    public void toggleEventsOnlyFireOnRealChanges() throws Exception {
        EventSource s = source(new int[1]);
        List<IslandItem> out = new ArrayList<>();
        s.onToggle("dnd", false);               // baseline "off": nothing happened
        s.collect(out);
        assertTrue(out.isEmpty());

        s.onToggle("dnd", true);
        s.collect(out);
        assertEquals(1, out.size());
        assertEquals("Do Not Disturb on", out.get(0).title.toString());
        render("event_dnd_on", out.get(0));

        out.clear();
        s.onToggle("dnd", true);                // same state again: ignored (same item stays, not re-added)
        ShadowSystemClock.advanceBy(Duration.ofSeconds(3));
        s.collect(out);
        assertTrue(out.isEmpty());

        s.onToggle("dnd", false);
        s.collect(out);
        assertEquals("Do Not Disturb off", out.get(0).title.toString());
        render("event_dnd_off", out.get(0));

        String[] names = {"airplane", "powersave", "torch", "hotspot", "rotate"};
        for (String n : names) {
            s.onToggle(n, true);
            out.clear();
            s.collect(out);
            IslandItem shown = null;
            for (IslandItem it : out) {
                if (it.key.endsWith(n)) {
                    shown = it;
                }
            }
            assertNotNull(n, shown);
            render("event_toggle_" + n, shown);
        }
    }

    @Test
    public void torchBaselineIsNotAnEvent() {
        EventSource s = source(new int[1]);
        s.onTorch("0", false);   // registration reports the current state per camera
        s.onTorch("1", false);
        List<IslandItem> out = new ArrayList<>();
        s.collect(out);
        assertTrue(out.isEmpty());
        s.onTorch("0", true);
        s.collect(out);
        assertEquals(1, out.size());
        assertEquals("Flashlight on", out.get(0).title.toString());
    }
}
