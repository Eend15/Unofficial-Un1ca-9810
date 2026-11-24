package dev.android.dynamicisland.island.source;

import dev.android.dynamicisland.testutil.RenderCapture;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import android.app.Application;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.BatteryManager;
import android.os.Looper;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandHost;
import dev.android.dynamicisland.island.view.IslandView;
import java.io.File;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import dev.android.dynamicisland.settings.ModuleSettings;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.shadows.ShadowSystemClock;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class EventSourceTest {
    static {
        // icons play as animations; draw their finished frame so renders do not depend on the clock
        dev.android.dynamicisland.island.graphics.GlyphIcon.setPlaybackFrozen(true);
    }

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
        RenderCapture.write(bmp, new File(dir, name + ".png"));
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
        assertNull(it.icon); // Battery pictograms are hidden by default.
        assertTrue(changes[0] > 0);
        render("event_charging", it);

        // percentage keeps updating while visible
        s.onBattery(battery(55, BatteryManager.BATTERY_PLUGGED_AC));
        out.clear();
        s.collect(out);
        assertEquals("55%", out.get(0).trailingText.toString());
        assertTrue("battery updates must retain popup priority", out.get(0).transientPopup);
        assertEquals("updates do not restart its lifetime", it.expiresAtUptime, out.get(0).expiresAtUptime);

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
        ShadowSystemClock.advanceBy(Duration.ofSeconds(5)); // longer than the 4 s popup time
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
    public void theWidePopupCanBeSwitchedOffAndTheChargingPopupIsThenAnOrdinaryPill() throws Exception {
        android.content.SharedPreferences prefs = RuntimeEnvironment.getApplication().getSharedPreferences("charging-narrow", 0);
        try {
            prefs.edit().clear().putBoolean(ModuleSettings.KEY_WIDE_CHARGING_POPUP, false).commit();
            ModuleSettings.configurePreview(prefs);
            EventSource s = source(new int[1]);
            List<IslandItem> out = new ArrayList<>();
            s.onBattery(battery(54, 0));
            s.onBattery(battery(54, BatteryManager.BATTERY_PLUGGED_AC));
            s.collect(out);
            assertEquals(1, out.size());
            assertFalse(out.get(0).fullWidth);
            assertNull(out.get(0).compactLabel);
        } finally {
            prefs.edit().clear().commit();
            ModuleSettings.configurePreview(prefs);
        }
    }

    @Test
    public void theChargingPopupTakesTheFullWidthWhileSamsungsOwnEffectIsOff() throws Exception {
        android.content.SharedPreferences prefs = RuntimeEnvironment.getApplication().getSharedPreferences("charging-width", 0);
        try {
            for (boolean stock : new boolean[] {false, true}) {
                prefs.edit().clear().putBoolean(ModuleSettings.KEY_STOCK_CHARGING_ANIMATION, stock).commit();
                ModuleSettings.configurePreview(prefs);
                EventSource s = source(new int[1]);
                List<IslandItem> out = new ArrayList<>();
                s.onBattery(battery(54, 0));
                s.onBattery(battery(54, BatteryManager.BATTERY_PLUGGED_AC));
                s.collect(out);
                assertEquals(1, out.size());
                assertEquals("Samsung's effect " + (stock ? "on" : "off"), !stock, out.get(0).fullWidth);
                assertEquals("the word goes on the left of the wide pill only", !stock, out.get(0).compactLabel != null);
            }
        } finally {
            prefs.edit().clear().commit();
            ModuleSettings.configurePreview(prefs);
        }
    }

    @Test
    public void popupsThatComeWhileTheShadeIsOpenWaitForItToClose() throws Exception {
        EventSource s = source(new int[1]);
        List<IslandItem> out = new ArrayList<>();
        s.onBattery(battery(54, 0));
        s.setShadeOpen(true);
        s.onBattery(battery(54, BatteryManager.BATTERY_PLUGGED_AC));
        ShadowSystemClock.advanceBy(Duration.ofSeconds(10)); // far longer than the popup lasts
        s.collect(out);
        assertTrue("nothing is shown under the shade", out.isEmpty());

        s.setShadeOpen(false);
        s.collect(out);
        assertEquals("it shows when the shade is closed", 1, out.size());
        ShadowSystemClock.advanceBy(Duration.ofSeconds(3));
        out.clear();
        s.collect(out);
        assertEquals("and for its full time", 1, out.size());
        ShadowSystemClock.advanceBy(Duration.ofSeconds(2));
        out.clear();
        s.collect(out);
        assertTrue(out.isEmpty());
    }

    @Test
    public void aQuickSettingSwitchedInTheShadeIsNotAnnounced() throws Exception {
        EventSource s = source(new int[1]);
        List<IslandItem> out = new ArrayList<>();
        s.onToggle("dnd", false);
        s.setShadeOpen(true);
        s.onToggle("dnd", true);
        s.setShadeOpen(false);
        s.collect(out);
        assertTrue("the tile already shows it", out.isEmpty());
        s.onToggle("dnd", false);
        s.collect(out);
        assertEquals("outside the shade it is announced as before", 1, out.size());
    }

    @Test
    public void aPopupThatWaitedTooLongIsDropped() throws Exception {
        EventSource s = source(new int[1]);
        List<IslandItem> out = new ArrayList<>();
        s.onBattery(battery(54, 0));
        s.setShadeOpen(true);
        s.onBattery(battery(54, BatteryManager.BATTERY_PLUGGED_AC));
        ShadowSystemClock.advanceBy(Duration.ofSeconds(40));
        s.setShadeOpen(false);
        s.collect(out);
        assertTrue("news from 40 seconds ago is not shown", out.isEmpty());
    }

    @Test
    public void aPopupThatWasAlreadyOverWhenTheShadeOpenedDoesNotComeBack() throws Exception {
        EventSource s = source(new int[1]);
        List<IslandItem> out = new ArrayList<>();
        s.onBattery(battery(54, 0));
        s.onBattery(battery(54, BatteryManager.BATTERY_PLUGGED_AC));
        ShadowSystemClock.advanceBy(Duration.ofSeconds(6));
        s.setShadeOpen(true);
        s.setShadeOpen(false);
        s.collect(out);
        assertTrue(out.isEmpty());
    }
    @Test public void closingTheShadeRestartsAnAlreadyVisiblePopupForItsFullTimeByDesign() {
        EventSource s=source(new int[1]);List<IslandItem> out=new ArrayList<>();
        s.onBattery(battery(54,0));s.onBattery(battery(54,BatteryManager.BATTERY_PLUGGED_AC));
        s.collect(out);assertEquals(1,out.size());
        ShadowSystemClock.advanceBy(Duration.ofSeconds(3));
        s.setShadeOpen(true);
        ShadowSystemClock.advanceBy(Duration.ofSeconds(2));
        s.setShadeOpen(false);
        ShadowSystemClock.advanceBy(Duration.ofSeconds(3));
        out.clear();s.collect(out);
        assertEquals("an existing popup receives its full duration again, not just its old remainder",1,out.size());
        ShadowSystemClock.advanceBy(Duration.ofSeconds(2));out.clear();s.collect(out);assertTrue(out.isEmpty());
    }

}
