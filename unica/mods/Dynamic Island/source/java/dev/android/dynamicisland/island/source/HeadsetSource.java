package dev.android.dynamicisland.island.source;

import android.content.Context;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.os.Handler;
import android.os.SystemClock;
import dev.android.dynamicisland.island.IslandText;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.XLog;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/** Optional analogue/USB headset announcements, driven by device changes rather than repeated broadcasts. */
public final class HeadsetSource {
    private final Context ctx;
    private final Handler main;
    private final Runnable onChange;
    private AudioManager audio;
    private boolean registered;
    private Map<Integer, String> devices = new LinkedHashMap<>();
    private IslandItem announcement;
    private long lastAnnouncement;
    /** When the headset that is in now was plugged in (the card keeps this time, so it does not look new). */
    private long connectedSince;
    private final Runnable expire = new Runnable() {
        @Override public void run() { announcement = null; onChange.run(); }
    };
    private final AudioDeviceCallback callback = new AudioDeviceCallback() {
        @Override public void onAudioDevicesAdded(AudioDeviceInfo[] added) { scan(); }
        @Override public void onAudioDevicesRemoved(AudioDeviceInfo[] removed) { scan(); }
    };

    public HeadsetSource(Context ctx, Handler main, Runnable onChange) {
        this.ctx = ctx;
        this.main = main;
        this.onChange = onChange;
    }

    public void syncSettings() {
        if (!ModuleSettings.eventHeadset()) {
            if (registered) {
                try { audio.unregisterAudioDeviceCallback(callback); } catch (RuntimeException ignored) { }
            }
            registered = false;
            devices.clear();
            announcement = null;
            main.removeCallbacks(expire);
            return;
        }
        if (registered) return;
        try {
            audio = ctx.getSystemService(AudioManager.class);
            if (audio == null) return;
            devices = connected();
            connectedSince = SystemClock.uptimeMillis();
            audio.registerAudioDeviceCallback(callback, main);
            registered = true;
        } catch (RuntimeException error) { XLog.once("HeadsetSource.register", error); }
    }

    private Map<Integer, String> connected() {
        Map<Integer, String> out = new LinkedHashMap<>();
        for (AudioDeviceInfo device : audio.getDevices(AudioManager.GET_DEVICES_OUTPUTS)) {
            int type = device.getType();
            if (type == AudioDeviceInfo.TYPE_WIRED_HEADSET
                    || type == AudioDeviceInfo.TYPE_WIRED_HEADPHONES || type == AudioDeviceInfo.TYPE_USB_HEADSET) {
                CharSequence product = device.getProductName();
                out.put(device.getId(), product == null ? "" : product.toString());
            }
        }
        return out;
    }

    private void scan() {
        if (!registered || !ModuleSettings.eventHeadset()) return;
        try {
            Map<Integer, String> current = connected();
            boolean added = false;
            String name = null;
            for (Map.Entry<Integer, String> entry : current.entrySet()) {
                if (!devices.containsKey(entry.getKey())) { added = true; name = entry.getValue(); break; }
            }
            if (!added) {
                for (Map.Entry<Integer, String> entry : devices.entrySet()) {
                    if (!current.containsKey(entry.getKey())) { name = entry.getValue(); break; }
                }
            }
            devices = current;
            if (added) connectedSince = SystemClock.uptimeMillis();
            if (name == null) return;
            long now = SystemClock.uptimeMillis();
            long ttl = added ? 6_000 : 2_500;
            IslandItem item = card(added, name);
            item.postTime = lastAnnouncement = Math.max(now, lastAnnouncement + 1);
            item.expiresAtUptime = now + ttl;
            item.peekMillis = Math.min(4_000, ttl);
            announcement = item;
            main.removeCallbacks(expire);
            main.postDelayed(expire, ttl);
            onChange.run();
        } catch (RuntimeException error) { XLog.once("HeadsetSource.scan", error); }
    }

    /** The card of a headset coming or going; the same key for both, so one card turns into the other in place. */
    private IslandItem card(boolean connected, String name) {
        IslandItem item = new IslandItem("event:headset");
        item.kind = IslandItem.Kind.EVENT;
        item.eventLayout = IslandItem.EventLayout.DEVICE;
        item.title = IslandText.get(ctx, connected ? "island_headset_connected" : "island_headset_disconnected");
        item.subtitle = name == null || name.isBlank() ? IslandText.get(ctx, "island_wired_headset") : name;
        item.trailing = IslandItem.Trailing.TEXT;
        item.trailingText = item.subtitle;
        item.icon = GlyphIcon.of(GlyphIcon.Kind.HEADPHONES);
        item.accent = 0xFFFFFFFF;
        return item;
    }

    public void collect(List<IslandItem> out) {
        if (!registered || !ModuleSettings.eventHeadset()) return;
        if (announcement != null && announcement.expiresAtUptime > SystemClock.uptimeMillis()) {
            out.add(announcement);
        } else if (ModuleSettings.headsetCardStays() && !devices.isEmpty()) {
            // the announcement is over but the headset is still in: the card stays, without a time limit
            IslandItem standing = card(true, devices.values().iterator().next());
            standing.postTime = connectedSince;
            out.add(standing);
        }
    }
}
