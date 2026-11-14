package dev.android.dynamicisland.island.view.card;

import static org.junit.Assert.*;
import android.graphics.*;
import android.os.SystemClock;
import dev.android.dynamicisland.island.graphics.*;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.*;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.testutil.RenderCapture;
import java.io.File;
import java.time.Duration;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.shadows.ShadowSystemClock;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk=35, qualifiers="en-rUS-w440dp-h800dp-mdpi")
public class CallButtonAnimationTest {
    private Bitmap draw(TimerBody body) {
        Bitmap bitmap=Bitmap.createBitmap(360,Math.round(body.h),Bitmap.Config.ARGB_8888);
        Canvas canvas=new Canvas(bitmap);canvas.drawColor(0xff202023);body.draw(canvas,0,0,1,1000);
        return bitmap;
    }

    @Test public void callControlsAnimateThenRestWithoutChangingActionsAndRespectStillIcons() throws Exception {
        var app=RuntimeEnvironment.getApplication();var prefs=app.getSharedPreferences("call-button-animation",0);
        prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);GlyphIcon.setPlaybackFrozen(false);
        try {
            IslandItem item=new IslandItem("call:animation");item.kind=IslandItem.Kind.CALL;
            item.title="WAKOO";item.trailing=IslandItem.Trailing.TEXT;item.trailingText="Incoming call";
            int[] invoked={0,0};
            IslandItem.Action answer=new IslandItem.Action("Answer",null,null,()->invoked[0]++,false);
            answer.glyph=Glyphs.ANSWER;answer.affirmative=true;
            IslandItem.Action decline=new IslandItem.Action("Decline",null,null,()->invoked[1]++,true);
            decline.glyph=Glyphs.HANGUP;item.actions.add(answer);item.actions.add(decline);
            TimerBody body=new TimerBody(new IslandView(app,IslandHost.NONE),item,360);
            assertTrue(body.animating(SystemClock.uptimeMillis()));
            assertEquals(2,body.buttons.size());
            for(Btn button:body.buttons) {
                assertEquals(46,button.r.width(),.01);assertEquals(46,button.r.height(),.01);
                assertEquals(button.action==answer?Colors.CALL_GREEN:Colors.DESTRUCTIVE_RED,button.bg);
                body.hit(button.r.centerX(),button.r.centerY()).action.runnable.run();
            }
            assertArrayEquals(new int[]{1,1},invoked);
            Bitmap first=draw(body),last=first;
            for(int frame=0;frame<48;frame++) {
                Bitmap card=frame==0?first:draw(body);last=card;
                if(RenderCapture.enabled()) {
                    Bitmap preview=Bitmap.createBitmap(960,650,Bitmap.Config.ARGB_8888);
                    Canvas c=new Canvas(preview);c.drawColor(0xff141416);
                    Paint text=new Paint(Paint.ANTI_ALIAS_FLAG);text.setColor(Color.WHITE);text.setTextSize(28);
                    c.drawText("New Lottie call controls",32,48,text);
                    c.save();c.translate(30,94);c.scale(2.5f,2.5f);body.draw(c,0,0,1,1000);c.restore();
                    text.setColor(0xffa2a2ab);text.setTextSize(22);c.drawText("Same animation enlarged below",32,366,text);
                    for(Btn button:body.buttons) {
                        float cx=button.action==answer?325:635;
                        text.setColor(button.bg);c.drawCircle(cx,510,105,text);
                        button.icon.setBounds(Math.round(cx-48),462,Math.round(cx+48),558);
                        button.icon.setTint(Color.WHITE);button.icon.draw(c);
                    }
                    RenderCapture.write(preview,new File("build/render/call-motion/frame-"+String.format(java.util.Locale.ROOT,"%02d",frame)+".png"));
                }
                ShadowSystemClock.advanceBy(Duration.ofMillis(16));
            }
            assertFalse("the rendered handset moves during its entrance",first.sameAs(last));
            assertFalse("the call does not keep the frame loop awake once icons settle",body.animating(SystemClock.uptimeMillis()));
            prefs.edit().putBoolean(ModuleSettings.KEY_STILL_ICONS,true).commit();ModuleSettings.configurePreview(prefs);
            assertFalse(body.animating(SystemClock.uptimeMillis()));
            Bitmap still=draw(body);ShadowSystemClock.advanceBy(Duration.ofMillis(32));assertTrue(still.sameAs(draw(body)));
        } finally {
            GlyphIcon.setPlaybackFrozen(false);prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
        }
    }
}
