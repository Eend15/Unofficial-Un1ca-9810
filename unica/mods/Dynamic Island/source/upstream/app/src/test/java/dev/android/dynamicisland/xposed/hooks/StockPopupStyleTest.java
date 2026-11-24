package dev.android.dynamicisland.xposed.hooks;

import static org.junit.Assert.*;
import android.app.Activity;
import android.app.Notification;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.service.notification.StatusBarNotification;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import dev.android.dynamicisland.settings.ModuleSettings;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** Exercises the actual original Android view tree, rather than a parallel popup gesture implementation. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk=35, qualifiers="w360dp-h800dp-mdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class StockPopupStyleTest {
    final Context context = RuntimeEnvironment.getApplication();
    android.content.SharedPreferences preferences;
    org.robolectric.android.controller.ActivityController<Activity> activity;
    ExpandableNotificationRow row;
    Content content;
    FrameLayout originalHead;
    Drawable background;
    StockPopupStyle.State state;
    Button action;
    EditText input;
    int clicks;

    public static final class Entry {
        public StatusBarNotification mSbn;
        public StatusBarNotification getSbn() { return mSbn; }
    }
    public static final class Content extends FrameLayout {
        public View mHeadsUpChild, mContractedChild, mExpandedChild;
        public int mVisibleType = 2;
        public boolean mIsHeadsUp = true, mHeadsUpAnimatingAway;
        public Object mContainingNotification;
        Content(Context context) { super(context); }
    }
    public static final class ExpandableNotificationRow extends FrameLayout {
        public final View mBackgroundNormal, mBackgroundDimmed;
        public Entry mEntryAdapter = new Entry();
        public boolean mExpandable = true;
        public long stockRemovalAt = 4_000;
        public boolean pinned;
        public boolean isPinned() { return pinned; }
        int swipes;
        float downX;
        ExpandableNotificationRow(Context context) {
            super(context); mBackgroundNormal = new View(context); mBackgroundDimmed = new View(context);
        }
        @Override public boolean onInterceptTouchEvent(MotionEvent event) {
            if (event.getActionMasked() == MotionEvent.ACTION_DOWN) downX = event.getX();
            return event.getActionMasked() == MotionEvent.ACTION_MOVE && Math.abs(event.getX()-downX)>20;
        }
        @Override public boolean onTouchEvent(MotionEvent event) { if (event.getActionMasked()==MotionEvent.ACTION_UP) swipes++; return true; }
    }

    @Before public void setup() {
        preferences=context.getSharedPreferences("native-popup-test",0);
        preferences.edit().clear().putBoolean(ModuleSettings.KEY_SYSTEM_POPUP_STYLE,true).commit();
        ModuleSettings.configurePreview(preferences);
        activity=Robolectric.buildActivity(Activity.class).setup();
        row=new ExpandableNotificationRow(activity.get()); content=new Content(activity.get());
        originalHead=new FrameLayout(activity.get()); background=new ColorDrawable(Color.BLUE);
        originalHead.setBackground(background); originalHead.setPadding(7,9,11,13);
        action=new Button(activity.get()); action.setText("Reply"); action.setTextColor(Color.BLACK);
        action.setOnClickListener(v -> clicks++);
        originalHead.addView(action,new FrameLayout.LayoutParams(150,60));
        input=new EditText(activity.get());input.setSingleLine();input.setText("unfinished reply");input.setVisibility(View.GONE);
        originalHead.addView(input,new FrameLayout.LayoutParams(300,60));
        content.addView(originalHead,new FrameLayout.LayoutParams(360,160));content.mHeadsUpChild=originalHead;
        content.mContractedChild=new View(activity.get());content.mContainingNotification=row;
        Notification n=new Notification.Builder(context,"messages").setSmallIcon(android.R.drawable.ic_dialog_info).setContentTitle("Alice").build();
        row.mEntryAdapter.mSbn=new StatusBarNotification("org.telegram.messenger","org.telegram.messenger",1,null,10001,1,0,n,android.os.Process.myUserHandle(),System.currentTimeMillis());
        row.addView(content,new FrameLayout.LayoutParams(360,160));
        activity.get().setContentView(row);activity.visible();
        row.measure(View.MeasureSpec.makeMeasureSpec(360,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(160,View.MeasureSpec.EXACTLY));row.layout(0,0,360,160);
        state=StockPopupStyle.watch(content);state.prepare();
    }

    @After public void teardown() {
        StockPopupStyle.forget(content);activity.close();
        preferences.edit().clear().commit();ModuleSettings.configurePreview(preferences);
    }

    @Test public void keepsOriginalChildActionsExpansionAndNativeLifetime() {
        assertTrue(state.active);assertTrue(StockPopupStyle.isShowing(row.mEntryAdapter.mSbn.getKey()));
        assertSame(originalHead,content.mHeadsUpChild);assertSame(content,originalHead.getParent());
        assertSame(originalHead,action.getParent());assertTrue(row.mExpandable);assertEquals(4_000,row.stockRemovalAt);
        assertEquals(160,originalHead.getLayoutParams().height);assertEquals(7,originalHead.getPaddingLeft());
        action.performClick();assertEquals(1,clicks);
        assertEquals(0,row.mBackgroundNormal.getAlpha(),0);
        assertNotSame(background,originalHead.getBackground());
        assertNotNull("the material lease must not remove the skin itself",originalHead.getBackground());
    }

    @Test public void swipeStillGoesToTheOriginalParentInBothDirections() {
        for(int direction:new int[]{-1,1}) {
            long t=SystemClock.uptimeMillis();
            for(int i=0;i<3;i++) {
                int type=i==0?MotionEvent.ACTION_DOWN:i==1?MotionEvent.ACTION_MOVE:MotionEvent.ACTION_UP;
                MotionEvent event=MotionEvent.obtain(t,t+i*20,type,180+direction*i*65,30,0);
                row.dispatchTouchEvent(event);event.recycle();
            }
        }
        assertEquals(2,row.swipes);assertEquals(0,clicks);assertSame(originalHead,content.mHeadsUpChild);
    }

    @Test public void remoteInputDraftAndNativeEditorSurviveUpdatesAndUnpinning() {
        input.setVisibility(View.VISIBLE);input.requestFocus();input.setSelection(5);
        for(int i=0;i<5;i++)state.prepare();
        assertEquals("unfinished reply",input.getText().toString());assertEquals(5,input.getSelectionStart());
        assertSame(originalHead,input.getParent());
        content.mIsHeadsUp=false;content.mVisibleType=1;state.prepare();
        assertEquals("unfinished reply",input.getText().toString());assertEquals(5,input.getSelectionStart());
        assertSame(background,originalHead.getBackground());assertFalse(state.active);
    }

    @Test public void shadeOffAndRebindRestoreExactlyTheCurrentStockAppearance() {
        assertEquals(Color.WHITE,action.getCurrentTextColor());
        content.mVisibleType=0;state.prepare();
        assertSame(background,originalHead.getBackground());assertEquals(Color.BLACK,action.getCurrentTextColor());
        assertEquals(1,row.mBackgroundNormal.getAlpha(),0);
        Drawable updated=new ColorDrawable(Color.RED);originalHead.setBackground(updated);
        content.mVisibleType=2;state.prepare();
        preferences.edit().putBoolean(ModuleSettings.KEY_SYSTEM_POPUP_STYLE,false).commit();ModuleSettings.configurePreview(preferences);
        StockPopupStyle.refresh();assertSame(updated,originalHead.getBackground());assertFalse(state.active);
        assertFalse(StockPopupStyle.isShowing(row.mEntryAdapter.mSbn.getKey()));
    }

    @Test public void aNewNativeHeadsUpChildIsStyledWithoutReparentingOrRetainingTheOldOne() {
        FrameLayout next=new FrameLayout(activity.get());Drawable nextBackground=new ColorDrawable(Color.GREEN);next.setBackground(nextBackground);
        content.removeView(originalHead);content.addView(next,new FrameLayout.LayoutParams(360,170));content.mHeadsUpChild=next;
        state.prepare();assertSame(background,originalHead.getBackground());assertSame(content,next.getParent());
        assertNotSame(nextBackground,next.getBackground());StockPopupStyle.forget(content);
        assertSame(nextBackground,next.getBackground());assertSame(next,content.mHeadsUpChild);
    }

    @Test public void nativeContentHasAnActuallyPaintedIslandBackground() {
        Drawable surface=originalHead.getBackground();surface.setBounds(0,0,360,160);
        Bitmap bitmap=Bitmap.createBitmap(360,160,Bitmap.Config.ARGB_8888);surface.draw(new Canvas(bitmap));
        assertEquals(0xff141416,bitmap.getPixel(180,80));assertEquals(0,Color.alpha(bitmap.getPixel(0,0)));
    }

    @Test public void replyingThroughTheExpandedNativeLayoutKeepsTheMaterialAndDraft() {
        FrameLayout expanded=new FrameLayout(activity.get());Drawable stock=new ColorDrawable(Color.RED);expanded.setBackground(stock);
        originalHead.removeView(input);expanded.addView(input);input.setVisibility(View.VISIBLE);
        content.addView(expanded,new FrameLayout.LayoutParams(360,230));content.mExpandedChild=expanded;
        row.pinned=true;content.mVisibleType=1;state.prepare();
        assertTrue(state.active);assertNotSame(stock,expanded.getBackground());assertSame(background,originalHead.getBackground());
        assertEquals("unfinished reply",input.getText().toString());
        row.pinned=false;state.prepare();assertSame(stock,expanded.getBackground());assertFalse(state.active);
    }

    @Test public void disabledButtonStateAndNativeAlphaArePreserved() {
        android.content.res.ColorStateList colors=new android.content.res.ColorStateList(
                new int[][]{new int[]{-android.R.attr.state_enabled},new int[]{}},new int[]{0x44000000,Color.BLACK});
        action.setTextColor(colors);state.prepare();action.setEnabled(false);
        assertEquals(0x44,Color.alpha(action.getCurrentTextColor()));
        Drawable surface=originalHead.getBackground();surface.setBounds(0,0,360,160);surface.setAlpha(90);
        Bitmap bitmap=Bitmap.createBitmap(360,160,Bitmap.Config.ARGB_8888);surface.draw(new Canvas(bitmap));
        assertEquals(90,Color.alpha(bitmap.getPixel(180,80)));
        state.restore();assertSame(colors,action.getTextColors());
    }
}
