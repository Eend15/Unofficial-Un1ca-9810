package dev.android.dynamicisland.island.view;

import static org.junit.Assert.*;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import dev.android.dynamicisland.island.graphics.BatteryGauge;
import dev.android.dynamicisland.island.graphics.BatteryIcon;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.card.*;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.testutil.RenderCapture;
import java.io.File;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk=35, qualifiers="mdpi")
public class IslandUiReviewTest {
    private final Context context = RuntimeEnvironment.getApplication();
    private IslandItem battery() {
        IslandItem item = new IslandItem("charging:review");
        item.kind = IslandItem.Kind.EVENT; item.eventLayout = IslandItem.EventLayout.BATTERY;
        item.title = "Charging"; item.subtitle = "1800 mA · 7.2 W · 31.0 °C";
        item.batteryPercent = 68; item.batteryCharging = true; item.accent = 0xFF30D158;
        item.compactLabel = "7W"; item.trailing = IslandItem.Trailing.TEXT; item.trailingText = "7W";
        return item;
    }
    private IslandItem device() {
        IslandItem item = new IslandItem("event:bt:review");
        item.kind = IslandItem.Kind.EVENT; item.eventLayout = IslandItem.EventLayout.DEVICE;
        item.title = "Galaxy Buds3 Pro"; item.subtitle = "Connected"; item.batteryPercent = 67;
        item.accent = 0xFF0A84FF; item.icon = GlyphIcon.of(GlyphIcon.Kind.HEADPHONES);
        item.compactLabel = item.title; item.trailing = IslandItem.Trailing.TEXT; item.trailingText = "67%";
        return item;
    }
    private IslandItem timer() {
        IslandItem item = new IslandItem("timer:review");
        item.kind = IslandItem.Kind.TIMER; item.title = "Focus session"; item.accent = 0xFFFF9F0A;
        item.trailing = IslandItem.Trailing.TEXT; item.trailingText = "12:34:56.78";
        item.icon = GlyphIcon.of(GlyphIcon.Kind.BELL);
        for (int i=0;i<3;i++) {
            IslandItem.Action action = new IslandItem.Action(i==0 ? "Reset" : i==1 ? "Pause" : "Stop",
                    i==0 ? context.getDrawable(android.R.drawable.ic_menu_revert) : null, null, ()->{}, i==2);
            action.glyph = i==1 ? 2 : i==2 ? 6 : 0; item.actions.add(action);
        }
        return item;
    }
    private IslandView view(float width) {
        IslandView view = new IslandView(context, IslandHost.NONE);
        view.setGeometry(Math.round(width),width/2,40,24,false);
        return view;
    }
    private CardBody body(IslandView view, IslandItem item, float width) {
        BodyFactory factory = ReflectionHelpers.getField(view,"bodies");
        return factory.create(item,width,false);
    }
    private void card(Canvas canvas, CardBody body, float left, float top) {
        Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG); fill.setColor(0xFF080808);
        float radius = body.cornerRadius(28,body.h);
        canvas.drawRoundRect(left,top,left+body.w,top+body.h,radius,radius,fill);
        fill.setStyle(Paint.Style.STROKE);fill.setStrokeWidth(1);fill.setColor(0xFF36363B);
        canvas.drawRoundRect(left,top,left+body.w,top+body.h,radius,radius,fill);
        body.draw(canvas,left,top,1,1000);
    }
    private void label(Canvas canvas,String text,float x,float y) {
        Paint p=new Paint(Paint.ANTI_ALIAS_FLAG);p.setColor(0xFFBEBEC8);p.setTextSize(13);canvas.drawText(text,x,y,p);
    }
    @Test public void reviewCandidatesAndKeepCompactValuesReadableOnNarrowScreens() throws Exception {
        GlyphIcon.setPlaybackFrozen(true);
        ModuleSettings.configurePreview(context.getSharedPreferences("ui-review",0));
        if(RenderCapture.enabled()) {
        Bitmap candidates=Bitmap.createBitmap(1200,440,Bitmap.Config.ARGB_8888);
        Canvas compare=new Canvas(candidates);compare.drawColor(0xFF161619);
        String[] headings={"A · existing information layout","B · circular gauge + clear status","C · large number / text only"};
        for(int i=0;i<3;i++)label(compare,headings[i],20+i*400,26);
        for(int i=0;i<3;i++) {
            IslandView view=view(360);IslandItem b=battery(),d=device();
            CardBody batteryBody,deviceBody;
            if(i==0) {
                b.eventLayout=IslandItem.EventLayout.DEFAULT;b.title="Charging · 68%";b.subtitle="68% · 1800 mA · 7.2 W · 31.0 °C";b.progress=.68f;
                int id=context.getResources().getIdentifier("ic_battery_pill_68","drawable",context.getPackageName());
                b.icon=id==0 ? BatteryIcon.load(context,68,true) : context.getDrawable(id);
                d.eventLayout=IslandItem.EventLayout.DEFAULT;d.subtitle="Connected · 67%";d.progress=.67f;
                batteryBody=new LiveBody(view,b,360);deviceBody=new LiveBody(view,d,360);
            } else if(i==1) {batteryBody=body(view,b,360);deviceBody=body(view,d,360);}
            else {
                b.trailingText="68%";b.title="Charging";batteryBody=new TimerBody(view,b,360);
                d.eventLayout=IslandItem.EventLayout.DEFAULT;d.subtitle="Connected · 67%";d.progress=-1;
                deviceBody=new LiveBody(view,d,360);
            }
            card(compare,batteryBody,20+i*400,55);
            card(compare,deviceBody,20+i*400,245);
        }
        RenderCapture.write(candidates,new File("build/render/island-ui-candidates.png"));
        }
        Bitmap selected=Bitmap.createBitmap(800,1230,Bitmap.Config.ARGB_8888);
        Canvas sheet=new Canvas(selected);sheet.drawColor(0xFF161619);
        for(int col=0;col<2;col++) {
            float width=col==0 ? 360 : 300, left=20+col*400;
            label(sheet,col==0 ? "Selected · 360dp" : "Narrow · 300dp / long names",left,26);
            IslandView view=view(width);
            IslandItem b=battery(),d=device(),t=timer();
            if(col==1)d.title=d.compactLabel="아주 긴 블루투스 이어폰 이름 Galaxy Buds3 Pro";
            CompactContent compact=new CompactContent(view,b);
            assertEquals("68%",compact.trailText);
            assertEquals("7W",compact.leadingLabel);
            assertTrue(compact.desiredWidth()<=view.maxPillW);
            compact.draw(sheet,new RectF(left,44,left+compact.desiredWidth(),74),1,1000);
            CompactContent bt=new CompactContent(view,d);
            assertTrue(bt.trailText.endsWith("67%"));
            bt.draw(sheet,new RectF(left,94,left+bt.desiredWidth(),124),1,1000);
            CardBody batteryBody=body(view,b,width),deviceBody=body(view,d,width),timerBody=body(view,t,width);
            assertTrue(batteryBody instanceof BatteryBody);assertTrue(deviceBody instanceof EventBody);
            // Every expanded card uses the original shared radius; custom rounding is opt-in.
            android.content.SharedPreferences shapePrefs=context.getSharedPreferences("ui-review",0);
            assertFalse(ModuleSettings.customCardRoundness());
            assertEquals(28,batteryBody.cornerRadius(28,batteryBody.h),.001f);
            assertEquals(28,deviceBody.cornerRadius(28,deviceBody.h),.001f);
            assertEquals(28,timerBody.cornerRadius(28,timerBody.h),.001f);
            shapePrefs.edit().putBoolean(ModuleSettings.KEY_CUSTOM_CARD_ROUNDNESS,true)
                    .putInt(ModuleSettings.KEY_CARD_CORNER_RADIUS_DP,0).commit();
            ModuleSettings.configurePreview(shapePrefs);
            assertEquals(0,batteryBody.cornerRadius(28,batteryBody.h),.001f);
            assertEquals(0,timerBody.cornerRadius(28,timerBody.h),.001f);
            assertEquals(0,deviceBody.cornerRadius(28,deviceBody.h),.001f);
            shapePrefs.edit().putInt(ModuleSettings.KEY_CARD_CORNER_RADIUS_DP,40).commit();
            ModuleSettings.configurePreview(shapePrefs);
            assertEquals(Math.min(40,batteryBody.h/2),batteryBody.cornerRadius(28,batteryBody.h),.001f);
            assertEquals(40,timerBody.cornerRadius(28,timerBody.h),.001f);
            assertEquals(Math.min(40,deviceBody.h/2),deviceBody.cornerRadius(28,deviceBody.h),.001f);
            shapePrefs.edit().remove(ModuleSettings.KEY_CUSTOM_CARD_ROUNDNESS).remove(ModuleSettings.KEY_CARD_CORNER_RADIUS_DP).commit();
            ModuleSettings.configurePreview(shapePrefs);
            assertEquals(28,timerBody.cornerRadius(28,timerBody.h),.001f);
            assertEquals(28,batteryBody.cornerRadius(28,batteryBody.h),.001f);
            assertEquals(28,deviceBody.cornerRadius(28,deviceBody.h),.001f);
            card(sheet,batteryBody,left,150);card(sheet,deviceBody,left,280);card(sheet,timerBody,left,430);
            if (col == 0 && RenderCapture.enabled()) {
                Bitmap example=Bitmap.createBitmap(800,Math.round((timerBody.h+40)*2),Bitmap.Config.ARGB_8888);
                Canvas preview=new Canvas(example);
                preview.drawColor(0xFF161619);
                preview.scale(2,2);
                card(preview,timerBody,20,20);
                RenderCapture.write(example,new File("build/render/timer-original-buttons.png"));
            }
            List<Btn> buttons=ReflectionHelpers.getField(timerBody,"buttons");
            for(Btn button:buttons) {
                assertTrue(button.r.left>=0&&button.r.right<=width);
                assertTrue(button.r.top>=0&&button.r.bottom<=timerBody.h);
                assertTrue((boolean)ReflectionHelpers.getField(button,"circle"));
                assertEquals(46,button.r.width(),.001f);
                assertEquals(46,button.r.height(),.001f);
                assertSame(button,timerBody.hit(button.r.centerX(),button.r.centerY()));
            }
            Btn last=buttons.get(0),middle=buttons.get(1),first=buttons.get(2);
            assertEquals("Reset",first.action.title);
            assertEquals("Stop",last.action.title);
            assertTrue(first.r.right<middle.r.left && middle.r.right<last.r.left);
            assertEquals(first.r.centerY(),middle.r.centerY(),.001f);
            assertEquals(first.r.centerY(),last.r.centerY(),.001f);
            assertEquals(first.r.width(),last.r.width(),.001f);
            b.description="Screen on · 8m · +2%\nScreen off · 24m · +7%";
            b.descriptionMaxLines=8;
            card(sheet,body(view,b,width),left,620);
            IslandItem low=battery();low.title="Low battery";low.subtitle=null;low.batteryPercent=12;low.accent=0xFFFF3B30;
            card(sheet,body(view,low,width),left,850);
            IslandItem status=new IslandItem("status:airplane");
            status.kind=IslandItem.Kind.EVENT;status.eventLayout=IslandItem.EventLayout.STATUS;
            status.title="Airplane mode on";status.compactLabel="Airplane mode";
            status.trailing=IslandItem.Trailing.TEXT;status.trailingText="On";status.accent=0xFFFF9F0A;
            status.icon=GlyphIcon.of(GlyphIcon.Kind.PLANE);
            card(sheet,body(view,status,width),left,990);
            CompactContent state=new CompactContent(view,status);
            state.draw(sheet,new RectF(left,1110,left+state.desiredWidth(),1140),1,1000);
        }
        RenderCapture.write(selected,new File("build/render/island-ui-selected.png"));
        // A normal third-party card does not opt into a module-owned event presentation.
        IslandItem normal=new IslandItem("third-party");normal.title="Delivery";normal.subtitle="Arriving soon";
        assertTrue(body(view(360),normal,360) instanceof LiveBody);
        IslandView clockView=view(360);
        RemoteCards remotes=ReflectionHelpers.getField(clockView,"remote");
        remotes.setLayer(new android.widget.FrameLayout(context));
        IslandItem clock=timer();clock.packageName="com.sec.android.app.clockpackage";
        clock.remoteView=new android.widget.RemoteViews("android",android.R.layout.simple_list_item_1);
        assertTrue(body(clockView,clock,360) instanceof RemoteBody);
        int empty=gaugePixels(0),half=gaugePixels(50),full=gaugePixels(100);
        assertTrue(half>empty+50&&full>half*1.5f);
    }
    private int gaugePixels(int percent) {
        Bitmap image=Bitmap.createBitmap(64,64,Bitmap.Config.ARGB_8888);
        new BatteryGauge().draw(new Canvas(image),32,32,56,percent,0xFF30D158,1,false,false);
        int count=0;
        for(int y=0;y<64;y++)for(int x=0;x<64;x++)if(android.graphics.Color.alpha(image.getPixel(x,y))>200)count++;
        return count;
    }
}
