package dev.android.dynamicisland.island.material;

import static org.junit.Assert.*;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.RenderNode;
import dev.android.dynamicisland.settings.ModuleSettings;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk=35)
public class FrostedSurfaceTest {
    @Test public void responseTexturesAreReusedOnlyWhenTheirSizeAndPixelsMatch() throws Exception {
        SharedPreferences prefs=RuntimeEnvironment.getApplication().getSharedPreferences("frosted-response-reuse",0);
        prefs.edit().clear().putInt(ModuleSettings.KEY_MATERIAL_STYLE,ModuleSettings.MATERIAL_FROSTED).commit();
        ModuleSettings.configurePreview(prefs);
        int w=116,h=160;
        int[] pixels=new int[w*h];
        // Identical dark patches above and below; a bright patch farther down changes the response.
        java.util.Arrays.fill(pixels,0xff000000);
        for(int y=80;y<h;y++)java.util.Arrays.fill(pixels,y*w,(y+1)*w,0xffffffff);
        MaterialPixels data=MaterialPixels.fromArgb(pixels,w,h);
        MaterialFrame frame=new MaterialFrame(Bitmap.createBitmap(pixels,w,h,Bitmap.Config.ARGB_8888),
                data,new Rect(0,0,1164,1600),1164);
        RenderNode node=new RenderNode("Response texture reuse");node.setPosition(0,0,1164,1600);
        Canvas canvas=node.beginRecording();
        FrostedSurface surface=new FrostedSurface();
        RectF local=new RectF(0,0,1072,247),screen=new RectF(46,153,1118,400);
        try {
            assertTrue(surface.draw(canvas,frame,local,screen,100,1,null,1000));
            Object input=org.robolectric.util.ReflectionHelpers.getField(surface,"current");
            Object first=org.robolectric.util.ReflectionHelpers.getField(input,"field");
            Bitmap original=paintedShell(surface,1072,247);
            screen.offset(0,16);
            assertTrue(surface.draw(canvas,frame,local,screen,100,1,null,1016));
            assertSame("same pixels reuse the GPU texture",first,org.robolectric.util.ReflectionHelpers.getField(input,"field"));
            assertEquals("source coordinates still follow the card",169*160/1600f,
                    (float)org.robolectric.util.ReflectionHelpers.getField(input,"offsetY"),.00001f);
            assertTrue("identical backdrop still renders identically",original.sameAs(paintedShell(surface,1072,247)));
            screen.offset(0,800);
            assertTrue(surface.draw(canvas,frame,local,screen,100,1,null,1032));
            Object bright=org.robolectric.util.ReflectionHelpers.getField(input,"field");
            assertNotSame("different response pixels require a fresh texture",first,bright);
            assertFalse(original.sameAs(paintedShell(surface,1072,247)));
            // 40x9 and 40x8 are both uniform white, but their texture sizes must remain correct.
            local.bottom=200;screen.bottom=screen.top+200;
            assertTrue(surface.draw(canvas,frame,local,screen,80,1,null,1048));
            assertNotSame("a new field size must not reuse the old texture",bright,
                    org.robolectric.util.ReflectionHelpers.getField(input,"field"));
        } finally {
            node.endRecording();node.discardDisplayList();surface.clear();
            prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
        }
    }

    @Test public void materialPaintsWhileCaptureLoadsAndBlendsPixelsWithoutRestartingLighting() throws Exception {
        SharedPreferences prefs=RuntimeEnvironment.getApplication().getSharedPreferences("frosted-loading-test",0);
        prefs.edit().clear().putInt(ModuleSettings.KEY_MATERIAL_STYLE,ModuleSettings.MATERIAL_FROSTED).commit();ModuleSettings.configurePreview(prefs);
        RectF bounds=new RectF(46,153,1118,400);
        RenderNode node=new RenderNode("Material during capture");node.setPosition(0,0,1164,1600);
        Canvas canvas=node.beginRecording();
        FrostedSurface surface=new FrostedSurface();
        assertTrue(surface.draw(canvas,null,bounds,100,1,null,1000));
        assertFalse(surface.animating(1000));
        Bitmap local=paintedShell(surface,1072,247);
        assertTrue("curved light exists before any capture",android.graphics.Color.red(local.getPixel(536,244))>10);
        int[] pixels=new int[116*160];java.util.Arrays.fill(pixels,0xffff79fe);
        MaterialPixels data=MaterialPixels.fromArgb(pixels,116,160).blur();
        Bitmap bitmap=Bitmap.createBitmap(data.argb(),116,160,Bitmap.Config.ARGB_8888);
        MaterialFrame frame=new MaterialFrame(bitmap,data,new Rect(0,0,1164,1600),1164);
        assertTrue(surface.draw(canvas,frame,bounds,100,1,null,1016));
        assertTrue("first captured pixels do not flash on",local.sameAs(paintedShell(surface,1072,247)));
        assertTrue(surface.draw(canvas,frame,bounds,100,1,null,1061));
        Bitmap middle=paintedShell(surface,1072,247);
        assertFalse(local.sameAs(middle));
        assertTrue(surface.draw(canvas,frame,bounds,100,1,null,1106));
        Bitmap ready=paintedShell(surface,1072,247);
        assertFalse(middle.sameAs(ready));assertFalse(surface.animating(1106));
        assertTrue(FrostedSurface.canUse(frame,new RectF(46,153,1118,1700)));
        assertTrue(surface.draw(canvas,null,bounds,100,1,null,1120));
        assertTrue("one missed capture preserves the last material",ready.sameAs(paintedShell(surface,1072,247)));
        assertTrue(surface.draw(canvas,frame,bounds,100,1,null,1180));
        assertTrue(ready.sameAs(paintedShell(surface,1072,247)));
        int[] blue=new int[116*160];java.util.Arrays.fill(blue,0xff2277ff);
        MaterialPixels blueData=MaterialPixels.fromArgb(blue,116,160).blur();
        MaterialFrame blueFrame=new MaterialFrame(Bitmap.createBitmap(blueData.argb(),116,160,Bitmap.Config.ARGB_8888),
                blueData,new Rect(0,0,1164,1600),1164);
        assertTrue(surface.draw(canvas,blueFrame,bounds,100,1,null,1200));
        assertTrue("later captures blend from current pixels, never black",ready.sameAs(paintedShell(surface,1072,247)));
        assertTrue(surface.draw(canvas,blueFrame,bounds,100,1,null,1245));
        Bitmap updating=paintedShell(surface,1072,247);assertFalse(ready.sameAs(updating));
        assertTrue(surface.draw(canvas,blueFrame,bounds,100,1,null,1290));
        Bitmap blueReady=paintedShell(surface,1072,247);assertFalse(updating.sameAs(blueReady));
        assertTrue(surface.draw(canvas,null,bounds,100,1,null,1300));
        assertTrue(surface.draw(canvas,null,bounds,100,1,null,1501));
        assertTrue("sustained loss begins at the last valid pixels",blueReady.sameAs(paintedShell(surface,1072,247)));
        assertTrue(surface.draw(canvas,null,bounds,100,1,null,1591));
        assertTrue("sustained loss fades to the same local shell",local.sameAs(paintedShell(surface,1072,247)));
        FrostedSurface unsupported=new FrostedSurface();
        assertTrue(unsupported.draw(canvas,null,bounds,100,1,null,1000));
        assertTrue("a late capture must not switch renderers at 500ms",unsupported.draw(canvas,null,bounds,100,1,null,1600));
        assertTrue(local.sameAs(paintedShell(unsupported,1072,247)));
        assertFalse(unsupported.animating(1600));
        node.endRecording();node.discardDisplayList();surface.clear();unsupported.clear();
    }
    /** Mean lightness (0..1) of the lower third of a card drawn over a flat backdrop of this colour. */
    private static float lowerLightness(int backdrop,boolean music) throws Exception {
        return lowerLightness(backdrop,music,0);
    }

    private static float lowerLightness(int backdrop,boolean music,int palette) throws Exception {
        SharedPreferences prefs=RuntimeEnvironment.getApplication().getSharedPreferences("frosted-bright",0);
        prefs.edit().clear().putInt(ModuleSettings.KEY_MATERIAL_STYLE,ModuleSettings.MATERIAL_FROSTED).commit();
        ModuleSettings.configurePreview(prefs);
        int w=116,h=160;
        int[] pixels=new int[w*h];java.util.Arrays.fill(pixels,backdrop);
        MaterialPixels data=MaterialPixels.fromArgb(pixels,w,h).blur();
        MaterialFrame frame=new MaterialFrame(Bitmap.createBitmap(data.argb(),w,h,Bitmap.Config.ARGB_8888),data,new Rect(0,0,1164,1600),1164);
        RenderNode node=new RenderNode("Bright backdrop");node.setPosition(0,0,1164,1600);
        Canvas canvas=node.beginRecording();
        FrostedSurface surface=new FrostedSurface();
        dev.android.dynamicisland.island.view.media.MediaFx fx=null;
        if(music) {
            dev.android.dynamicisland.island.view.IslandView owner=new dev.android.dynamicisland.island.view.IslandView(
                    RuntimeEnvironment.getApplication(),dev.android.dynamicisland.island.view.IslandHost.NONE);
            owner.setGeometry(1164,582,40,24,false);
            dev.android.dynamicisland.island.model.IslandItem item=new dev.android.dynamicisland.island.model.IslandItem("m");
            item.kind=dev.android.dynamicisland.island.model.IslandItem.Kind.EVENT;item.isMedia=true;item.playing=true;
            item.title="Ballad";item.subtitle="Unknown";item.mediaDuration=189000;item.mediaPosition=57000;
            item.mediaPalette=palette==0 ? dev.android.dynamicisland.island.graphics.ArtworkPalette.fromPixels(null)
                    : dev.android.dynamicisland.island.graphics.ArtworkPalette.solid(palette);
            fx=new dev.android.dynamicisland.island.view.card.MediaBody(owner,item,1094).materialMusic();
            for(long k=0;k<=4000;k+=100)fx.advance(k);
        }
        try {
            RectF local=new RectF(0,0,1072,420),screen=new RectF(46,153,1118,573);
            assertTrue(surface.draw(canvas,frame,local,screen,100,1,fx,4000));
            assertTrue(surface.draw(canvas,frame,local,screen,100,1,fx,4200));
            Bitmap shell=paintedShell(surface,1072,420);
            double sum=0;int n=0;
            for(int y=280;y<400;y++)for(int x=200;x<880;x+=7){
                int c=shell.getPixel(x,y);
                sum+=(.2126*android.graphics.Color.red(c)+.7152*android.graphics.Color.green(c)+.0722*android.graphics.Color.blue(c))/255.0;n++;
            }
            return (float)(sum/n);
        } finally {
            node.endRecording();node.discardDisplayList();surface.clear();
            prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
        }
    }

    @Test public void glassOnABrightBackdropStaysDarkEnoughForItsLightText() throws Exception {
        for(boolean music:new boolean[]{false,true}) {
            float white=lowerLightness(0xffffffff,music);
            float grey=lowerLightness(0xffbdbdbd,music);
            float dark=lowerLightness(0xff171719,music);
            assertTrue((music ? "music" : "card")+", white backdrop: lower card "+white,white<=.50f);
            assertTrue((music ? "music" : "card")+", light grey backdrop: lower card "+grey,grey<=.50f);
            assertTrue((music ? "music" : "card")+", a dark backdrop stays under the knee, so it is unchanged: "+dark,dark<.38f);
        }
    }

    /** The look before the lightness limit existed (measured with that shader): a dark backdrop must keep it. */
    @Test public void brightAlbumColoursOverADarkBackdropKeepTheirLook() throws Exception {
        assertEquals(.40868f,lowerLightness(0xff404040,true,0xffffe066),.0005f);
        assertEquals(.41343f,lowerLightness(0xff404040,true,0xff7fffd4),.0005f);
        assertEquals(.46294f,lowerLightness(0xff404040,true,0xffffffff),.0005f);
    }

    /**
     * A card whose screen position turns NaN (a view transform in the middle of an animation) used to send NaN to the
     * shader's sampling uniforms; on the GPU that made the whole card black, and it stayed black until the geometry
     * changed. The geometry is now refused and the card keeps the last good one.
     */
    @Test public void nonFiniteGeometryIsRefusedAndTheLastGoodOneStays() throws Exception {
        SharedPreferences prefs=RuntimeEnvironment.getApplication().getSharedPreferences("frosted-nan",0);
        prefs.edit().clear().putInt(ModuleSettings.KEY_MATERIAL_STYLE,ModuleSettings.MATERIAL_FROSTED).commit();
        ModuleSettings.configurePreview(prefs);
        int w=116,h=160;
        int[] pixels=new int[w*h];java.util.Arrays.fill(pixels,0xffbdbdbd);
        MaterialPixels data=MaterialPixels.fromArgb(pixels,w,h).blur();
        MaterialFrame frame=new MaterialFrame(Bitmap.createBitmap(data.argb(),w,h,Bitmap.Config.ARGB_8888),data,new Rect(0,0,1164,1600),1164);
        RenderNode node=new RenderNode("nan");node.setPosition(0,0,1164,1600);
        Canvas canvas=node.beginRecording();
        FrostedSurface surface=new FrostedSurface();
        try {
            RectF local=new RectF(0,0,1072,420),good=new RectF(46,153,1118,573);
            assertTrue(surface.draw(canvas,frame,local,good,100,1,null,4000));
            int before=FrostedSurface.rejectionsNow();
            float first=lightnessOf(surface);
            RectF[] bad={new RectF(Float.NaN,153,1118,573),new RectF(46,Float.POSITIVE_INFINITY,1118,573),
                    new RectF(46,153,Float.NaN,Float.NaN)};
            for(RectF screen:bad) assertTrue(surface.draw(canvas,frame,local,screen,100,1,null,4100));
            
            assertTrue("the geometry was refused",FrostedSurface.rejectionsNow()>before);
            assertEquals("the card looks as before",first,lightnessOf(surface),.001f);
            // and a good rectangle is taken again afterwards
            assertTrue(surface.draw(canvas,frame,local,new RectF(46,200,1118,620),100,1,null,4200));
        } finally {
            node.endRecording();node.discardDisplayList();surface.clear();
            prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
        }
    }

    /**
     * The response is packed into two bytes. Decoding it as (R*255*256+G*255)/65535 passes through 65535, which a
     * half-precision register cannot hold (largest finite value 65504); the shader now scales both bytes by 1/65536
     * first. The two forms are the same number, and the new one never goes above about 1.004.
     */
    @Test public void theResponseDecodeIsTheSameNumberAndNeverLeavesHalfPrecision() throws Exception {
        double worst=0,largestStep=0;
        for(int value=0;value<=65535;value++) {
            double r=(value>>8)/255.0,g=(value&255)/255.0;
            double plain=(r*255*256+g*255)/65535;
            double safe=Math.max(0,Math.min(1,(r*0.99609375+g*0.0038909912109375)/0.9999847412109375));
            worst=Math.max(worst,Math.abs(plain-safe));
            largestStep=Math.max(largestStep,Math.max(r*0.99609375+g*0.0038909912109375,Math.abs(safe)));
            assertEquals(value/65535.0,safe,1e-9);
        }
        assertTrue("same number, difference "+worst,worst<1e-9);
        assertTrue("largest step "+largestStep,largestStep<1.01);
        try(java.io.InputStream source=FrostedSurface.class.getResourceAsStream("/dev/android/dynamicisland/material/frosted.agsl")) {
            String code=new String(source.readAllBytes(),java.nio.charset.StandardCharsets.UTF_8);
            assertFalse("the plain decode is gone",code.contains("255.0*256.0"));
            assertFalse(code.contains("/65535.0"));
            assertTrue(code.contains("float response=clamp((field.r*0.99609375"));
            assertTrue(code.contains("float oldResponse=clamp((oldField.r*0.99609375"));
        }
    }

    private static float lightnessOf(FrostedSurface surface) {
        Bitmap shell=paintedShell(surface,1072,420);
        double sum=0;int n=0;
        for(int y=100;y<400;y+=9)for(int x=200;x<880;x+=17){
            int c=shell.getPixel(x,y);
            sum+=(.2126*android.graphics.Color.red(c)+.7152*android.graphics.Color.green(c)+.0722*android.graphics.Color.blue(c))/255.0;n++;
        }
        return (float)(sum/n);
    }

    private static Bitmap paintedShell(FrostedSurface surface,int w,int h) {
        Bitmap bitmap=Bitmap.createBitmap(w,h,Bitmap.Config.ARGB_8888);
        Canvas canvas=new Canvas(bitmap);
        org.robolectric.util.ReflectionHelpers.callInstanceMethod(canvas,"setHwFeaturesInSwModeEnabled",
                org.robolectric.util.ReflectionHelpers.ClassParameter.from(boolean.class,true));
        android.graphics.Paint paint=org.robolectric.util.ReflectionHelpers.getField(surface,"paint");
        canvas.drawRect(0,0,w,h,paint);
        return bitmap;
    }
    @Test public void packagedShaderAndAllBindingsRecordOnHardwareCanvasAndClassicOptsOut() throws Exception {
        try(java.io.InputStream source=FrostedSurface.class.getResourceAsStream("/dev/android/dynamicisland/material/frosted.agsl")) {
            assertNotNull(source);
            assertEquals(new String(source.readAllBytes(),java.nio.charset.StandardCharsets.UTF_8),FrostedShaderSource.CODE);
        }
        SharedPreferences prefs=RuntimeEnvironment.getApplication().getSharedPreferences("frosted-test",0);
        prefs.edit().clear().putInt(ModuleSettings.KEY_MATERIAL_STYLE,ModuleSettings.MATERIAL_FROSTED).commit();ModuleSettings.configurePreview(prefs);
        int[] pixels=new int[116*160];java.util.Arrays.fill(pixels,0xffddeeff);
        MaterialPixels data=MaterialPixels.fromArgb(pixels,116,160).blur();
        Bitmap bitmap=Bitmap.createBitmap(data.argb(),116,160,Bitmap.Config.ARGB_8888);bitmap.setHasAlpha(false);
        MaterialFrame frame=new MaterialFrame(bitmap,data,new Rect(0,0,1164,1600),1164);
        RenderNode node=new RenderNode("Material binding verification");node.setPosition(0,0,1164,1600);
        Canvas canvas=node.beginRecording();assertTrue(canvas.isHardwareAccelerated());
        android.graphics.Path outline=new android.graphics.Path();
        MaterialShape.path(outline,new RectF(46,153,1118,400),100);
        RectF perimeter=new RectF();outline.computeBounds(perimeter,true);
        assertEquals(new RectF(46,153,1118,400),perimeter);
        assertTrue(outline.isConvex());
        FrostedSurface surface=new FrostedSurface();
        assertTrue(surface.draw(canvas,frame,new RectF(46,153,1118,400),100,1,null,1000));
        assertFalse("prewarmed input is used immediately",surface.animating(1000));
        Bitmap firstWarm=paintedShell(surface,1072,247);
        assertTrue(surface.draw(canvas,frame,new RectF(46,153,1118,400),100,1,null,1200));
        assertTrue(firstWarm.sameAs(paintedShell(surface,1072,247)));
        assertFalse(surface.animating(1200));
        node.endRecording();assertTrue(node.hasDisplayList());
        // The shade route was previously left on drawBackground()/drawBody() only.
        dev.android.dynamicisland.island.view.IslandView shade=new dev.android.dynamicisland.island.view.IslandView(
                RuntimeEnvironment.getApplication(),dev.android.dynamicisland.island.view.IslandHost.NONE);
        dev.android.dynamicisland.island.model.IslandItem item=new dev.android.dynamicisland.island.model.IslandItem("material:shade");
        item.kind=dev.android.dynamicisland.island.model.IslandItem.Kind.LIVE;item.title="Live activity";
        float height=shade.shadeCardHeight(item,360);
        canvas=node.beginRecording();
        assertTrue(shade.drawShadeCard(canvas,item,360,frame,new RectF(46,153,406,153+height)));
        node.endRecording();
        // A valid background must be prepared before the user opens a card.
        dev.android.dynamicisland.island.view.IslandView compact=new dev.android.dynamicisland.island.view.IslandView(
                RuntimeEnvironment.getApplication(),dev.android.dynamicisland.island.view.IslandHost.NONE);
        compact.setGeometry(1164,582,40,24,false);compact.layout(0,0,1164,1600);compact.setItems(java.util.List.of(item));
        long nanos=android.os.SystemClock.uptimeMillis()*1000000L;
        for(int i=0;i<90;i++) {
            org.robolectric.shadows.ShadowSystemClock.advanceBy(java.time.Duration.ofMillis(16));
            compact.doFrame(nanos+=16000000L);
        }
        assertFalse(compact.isExpanded());assertTrue(compact.materialBackdropPrewarming());
        assertTrue("capture starts while still compact",compact.materialBackdropRegion(new Rect()));
        prefs.edit().putInt(ModuleSettings.KEY_MATERIAL_STYLE,ModuleSettings.MATERIAL_CLASSIC).commit();ModuleSettings.configurePreview(prefs);
        assertFalse(FrostedSurface.canUse(frame));
        assertFalse("Classic never starts capture prewarming",compact.materialBackdropRegion(new Rect()));
        surface.clear();node.discardDisplayList();
        prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
    }
}
