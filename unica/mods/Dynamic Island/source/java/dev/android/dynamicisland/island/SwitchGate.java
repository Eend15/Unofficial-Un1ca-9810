package dev.android.dynamicisland.island;

import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * The last check before the island is drawn: an item whose own switch is off is dropped, whichever source made it.
 * Each source checks its switch too; this catches an item that got through another way (a stock notification of the
 * battery manager that became a card, an item kept from before the switch was turned off).
 */
final class SwitchGate {
    /** Battery managers whose notifications are the stock version of the charging / low-battery popups. */
    private static final Set<String> BATTERY_APPS = new HashSet<>(Arrays.asList(
            "com.samsung.android.lool", "com.sec.android.sdhms", "com.samsung.android.sm.devicesecurity"));

    /** The switches the gate looks at. */
    interface Switches {
        boolean charging();

        boolean ringer();

        boolean bluetooth();

        boolean toggles();

        boolean privacy();

        boolean transfers();
    }

    private SwitchGate() {
    }

    static void apply(List<IslandItem> items) {
        apply(items, new Switches() {
            @Override
            public boolean charging() {
                return ModuleSettings.eventCharging();
            }

            @Override
            public boolean ringer() {
                return ModuleSettings.eventRinger();
            }

            @Override
            public boolean bluetooth() {
                return ModuleSettings.eventBluetooth();
            }

            @Override
            public boolean toggles() {
                return ModuleSettings.eventToggles();
            }

            @Override
            public boolean privacy() {
                return ModuleSettings.privacyIndicator();
            }

            @Override
            public boolean transfers() {
                return ModuleSettings.progressNotifications();
            }
        });
    }

    static void apply(List<IslandItem> items, Switches on) {
        items.removeIf(it -> blocked(it, on));
    }

    private static boolean blocked(IslandItem it, Switches on) {
        String key = it.key;
        if (key.startsWith("event:charging") || key.startsWith("event:lowbattery")) {
            return !on.charging();
        }
        if (key.startsWith("event:ringer")) {
            return !on.ringer();
        }
        if (key.startsWith("event:bt:")) {
            return !on.bluetooth();
        }
        if (key.startsWith("event:toggle:")) {
            return !on.toggles();
        }
        if (key.startsWith("event:privacy")) {
            return !on.privacy();
        }
        if (it.transfer || key.startsWith("task:")) {
            return !on.transfers();
        }
        // the battery manager's own charging notification, shown as a peek or a live card
        return !on.charging() && it.packageName != null && BATTERY_APPS.contains(it.packageName);
    }
}
