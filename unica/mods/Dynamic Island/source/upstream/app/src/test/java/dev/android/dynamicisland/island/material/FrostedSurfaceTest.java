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
