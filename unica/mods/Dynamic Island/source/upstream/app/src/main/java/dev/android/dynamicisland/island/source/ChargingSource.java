package dev.android.dynamicisland.island.source;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.BatteryManager;
import android.os.Handler;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import dev.android.dynamicisland.island.IslandText;
import dev.android.dynamicisland.island.graphics.BatteryIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.XLog;
import java.util.List;
import java.util.Locale;

/** Optional live charging card. No listeners, fuel-gauge reads or timer exist while it is disabled. */
public final class ChargingSource {
    private final Context ctx;
    private final Handler main;
    private final Runnable onChange;
    private boolean enabled, statistics, registered, interactive;
    private int plug, status, level = -1;
    private double volts = Double.NaN, temperature = Double.NaN, currentMa = Double.NaN;
    private long connectedAt;
    private ChargingSession session;
    private SharedPreferences store;
    private long lastSaved;

    public ChargingSource(Context ctx, Handler main, Runnable onChange) {
        this.ctx = ctx;
        this.main = main;
        this.onChange = onChange;
    }

    private final Runnable tick = new Runnable() {
        @Override public void run() {
            if (!enabled || plug == 0 || !interactive) return;
            sample();
            onChange.run();
            schedule();
        }
    };

    private final BroadcastReceiver receiver = new BroadcastReceiver() {
        @Override public void onReceive(Context context, Intent intent) {
            if (!enabled || intent == null) return;
            if (Intent.ACTION_BATTERY_CHANGED.equals(intent.getAction())) readBattery(intent);
            else {
                interactive = isInteractive();
                sample();
                save(true);
                schedule();
                onChange.run();
            }
        }
    };

    /** Called on the main thread at startup and after settings reload. */
    public void syncSettings() {
        boolean wanted = ModuleSettings.chargingInfo();
        boolean wantedStatistics = wanted && ModuleSettings.chargingStats();
        if (wanted == enabled && wantedStatistics == statistics && (!wanted || registered)) return;
        enabled = wanted;
        statistics = wantedStatistics;
        if (!enabled) {
            main.removeCallbacks(tick);
            if (registered) {
                try { ctx.unregisterReceiver(receiver); } catch (RuntimeException ignored) { }
            }
            registered = false;
            plug = 0;
            session = null;
            clearCheckpoint();
            return;
        }
        if (!statistics) {
            session = null;
            clearCheckpoint();
        }
        interactive = isInteractive();
        if (!registered) {
            IntentFilter filter = new IntentFilter(Intent.ACTION_BATTERY_CHANGED);
            filter.addAction(Intent.ACTION_SCREEN_ON);
            filter.addAction(Intent.ACTION_SCREEN_OFF);
            try {
                Intent battery = ctx.registerReceiver(receiver, filter, null, main, Context.RECEIVER_NOT_EXPORTED);
                registered = true;
                if (battery != null) readBattery(battery);
            } catch (RuntimeException error) {
                XLog.once("ChargingSource.register", error);
            }
        } else sample();
        schedule();
    }

    private void readBattery(Intent intent) {
        int before = plug;
        plug = intent.getIntExtra(BatteryManager.EXTRA_PLUGGED, 0);
        status = intent.getIntExtra(BatteryManager.EXTRA_STATUS, BatteryManager.BATTERY_STATUS_UNKNOWN);
        int scale = intent.getIntExtra(BatteryManager.EXTRA_SCALE, 100);
        int raw = intent.getIntExtra(BatteryManager.EXTRA_LEVEL, -1);
        level = raw >= 0 && scale > 0 ? Math.min(100, Math.round(raw * 100f / scale)) : -1;
        volts = voltage(intent.getIntExtra(BatteryManager.EXTRA_VOLTAGE, 0));
        int temp = intent.getIntExtra(BatteryManager.EXTRA_TEMPERATURE, Integer.MIN_VALUE);
        temperature = temp >= -500 && temp <= 1000 ? temp / 10.0 : Double.NaN;
        if (before == 0 && plug != 0) connectedAt = SystemClock.uptimeMillis();
        if (plug == 0) {
            session = null;
            currentMa = Double.NaN;
            clearCheckpoint();
        } else sample();
        if (before != plug) save(true);
        schedule();
        onChange.run();
    }

    private void sample() {
        if (!enabled || plug == 0) return;
        currentMa = Double.NaN;
        long counter = -1;
        try {
            BatteryManager manager = ctx.getSystemService(BatteryManager.class);
            if (manager != null) {
                int current = manager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CURRENT_NOW);
                if (current != Integer.MIN_VALUE && status == BatteryManager.BATTERY_STATUS_CHARGING) {
                    double magnitude = Math.abs((double) current) / 1000;
                    if (magnitude <= 50_000) currentMa = magnitude;
                }
                if (statistics) counter = manager.getLongProperty(BatteryManager.BATTERY_PROPERTY_CHARGE_COUNTER);
            }
        } catch (RuntimeException error) { XLog.once("ChargingSource.sample", error); }
        if (statistics) {
            long now = SystemClock.elapsedRealtime();
            if (session == null) {
                try {
                    if (store == null) store = ctx.createDeviceProtectedStorageContext()
                            .getSharedPreferences("charging_statistics_state", Context.MODE_PRIVATE);
                    session = ChargingSession.restore(store.getString("checkpoint", ""), now, boot(), plug, interactive, level, counter);
                } catch (RuntimeException error) { XLog.once("ChargingSource.restore", error); }
                if (session == null) session = new ChargingSession(now, interactive);
            }
            session.sample(now, interactive, level, counter);
            save(false);
        }
    }

    private void schedule() {
        main.removeCallbacks(tick);
        if (enabled && plug != 0 && interactive) {
            main.postDelayed(tick, ModuleSettings.lowPerformance() ? 15_000 : 5_000);
        }
    }

    private boolean isInteractive() {
        try {
            PowerManager manager = ctx.getSystemService(PowerManager.class);
            return manager != null && manager.isInteractive();
        } catch (RuntimeException error) {
            XLog.once("ChargingSource.screen", error);
            return interactive;
        }
    }

    private int boot() {
        try { return Settings.Global.getInt(ctx.getContentResolver(), Settings.Global.BOOT_COUNT, -1); }
        catch (RuntimeException ignored) { return -1; }
    }

    private void save(boolean force) {
        if (!statistics || session == null || store == null) return;
        long now = SystemClock.elapsedRealtime();
        if (!force && now - lastSaved < 15_000) return;
        try {
            store.edit().putString("checkpoint", session.checkpoint(boot(), plug).toString()).apply();
            lastSaved = now;
        } catch (Exception error) { XLog.once("ChargingSource.save", error); }
    }

    private void clearCheckpoint() {
        try { if (store != null) store.edit().clear().apply(); }
        catch (RuntimeException error) { XLog.once("ChargingSource.clear", error); }
        lastSaved = 0;
    }

    public boolean isOffering() { return enabled && registered && plug != 0 && ModuleSettings.chargingInfo(); }

    public void collect(List<IslandItem> out) {
        if (!isOffering()) return;
        IslandItem item = new IslandItem("charging:info");
        item.kind = IslandItem.Kind.EVENT; // Same priority as the charging popup and the reviewed version.
        item.eventLayout = IslandItem.EventLayout.BATTERY;
        item.batteryPercent = level;
        item.batteryCharging = status == BatteryManager.BATTERY_STATUS_CHARGING;
        item.title = text(status == BatteryManager.BATTERY_STATUS_FULL ? "island_charge_full"
                : status == BatteryManager.BATTERY_STATUS_CHARGING ? "island_charging" : "island_charge_connected");
        item.icon = ModuleSettings.hideBatteryIcon() || level < 0 ? null : BatteryIcon.load(ctx, level, true);
        item.accent = 0xFF30D158;
        item.trailing = IslandItem.Trailing.TEXT;
        double power = volts * currentMa / 1000;
        if (power > 300) power = Double.NaN;
        item.trailingText = Double.isFinite(power) ? number(power, 0) + "W" : level >= 0 ? percent(level) : null;
        if (Double.isFinite(power) && level >= 0) item.compactLabel = item.trailingText;
        item.subtitle = text("island_charge_live", value(currentMa, "mA"), value(power, "W"), value(temperature, "°C"));
        if (statistics && session != null) {
            item.descriptionMaxLines = 8;
            session.advance(SystemClock.elapsedRealtime());
            item.description = text("island_charge_screen_on", duration(session.onMs), gains(session.onPercent, session.onUah))
                    + "\n" + text("island_charge_screen_off", duration(session.offMs), gains(session.offPercent, session.offUah));
        }
        item.postTime = connectedAt;
        out.add(item);
    }

    private String gains(double percent, double uah) {
        return (session.lastLevel >= 0 ? text("island_charge_gain", number(percent, 1)) : "—")
                + (session.hasCounter ? " · ≈" + number(uah / 1000, 0) + " mAh" : "");
    }

    private String duration(long ms) {
        if (ms < 60_000) return text("island_charge_seconds", ms / 1000);
        long minutes = ms / 60_000;
        return minutes >= 60 ? text("island_charge_hours", minutes / 60, minutes % 60)
                : text("island_charge_minutes", minutes, ms / 1000 % 60);
    }

    private String percent(int value) {
        return java.text.NumberFormat.getPercentInstance(ctx.getResources().getConfiguration().getLocales().get(0)).format(value / 100d);
    }
    private String value(double value, String unit) {
        return Double.isFinite(value) ? number(value, "mA".equals(unit) ? 0 : 1) + " " + unit : "—";
    }
    private String number(double value, int decimals) {
        Locale locale = ctx.getResources().getConfiguration().getLocales().get(0);
        return String.format(locale, decimals == 0 ? "%.0f" : "%.1f", value == 0 ? 0 : value);
    }
    private String text(String key, Object... arguments) { return IslandText.get(ctx, key, arguments); }

    private static double voltage(int raw) {
        double value = raw;
        for (int step = 0; step < 3; step++, value /= 1000) if (value >= 2 && value <= 6.5) return value;
        return Double.NaN;
    }
}
