package dev.android.dynamicisland.island.view;

import static org.junit.Assert.*;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.RectF;
import android.os.SystemClock;
import android.content.SharedPreferences;
import dev.android.dynamicisland.island.feedback.AudioLevels;
import dev.android.dynamicisland.island.graphics.ArtworkPalette;
import dev.android.dynamicisland.island.model.IslandItem;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.util.ReflectionHelpers;
import dev.android.dynamicisland.settings.ModuleSettings;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class GlowMotionTest {
    private IslandItem music() {
        IslandItem item = new IslandItem("music");
        item.isMedia = true; item.playing = true; item.accent = 0xFF408DCD;
        item.mediaPalette = ArtworkPalette.fromPixels(new int[]{0xFF408DCD, 0xFF4896CC, 0xFF427DCF, 0xFF408DCD});
        return item;
    }

    @Test public void audioHasVisibleBoundedInfluenceWhilePauseSettlesNearlyInvisibleAndStopsMotion() {
        IslandItem item = music();
        GlowMotion motion = new GlowMotion();
        motion.step(0, item, true, Color.WHITE, null);
        float silent = motion.opacity();
        AudioLevels audio = new AudioLevels();
        ReflectionHelpers.setField(audio, "wanted", true);
        float[] levels = ReflectionHelpers.getField(audio, "levels");
        java.util.Arrays.fill(levels, 1);
        for (int i = 0; i < 180; i++) {
            ReflectionHelpers.setField(audio, "lastData", SystemClock.uptimeMillis());
            assertTrue(motion.step(1f / 60, item, true, Color.WHITE, audio));
        }
        assertTrue(motion.opacity() - silent > .12f);
        assertTrue(motion.opacity() - silent < .20f);
        assertTrue(motion.spread() <= 1.05f);
        assertEquals(item.mediaPalette.first, motion.colour(0));
        assertEquals(item.mediaPalette.middle, motion.colour(1));
        assertEquals(item.mediaPalette.last, motion.colour(2));

        item.playing = false;
        boolean moving = true;
        for (int i = 0; i < 720; i++) moving = motion.step(1f / 60, item, true, Color.WHITE, audio);
        assertFalse(moving);
        assertTrue(motion.opacity() < .04f);
        assertTrue(motion.spread() <= .601f);
        float phase = motion.phase();
        motion.step(1f / 60, item, true, Color.WHITE, audio);
        assertEquals(phase, motion.phase(), .000001f);
        audio.setActive(false);
    }

    @Test public void motionRangeSpansStaticBarelyMovingAndStrongWithoutChangingPausedVisibility() {
        IslandItem item = music();
        float previousPhase = -1, previousResponse = -1;
        for (int setting : new int[]{0, 1, 50, 100}) {
            GlowMotion motion = new GlowMotion();
            motion.step(0, item, true, Color.WHITE, setting, 0);
            float quiet = motion.opacity();
            boolean moving = false;
            for (int i = 0; i < 120; i++) moving = motion.step(1f / 60, item, true, Color.WHITE, setting, 1);
            float response = motion.opacity() - quiet;
            assertTrue(motion.phase() > previousPhase);
            assertTrue(response > previousResponse);
            if (setting == 0) { assertFalse(moving); assertEquals(0, motion.phase(), 0); }
            if (setting == 1) assertTrue(response < .001f);
            if (setting == 100) { assertTrue(response > .5f); assertTrue(motion.spread() < 1.35f); }
            previousPhase = motion.phase(); previousResponse = response;
            item.playing = false;
            for (int i = 0; i < 720; i++) moving = motion.step(1f / 60, item, true, Color.WHITE, setting, 1);
            assertFalse(moving); assertTrue(motion.opacity() < .04f);
            assertEquals(0, Color.alpha(draw(new AmbientGlow(1), motion).getPixel(200, 65)));
            item.playing = true;
        }
    }

    @Test public void nativeGradientFlowsOutsideOpaqueBodyAndFadesSmoothlyOnTrackChanges() {
        IslandItem item = music();
        GlowMotion motion = new GlowMotion();
        AmbientGlow glow = new AmbientGlow(1);
        motion.step(0, item, true, Color.WHITE, null);
        Bitmap start = draw(glow, motion);
        for (int i = 0; i < 180; i++) motion.step(1f / 60, item, true, Color.WHITE, null);
        Bitmap drifted = draw(glow, motion);
        assertFalse(start.sameAs(drifted));
        assertEquals(0, Color.alpha(drifted.getPixel(200, 65))); // no glow leaks into the pill
        long playingLight = light(drifted);
        assertTrue(playingLight > 1000);
        int previous = motion.colour(1);
        item.accent = 0xFFE29A59; item.mediaPalette = ArtworkPalette.solid(item.accent);
        motion.step(0, item, true, Color.WHITE, null);
        assertEquals(previous, motion.colour(1)); // a new track begins at the old visible colour
        for (int i = 0; i < 120; i++) motion.step(1f / 60, item, true, Color.WHITE, null);
        assertNotEquals(previous, motion.colour(1));
        item.playing = false;
        for (int i = 0; i < 720; i++) motion.step(1f / 60, item, true, Color.WHITE, null);
        assertTrue(light(draw(glow, motion)) < playingLight * .08);
    }

    private Bitmap draw(AmbientGlow glow, GlowMotion motion) {
        Bitmap bitmap = Bitmap.createBitmap(400, 140, Bitmap.Config.ARGB_8888);
        glow.draw(new Canvas(bitmap), new RectF(90, 50, 310, 80), motion, 1, 45);
        return bitmap;
    }

    @Test public void allCompactBodiesShareTheRealSessionAndFadeOutWithoutAColourJump() {
        android.app.Activity activity=org.robolectric.Robolectric.buildActivity(android.app.Activity.class).setup().get();
        SharedPreferences prefs=activity.getSharedPreferences("shared-glow",0);
        ModuleSettings.configurePreview(prefs);
        IslandView view=new IslandView(activity,IslandHost.NONE);
        activity.setContentView(view);view.setGeometry(600,300,55,20,false);view.layout(0,0,600,150);
        IslandItem first=new IslandItem("event:first"),second=new IslandItem("event:second");
        first.kind=IslandItem.Kind.EVENT;second.kind=IslandItem.Kind.EVENT;
        first.title="Timer";second.title="Flashlight";
        view.setGlowSession(null);view.setItems(java.util.List.of(first,second));frames(view,180);
        Shapes shapes=ReflectionHelpers.getField(view,"shapes");Scene scene=ReflectionHelpers.getField(view,"scene");
        RectF body=new RectF(),bubble=new RectF();shapes.paintedMain(body);shapes.bubble(body,scene.springs.split.value(),bubble);
        assertTrue(scene.springs.split.value()>.9f);
        assertEquals(0,haloLight(capture(view),body));
        IslandItem music=music();music.accent=0xFF2288EE;music.mediaPalette=ArtworkPalette.solid(music.accent);
        view.setGlowSession(music);frames(view,180);
        assertTrue(view.needsAudio()); // music is not itself either visible pill
        Bitmap playing=capture(view);
        for(RectF shape:new RectF[]{body,bubble}){
            int sample=playing.getPixel(Math.round(shape.centerX()),Math.round(shape.top)-4);
            assertTrue(Color.alpha(sample)>0);assertTrue(Color.blue(sample)>Color.red(sample)*2);
        }
        music.playing=false;frames(view,300);assertFalse(view.needsAudio());
        Bitmap paused=capture(view);
        assertTrue(haloLight(paused,body)<haloLight(playing,body)*.1);
        assertTrue(haloLight(paused,bubble)<haloLight(playing,bubble)*.1);
        view.setGlowSession(null);frames(view,1);
        long initial=haloLight(capture(view),body);assertTrue(initial>0);
        frames(view,30);
        long halfway=haloLight(capture(view),body);assertTrue(halfway>0);assertTrue(halfway<initial);
        frames(view,60);assertEquals(0,haloLight(capture(view),body));
        prefs.edit().putBoolean(ModuleSettings.KEY_GLOW_MUSIC_ONLY,false).apply();ModuleSettings.configurePreview(prefs);
        view.setItems(java.util.List.of(first,second));frames(view,180);
        assertTrue(haloLight(capture(view),body)>0);
        prefs.edit().clear().apply();ModuleSettings.configurePreview(prefs);
    }

    private void frames(IslandView view,int count){
        for(int i=0;i<count;i++){
            org.robolectric.shadows.ShadowSystemClock.advanceBy(java.time.Duration.ofMillis(16));
            org.robolectric.Shadows.shadowOf(android.os.Looper.getMainLooper()).idle();
            view.layout(0,0,600,150);
            view.doFrame(SystemClock.uptimeMillis()*1_000_000L);
        }
    }
    private Bitmap capture(IslandView view){
        Bitmap image=Bitmap.createBitmap(600,150,Bitmap.Config.ARGB_8888);view.draw(new Canvas(image));return image;
    }
    private long haloLight(Bitmap bitmap,RectF shape){
        long sum=0;
        for(int y=Math.max(0,(int)shape.top-16);y<shape.top-2;y++)for(int x=Math.max(0,(int)shape.left);x<Math.min(bitmap.getWidth(),shape.right);x++){
            int pixel=bitmap.getPixel(x,y);sum+=(Color.red(pixel)+Color.green(pixel)+Color.blue(pixel))*Color.alpha(pixel)/255;
        }
        return sum;
    }

    private long light(Bitmap bitmap) {
        long sum = 0;
        for (int y = 0; y < bitmap.getHeight(); y++) for (int x = 0; x < bitmap.getWidth(); x++) {
            int pixel = bitmap.getPixel(x, y);
            sum += (Color.red(pixel) + Color.green(pixel) + Color.blue(pixel)) * Color.alpha(pixel) / 255;
        }
        return sum;
    }
}
