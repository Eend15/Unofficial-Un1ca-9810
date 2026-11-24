package dev.android.dynamicisland.island.source;

import static org.junit.Assert.*;
import android.bluetooth.BluetoothClass;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import org.junit.Test;

public class BluetoothIconTest {
    @Test public void carAudioNeverGetsAnEarbudIcon() {
        assertEquals(GlyphIcon.Kind.CAR,BluetoothIcon.forClass(BluetoothClass.Device.AUDIO_VIDEO_CAR_AUDIO));
    }
    @Test public void speakersAndHeadsetsAreDistinct() {
        assertEquals(GlyphIcon.Kind.SPEAKER,BluetoothIcon.forClass(BluetoothClass.Device.AUDIO_VIDEO_LOUDSPEAKER));
        assertEquals(GlyphIcon.Kind.SPEAKER,BluetoothIcon.forClass(BluetoothClass.Device.AUDIO_VIDEO_HIFI_AUDIO));
        assertEquals(GlyphIcon.Kind.HEADPHONES,BluetoothIcon.forClass(BluetoothClass.Device.AUDIO_VIDEO_HEADPHONES));
        assertEquals(GlyphIcon.Kind.HEADPHONES,BluetoothIcon.forClass(BluetoothClass.Device.AUDIO_VIDEO_WEARABLE_HEADSET));
    }
    @Test public void missingOrGenericClassesDoNotPretendToBeHeadphones() {
        assertEquals(GlyphIcon.Kind.BLUETOOTH,BluetoothIcon.forClass(-1));
        assertEquals(GlyphIcon.Kind.BLUETOOTH,BluetoothIcon.forClass(BluetoothClass.Device.AUDIO_VIDEO_UNCATEGORIZED));
    }
}
