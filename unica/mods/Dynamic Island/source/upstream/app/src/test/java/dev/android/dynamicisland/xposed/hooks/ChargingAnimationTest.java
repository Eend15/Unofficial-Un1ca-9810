package dev.android.dynamicisland.xposed.hooks;

import static org.junit.Assert.*;

import android.content.SharedPreferences;
import dev.android.dynamicisland.settings.ModuleSettings;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class ChargingAnimationTest {
    private record Transition(boolean current, boolean previous) { }
    private static class BatteryEvent { }
    private static class PrivacyEvent { }

    @Test
    public void defaultPreventsTheChipAndStatusIconHidingAndOptInRestoresChargingTransitions() {
        SharedPreferences prefs = RuntimeEnvironment.getApplication().getSharedPreferences("charging-animation-test", 0);
        prefs.edit().clear().putBoolean(ModuleSettings.KEY_EVENT_CHARGING, false).commit();
        try {
            ModuleSettings.configurePreview(prefs);
            assertFalse(ModuleSettings.stockChargingAnimation());
            Transition charging = new Transition(true, false);
            Transition idle = new Transition(false, false);
            Transition result = (Transition) ChargingAnimation.transitionResult(charging, idle, ModuleSettings.stockChargingAnimation());
            assertFalse(result.current() && !result.previous()); // Samsung's downstream charging-VI filter
            assertFalse(result.current()); // battery and status icons keep their regular presentation
            assertTrue(ChargingAnimation.suppressEvent(new BatteryEvent(), BatteryEvent.class, ModuleSettings.stockChargingAnimation()));
            prefs.edit().putBoolean(ModuleSettings.KEY_STOCK_CHARGING_ANIMATION, true).commit();
            ModuleSettings.configurePreview(prefs);
            assertTrue(ModuleSettings.stockChargingAnimation());
            assertSame(charging, ChargingAnimation.transitionResult(charging, idle, ModuleSettings.stockChargingAnimation()));
            assertFalse(ChargingAnimation.suppressEvent(new BatteryEvent(), BatteryEvent.class, ModuleSettings.stockChargingAnimation()));
        } finally {
            prefs.edit().clear().commit();
            ModuleSettings.configurePreview(prefs);
        }
    }

    @Test
    public void privacyAndUnrelatedEventsStillReachTheSharedAnimationScheduler() {
        assertFalse(ChargingAnimation.suppressEvent(new PrivacyEvent(), BatteryEvent.class, false));
        assertFalse(ChargingAnimation.suppressEvent(new Object(), BatteryEvent.class, false));
        assertFalse(ChargingAnimation.suppressEvent(null, BatteryEvent.class, false));
    }
}
