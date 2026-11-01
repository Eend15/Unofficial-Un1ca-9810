package dev.android.dynamicisland.xposed.hooks;

import static org.junit.Assert.*;
import android.content.Context;
import android.app.Activity;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.FrameLayout;
import dev.android.dynamicisland.island.material.MaterialShape;
import dev.android.dynamicisland.settings.ModuleSettings;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.Robolectric;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=35)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class ShadeMaterialAppearanceTest {
    @Test public void hidesOnlyOwnedShellAndRestoresItAfterLastClient() {
        Context context=RuntimeEnvironment.getApplication();
        ExpandableNotificationRow row=new ExpandableNotificationRow(context);row.setClipToOutline(true);
        FrameLayout content=new FrameLayout(context);row.addView(content);content.setClipToOutline(true);
        View first=new View(context),second=new View(context);content.addView(first);content.addView(second);
        first.setClipToOutline(true);second.setClipToOutline(false);
        ColorDrawable stockPlayer=new ColorDrawable(0xff884422);first.setBackground(stockPlayer);
        row.mBackgroundNormal.setAlpha(.7f);row.mBackgroundDimmed.setAlpha(.4f);
        ShadeMaterialAppearance a=new ShadeMaterialAppearance(),b=new ShadeMaterialAppearance();
        a.sync(first,true);b.sync(second,true);
        assertEquals(0,row.mBackgroundNormal.getAlpha(),0);assertFalse(row.getClipToOutline());
        assertFalse(content.getClipToOutline());assertFalse(first.getClipToOutline());assertNull(first.getBackground());
        a.clear();assertEquals(0,row.mBackgroundNormal.getAlpha(),0);
        b.clear();assertEquals(.7f,row.mBackgroundNormal.getAlpha(),0);assertEquals(.4f,row.mBackgroundDimmed.getAlpha(),0);
        assertTrue(row.getClipToOutline());
        assertTrue(content.getClipToOutline());assertTrue(first.getClipToOutline());assertFalse(second.getClipToOutline());
        assertSame(stockPlayer,first.getBackground());
    }

    @Test public void firstFrameUsesOwnCornersButKeepsStockScrollAndSwipeBounds() {
        Context context=RuntimeEnvironment.getApplication();
        SharedPreferences prefs=context.getSharedPreferences("shade-material-clipping",0);
        prefs.edit().clear().putInt(ModuleSettings.KEY_MATERIAL_STYLE,ModuleSettings.MATERIAL_FROSTED).commit();
        ModuleSettings.configurePreview(prefs);
        try(var activity=Robolectric.buildActivity(Activity.class).setup()) {
            ExpandableNotificationRow row=new ExpandableNotificationRow(context);
            FrameLayout content=new FrameLayout(context);row.addView(content);
            View host=new View(context) { @Override public boolean isHardwareAccelerated(){return true;} };
            content.addView(host);
            View guts=new View(context);row.addView(guts);
            Rect heightClip=new Rect(0,8,360,112);content.setClipBounds(heightClip);
            row.setClipToOutline(true);content.setClipToOutline(true);
            ShadeMaterialAppearance appearance=new ShadeMaterialAppearance();
            appearance.follow(host,()->true);
            activity.get().setContentView(row);activity.visible();
            // The lease must exist before the first child is painted, not after onDraw.
            host.getViewTreeObserver().dispatchOnPreDraw();
            assertFalse(row.getClipToOutline());assertFalse(content.getClipToOutline());
            Path clip=ShadeMaterialAppearance.childClip(row,content);assertNotNull(clip);
            assertNull("menus keep their own clipping",ShadeMaterialAppearance.childClip(row,guts));
            assertEquals(heightClip,content.getClipBounds());assertTrue(content.getClipChildren());
            Bitmap before=paint(row.getClipPath(false)),after=paint(clip);
            assertEquals("native capsule cuts the G2 corner",0,before.getPixel(40,9));
            assertEquals("own G2 corner is now intact",0xffffcc00,after.getPixel(40,9));
            assertEquals("swipe left bound retained",0,after.getPixel(6,60));
            assertEquals("actual top bound retained",0,after.getPixel(180,7));
            assertEquals("actual bottom bound retained",0,after.getPixel(180,113));
            ExpandableNotificationRow ordinary=new ExpandableNotificationRow(context);
            View untouched=new View(context);ordinary.addView(untouched);ordinary.setClipToOutline(true);
            assertNull(ShadeMaterialAppearance.childClip(ordinary,untouched));assertTrue(ordinary.getClipToOutline());
            prefs.edit().putInt(ModuleSettings.KEY_MATERIAL_STYLE,ModuleSettings.MATERIAL_CLASSIC).commit();
            ModuleSettings.configurePreview(prefs);host.getViewTreeObserver().dispatchOnPreDraw();
            assertNull(ShadeMaterialAppearance.childClip(row,content));assertTrue(row.getClipToOutline());
            assertTrue(content.getClipToOutline());
        } finally {
            prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
        }
    }

    private static Bitmap paint(Path clip) {
        Bitmap bitmap=Bitmap.createBitmap(360,120,Bitmap.Config.ARGB_8888);
        Canvas canvas=new Canvas(bitmap);canvas.clipPath(clip);
        Path shell=new Path();MaterialShape.path(shell,new RectF(0,0,360,120),360*100f/1072);
        Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);paint.setColor(0xffffcc00);canvas.drawPath(shell,paint);
        return bitmap;
    }
    static final class ExpandableNotificationRow extends FrameLayout {
        final View mBackgroundNormal,mBackgroundDimmed;
        ExpandableNotificationRow(Context c){super(c);mBackgroundNormal=new View(c);mBackgroundDimmed=new View(c);}
        public Path getClipPath(boolean ignoreTranslation) {
            Path path=new Path();path.addRoundRect(7,8,353,112,52,52,Path.Direction.CW);return path;
        }
    }
}
