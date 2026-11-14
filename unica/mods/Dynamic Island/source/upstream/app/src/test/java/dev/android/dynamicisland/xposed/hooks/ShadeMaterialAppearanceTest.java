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

    @Test public void aLeasedRowsOutlineMayNotBeSwitchedBackOnAndTheStockStateReturnsWithTheLastClient() {
        Context context=RuntimeEnvironment.getApplication();
        ExpandableNotificationRow row=new ExpandableNotificationRow(context);row.setClipToOutline(true);
        FrameLayout content=new FrameLayout(context);row.addView(content);content.setClipToOutline(true);
        View player=new View(context);content.addView(player);player.setClipToOutline(true);
        View other=new View(context);content.addView(other);
        ShadeMaterialAppearance a=new ShadeMaterialAppearance();
        assertFalse("nothing is leased yet",ShadeMaterialAppearance.keepsOutlineOff(row));
        a.sync(player,true);
        assertTrue(ShadeMaterialAppearance.keepsOutlineOff(row));assertTrue(ShadeMaterialAppearance.keepsOutlineOff(content));
        assertTrue(ShadeMaterialAppearance.keepsOutlineOff(player));
        assertFalse("views the lease did not touch are left alone",ShadeMaterialAppearance.keepsOutlineOff(other));
        assertFalse("so is another row",ShadeMaterialAppearance.keepsOutlineOff(new ExpandableNotificationRow(context)));
        a.clear();
        assertFalse("the last client gone: the system may clip again",ShadeMaterialAppearance.keepsOutlineOff(row));
        assertTrue(row.getClipToOutline());assertTrue(content.getClipToOutline());assertTrue(player.getClipToOutline());
    }

    @Test public void theStockClipAndTheFlagsAboveItAreReportedForDiagnostics() {
        Context context=RuntimeEnvironment.getApplication();
        ExpandableNotificationRow row=new ExpandableNotificationRow(context);
        FrameLayout content=new FrameLayout(context);row.addView(content);
        View host=new View(context);content.addView(host);
        row.layout(0,0,360,120);content.layout(0,0,360,120);host.layout(0,0,360,120);
        ShadeMaterialAppearance a=new ShadeMaterialAppearance();a.sync(host,true);
        try {
            Path nativeClip=row.getClipPath(false);
            java.lang.reflect.Method m=null;
            for(Class<?> c:ShadeMaterialAppearance.class.getDeclaredClasses()) if(c.getSimpleName().equals("State")) {
                java.util.Map<?,?> rows=org.robolectric.util.ReflectionHelpers.getStaticField(ShadeMaterialAppearance.class,"ROWS");
                Object state=rows.get(row);assertNotNull(state);
                org.robolectric.util.ReflectionHelpers.callInstanceMethod(state,"rectangularClip",
                        org.robolectric.util.ReflectionHelpers.ClassParameter.from(Path.class,nativeClip));
            }
            String line=dev.android.dynamicisland.xposed.Diagnostics.report();
            assertTrue(line,line.contains("shade material clip stock clip 7,8-353,112, card 0,0-360,120 (row 360x120)"));
            assertTrue(line,line.contains("; chain [ExpandableNotificationRow"));
        } finally { a.clear(); }
    }

    @Test public void theMediaPlayersOwnRoundClipIsOffWhileACardDrawsAndBackAfterwards() {
        Context context=RuntimeEnvironment.getApplication();
        ExpandableNotificationRow row=new ExpandableNotificationRow(context);
        FrameLayout content=new FrameLayout(context);row.addView(content);
        QSMediaCornerRoundedView player=new QSMediaCornerRoundedView(context);content.addView(player);
        QSMediaCornerRoundedView other=new QSMediaCornerRoundedView(context);content.addView(other);
        assertTrue(player.mIsCornerRound);
        ShadeMaterialAppearance a=new ShadeMaterialAppearance();
        a.sync(player,true);
        assertFalse("the clip that cut the card's corners is off",player.mIsCornerRound);
        assertTrue("a player that is not leased keeps its own look",other.mIsCornerRound);
        player.mIsCornerRound=true;                 // System UI switches it on again
        a.sync(player,true);
        assertFalse("the next frame switches it off again",player.mIsCornerRound);
        a.clear();
        assertTrue("without the card the stock round clip returns",player.mIsCornerRound);
        player.mIsCornerRound=false;                // a player that was square to begin with stays so
        a.sync(player,true);a.clear();
        assertFalse("what was off before the lease is not turned on",player.mIsCornerRound);
    }

    @Test public void nativeOutlineRebuildsCannotRoundOffTheOwnedCardsCornersAndOriginalProvidersReturn() {
        Context context=RuntimeEnvironment.getApplication();
        ExpandableNotificationRow row=new ExpandableNotificationRow(context);row.layout(0,0,360,180);
        FrameLayout content=new FrameLayout(context);row.addView(content);content.layout(0,0,360,180);
        View host=new View(context);content.addView(host);host.layout(0,0,360,180);
        View other=new View(context);row.addView(other);
        android.view.ViewOutlineProvider rounded=new android.view.ViewOutlineProvider() {
            @Override public void getOutline(View view,android.graphics.Outline outline) { outline.setRoundRect(0,0,360,180,70); }
        };
        row.setOutlineProvider(rounded);row.setClipToOutline(true);
        content.setOutlineProvider(rounded);host.setOutlineProvider(null);
        android.graphics.Rect heightClip=new android.graphics.Rect(0,4,360,176);content.setClipBounds(heightClip);
        var untouched=other.getOutlineProvider();ShadeMaterialAppearance lease=new ShadeMaterialAppearance();
        lease.sync(host,true);
        try {
            android.graphics.Outline outline=new android.graphics.Outline();
            // Even if native rendering enables the outline again, it can only apply a rectangle.
            row.setClipToOutline(true);row.getOutlineProvider().getOutline(row,outline);
            assertEquals(0,outline.getRadius(),0);android.graphics.Rect rect=new android.graphics.Rect();
            assertTrue(outline.getRect(rect));assertEquals(new android.graphics.Rect(0,0,360,180),rect);
            assertSame(untouched,other.getOutlineProvider());assertEquals(heightClip,content.getClipBounds());
            content.setOutlineProvider(android.view.ViewOutlineProvider.BOUNDS);lease.sync(host,true);
        } finally { lease.clear(); }
        assertSame(rounded,row.getOutlineProvider());assertSame(android.view.ViewOutlineProvider.BOUNDS,content.getOutlineProvider());
        assertNull(host.getOutlineProvider());assertTrue(row.getClipToOutline());assertEquals(heightClip,content.getClipBounds());
    }

    static final class QSMediaCornerRoundedView extends FrameLayout {
        public boolean mIsCornerRound=true;
        QSMediaCornerRoundedView(Context c){super(c);}
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
