package dev.android.dynamicisland.island.source;
import static org.junit.Assert.*;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.time.Duration;
import java.util.ArrayList;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import static org.robolectric.Shadows.shadowOf;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=35)
public class PrivacyStateTest {
    private static PrivacySource source(ArrayList<IslandItem> displayed) {
        Context app=RuntimeEnvironment.getApplication();
        SharedPreferences prefs=ModuleSettings.openStore(app);prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
        assertFalse(ModuleSettings.privacyLocation());
        PrivacySource[] source=new PrivacySource[1];
        source[0]=new PrivacySource(app,new Handler(Looper.getMainLooper()),()->{
            displayed.clear();source[0].collect(displayed,null);
        });
        return source[0];
    }
    @Test public void locationNotesMustNotCancelTheCameraExpiryEvenWithLocationIndicatorsOff() {
        ArrayList<IslandItem> displayed=new ArrayList<>();PrivacySource s=source(displayed);
        s.record(AppOpsManager.OPSTR_CAMERA,10123,"example.audit.camera",true);
        assertEquals(1,displayed.size());
        s.record(AppOpsManager.OPSTR_CAMERA,10123,"example.audit.camera",false);
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(500));
        s.noted(AppOpsManager.OPSTR_FINE_LOCATION,10124,"example.audit.maps");
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1000));
        s.noted(AppOpsManager.OPSTR_FINE_LOCATION,10124,"example.audit.maps");
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(500));
        assertTrue("camera indicator must expire after 1500ms despite continuing location notes",displayed.isEmpty());
    }
    @Test public void stoppingOneProfileMustNotStopTheOtherProfilesMicrophoneIndicator() {
        ArrayList<IslandItem> displayed=new ArrayList<>();PrivacySource s=source(displayed);
        s.record(AppOpsManager.OPSTR_RECORD_AUDIO,10123,"example.audit.audio",true);
        s.record(AppOpsManager.OPSTR_RECORD_AUDIO,1010123,"example.audit.audio",true);
        s.record(AppOpsManager.OPSTR_RECORD_AUDIO,10123,"example.audit.audio",false);
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(2000));
        assertEquals("the work-profile microphone is still active",1,displayed.size());
    }
}
