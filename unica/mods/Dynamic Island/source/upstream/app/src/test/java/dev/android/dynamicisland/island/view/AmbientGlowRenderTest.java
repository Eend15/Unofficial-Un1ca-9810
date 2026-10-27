package dev.android.dynamicisland.island.view;

import static org.junit.Assert.*;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.*;
import android.graphics.drawable.BitmapDrawable;
import android.os.SystemClock;
import dev.android.dynamicisland.island.graphics.ArtworkPalette;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.io.File;
import java.time.Duration;
import java.util.List;
import org.junit.Test;
import org.junit.experimental.categories.Category;
import dev.android.dynamicisland.testutil.RenderCapture;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.*;
import org.robolectric.shadows.ShadowSystemClock;

/** Captures the production IslandView at one stable layout, using extracted colours from the sample album covers. */
@Category(RenderCapture.class)
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk=35,qualifiers="w411dp-h891dp-xxhdpi")
public class AmbientGlowRenderTest {
    private static final int W=1180,H=220;
    @Test public void renderReferenceIntensityAndAlbumColours() throws Exception {
        org.robolectric.shadows.ShadowChoreographer.setPaused(true);
        org.robolectric.shadows.ShadowChoreographer.setFrameDelay(Duration.ofMillis(16));
        Context ctx=RuntimeEnvironment.getApplication();SharedPreferences prefs=ctx.getSharedPreferences("glow-captures",0);
        try {
            for(String name:new String[]{"off","champagne","album-warm","album-blue","album-purple","album-paused","album-pair-blue","album-hidden-blue","album-fading-blue","album-ended-blue","strong","light","theme-blue","individual-pink"}) {
                boolean album=name.startsWith("album");
                int primary=name.endsWith("blue")?0xFF438BD8:name.endsWith("purple")?0xFFB05BD3:0xFFB37C43;
                prefs.edit().putBoolean(ModuleSettings.KEY_AMBIENT_GLOW,!name.equals("off"))
                        .putBoolean(ModuleSettings.KEY_GLOW_ALBUM,album)
                        .putBoolean(ModuleSettings.KEY_GLOW_FOLLOW_THEME,name.equals("theme-blue"))
                        .putBoolean(ModuleSettings.KEY_ACCENT_CUSTOM,true).putInt(ModuleSettings.KEY_ACCENT_COLOR,0xFF75B6FF)
                        .putInt(ModuleSettings.KEY_GLOW_COLOUR,name.equals("individual-pink")?0xFFFFA7C5:ModuleSettings.DEFAULT_GLOW_COLOUR)
                        .putInt(ModuleSettings.KEY_GLOW_STRENGTH,name.equals("strong")?80:ModuleSettings.DEFAULT_GLOW_STRENGTH).apply();
                ModuleSettings.configurePreview(prefs);
                Bitmap art=art(primary);int[] pixels=new int[art.getWidth()*art.getHeight()];art.getPixels(pixels,0,art.getWidth(),0,0,art.getWidth(),art.getHeight());
                IslandItem item=new IslandItem("media:preview");item.kind=IslandItem.Kind.MEDIA;item.isMedia=true;item.playing=!name.equals("album-paused");
                item.title="Preview";item.art=art;item.mediaPalette=ArtworkPalette.fromPixels(pixels);item.accent=item.mediaPalette.primary;
                item.icon=new BitmapDrawable(ctx.getResources(),art);item.iconIsImage=true;item.trailing=IslandItem.Trailing.WAVEFORM;
                IslandView view=new IslandView(ctx,IslandHost.NONE);view.setGeometry(W,W/2f,105,60,false);view.setPillSize(0,150,0);
                view.layout(0,0,W,H);
                List<IslandItem> previewItems=List.of(item);
                if(name.contains("pair")||name.contains("hidden")||name.contains("fading")||name.contains("ended")){
                    IslandItem event=new IslandItem("event:preview");event.kind=IslandItem.Kind.EVENT;event.title="Timer";
                    event.icon=new BitmapDrawable(ctx.getResources(),art(0xFFCB773E));event.iconIsImage=true;
                    IslandItem extra=new IslandItem("event:extra");extra.kind=IslandItem.Kind.EVENT;extra.title="Flashlight";extra.icon=event.icon;
                    view.setGlowSession(item);previewItems=List.of(event,name.contains("pair")?item:extra);
                }
                view.setItems(previewItems);
                for(int frame=0;frame<120;frame++){
                    ShadowSystemClock.advanceBy(Duration.ofMillis(16));
                    // This standalone renderer has no ViewRoot to deliver View.postDelayed's first split.
                    if(frame==60)view.setItems(previewItems);
                    view.doFrame(SystemClock.uptimeMillis()*1_000_000L);
                }
                if(name.contains("fading")||name.contains("ended")){
                    view.setGlowSession(null);
                    for(int frame=0;frame<(name.contains("fading")?35:100);frame++){ShadowSystemClock.advanceBy(Duration.ofMillis(16));view.doFrame(SystemClock.uptimeMillis()*1_000_000L);}
                }
                int background=name.equals("light")?0xFFF0F1F3:0xFF101417;
                view.setPillBackgroundLuma(PillOutlinePolicy.luma(background));
                Bitmap capture=Bitmap.createBitmap(W*2,H*2,Bitmap.Config.ARGB_8888);Canvas canvas=new Canvas(capture);canvas.scale(2,2);canvas.drawColor(background);
                statusBar(canvas,name.equals("light"));view.draw(canvas);
                File out=new File("build/render/ambient-glow/"+name+".png");out.getParentFile().mkdirs();
                RenderCapture.write(capture, out);
                assertTrue(out.length()>0);
            }
        } finally {prefs.edit().clear().apply();ModuleSettings.configurePreview(prefs);}
    }
    private Bitmap art(int colour) {
        Bitmap bitmap=Bitmap.createBitmap(96,96,Bitmap.Config.ARGB_8888);Canvas canvas=new Canvas(bitmap);Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);
        paint.setShader(new LinearGradient(0,0,96,96,new int[]{colour,0xFF1B2235},null,Shader.TileMode.CLAMP));canvas.drawRect(0,0,96,96,paint);
        paint.setShader(null);paint.setColor(0xA0FFF0D8);canvas.drawCircle(69,26,15,paint);paint.setColor(0xCC202936);canvas.drawRect(0,67,96,96,paint);
        paint.setColor(0x8894A3B8);for(int i=0;i<6;i++)canvas.drawRect(i*18,57-i%3*7,i*18+10,77,paint);
        return bitmap;
    }
    private void statusBar(Canvas c,boolean light) {
        Paint p=new Paint(Paint.ANTI_ALIAS_FLAG);p.setColor(light?0xFF191C20:0xFFF1F2F3);p.setTextSize(43);p.setTypeface(Typeface.create("sans-serif-medium",Typeface.NORMAL));
        c.drawText("21:55",70,120,p);p.setTextSize(27);c.drawText("5G",960,117,p);
        for(int i=0;i<4;i++)c.drawRoundRect(1008+i*10,116-i*7,1015+i*10,126,2,2,p);
        c.drawRoundRect(1065,87,1140,126,8,8,p);p.setColor(light?Color.WHITE:0xFF101417);p.setTextSize(27);c.drawText("86",1082,117,p);
    }
}
