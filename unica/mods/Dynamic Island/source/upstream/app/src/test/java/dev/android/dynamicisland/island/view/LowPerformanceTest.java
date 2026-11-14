package dev.android.dynamicisland.island.view;

import static org.junit.Assert.*;
import android.graphics.*;
import android.os.SystemClock;
import android.view.View;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.time.Duration;
import java.util.List;
import org.junit.*;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.*;
import org.robolectric.shadows.ShadowSystemClock;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class LowPerformanceTest {
    @Before public void prepare() { ModuleSettings.ensureStarted(); low(false); }
    @After public void restore() { low(false);lighter("stillMusic",false);lighter("staticWaveform",false);lighter("limitFrameRate",false);lighter("stillIcons",false);lighter("ambientGlow",true); }
    private void low(boolean enabled) { ReflectionHelpers.setStaticField(ModuleSettings.class,"lowPerformance",enabled); }
    private void lighter(String name,boolean enabled) { ReflectionHelpers.setStaticField(ModuleSettings.class,name,enabled); }
    private IslandItem music() {
        IslandItem item=new IslandItem("music");item.isMedia=true;item.kind=IslandItem.Kind.MEDIA;
        item.playing=true;item.trailing=IslandItem.Trailing.WAVEFORM;item.title="Music";item.accent=0xFF3E91FF;
        return item;
    }
    private IslandView view(IslandItem item) {
        IslandView view=new IslandView(RuntimeEnvironment.getApplication(),IslandHost.NONE);
        view.setGeometry(600,300,44,22,false);view.layout(0,0,600,1000);view.setItems(List.of(item));return view;
    }
    private void settle(IslandView view) {
        for(int i=0;i<180;i++) {
            ShadowSystemClock.advanceBy(Duration.ofMillis(16));view.doFrame(SystemClock.uptimeMillis()*1_000_000L);
        }
    }

    @Test public void settledMusicCardsBecomeIdleAndOpeningRemainsResponsive() {
        low(true);IslandItem item=music();IslandView view=view(item);view.peek(item,60000);
        assertTrue(view.interactiveMotion());settle(view);assertFalse(view.interactiveMotion());
        assertFalse(view.shadeMediaAnimating(item));assertFalse(view.needsAudio());
        // End on an admitted render, not a skipped vsync supplied manually by the test driver.
        ShadowSystemClock.advanceBy(Duration.ofMillis(40));view.doFrame(SystemClock.uptimeMillis()*1_000_000L);
        assertFalse((boolean)ReflectionHelpers.getField(view,"frameScheduled"));
        view.collapse();assertTrue(view.interactiveMotion());
        low(false);assertTrue(view.shadeMediaAnimating(item));
    }

    @Test public void hidingTheActualViewStopsWorkAndShowingItRestartsNormalAudioDemand() {
        android.app.Activity activity=Robolectric.buildActivity(android.app.Activity.class).setup().get();
        IslandView view=view(music());activity.setContentView(view);settle(view);
        assertTrue(view.isShown());assertTrue(view.needsAudio());
        view.setVisibility(View.GONE);
        assertFalse(view.needsAudio());assertFalse((boolean)ReflectionHelpers.getField(view,"frameScheduled"));
        SecondTicker ticker=ReflectionHelpers.getField(view,"ticker");assertFalse((boolean)ReflectionHelpers.getField(ticker,"posted"));
        view.setVisibility(View.VISIBLE);settle(view);assertTrue(view.needsAudio());
        low(true);assertFalse(view.needsAudio());low(false);assertTrue(view.needsAudio());
    }

    @Test public void eachLighterSwitchDoesItsOwnJobAndLowPerformanceDoesThemAll() {
        assertFalse(ModuleSettings.stillMusicEffects());assertFalse(ModuleSettings.staticWaveform());
        assertFalse(ModuleSettings.limitFrameRate());assertFalse(ModuleSettings.stillIcons());
        lighter("stillMusic",true);
        assertTrue(ModuleSettings.stillMusicEffects());assertFalse(ModuleSettings.staticWaveform());
        assertFalse(ModuleSettings.limitFrameRate());assertFalse(ModuleSettings.stillIcons());
        lighter("stillMusic",false);lighter("staticWaveform",true);
        assertTrue(ModuleSettings.staticWaveform());assertFalse(ModuleSettings.stillMusicEffects());
        lighter("staticWaveform",false);lighter("limitFrameRate",true);
        assertTrue(ModuleSettings.limitFrameRate());assertFalse(ModuleSettings.stillIcons());
        lighter("limitFrameRate",false);lighter("stillIcons",true);
        assertTrue(ModuleSettings.stillIcons());assertFalse(ModuleSettings.limitFrameRate());
        lighter("stillIcons",false);low(true);
        assertTrue(ModuleSettings.stillMusicEffects());assertTrue(ModuleSettings.staticWaveform());
        assertTrue(ModuleSettings.limitFrameRate());assertTrue(ModuleSettings.stillIcons());
    }

    @Test public void aStaticWaveformStopsTheAudioAnalysisForItButAStillMusicCardKeepsTheWaveform() {
        android.app.Activity activity=Robolectric.buildActivity(android.app.Activity.class).setup().get();
        IslandView view=view(music());activity.setContentView(view);settle(view);
        lighter("ambientGlow",false);   // only the waveform could need the audio
        assertTrue(view.needsAudio());
        lighter("stillMusic",true);
        assertTrue("still music cards keep a live waveform",view.needsAudio());
        lighter("stillMusic",false);lighter("staticWaveform",true);
        assertFalse("a static waveform needs no audio",view.needsAudio());
        lighter("ambientGlow",true);    // the glow's own motion still wants it ...
        assertTrue(view.needsAudio());
        lighter("stillMusic",true);     // ... unless the music effects are still too
        assertFalse(view.needsAudio());
    }

    @Test public void stillMusicEffectsStopTheShadeMusicAnimationAndWaveformsKeepGoingOtherwise() {
        IslandItem item=music();IslandView view=view(item);
        assertTrue(view.shadeMediaAnimating(item));
        lighter("stillMusic",true);assertFalse(view.shadeMediaAnimating(item));
        lighter("stillMusic",false);lighter("staticWaveform",true);assertTrue(view.shadeMediaAnimating(item));
    }

    @Test public void limitingTheFrameRateStopsTheHighRefreshRequestToo() {
        IslandItem item=music();IslandView view=view(item);view.peek(item,60000);
        ShadowSystemClock.advanceBy(Duration.ofMillis(16));view.doFrame(SystemClock.uptimeMillis()*1_000_000L);
        assertEquals(View.REQUESTED_FRAME_RATE_CATEGORY_HIGH,view.getRequestedFrameRate(),0f);
        settle(view);
        lighter("limitFrameRate",true);view.collapse();
        ShadowSystemClock.advanceBy(Duration.ofMillis(40));view.doFrame(SystemClock.uptimeMillis()*1_000_000L);
        assertEquals(View.REQUESTED_FRAME_RATE_CATEGORY_DEFAULT,view.getRequestedFrameRate(),0f);
    }

    @Test public void stillIconsStopTheirAnimationOnTheirOwn() {
        dev.android.dynamicisland.island.graphics.GlyphIcon icon=dev.android.dynamicisland.island.graphics.GlyphIcon.of(dev.android.dynamicisland.island.graphics.GlyphIcon.Kind.BELL);
        lighter("stillIcons",true);
        assertFalse(icon.animating());
    }
}
