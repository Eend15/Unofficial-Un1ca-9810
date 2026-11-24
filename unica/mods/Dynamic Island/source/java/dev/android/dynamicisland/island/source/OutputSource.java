package dev.android.dynamicisland.island.source;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.media.RouteDiscoveryPreference;
import android.os.Handler;
import android.os.SystemClock;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.XLog;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.function.Supplier;

/**
 * Where the music is playing: Bluetooth headphones / speaker, wired headset or a cast target,
 * with the battery of the Bluetooth device. The phone's own speaker is the default and is not
 * worth a label.
 */
public final class OutputSource {
    /** The lookup result is reused for this long, unless an audio device change invalidates it. */
    private static final long MAX_AGE_MS = 10_000;

    /** An audio output: its name, the glyph to draw and the battery percentage (-1 when unknown). */
    public static final class Output {
        final String name;
        final GlyphIcon.Kind icon;
        final int battery;

        Output(String name, GlyphIcon.Kind icon, int battery) {
            this.name = name;
            this.icon = icon;
            this.battery = battery;
        }
    }

    private final Context ctx;
    private final Handler main;
    private final Runnable onChanged;
    private final Supplier<Output> probe;
    private Output cached;
    private long cachedAt = -MAX_AGE_MS;

    OutputSource(Context ctx, Handler main, Runnable onChanged) {
        this(ctx, main, onChanged, null);
    }

    /** @param probe replaces the system lookup (tests). */
    OutputSource(Context ctx, Handler main, Runnable onChanged, Supplier<Output> probe) {
        this.ctx = ctx;
        this.main = main;
        this.onChanged = onChanged;
        this.probe = probe;
    }

    /** Starts watching audio devices and media routes so {@link #current()} stays fresh. */
    void start() {
        try {
            ctx.registerReceiver(new BroadcastReceiver() {
                @Override public void onReceive(Context context, Intent intent) { invalidate(); }
            }, new IntentFilter("android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"),
                    "android.permission.BLUETOOTH_CONNECT", main, Context.RECEIVER_EXPORTED);
        } catch (RuntimeException error) {
            XLog.once("OutputSource.battery", error);
        }
        try {
            AudioManager audio = ctx.getSystemService(AudioManager.class);
            audio.registerAudioDeviceCallback(new AudioDeviceCallback() {
                @Override
                public void onAudioDevicesAdded(AudioDeviceInfo[] added) {
                    invalidate();
                }

                @Override
                public void onAudioDevicesRemoved(AudioDeviceInfo[] removed) {
                    invalidate();
                }
            }, main);
        } catch (Throwable t) {
            XLog.e("output device callback not registered", t);
        }
        try {
            // MediaRouter2 only keeps its system route up to date once a route callback is registered;
            // without one getSelectedRoutes() stays at whatever was selected when the router was created
            MediaRouter2 router = MediaRouter2.getInstance(ctx);
            router.registerRouteCallback(ctx.getMainExecutor(), new MediaRouter2.RouteCallback() {
            }, new RouteDiscoveryPreference.Builder(Collections.emptyList(), false).build());
            router.registerControllerCallback(ctx.getMainExecutor(), new MediaRouter2.ControllerCallback() {
                @Override
                public void onControllerUpdated(MediaRouter2.RoutingController controller) {
                    invalidate();
                }
            });
        } catch (Throwable t) {
            XLog.e("media route callback not registered", t);
        }
    }

    private void invalidate() {
        cachedAt = -MAX_AGE_MS;
        onChanged.run();
    }

    /** The active non-default output, or null for the phone's own speaker / when unknown. */
    Output current() {
        long now = SystemClock.uptimeMillis();
        if (now - cachedAt < MAX_AGE_MS) {
            return cached;
        }
        Output out = null;
        try {
            out = probe != null ? probe.get() : lookup();
        } catch (Throwable t) {
            XLog.once("OutputSource.lookup", t);
        }
        cached = out;
        cachedAt = now;
        return out;
    }

    private Output lookup() {
        MediaRouter2 router = MediaRouter2.getInstance(ctx);
        List<MediaRoute2Info> routes = router.getSystemController().getSelectedRoutes();
        if (routes == null || routes.isEmpty()) {
            return null;
        }
        MediaRoute2Info route = routes.get(0);
        int type = route.getType();
        String name = route.getName() == null ? null : route.getName().toString();
        switch (type) {
            case MediaRoute2Info.TYPE_BUILTIN_SPEAKER:
                return null;
            case MediaRoute2Info.TYPE_BLUETOOTH_A2DP:
            case MediaRoute2Info.TYPE_HEARING_AID:
            case MediaRoute2Info.TYPE_BLE_HEADSET:
                Object address = Refl.call(route, "getAddress", new Object[0]);
                return bluetooth(name, address instanceof String ? (String) address : null);
            case MediaRoute2Info.TYPE_WIRED_HEADPHONES:
            case MediaRoute2Info.TYPE_WIRED_HEADSET:
            case MediaRoute2Info.TYPE_USB_HEADSET:
                return new Output(name, GlyphIcon.Kind.HEADPHONES, -1);
            default:
                return new Output(name, GlyphIcon.Kind.SPEAKER, -1);
        }
    }

    // Bluetooth lookup runs in SystemUI and handles denied or unavailable access.
    @android.annotation.SuppressLint("MissingPermission")
    private Output bluetooth(String routeName, String routeAddress) {
        GlyphIcon.Kind icon = GlyphIcon.Kind.BLUETOOTH;
        int battery = -1;
        try {
            BluetoothAdapter adapter = ctx.getSystemService(BluetoothManager.class).getAdapter();
            Set<BluetoothDevice> bonded = adapter == null ? null : adapter.getBondedDevices();
            BluetoothDevice device = selectBluetooth(bonded, routeName, routeAddress);
            if (device != null) {
                Object level = Refl.call(device, "getBatteryLevel");
                if (level instanceof Integer && (Integer) level >= 0 && (Integer) level <= 100) battery = (Integer) level;
                icon = BluetoothIcon.of(device);
            }
        } catch (Throwable t) {
            XLog.once("OutputSource.bluetooth", t);
        }
        return new Output(routeName, icon, battery);
    }
    /** An exact route address wins. An ambiguous display name never chooses an arbitrary device. */
    @android.annotation.SuppressLint("MissingPermission")
    static BluetoothDevice selectBluetooth(Set<BluetoothDevice> devices, String name, String address) {
        BluetoothDevice unique = null;
        int matches = 0;
        if (devices == null) return null;
        boolean hasAddress = address != null && !address.isEmpty();
        for (BluetoothDevice device : devices) {
            if (!Boolean.TRUE.equals(Refl.call(device, "isConnected"))) continue;
            if (hasAddress) {
                if (address.equalsIgnoreCase(device.getAddress())) return device;
                continue;
            }
            String alias = device.getAlias() != null ? device.getAlias() : device.getName();
            if (name != null && name.equals(alias)) { unique = device; matches++; }
        }
        return matches == 1 ? unique : null;
    }

}
