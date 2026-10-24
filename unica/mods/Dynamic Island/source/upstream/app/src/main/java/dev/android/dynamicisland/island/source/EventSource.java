package dev.android.dynamicisland.island.source;

import android.app.NotificationManager;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.hardware.camera2.CameraManager;
import android.media.AudioManager;
import android.os.BatteryManager;
import android.os.Handler;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.XLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/**
 * Short-lived "event" islands that the stock status bar never shows as a live notification:
 * plugging in the charger, low battery, ringer mode changes and Bluetooth audio devices connecting.
 * Each event lives for a few seconds and then disappears on its own.
 */
public final class EventSource {
    static final String BT_BATTERY_ACTION = "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED";
    static final String BT_BATTERY_EXTRA = "android.bluetooth.device.extra.BATTERY_LEVEL";

    private static final long CHARGING_MS = 4000;
    private static final long LOW_BATTERY_MS = 6000;
    private static final long RINGER_MS = 2500;
    private static final long BLUETOOTH_MS = 4500;
    private static final int LOW_BATTERY_PERCENT = 15;

    private static final int GREEN = 0xFF30D158;
    private static final int RED = 0xFFFF453A;
    private static final int ORANGE = 0xFFFF9F0A;
    private static final int BLUE = 0xFF0A84FF;
    private static final int YELLOW = 0xFFFFD60A;
    private static final int INDIGO = 0xFF7D7AFF;
    private static final int GREY = 0xFF8E8E93;

    private static final long TOGGLE_MS = 2200;
    /** Hidden WifiManager broadcast and the values of its {@code wifi_state} extra. */
    private static final String HOTSPOT_ACTION = "android.net.wifi.WIFI_AP_STATE_CHANGED";
    private static final int HOTSPOT_ENABLED = 13;
    private static final int HOTSPOT_DISABLED = 11;

    private final Context ctx;
    private final Handler main;
    private final Runnable onChange;
    /** This source's own delayed refresh: sharing {@code onChange} would let another source cancel it. */
    private final Runnable tick = new Runnable() {
        @Override
        public void run() {
            onChange.run();
        }
    };
    private final Map<String, IslandItem> events = new LinkedHashMap<>();
    /** Last known on/off state per quick-setting name, to announce only real changes. */
    private final Map<String, Boolean> toggleState = new LinkedHashMap<>();
    /** Torch state per camera id; the flashlight counts as on while any camera's torch is on. */
    private final Map<String, Boolean> torchState = new LinkedHashMap<>();

    private int lastPlugged = -1;
    private boolean lowShown;
    private int lastRinger = -1;
    /**
     * True while the receiver handles the sticky broadcast it gets right at registration (ringer mode,
     * battery, hotspot): that is the current state, not a change, so it only sets the baseline.
     */
    private boolean baseline;

    public EventSource(Context ctx, Handler main, Runnable onChange) {
        this.ctx = ctx;
        this.main = main;
        this.onChange = onChange;
    }

    /** Registers the receivers; every event then comes in on the main thread. */
    public void start() {
        register("battery", new IntentFilter(Intent.ACTION_BATTERY_CHANGED), null, Context.RECEIVER_NOT_EXPORTED, this::onBattery);
        register("ringer", new IntentFilter(AudioManager.RINGER_MODE_CHANGED_ACTION), null, Context.RECEIVER_NOT_EXPORTED, this::onRinger);
        startToggles();
        IntentFilter bluetooth = new IntentFilter(BluetoothDevice.ACTION_ACL_CONNECTED);
        bluetooth.addAction(BT_BATTERY_ACTION);
        // sent by the Bluetooth app: only accept senders that hold the permission so apps cannot spoof it
        register("bluetooth", bluetooth, "android.permission.BLUETOOTH_CONNECT", Context.RECEIVER_EXPORTED, this::onBluetooth);
    }

    private interface Handle {
        void on(Intent intent);
    }

    private void register(String name, IntentFilter filter, String permission, int flags, final Handle handle) {
        try {
            ctx.registerReceiver(new BroadcastReceiver() {
                @Override
                public void onReceive(Context c, Intent intent) {
                    baseline = isInitialStickyBroadcast();
                    try {
                        handle.on(intent);
                    } catch (Throwable t) {
                        XLog.e("event receiver " + name + " failed", t);
                    } finally {
                        baseline = false;
                    }
                }
            }, filter, permission, null, flags);
        } catch (Throwable t) {
            XLog.e("event receiver " + name + " not registered", t);
        }
    }

    // ----------------------------------------------------------------- toggles

    private void startToggles() {
        try {
            NotificationManager nm = ctx.getSystemService(NotificationManager.class);
            toggleState.put("dnd", nm != null && nm.getCurrentInterruptionFilter() > NotificationManager.INTERRUPTION_FILTER_ALL);
            toggleState.put("airplane", Settings.Global.getInt(ctx.getContentResolver(), Settings.Global.AIRPLANE_MODE_ON, 0) != 0);
            PowerManager pm = ctx.getSystemService(PowerManager.class);
            toggleState.put("powersave", pm != null && pm.isPowerSaveMode());
            toggleState.put("rotate", Settings.System.getInt(ctx.getContentResolver(), Settings.System.ACCELEROMETER_ROTATION, 1) != 0);
            Object apState = Refl.call(ctx.getSystemService(Context.WIFI_SERVICE), "getWifiApState");
            if (apState instanceof Integer) {
                toggleState.put("hotspot", ((Integer) apState).intValue() == HOTSPOT_ENABLED);
            }
        } catch (Throwable t) {
            XLog.e("toggle baseline failed", t);
        }
        register("dnd", new IntentFilter(NotificationManager.ACTION_INTERRUPTION_FILTER_CHANGED), null, Context.RECEIVER_NOT_EXPORTED, i -> {
            NotificationManager nm = ctx.getSystemService(NotificationManager.class);
            onToggle("dnd", nm != null && nm.getCurrentInterruptionFilter() > NotificationManager.INTERRUPTION_FILTER_ALL);
        });
        register("airplane", new IntentFilter(Intent.ACTION_AIRPLANE_MODE_CHANGED), null, Context.RECEIVER_NOT_EXPORTED,
                i -> onToggle("airplane", i.getBooleanExtra("state", false)));
        register("powersave", new IntentFilter(PowerManager.ACTION_POWER_SAVE_MODE_CHANGED), null, Context.RECEIVER_NOT_EXPORTED, i -> {
            PowerManager pm = ctx.getSystemService(PowerManager.class);
            onToggle("powersave", pm != null && pm.isPowerSaveMode());
        });
        register("hotspot", new IntentFilter(HOTSPOT_ACTION), null, Context.RECEIVER_NOT_EXPORTED, i -> {
            int state = i.getIntExtra("wifi_state", -1);
            if (state == HOTSPOT_ENABLED || state == HOTSPOT_DISABLED) {
                onToggle("hotspot", state == HOTSPOT_ENABLED);
            }
        });
        try {
            ctx.getContentResolver().registerContentObserver(Settings.System.getUriFor(Settings.System.ACCELEROMETER_ROTATION), false,
                    new ContentObserver(main) {
                        @Override
                        public void onChange(boolean selfChange) {
                            try {
                                onToggle("rotate", Settings.System.getInt(ctx.getContentResolver(), Settings.System.ACCELEROMETER_ROTATION, 1) != 0);
                            } catch (Throwable t) {
                                XLog.once("EventSource.rotate", t);
                            }
                        }
                    });
        } catch (Throwable t) {
            XLog.e("rotation observer not registered", t);
        }
        try {
            CameraManager cameras = ctx.getSystemService(CameraManager.class);
            cameras.registerTorchCallback(ctx.getMainExecutor(), new CameraManager.TorchCallback() {
                @Override
                public void onTorchModeChanged(String cameraId, boolean enabled) {
                    try {
                        onTorch(cameraId, enabled);
                    } catch (Throwable t) {
                        XLog.once("EventSource.torch", t);
                    }
                }
            });
        } catch (Throwable t) {
            XLog.e("torch callback not registered", t);
        }
    }

    /** The callback reports every camera once on registration: those first values are only a baseline. */
    void onTorch(String cameraId, boolean enabled) {
        Boolean before = torchState.put(cameraId, enabled);
        if (before == null || before == enabled) {
            return;
        }
        boolean any = false;
        for (Boolean on : torchState.values()) {
            any |= on;
        }
        if (!TorchSource.handlesTorch()) {
            onToggle("torch", any); // with a brightness card the flashlight needs no extra popup
        }
    }

    /** Shows "<setting> on/off" for a quick-setting style switch, only when its state really changed. */
    void onToggle(String name, boolean on) {
        Boolean before = toggleState.put(name, on);
        if (before != null && before == on) {
            return;
        }
        if (before == null && !on) {
            return; // first sighting of something that is off: nothing happened
        }
        if (baseline) {
            return; // already on when System UI started: no change to announce
        }
        if (!ModuleSettings.eventToggles()) {
            return;
        }
        IslandItem it = base("event:toggle:" + name);
        GlyphIcon.Kind icon;
        String ko;
        String en;
        int color;
        switch (name) {
            case "dnd":
                icon = GlyphIcon.Kind.MOON;
                ko = "방해금지";
                en = "Do Not Disturb";
                color = INDIGO;
                break;
            case "airplane":
                icon = GlyphIcon.Kind.PLANE;
                ko = "비행기 모드";
                en = "Airplane mode";
                color = ORANGE;
                break;
            case "powersave":
                icon = GlyphIcon.Kind.POWER_SAVE;
                ko = "절전 모드";
                en = "Power saving";
                color = YELLOW;
                break;
            case "torch":
                icon = GlyphIcon.Kind.TORCH;
                ko = "손전등";
                en = "Flashlight";
                color = YELLOW;
                break;
            case "hotspot":
                icon = GlyphIcon.Kind.HOTSPOT;
                ko = "핫스팟";
                en = "Hotspot";
                color = GREEN;
                break;
            case "rotate":
                icon = GlyphIcon.Kind.ROTATE_LOCK;
                ko = "자동 회전";
                en = "Auto-rotate";
                color = BLUE;
                break;
            default:
                return;
        }
        it.title = t(ko + (on ? " 켜짐" : " 꺼짐"), en + (on ? " on" : " off"));
        it.icon = GlyphIcon.of(icon);
        it.accent = on ? color : GREY;
        it.trailing = IslandItem.Trailing.TEXT;
        it.trailingText = t(on ? "켜짐" : "꺼짐", on ? "On" : "Off");
        it.subtitle = t("설정 변경", "Setting changed");
        show(it, TOGGLE_MS);
    }

    /** Adds the events that are still alive and schedules the refresh that removes them. */
    public void collect(List<IslandItem> out) {
        if (events.isEmpty()) {
            return;
        }
        long now = SystemClock.uptimeMillis();
        long next = Long.MAX_VALUE;
        for (Iterator<IslandItem> it = events.values().iterator(); it.hasNext(); ) {
            IslandItem item = it.next();
            if (item.expiresAtUptime <= now) {
                it.remove();
                continue;
            }
            out.add(item);
            next = Math.min(next, item.expiresAtUptime);
        }
        if (next != Long.MAX_VALUE) {
            main.removeCallbacks(tick);
            main.postDelayed(tick, Math.max(16L, next - now + 20));
        }
    }

    private void show(IslandItem item, long ttlMs) {
        item.expiresAtUptime = SystemClock.uptimeMillis() + ttlMs;
        item.postTime = SystemClock.uptimeMillis();
        events.remove(item.key);
        events.put(item.key, item);
        onChange.run();
    }

    // ---------------------------------------------------------------- battery

    void onBattery(Intent i) {
        int level = i.getIntExtra(BatteryManager.EXTRA_LEVEL, -1);
        int scale = i.getIntExtra(BatteryManager.EXTRA_SCALE, 100);
        int plugged = i.getIntExtra(BatteryManager.EXTRA_PLUGGED, 0);
        int percent = scale > 0 ? Math.round(level * 100f / scale) : level;
        if (percent < 0) {
            return;
        }
        boolean first = lastPlugged < 0;
        boolean justPlugged = !first && lastPlugged == 0 && plugged != 0;
        boolean unplugged = !first && lastPlugged != 0 && plugged == 0;
        lastPlugged = plugged;

        if (unplugged) {
            events.remove("event:charging");
            onChange.run();
        }
        if (plugged != 0 && ModuleSettings.eventCharging()) {
            if (justPlugged) {
                show(chargingItem(percent, plugged, i), CHARGING_MS);
            } else if (events.containsKey("event:charging")) {
                // keep the percentage live while the popup is still on screen
                IslandItem old = events.get("event:charging");
                IslandItem fresh = chargingItem(percent, plugged, i);
                fresh.expiresAtUptime = old.expiresAtUptime;
                fresh.postTime = old.postTime;
                events.put(fresh.key, fresh);
                onChange.run();
            }
        }
        if (plugged == 0 && percent <= LOW_BATTERY_PERCENT && !lowShown && baseline) {
            lowShown = true; // already low when System UI started: it was announced before
        } else if (plugged == 0 && percent <= LOW_BATTERY_PERCENT && !lowShown && ModuleSettings.eventCharging()) {
            lowShown = true;
            show(lowBatteryItem(percent), LOW_BATTERY_MS);
        } else if (plugged != 0 || percent > LOW_BATTERY_PERCENT + 5) {
            lowShown = false;
        }
    }

    private IslandItem chargingItem(int percent, int plugged, Intent battery) {
        IslandItem it = base("event:charging");
        it.title = t("충전 중", "Charging");
        it.subtitle = chargingLabel(plugged, battery);
        it.accent = GREEN;
        it.icon = GlyphIcon.battery(percent / 100f, true);
        it.progress = percent / 100f;
        it.trailing = IslandItem.Trailing.TEXT;
        it.trailingText = percent + "%";
        return it;
    }

    private IslandItem lowBatteryItem(int percent) {
        IslandItem it = base("event:lowbattery");
        it.title = t("배터리 부족", "Low battery");
        it.subtitle = t(percent + "% 남았어요", percent + "% remaining");
        it.accent = RED;
        it.icon = GlyphIcon.battery(percent / 100f, false);
        it.progress = percent / 100f;
        it.trailing = IslandItem.Trailing.TEXT;
        it.trailingText = percent + "%";
        return it;
    }

    private String chargingLabel(int plugged, Intent battery) {
        // Samsung / AOSP report the negotiated limits in µA and µV
        long microAmps = battery.getIntExtra("max_charging_current", 0);
        long microVolts = battery.getIntExtra("max_charging_voltage", 0);
        double watts = (microAmps / 1_000_000.0) * (microVolts / 1_000_000.0);
        boolean wireless = (plugged & BatteryManager.BATTERY_PLUGGED_WIRELESS) != 0;
        if (watts >= 25) {
            return wireless ? t("무선 초고속 충전", "Super fast wireless charging") : t("초고속 충전", "Super fast charging");
        }
        if (watts >= 15) {
            return wireless ? t("무선 고속 충전", "Fast wireless charging") : t("고속 충전", "Fast charging");
        }
        return wireless ? t("무선 충전", "Wireless charging") : t("충전 중", "Charging");
    }

    // ----------------------------------------------------------------- ringer

    void onRinger(Intent i) {
        int mode = i.getIntExtra(AudioManager.EXTRA_RINGER_MODE, -1);
        if (mode < 0 || mode == lastRinger) {
            return;
        }
        lastRinger = mode;
        if (baseline || !ModuleSettings.eventRinger()) {
            return;
        }
        IslandItem it = base("event:ringer");
        switch (mode) {
            case AudioManager.RINGER_MODE_SILENT:
                it.title = t("무음", "Silent");
                it.icon = GlyphIcon.of(GlyphIcon.Kind.BELL_OFF);
                it.accent = ORANGE;
                break;
            case AudioManager.RINGER_MODE_VIBRATE:
                it.title = t("진동", "Vibrate");
                it.icon = GlyphIcon.of(GlyphIcon.Kind.VIBRATE);
                it.accent = ORANGE;
                break;
            default:
                it.title = t("소리", "Ring");
                it.icon = GlyphIcon.of(GlyphIcon.Kind.BELL);
                it.accent = -1;
                break;
        }
        it.subtitle = t("소리 모드", "Sound mode");
        it.trailing = IslandItem.Trailing.TEXT;
        it.trailingText = it.title;
        show(it, RINGER_MS);
    }

    // -------------------------------------------------------------- bluetooth

    void onBluetooth(Intent i) {
        if (!ModuleSettings.eventBluetooth()) {
            return;
        }
        BluetoothDevice device = i.getParcelableExtra(BluetoothDevice.EXTRA_DEVICE, BluetoothDevice.class);
        if (device == null) {
            return;
        }
        if (BluetoothDevice.ACTION_ACL_CONNECTED.equals(i.getAction())) {
            if (!isAudio(device)) {
                return;
            }
            int battery = batteryOf(device);
            show(bluetoothItem(device, battery), BLUETOOTH_MS);
        } else if (BT_BATTERY_ACTION.equals(i.getAction())) {
            IslandItem old = events.get("event:bt:" + device.getAddress());
            if (old != null) {
                int level = i.getIntExtra(BT_BATTERY_EXTRA, -1);
                if (level >= 0) {
                    IslandItem fresh = bluetoothItem(device, level);
                    fresh.expiresAtUptime = old.expiresAtUptime;
                    fresh.postTime = old.postTime;
                    events.put(fresh.key, fresh);
                    onChange.run();
                }
            }
        }
    }

    private static boolean isAudio(BluetoothDevice device) {
        try {
            BluetoothClass cls = device.getBluetoothClass();
            return cls != null && cls.getMajorDeviceClass() == BluetoothClass.Device.Major.AUDIO_VIDEO;
        } catch (Throwable t) {
            return false;
        }
    }

    private static int batteryOf(BluetoothDevice device) {
        Object level = Refl.call(device, "getBatteryLevel");
        return level instanceof Integer ? ((Integer) level).intValue() : -1;
    }

    IslandItem bluetoothItem(BluetoothDevice device, int battery) {
        String name = null;
        try {
            name = device.getAlias();
            if (name == null) {
                name = device.getName();
            }
        } catch (Throwable ignored) {
            // permission / hidden state: fall back to a generic name
        }
        IslandItem it = base("event:bt:" + device.getAddress());
        it.title = name != null ? name : t("블루투스 기기", "Bluetooth device");
        it.subtitle = battery >= 0 ? t("연결됨 · 배터리 " + battery + "%", "Connected · " + battery + "% battery") : t("연결됨", "Connected");
        it.accent = BLUE;
        it.icon = GlyphIcon.of(GlyphIcon.Kind.HEADPHONES);
        if (battery >= 0) {
            it.progress = battery / 100f;
            it.trailing = IslandItem.Trailing.TEXT;
            it.trailingText = battery + "%";
        } else {
            it.trailing = IslandItem.Trailing.TEXT;
            it.trailingText = t("연결됨", "Connected");
        }
        return it;
    }

    // ---------------------------------------------------------------- helpers

    private IslandItem base(String key) {
        IslandItem it = new IslandItem(key);
        it.kind = IslandItem.Kind.EVENT;
        it.iconIsImage = false;
        it.pillColor = 0;
        return it;
    }

    /** The module has no string resources inside System UI, so pick the language here. */
    private String t(String ko, String en) {
        Locale locale = ctx.getResources().getConfiguration().getLocales().get(0);
        return "ko".equals(locale.getLanguage()) ? ko : en;
    }

    /** For tests. */
    List<IslandItem> snapshot() {
        return new ArrayList<>(events.values());
    }
}
