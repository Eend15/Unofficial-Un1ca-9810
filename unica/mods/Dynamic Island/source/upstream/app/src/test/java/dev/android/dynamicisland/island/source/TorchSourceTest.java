package dev.android.dynamicisland.island.source;

import dev.android.dynamicisland.testutil.RenderCapture;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import android.app.Application;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Looper;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.util.ReflectionHelpers;
import dev.android.dynamicisland.settings.ModuleSettings;

/** The flashlight card: brightness levels from the camera, a stepped slider and a turn-off button. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class TorchSourceTest {
    static {
        // icons play as animations; draw their finished frame so renders do not depend on the clock
        dev.android.dynamicisland.island.graphics.GlyphIcon.setPlaybackFrozen(true);
    }

    private final Application app = RuntimeEnvironment.getApplication();

    private TorchSource source(int levels, int level, boolean on) {
        TorchSource s = new TorchSource(app, new Handler(Looper.getMainLooper()), () -> { });
        s.configure("0", levels, level, on);
        return s;
    }

    @Test
    public void cardShowsLevelAndSlider() throws Exception {
        TorchSource s = source(5, 3, true);
        List<IslandItem> out = new ArrayList<>();
        s.collect(out);
        assertEquals(1, out.size());
        IslandItem it = out.get(0);
        assertEquals(0.5f, it.sliderValue, 0.001f);
        assertEquals(5, it.sliderSteps);
        assertEquals("60%", it.trailingText.toString());
        assertNotNull(it.sliderChange);
        assertEquals(1, it.actions.size());
        render("torch_card", it);
    }

    @Test
    public void noCardWhileOff() {
        TorchSource s = source(5, 3, false);
        List<IslandItem> out = new ArrayList<>();
        s.collect(out);
        assertTrue(out.isEmpty());
    }

    private void advance(long millis) {
        org.robolectric.Shadows.shadowOf(Looper.getMainLooper()).idleFor(java.time.Duration.ofMillis(millis));
    }
    private void mode(TorchSource source,boolean on) {
        ReflectionHelpers.callInstanceMethod(source,"onCamera",ReflectionHelpers.ClassParameter.from(String.class,"0"),
                ReflectionHelpers.ClassParameter.from(boolean.class,on));
    }
    private final class Hardware {
        final TorchSource source;
        final List<Integer> steps=new ArrayList<>();
        int saved;
        int failAt=-1;
        Hardware(int levels,int current,boolean on) {
            source=source(levels,current,on);saved=current;
            source.setOutput((enabled,level,remember)->{
                if(enabled&&level==failAt)throw new IllegalStateException("camera unavailable");
                steps.add(enabled?level:0);
                if(remember&&enabled)saved=level;
                mode(source,enabled);
                if(enabled)ReflectionHelpers.callInstanceMethod(source,"onLevel",ReflectionHelpers.ClassParameter.from(int.class,level));
            });
        }
        void toggle() { source.card().actions.get(0).runnable.run(); }
    }

    @Test public void beamPowerRestoresChosenLevelAndKeepsOffControlsForFiveSeconds() {
        var prefs=app.getSharedPreferences("torch-beam-power",0);
        prefs.edit().putInt(ModuleSettings.KEY_TORCH_STYLE,1).commit();ModuleSettings.configurePreview(prefs);
        try {
            Hardware hardware=new Hardware(5,4,true);TorchSource s=hardware.source;s.onControlsExpanded(true);
            hardware.toggle();assertTrue("off transition starts with the real light still on",s.card().torchOn);
            advance(240);
            assertEquals(java.util.List.of(3,2,1,0),hardware.steps);
            assertEquals("power-down must not overwrite Samsung's saved brightness",4,hardware.saved);
            ReflectionHelpers.callInstanceMethod(s,"onLevel",ReflectionHelpers.ClassParameter.from(int.class,1));
            List<IslandItem> cards=new ArrayList<>();s.collect(cards);assertEquals(1,cards.size());
            assertTrue(cards.get(0).torchControls);assertTrue(!cards.get(0).torchOn);
            assertEquals(android.os.SystemClock.uptimeMillis()+5_000,cards.get(0).keepExpandedUntilUptime);
            advance(4_999);cards.clear();s.collect(cards);assertEquals(1,cards.size());
            hardware.steps.clear();hardware.toggle();advance(240);
            assertEquals(java.util.List.of(1,2,3,4),hardware.steps);
            assertEquals("80%",s.card().trailingText.toString());assertEquals(4,hardware.saved);
            advance(2);cards.clear();s.collect(cards);assertEquals(1,cards.size());assertTrue(cards.get(0).torchOn);
            hardware.toggle();advance(240);advance(5_000);
            cards.clear();s.collect(cards);assertTrue("off card expires after five seconds",cards.isEmpty());
            assertEquals(Long.valueOf(0),ReflectionHelpers.getField(s,"offControlsUntil"));
            // A native/manual power-up uses the unchanged saved setting, rather than the transient minimum.
            mode(s,true);ReflectionHelpers.callInstanceMethod(s,"onLevel",ReflectionHelpers.ClassParameter.from(int.class,hardware.saved));
            assertEquals("80%",s.card().trailingText.toString());
            hardware.toggle();advance(240);s.onControlsExpanded(false);cards.clear();s.collect(cards);assertTrue(cards.isEmpty());
            s.onControlsExpanded(true);hardware.failAt=1;hardware.toggle();advance(1_000);
            assertTrue("failed power-up must not pretend the real light is on",!s.card().torchOn);
            mode(s,true);mode(s,false);cards.clear();s.collect(cards);assertTrue("external off has no grace card",cards.isEmpty());
            assertEquals(4,hardware.saved);
        } finally {prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);}
    }

    @Test public void powerRampReversalSliderOverrideAndCameraInterruptionCancelOldWrites() {
        var prefs=app.getSharedPreferences("torch-beam-power-interrupt",0);
        prefs.edit().putInt(ModuleSettings.KEY_TORCH_STYLE,1).commit();ModuleSettings.configurePreview(prefs);
        try {
            Hardware h=new Hardware(5,4,true);h.source.onControlsExpanded(true);
            h.toggle();advance(96);h.toggle();advance(300);
            assertTrue(h.source.card().torchOn);assertEquals("80%",h.source.card().trailingText.toString());
            assertTrue("reversing mid-fade never briefly switches the light off",!h.steps.contains(0));assertEquals(4,h.saved);
            h.toggle();advance(96);h.source.setFraction(1);advance(400);
            assertTrue(h.source.card().torchOn);assertEquals("100%",h.source.card().trailingText.toString());
            assertEquals("only direct slider changes are remembered",5,h.saved);
            h.toggle();advance(240);h.toggle();advance(96);mode(h.source,false);
            int count=h.steps.size();advance(800);
            assertEquals("an external off cancels every queued brightness write",count,h.steps.size());assertTrue(!h.source.card().torchOn);
            h.failAt=2;h.toggle();advance(400);count=h.steps.size();advance(1_000);
            assertEquals("a failed ramp stops without repeated camera calls",count,h.steps.size());assertEquals(5,h.saved);
            Hardware single=new Hardware(1,1,true);single.source.onControlsExpanded(true);
            single.toggle();single.toggle();advance(400);assertEquals(java.util.List.of(0,1),single.steps);
            Hardware delayed=new Hardware(5,4,true);delayed.source.onControlsExpanded(true);
            // The final hardware off succeeds but its mode callback is still queued when on is pressed.
            delayed.source.setOutput((enabled,level,remember)->delayed.steps.add(enabled?level:0));
            delayed.toggle();advance(240);assertEquals(Integer.valueOf(0),delayed.steps.get(delayed.steps.size()-1));
            delayed.toggle();mode(delayed.source,false);mode(delayed.source,true);
            ReflectionHelpers.callInstanceMethod(delayed.source,"onLevel",ReflectionHelpers.ClassParameter.from(int.class,1));
            advance(300);assertTrue(delayed.source.card().torchOn);assertEquals(Integer.valueOf(4),delayed.steps.get(delayed.steps.size()-1));
            mode(delayed.source,false);advance(300);assertTrue("a later genuine off is still respected",!delayed.source.card().torchOn);
            Hardware classic=new Hardware(5,4,true);
            prefs.edit().putInt(ModuleSettings.KEY_TORCH_STYLE,0).commit();ModuleSettings.configurePreview(prefs);
            classic.toggle();assertEquals(java.util.List.of(0),classic.steps);
        } finally {prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);}
    }

    private void render(String name, IslandItem item) throws Exception {
        IslandView view = new IslandView(app, null);
        float w = 360f * app.getResources().getDisplayMetrics().density;
        float h = view.shadeCardHeight(item, w);
        Bitmap bmp = Bitmap.createBitmap(Math.round(w), Math.round(h), Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(bmp);
        c.drawColor(0xFF1B1B1F);
        view.drawShadeCard(c, item, w);
        File dir = new File("build/render");
        dir.mkdirs();
        RenderCapture.write(bmp, new File(dir, name + ".png"));
    }
}
