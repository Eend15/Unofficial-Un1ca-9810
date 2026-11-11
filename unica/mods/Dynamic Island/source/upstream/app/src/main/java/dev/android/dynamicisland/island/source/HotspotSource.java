package dev.android.dynamicisland.island.source;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.SystemClock;
import android.text.format.Formatter;
import dev.android.dynamicisland.island.IslandText;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.XLog;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Optional hotspot card: while the hotspot is on, how many devices are connected, how much data went through it since
 * it was switched on, and for how long. Nothing is registered or read while the option is off.
 */
public final class HotspotSource {
    private static final String ACTION = "android.net.wifi.WIFI_AP_STATE_CHANGED";
    private static final int AP_ENABLED = 13;
    private static final int AP_DISABLED = 11;
    private static final long REFRESH_MS = 5_000;
    private static final long REFRESH_LOW_PERFORMANCE_MS = 15_000;
    /** Interface names of a hotspot on phones that cannot say which interface is tethered. */
    private static final String[] COMMON_INTERFACES = {"ap0", "swlan0", "softap0"};

    private final Context ctx;
    private final Handler main;
    private final Runnable onChange;
    private boolean registered;
    private boolean on;
    private long startedAt;
    private long baseBytes = -1;
    private long bytes;
    private int clients;
    private final BroadcastReceiver receiver = new BroadcastReceiver() {
        @Override public void onReceive(Context context, Intent intent) {
            int state = intent == null ? -1 : intent.getIntExtra("wifi_state", -1);
            if (state == AP_ENABLED) begin();
            else if (state == AP_DISABLED) end();
        }
    };
    private final Runnable refresh = new Runnable() {
        @Override public void run() {
            if (!on) return;
            sample();
            onChange.run();
            main.postDelayed(this, ModuleSettings.lowPerformance() ? REFRESH_LOW_PERFORMANCE_MS : REFRESH_MS);
        }
    };

    /** Which interfaces carry the hotspot; looked up once per hotspot session. */
    private final java.util.function.Supplier<Set<String>> interfaceLookup;
    private Set<String> interfaces = new HashSet<>();

    public HotspotSource(Context ctx, Handler main, Runnable onChange) {
        this(ctx, main, onChange, null);
    }

    HotspotSource(Context ctx, Handler main, Runnable onChange, java.util.function.Supplier<Set<String>> interfaceLookup) {
        this.ctx = ctx;
        this.main = main;
        this.onChange = onChange;
        this.interfaceLookup = interfaceLookup != null ? interfaceLookup : this::tetheredInterfaces;
    }

    /** Called at start-up and whenever the settings reload. */
    public void syncSettings() {
        if (!ModuleSettings.hotspotCard()) {
            if (registered) {
                try { ctx.unregisterReceiver(receiver); } catch (RuntimeException ignored) { }
            }
            registered = false;
            end();
            return;
        }
        if (registered) return;
        try {
            ctx.registerReceiver(receiver, new IntentFilter(ACTION), null, main, Context.RECEIVER_NOT_EXPORTED);
            registered = true;
            Object state = Refl.call(ctx.getSystemService(WifiManager.class), "getWifiApState");
            if (state instanceof Integer && (Integer) state == AP_ENABLED) begin();
        } catch (RuntimeException error) {
            XLog.once("HotspotSource.register", error);
        }
    }

    private void begin() {
        if (on) return;
        on = true;
        startedAt = SystemClock.uptimeMillis();
        baseBytes = -1;
        bytes = 0;
        clients = 0;
        interfaces = interfaceLookup.get();
        sample();
        main.removeCallbacks(refresh);
        main.postDelayed(refresh, REFRESH_MS);
        onChange.run();
    }

    private void end() {
        if (!on) return;
        on = false;
        main.removeCallbacks(refresh);
        onChange.run();
    }

    private void sample() {
        try {
            long total = traffic(interfaces);
            if (total >= 0) {
                if (baseBytes < 0 || total < baseBytes) baseBytes = total; // counters start again when the interface does
                bytes = total - baseBytes;
            }
            clients = clientsOn(interfaces);
        } catch (RuntimeException error) {
            XLog.once("HotspotSource.sample", error);
        }
    }

    private Set<String> tetheredInterfaces() {
        Set<String> out = new HashSet<>();
        try {
            Object names = Refl.call(ctx.getSystemService(ConnectivityManager.class), "getTetheredIfaces");
            if (names instanceof String[]) for (String name : (String[]) names) if (name != null && !name.isEmpty()) out.add(name);
        } catch (RuntimeException ignored) {
            // not offered on this build: the usual names below
        }
        if (out.isEmpty()) for (String name : COMMON_INTERFACES) out.add(name);
        return out;
    }

    /** Bytes received and sent on the given interfaces, or -1 when {@code /proc/net/dev} cannot be read. */
    static long traffic(Set<String> interfaces, File devFile) {
        long total = 0;
        boolean found = false;
        try (BufferedReader reader = new BufferedReader(new FileReader(devFile))) {
            for (String line; (line = reader.readLine()) != null; ) {
                int colon = line.indexOf(':');
                if (colon < 0 || !interfaces.contains(line.substring(0, colon).trim())) continue;
                String[] fields = line.substring(colon + 1).trim().split("\\s+");
                if (fields.length < 9) continue;
                total += Long.parseLong(fields[0]) + Long.parseLong(fields[8]);
                found = true;
            }
        } catch (IOException | NumberFormatException error) {
            return -1;
        }
        return found ? total : -1;
    }

    private long traffic(Set<String> interfaces) {
        return traffic(interfaces, new File("/proc/net/dev"));
    }

    /** Devices that answered on the given interfaces: {@code /proc/net/arp} lists them with flag 0x2 once resolved. */
    static int clientsOn(Set<String> interfaces, File arpFile) {
        int count = 0;
        try (BufferedReader reader = new BufferedReader(new FileReader(arpFile))) {
            reader.readLine(); // the header
            for (String line; (line = reader.readLine()) != null; ) {
                String[] fields = line.trim().split("\\s+");
                if (fields.length >= 6 && "0x2".equals(fields[2]) && interfaces.contains(fields[5])) count++;
            }
        } catch (IOException ignored) {
            return 0;
        }
        return count;
    }

    private int clientsOn(Set<String> interfaces) {
        return clientsOn(interfaces, new File("/proc/net/arp"));
    }

    public void collect(List<IslandItem> out) {
        if (!on || !registered || !ModuleSettings.hotspotCard()) return;
        long seconds = Math.max(0, (SystemClock.uptimeMillis() - startedAt) / 1000);
        IslandItem item = new IslandItem("event:hotspot");
        item.kind = IslandItem.Kind.EVENT;
        item.eventLayout = IslandItem.EventLayout.STATUS;
        item.title = IslandText.get(ctx, "island_hotspot");
        String size = Formatter.formatShortFileSize(ctx, bytes);
        item.subtitle = IslandText.get(ctx, "island_hotspot_devices", clients) + " · " + size + " · " + duration(seconds);
        item.icon = GlyphIcon.of(GlyphIcon.Kind.HOTSPOT);
        item.accent = 0xFF30D158;
        item.trailing = IslandItem.Trailing.TEXT;
        item.trailingText = size;
        item.postTime = startedAt;
        out.add(item);
    }

    private String duration(long seconds) {
        if (seconds < 60) return IslandText.get(ctx, "island_charge_seconds", seconds);
        long minutes = seconds / 60;
        return minutes >= 60 ? IslandText.get(ctx, "island_charge_hours", minutes / 60, minutes % 60)
                : IslandText.get(ctx, "island_charge_minutes", minutes, seconds % 60);
    }
}
