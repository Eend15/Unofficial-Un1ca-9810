package dev.android.dynamicisland.island.source;

import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import dev.android.dynamicisland.island.graphics.GlyphIcon;

/** Device identity, shared by connection notices and the music output label. Names are not device types. */
final class BluetoothIcon {
    private BluetoothIcon() { }

    @android.annotation.SuppressLint("MissingPermission")
    static GlyphIcon.Kind of(BluetoothDevice device) {
        try {
            BluetoothClass type = device == null ? null : device.getBluetoothClass();
            return forClass(type == null ? -1 : type.getDeviceClass());
        } catch (RuntimeException unavailable) {
            return GlyphIcon.Kind.BLUETOOTH;
        }
    }

    static GlyphIcon.Kind forClass(int type) {
        switch (type) {
            case BluetoothClass.Device.AUDIO_VIDEO_CAR_AUDIO: return GlyphIcon.Kind.CAR;
            case BluetoothClass.Device.AUDIO_VIDEO_LOUDSPEAKER:
            case BluetoothClass.Device.AUDIO_VIDEO_HIFI_AUDIO: return GlyphIcon.Kind.SPEAKER;
            case BluetoothClass.Device.AUDIO_VIDEO_WEARABLE_HEADSET:
            case BluetoothClass.Device.AUDIO_VIDEO_HEADPHONES: return GlyphIcon.Kind.HEADPHONES;
            default: return GlyphIcon.Kind.BLUETOOTH;
        }
    }
}
