package dev.android.dynamicisland.island.material;

import static org.junit.Assert.*;
import android.content.Context;
import android.graphics.*;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandHost;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.island.view.card.BatteryBody;
import dev.android.dynamicisland.island.view.card.CardBody;
import dev.android.dynamicisland.island.view.card.MediaBody;
import dev.android.dynamicisland.island.view.media.MediaFx;
import dev.android.dynamicisland.island.graphics.ArtworkPalette;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.testutil.RenderCapture;
import java.io.File;
import org.junit.Test;
import org.junit.experimental.categories.Category;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.util.ReflectionHelpers;

/** Opt-in review: production Android shader bindings/filtering and real card content, no mock UI. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk=35, qualifiers="ko-rKR-w414dp-h900dp-450dpi")
@Category(RenderCapture.class)
public class FrostedMaterialRenderTest {
    @Test public void renderProductionMaterialOnDeviceSizedCards() throws Exception {
        Context context=RuntimeEnvironment.getApplication();
        android.content.SharedPreferences prefs=context.getSharedPreferences("material-review",0);
        prefs.edit().clear().putInt(ModuleSettings.KEY_MATERIAL_STYLE,ModuleSettings.MATERIAL_FROSTED).commit();ModuleSettings.configurePreview(prefs);
        for(int color:new int[]{0xff171719,0xffff79fe,0xffffffff,0xffbdbdbd}) {
            Bitmap scene=Bitmap.createBitmap(1164,1600,Bitmap.Config.ARGB_8888);
            scene.eraseColor(color);
            render(scene,String.format("%06x",color&0xffffff));
        }
        String inputs=System.getenv("MATERIAL_REVIEW_INPUTS");
        if(inputs!=null)for(String name:new String[]{"photo","apple","busy"}) {
            Bitmap original=BitmapFactory.decodeFile(new File(inputs,name+".png").getPath());
            assertNotNull(original);
            render(Bitmap.createScaledBitmap(original,1164,1600,true),name);
        }
        Bitmap musicScene=Bitmap.createBitmap(1164,1600,Bitmap.Config.ARGB_8888);musicScene.eraseColor(0xff171719);
        render(musicScene,"music",true);
    }
    private void render(Bitmap scene,String name) throws Exception {
        render(scene,name,false);
    }
    private void render(Bitmap scene,String name,boolean media) throws Exception {
        Context context=RuntimeEnvironment.getApplication();
        IslandView owner=new IslandView(context,IslandHost.NONE);
        owner.setGeometry(1164,582,40,24,false);
        IslandItem item=new IslandItem("charging:material-review");
        item.kind=IslandItem.Kind.EVENT;item.eventLayout=IslandItem.EventLayout.BATTERY;
        item.title="충전 중";item.subtitle="452 mA · 1.7 W · 39.4 °C";
        item.batteryPercent=37;item.batteryCharging=true;item.accent=0xff30d158;
        if(media) {
            item.isMedia=true;item.playing=true;item.title="Abyss In Starlight";item.subtitle="Stellive";
            item.mediaDuration=221000;item.mediaPosition=41000;
            String path=System.getenv("MATERIAL_REVIEW_ALBUM");
            if(path!=null) {
                item.art=BitmapFactory.decodeFile(path);assertNotNull(item.art);
                item.cardImage=new android.graphics.drawable.BitmapDrawable(context.getResources(),item.art);
                Bitmap small=Bitmap.createScaledBitmap(item.art,24,24,true);int[] art=new int[576];
                small.getPixels(art,0,24,0,0,24,24);item.mediaPalette=ArtworkPalette.fromPixels(art);
            }else item.mediaPalette=ArtworkPalette.solid(0xffff385d);
        }
        CardBody body=media ? new MediaBody(owner,item,1094) : new BatteryBody(owner,item,1094);
        MediaFx music=body.materialMusic();
        RectF bounds=new RectF(34,120,1128,120+body.h);
        // Same cropped 420px readback and filtering as MaterialCapture.
        int cropHeight=(int)Math.ceil((bounds.bottom+owner.dp(64))/128)*128;
        Bitmap crop=Bitmap.createBitmap(scene,0,0,1164,cropHeight);
        Bitmap sample=Bitmap.createScaledBitmap(crop,420,Math.round(cropHeight*420f/1164),true);
        int[] pixels=new int[sample.getWidth()*sample.getHeight()];
        sample.getPixels(pixels,0,sample.getWidth(),0,0,sample.getWidth(),sample.getHeight());
        MaterialPixels filtered=MaterialPixels.fromArgb(pixels,sample.getWidth(),sample.getHeight()).blur();
        Bitmap texture=Bitmap.createBitmap(filtered.argb(),filtered.width,filtered.height,Bitmap.Config.ARGB_8888);
        texture.setHasAlpha(false);
        MaterialFrame frame=new MaterialFrame(texture,filtered,new Rect(0,0,1164,cropHeight),1164);
        FrostedSurface material=new FrostedSurface();
        RenderNode node=new RenderNode("Production material review");node.setPosition(0,0,1164,1600);
        Canvas recording=node.beginRecording();
        if(media) {
            assertTrue(material.draw(recording,null,bounds,body.cornerRadius(28,body.h),1,music,984));
            output(scene,name+"-pre-capture",body,bounds,material);
        }
        assertTrue(material.draw(recording,frame,bounds,body.cornerRadius(28,body.h),1,music,1000));
        assertTrue(material.draw(recording,frame,bounds,body.cornerRadius(28,body.h),1,music,1200));
        node.endRecording();
        output(scene,name,body,bounds,material);
        node.discardDisplayList();material.clear();
    }
    private void output(Bitmap scene,String name,CardBody body,RectF bounds,FrostedSurface material) throws Exception {
        // Read the already-bound production Paint instead of rebuilding uniforms in Python.
        Paint paint=ReflectionHelpers.getField(material,"paint");
        Bitmap result=scene.copy(Bitmap.Config.ARGB_8888,true);
        Canvas canvas=new Canvas(result);
        // Native Skia can evaluate this shader on CPU for review; Android's
        // Java guard normally disallows it. Never enable this in the app.
        ReflectionHelpers.callInstanceMethod(canvas,"setHwFeaturesInSwModeEnabled",
                ReflectionHelpers.ClassParameter.from(boolean.class,true));
        canvas.save();canvas.translate(bounds.left,bounds.top);
        canvas.drawRect(0,0,bounds.width(),bounds.height(),paint);canvas.restore();
        body.draw(canvas,bounds.left,bounds.top,1,1000);
        RenderCapture.write(result,new File("build/render/material",name+".png"));
    }
}
