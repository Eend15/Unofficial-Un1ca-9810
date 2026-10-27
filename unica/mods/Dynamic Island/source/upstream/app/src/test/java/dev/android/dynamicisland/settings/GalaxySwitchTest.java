package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.Switch;
import org.junit.Test;
import org.junit.experimental.categories.Category;
import dev.android.dynamicisland.testutil.RenderCapture;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.*;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk=35,qualifiers="ko-rKR-w360dp-h800dp-xxhdpi")
public class GalaxySwitchTest {
    @Test public void nativeSwitchKeepsItsThumbInsideTheTrackAndRetainsTouchTarget() {
        GalaxySwitch sw=new GalaxySwitch(RuntimeEnvironment.getApplication());
        sw.setChecked(true);layout(sw);sw.jumpDrawablesToCurrentState();
        Bitmap bitmap=Bitmap.createBitmap(sw.getWidth(),sw.getHeight(),Bitmap.Config.ARGB_8888);sw.draw(new Canvas(bitmap));
        Rect track=sw.getTrackDrawable().getBounds(),thumb=sw.getThumbDrawable().getBounds();
        assertEquals(108,track.width());assertEquals(60,track.height());
        assertTrue(track.contains(thumb));assertEquals(48,sw.getThumbDrawable().getIntrinsicWidth());
        assertTrue(sw.getWidth()>=144);assertTrue(sw.getHeight()>=144);
        assertEquals(0xFF3D7BFF,bitmap.getPixel(track.left+6,track.centerY()));
        assertEquals(0xFFFAFAFA,bitmap.getPixel(thumb.centerX(),thumb.centerY()));
        assertTrue(sw.isChecked());sw.performClick();assertFalse(sw.isChecked());
    }
    @Test public void regularAndAdvancedRuleRowsUseTheSameSwitchWithoutChangingCallbacks() {
        SettingsActivity a=Robolectric.buildActivity(SettingsActivity.class).setup().get();OneUi ui=ReflectionHelpers.getField(a,"ui");
        LinearLayout group=ui.card(a.page());int[] changed={0},opened={0};
        Switch regular=ui.switchRow(group,"Test","",false,on->changed[0]++);
        Switch rule=ui.ruleRow(group,"Rule","",true,on->changed[0]++,()->opened[0]++);
        assertTrue(regular instanceof GalaxySwitch);assertTrue(rule instanceof GalaxySwitch);
        regular.performClick();assertTrue(regular.isChecked());assertEquals(1,changed[0]);
        ((View)regular.getParent()).performClick();assertFalse(regular.isChecked());assertEquals(2,changed[0]);
        rule.performClick();assertFalse(rule.isChecked());assertEquals(3,changed[0]);assertEquals(0,opened[0]);
        ((View)rule.getParent()).performClick();assertEquals(1,opened[0]);
        OneUi.setDependentsEnabled(false,OneUi.rowOf(rule));assertFalse(rule.isEnabled());
        assertEquals(.4f,((View)rule.getParent()).getAlpha(),0);
    }

    @Category(RenderCapture.class) @Test public void lightSettingsCapture() throws Exception {capture("galaxy_switch_light");}
    @Category(RenderCapture.class) @Test @Config(qualifiers="ko-rKR-w360dp-h800dp-night-xxhdpi")
    public void darkSettingsCapture() throws Exception {capture("galaxy_switch_dark");}
    private void capture(String name) throws Exception {
        SettingsActivity a=Robolectric.buildActivity(SettingsActivity.class).setup().get();OneUi ui=ReflectionHelpers.getField(a,"ui");
        a.open(()->{
            a.subPage("스위치 미리보기");LinearLayout group=ui.card(a.page());
            ui.switchRow(group,"켜짐","",true,on->{});ui.switchRow(group,"꺼짐","",false,on->{});
            Switch on=ui.switchRow(group,"켜짐 · 비활성","",true,value->{});
            Switch off=ui.switchRow(group,"꺼짐 · 비활성","",false,value->{});
            OneUi.setDependentsEnabled(false,OneUi.rowOf(on),OneUi.rowOf(off));
        });
        SettingsRenderTest.render(a,name);
    }
    private void layout(View view) {
        view.measure(View.MeasureSpec.makeMeasureSpec(144,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(144,View.MeasureSpec.EXACTLY));
        view.layout(0,0,144,144);
    }
}
