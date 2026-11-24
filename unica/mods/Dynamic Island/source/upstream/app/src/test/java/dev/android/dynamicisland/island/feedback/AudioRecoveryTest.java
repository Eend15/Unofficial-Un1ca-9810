package dev.android.dynamicisland.island.feedback;

import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;
import android.media.audiofx.Visualizer;
import android.os.Handler;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.time.Duration;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.Implementation;
import org.robolectric.annotation.Implements;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=35,shadows=AudioRecoveryTest.Capture.class)
public class AudioRecoveryTest {
    @Implements(Visualizer.class)
    public static class Capture {
        static int created,released;
        static boolean fail;
        @Implementation protected void __constructor__(int session) { created++; }
        @Implementation protected static int[] getCaptureSizeRange() { return new int[]{128,1024}; }
        @Implementation protected static int getMaxCaptureRate() { return 30_000; }
        @Implementation protected int setEnabled(boolean active) { return Visualizer.SUCCESS; }
        @Implementation protected int setCaptureSize(int size) { if(fail)throw new IllegalStateException("Temporary audio service failure");return Visualizer.SUCCESS; }
        @Implementation protected int setScalingMode(int mode) { return Visualizer.SUCCESS; }
        @Implementation protected int setDataCaptureListener(Visualizer.OnDataCaptureListener listener,int rate,boolean wave,boolean fft) { return Visualizer.SUCCESS; }
        @Implementation protected void release() { released++; }
    }
    @Test public void captureAutomaticallyRetriesAndReleasesAPartiallyInitializedEffect() {
        ModuleSettings.configurePreview(ModuleSettings.openStore(RuntimeEnvironment.getApplication()));
        Capture.created=0;Capture.released=0;Capture.fail=true;
        var audio=new AudioLevels();Handler bg=ReflectionHelpers.getField(audio,"bg");
        audio.setActive(true);shadowOf(bg.getLooper()).idle();
        assertEquals(1,Capture.created);assertEquals(1,Capture.released);
        Capture.fail=false;
        shadowOf(bg.getLooper()).idleFor(Duration.ofSeconds(30));
        assertEquals("recovers without requiring pause/play",2,Capture.created);
        assertNotNull(ReflectionHelpers.getField(audio,"viz"));
        audio.setActive(false);shadowOf(bg.getLooper()).idle();
        assertEquals(2,Capture.released);
        shadowOf(bg.getLooper()).idleFor(Duration.ofSeconds(60));assertEquals(2,Capture.created);
        ((android.os.HandlerThread)bg.getLooper().getThread()).quitSafely();
    }
    @Test public void inactivePlaybackCancelsPendingRecovery() {
        ModuleSettings.configurePreview(ModuleSettings.openStore(RuntimeEnvironment.getApplication()));
        Capture.created=0;Capture.released=0;Capture.fail=true;
        var audio=new AudioLevels();Handler bg=ReflectionHelpers.getField(audio,"bg");
        audio.setActive(true);shadowOf(bg.getLooper()).idle();assertEquals(1,Capture.created);
        audio.setActive(false);shadowOf(bg.getLooper()).idle();Capture.fail=false;
        shadowOf(bg.getLooper()).idleFor(Duration.ofSeconds(60));assertEquals(1,Capture.created);
        ((android.os.HandlerThread)bg.getLooper().getThread()).quitSafely();
    }
}
