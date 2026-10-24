package dev.android.dynamicisland.island.source;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.Context;
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
                return bluetooth(name);
            case MediaRoute2Info.TYPE_WIRED_HEADPHONES:
            case MediaRoute2Info.TYPE_WIRED_HEADSET:
            case MediaRoute2Info.TYPE_USB_HEADSET:
                return new Output(name, GlyphIcon.Kind.HEADPHONES, -1);
            default:
                return new Output(name, GlyphIcon.Kind.SPEAKER, -1);
        }
    }

    private Output bluetooth(String routeName) {
        GlyphIcon.Kind icon = GlyphIcon.Kind.HEADPHONES;
        int battery = -1;
        try {
            BluetoothAdapter adapter = ctx.getSystemService(BluetoothManager.class).getAdapter();
            Set<BluetoothDevice> bonded = adapter == null ? null : adapter.getBondedDevices();
            if (bonded != null) {
                for (BluetoothDevice d : bonded) {
                    String alias = d.getAlias() != null ? d.getAlias() : d.getName();
                    if (alias == null || !alias.equals(routeName) || !Boolean.TRUE.equals(Refl.call(d, "isConnected"))) {
                        continue;
                    }
                    Object level = Refl.call(d, "getBatteryLevel");
                    if (level instanceof Integer && ((Integer) level) >= 0) {
                        battery = (Integer) level;
                    }
                    BluetoothClass cls = d.getBluetoothClass();
                    if (cls != null && cls.getDeviceClass() == BluetoothClass.Device.AUDIO_VIDEO_LOUDSPEAKER) {
                        icon = GlyphIcon.Kind.SPEAKER;
                    }
                    break;
                }
            }
        } catch (Throwable t) {
            XLog.once("OutputSource.bluetooth", t);
        }
        return new Output(routeName, icon, battery);
    }
}
