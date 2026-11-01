package dev.android.dynamicisland.island.view;

import static org.junit.Assert.*;
import android.content.Context;
import android.graphics.*;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.card.*;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.testutil.RenderCapture;
import java.io.File;
import java.time.Duration;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.*;
import org.robolectric.shadows.ShadowSystemClock;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk=35,qualifiers="mdpi")
public class TorchBeamTest {
    private final Context context=RuntimeEnvironment.getApplication();
    private IslandItem item(float level,boolean on) {
        IslandItem it=new IslandItem("torch:brightness");it.torchControls=true;it.torchOn=on;
        it.title="Flashlight";it.kind=IslandItem.Kind.EVENT;it.icon=GlyphIcon.of(GlyphIcon.Kind.TORCH);
        it.sliderValue=level;it.sliderSteps=5;it.sliderChange=value->{};
        it.sliderTrailing=value->Math.round(20+80*value)+"%";it.trailingText=on?it.sliderTrailing.apply(level):"Off";
        it.actions.add(new IslandItem.Action("Power",null,null,()->{},false));return it;
    }
    @Test public void optionalBeamHasSafeGeometryAndSmoothPowerTransitions() throws Exception {
        var prefs=context.getSharedPreferences("torch-beam-test",0);prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
        IslandView renderer=new IslandView(context,IslandHost.NONE);IslandItem item=item(.5f,true);
        assertTrue(renderer.bodies().create(item,360,false) instanceof SliderBody);
        assertFalse(renderer.bodies().create(item,360,false) instanceof TorchBeamBody);
        prefs.edit().putInt(ModuleSettings.KEY_TORCH_STYLE,1).commit();ModuleSettings.configurePreview(prefs);
        try {
            TorchBeamBody body=(TorchBeamBody)renderer.bodies().create(item,360,false);
            assertNotNull(body.hit(55,87));assertFalse(body.onSlider(55,87));assertTrue(body.onSlider(250,87));
            assertTrue(body.thumbHalfHeight(1)>body.thumbHalfHeight(0)*4);
            assertEquals("minimum control sits closer to the lens",40,body.thumbRadius(0),.001f);
            assertTrue(87+body.thumbHalfHeight(1)+9<body.h-12);
            assertEquals(1,body.valueAfterDrag(.5f,1000),0);assertEquals(0,body.valueAfterDrag(.5f,-1000),0);
            Bitmap image=Bitmap.createBitmap(400,204,Bitmap.Config.ARGB_8888);Canvas canvas=nativeShaderCanvas(image);
            body.draw(canvas,20,20,1,1000);ShadowSystemClock.advanceBy(Duration.ofMillis(400));image.eraseColor(0);body.draw(canvas,20,20,1,1000);
            TorchBeamVisual fx=renderer.torchBeamVisual();long now=IslandView.now();assertEquals(1,fx.power(now),.001f);
            assertFalse(dev.android.dynamicisland.xposed.Diagnostics.report(),
                    (boolean)org.robolectric.util.ReflectionHelpers.getField(fx,"failed"));
            Bitmap optical=Bitmap.createBitmap(360,164,Bitmap.Config.ARGB_8888);
            fx.draw(nativeShaderCanvas(optical),94,87,318,1,1,1);
            assertTrue("maximum light reaches the curved brightness control",Color.alpha(optical.getPixel(318,87))>20);
            Bitmap beforeFlare=Bitmap.createBitmap(360,164,Bitmap.Config.ARGB_8888);
            fx.draw(nativeShaderCanvas(beforeFlare),94,87,94+body.thumbRadius(.85f),1,.85f,1);
            assertTrue("the final pull adds a substantially wider envelope at the far end",
                    Color.alpha(optical.getPixel(294,127))>Color.alpha(beforeFlare.getPixel(294,127))*1.5f);
            float emitterFull=Color.alpha(optical.getPixel(114,107))/(float)Math.max(1,Color.alpha(optical.getPixel(114,87)));
            float emitterBefore=Color.alpha(beforeFlare.getPixel(114,107))/(float)Math.max(1,Color.alpha(beforeFlare.getPixel(114,87)));
            assertTrue("tip bloom must not widen the emitting aperture",emitterFull<=emitterBefore*1.15f+.02f);
            int upper=optical.getPixel(194,67),lower=optical.getPixel(194,107),core=optical.getPixel(194,87);
            assertTrue("a white center with softer scattering",Color.alpha(core)>Color.alpha(lower));
            assertTrue("negative coordinates fade toward the top instead of forming a rectangular beam",
                    Color.alpha(optical.getPixel(194,27))<Color.alpha(upper)/4);
            assertTrue("lower scattering also fades before reaching the card edge",
                    Color.alpha(optical.getPixel(194,147))<Color.alpha(lower)/4);
            item.torchOn=false;body.draw(canvas,20,20,1,1000);assertEquals(1,fx.power(IslandView.now()),.001f);
            ShadowSystemClock.advanceBy(Duration.ofMillis(130));assertTrue(fx.power(IslandView.now())>0&&fx.power(IslandView.now())<1);
            ShadowSystemClock.advanceBy(Duration.ofMillis(200));assertEquals(0,fx.power(IslandView.now()),.001f);assertFalse(fx.animating(IslandView.now()));
            image.eraseColor(0);body.draw(canvas,20,20,1,1000);
            assertEquals("docked thumb merges into the lens without a second rim",0,image.getPixel(118,107));
            assertEquals("dimmed handle and head form one silhouette without double alpha",
                    Color.alpha(image.getPixel(80,107)),Color.alpha(image.getPixel(87,107)));
            float parked=body.thumbCenterX(0)+body.thumbRadius(.5f,0);
            float remembered=body.thumbCenterX(1)+body.thumbRadius(.5f,1);
            assertTrue("off control rests against the 94px lens",parked>=94&&parked<=100);
            item.torchOn=true;body.draw(canvas,20,20,1,1000);
            assertEquals(0,fx.power(IslandView.now()),.001f);
            ShadowSystemClock.advanceBy(Duration.ofMillis(130));
            float partial=fx.power(IslandView.now());
            float returning=body.thumbCenterX(partial)+body.thumbRadius(.5f,partial);
            assertTrue(returning>parked&&returning<remembered);
            ShadowSystemClock.advanceBy(Duration.ofMillis(200));body.draw(canvas,20,20,1,1000);
            assertEquals(.5f,fx.level(IslandView.now()),.001f);assertEquals(1,fx.power(IslandView.now()),.001f);
            for(int y=0;y<image.getHeight();y++)for(int x=0;x<image.getWidth();x++)
                if(x<20||x>=380||y<20||y>=184)assertEquals("beam stays inside the card",0,image.getPixel(x,y));
            render();
        } finally {prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);}
    }
    @Test public void offPanelGraceDefersOnlyAutomaticCollapse() {
        IslandItem it=item(.5f,false);it.keepExpandedUntilUptime=IslandView.now()+5_000;
        IslandView view=new IslandView(context,IslandHost.NONE);
        view.setGeometry(360,180,22,30,false);view.setSuppressed(false);view.layout(0,0,360,600);
        view.setItems(java.util.List.of(it));assertTrue(view.peek(it,1_000));
        ShadowSystemClock.advanceBy(Duration.ofMillis(1_000));view.autoCollapseTask().run();
        assertTrue("short automatic timeout must leave time to switch back on",view.isExpanded());
        ShadowSystemClock.advanceBy(Duration.ofMillis(4_000));view.autoCollapseTask().run();
        assertFalse("automatic collapse resumes at the grace deadline",view.isExpanded());
        it.keepExpandedUntilUptime=IslandView.now()+5_000;
        assertTrue(view.peek(it,1_000));view.collapse();
        assertFalse("manual dismissal never waits for the grace period",view.isExpanded());
    }
    @Test public void thumbResistsVerticalDragAndReturnsAfterReleaseOrCancel() {
        var prefs=context.getSharedPreferences("torch-thumb-motion",0);
        prefs.edit().putInt(ModuleSettings.KEY_TORCH_STYLE,1).commit();ModuleSettings.configurePreview(prefs);
        try {
            IslandView view=new IslandView(context,IslandHost.NONE);
            android.widget.FrameLayout parent=new android.widget.FrameLayout(context);parent.addView(view);
            view.setGeometry(360,180,22,30,false);view.setSuppressed(false);view.layout(0,0,360,600);
            IslandItem it=item(.5f,true);int[] writes={0};float[] brightness={.5f};
            it.sliderChange=value->{writes[0]++;brightness[0]=value;};
            view.setItems(java.util.List.of(it));
            Director director=org.robolectric.util.ReflectionHelpers.getField(view,"director");director.expandFromPill();
            frames(view,80);Card card=view.cards().get(0);float scale=card.body.w/360f;
            Shapes shapes=org.robolectric.util.ReflectionHelpers.getField(view,"shapes");RectF rect=new RectF();shapes.card(card,rect);
            float x=shapes.contentLeft(card)+250*scale,y=rect.top+87*scale;
            touch(view,android.view.MotionEvent.ACTION_DOWN,x,y);
            touch(view,android.view.MotionEvent.ACTION_MOVE,x,y+100*scale);frames(view,16);
            TorchBeamVisual fx=view.torchBeamVisual();float offset=fx.thumbOffset(IslandView.now());
            assertTrue("vertical movement follows more freely while remaining bounded",offset>3.5f&&offset<7.2f);
            assertEquals("vertical movement never changes brightness",0,writes[0]);
            touch(view,android.view.MotionEvent.ACTION_MOVE,x+40*scale,y+100*scale);frames(view,5);
            assertTrue("horizontal brightness control is preserved",writes[0]>0&&brightness[0]>.5f);
            IslandItem updated=item(brightness[0],true);updated.sliderChange=it.sliderChange;
            view.setItems(java.util.List.of(updated));
            assertEquals("a notification update preserves the thumb spring",offset,fx.thumbOffset(IslandView.now()),.01f);
            touch(view,android.view.MotionEvent.ACTION_UP,x+40*scale,y+100*scale);frames(view,35);
            assertEquals(0,fx.thumbOffset(IslandView.now()),.01f);assertFalse(fx.animating(IslandView.now()));
            int savedWrites=writes[0];
            touch(view,android.view.MotionEvent.ACTION_DOWN,x,y);
            touch(view,android.view.MotionEvent.ACTION_MOVE,x,y-100*scale);frames(view,16);
            assertTrue(fx.thumbOffset(IslandView.now())<0);
            touch(view,android.view.MotionEvent.ACTION_CANCEL,x,y-100*scale);frames(view,35);
            assertEquals(0,fx.thumbOffset(IslandView.now()),.01f);assertFalse(fx.animating(IslandView.now()));
            assertEquals("vertical drag and cancellation do not write camera levels",savedWrites,writes[0]);
        } finally {prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);}
    }
    private void frames(IslandView view,int count) {
        for(int i=0;i<count;i++){ShadowSystemClock.advanceBy(Duration.ofMillis(16));view.doFrame(IslandView.now()*1_000_000L);}
    }
    private void touch(IslandView view,int action,float x,float y) {
        long now=IslandView.now();android.view.MotionEvent event=android.view.MotionEvent.obtain(now,now,action,x,y,0);
        view.dispatchTouchEvent(event);event.recycle();
    }
    private void render() throws Exception {
        if(!RenderCapture.enabled())return;
        Bitmap sheet=Bitmap.createBitmap(760,440,Bitmap.Config.ARGB_8888);Canvas c=new Canvas(sheet);c.drawColor(0xff08090d);
        float[] levels={0,.5f,1,1};
        for(int i=0;i<4;i++) {
            IslandView renderer=new IslandView(context,IslandHost.NONE);IslandItem it=item(levels[i],i!=3);
            renderer.shadeCardHeight(it,360);
            Bitmap card=Bitmap.createBitmap(360,164,Bitmap.Config.ARGB_8888);Canvas cc=nativeShaderCanvas(card);
            renderer.drawShadeCard(cc,it,360);ShadowSystemClock.advanceBy(Duration.ofMillis(450));
            card.eraseColor(0);Paint p=new Paint(Paint.ANTI_ALIAS_FLAG);p.setColor(0xff17171b);cc.drawRoundRect(0,0,360,164,28,28,p);
            renderer.drawShadeCard(cc,it,360);
            int x=10+(i%2)*380,y=38+(i/2)*210;c.drawBitmap(card,x,y,null);
            p.setColor(0xffbdbec8);p.setTextSize(14);c.drawText(i==3?"Power off":it.trailingText.toString(),x+6,y-12,p);
        }
        RenderCapture.write(sheet,new File("build/render/torch_beam_review.png"));
        Bitmap pull=Bitmap.createBitmap(400,204,Bitmap.Config.ARGB_8888);Canvas pc=nativeShaderCanvas(pull);
        IslandView pullRenderer=new IslandView(context,IslandHost.NONE);IslandItem pullItem=item(.7f,true);
        TorchBeamBody pullBody=(TorchBeamBody)pullRenderer.bodies().create(pullItem,360,false);
        pullRenderer.sliderBody=pullBody;pullRenderer.sliderFraction=.7f;
        ShadowSystemClock.advanceBy(Duration.ofMillis(450));
        for(int i=0;i<120;i++) {
            float travel=i<45?.7f+.3f*i/44f:i<60?1:i<105?1-.3f*(i-60)/44f:.7f;
            pullRenderer.sliderFraction=travel;pullItem.sliderValue=travel;
            pull.eraseColor(0xff08090d);pc.save();pc.translate(20,20);
            Paint p=new Paint(Paint.ANTI_ALIAS_FLAG);p.setColor(0xff17171b);pc.drawRoundRect(0,0,360,164,28,28,p);
            pullBody.draw(pc,0,0,1,1000);pc.restore();
            RenderCapture.write(pull,new File("build/render/torch-beam-final-pull",String.format(java.util.Locale.ROOT,"frame%03d.png",i)));
            ShadowSystemClock.advanceBy(Duration.ofMillis(33));
        }
        pullBody.onSliderStart();
        for(int i=0;i<90;i++) {
            if(i==30||i==60)pullBody.onSliderEnd();
            if(i==31)pullBody.onSliderStart();
            if(i<30)pullBody.onSliderMove((float)Math.sin(i/29f*Math.PI)*90);
            else if(i>30&&i<60)pullBody.onSliderMove(-(float)Math.sin((i-31)/28f*Math.PI)*90);
            pull.eraseColor(0xff08090d);pc.save();pc.translate(20,20);
            Paint p=new Paint(Paint.ANTI_ALIAS_FLAG);p.setColor(0xff17171b);pc.drawRoundRect(0,0,360,164,28,28,p);
            pullBody.draw(pc,0,0,1,1000);pc.restore();
            RenderCapture.write(pull,new File("build/render/torch-beam-thumb-motion",String.format(java.util.Locale.ROOT,"frame%03d.png",i)));
            ShadowSystemClock.advanceBy(Duration.ofMillis(33));
        }
        IslandView renderer=new IslandView(context,IslandHost.NONE);IslandItem it=item(1,true);
        Bitmap frame=Bitmap.createBitmap(400,204,Bitmap.Config.ARGB_8888);Canvas canvas=nativeShaderCanvas(frame);
        renderer.drawShadeCard(canvas,it,360);ShadowSystemClock.advanceBy(Duration.ofMillis(450));
        for(int i=0;i<90;i++) {
            if(i==30){it.torchOn=false;it.trailingText="Off";}
            if(i==60){it.torchOn=true;it.trailingText="100%";}
            frame.eraseColor(0xff08090d);canvas.save();canvas.translate(20,20);
            Paint p=new Paint(Paint.ANTI_ALIAS_FLAG);p.setColor(0xff17171b);canvas.drawRoundRect(0,0,360,164,28,28,p);
            renderer.drawShadeCard(canvas,it,360);canvas.restore();
            RenderCapture.write(frame,new File("build/render/torch-beam-motion",String.format(java.util.Locale.ROOT,"frame%03d.png",i)));
            ShadowSystemClock.advanceBy(Duration.ofMillis(33));
        }
    }
    private static Canvas nativeShaderCanvas(Bitmap bitmap) {
        Canvas canvas=new Canvas(bitmap);
        // Review-only: let native Skia raster evaluate the exact production shader.
        // Android's real UI uses a hardware Canvas; this does not change application code.
        org.robolectric.util.ReflectionHelpers.callInstanceMethod(canvas,"setHwFeaturesInSwModeEnabled",
                org.robolectric.util.ReflectionHelpers.ClassParameter.from(boolean.class,true));
        return canvas;
    }
}
