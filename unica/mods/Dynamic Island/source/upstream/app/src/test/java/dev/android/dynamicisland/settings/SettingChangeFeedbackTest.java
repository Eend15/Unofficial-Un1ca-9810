package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;
import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Switch;
import android.widget.TextView;
import dev.android.dynamicisland.R;
import dev.android.dynamicisland.xposed.Diagnostics;
import java.io.File;
import java.io.FileOutputStream;
import java.time.Duration;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.android.controller.ActivityController;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.annotation.LooperMode;
import org.robolectric.shadows.ShadowAlertDialog;
import org.robolectric.util.ReflectionHelpers;
import static org.robolectric.Shadows.shadowOf;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@LooperMode(LooperMode.Mode.PAUSED)
@Config(sdk=35, qualifiers="ko-rKR-w360dp-h800dp-night-xxhdpi")
public class SettingChangeFeedbackTest {
    private void advance(long millis) { shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(millis)); }
    private TextView message(Object feedback) { return ReflectionHelpers.getField(feedback,"message"); }
    private View bar(Object feedback) { return ReflectionHelpers.getField(feedback,"bar"); }
    private View restart(Object feedback) { return ReflectionHelpers.getField(feedback,"restart"); }
    private long nonce(Object feedback) { return ReflectionHelpers.getField(feedback,"nonce"); }

    @Test public void onlySavedChangesNotifyAndEventSettingsDescribeTheirTiming() throws Exception {
        ActivityController<SettingsActivity> controller=Robolectric.buildActivity(SettingsActivity.class).setup();
        SettingsActivity a=controller.get();
        SharedPreferences p=ReflectionHelpers.getField(a,"prefs");
        Object feedback=ReflectionHelpers.getField(a,"changeFeedback");
        a.open(()->ReflectionHelpers.callInstanceMethod(a,"behaviorPage"));
        a.refresh();advance(400);
        assertEquals(View.GONE,bar(feedback).getVisibility());
        p.edit().putLong(ModuleSettings.KEY_PILL_PREVIEW_UNTIL,1000).apply();advance(400);
        assertEquals(View.GONE,bar(feedback).getVisibility());

        Switch toggle=findSwitch(a.page(),a.getString(R.string.setting_haptics));
        assertNotNull(toggle);toggle.toggle();advance(400);
        assertEquals(toggle.isChecked(),p.getBoolean(ModuleSettings.KEY_HAPTICS,!toggle.isChecked()));
        assertEquals(a.getString(R.string.setting_apply_soon),message(feedback).getText().toString());
        assertEquals(View.VISIBLE,bar(feedback).getVisibility());
        assertEquals(View.GONE,restart(feedback).getVisibility());
        long request=nonce(feedback);
        Diagnostics.acknowledgeStatus(a,request);advance(600);
        capture(a,"settings-change-saved");
        p.edit().putBoolean(ModuleSettings.KEY_HAPTICS,toggle.isChecked()).apply();advance(400);
        assertEquals(request,nonce(feedback));
        advance(3500);assertEquals(View.GONE,bar(feedback).getVisibility());

        // A choice dialog or a mode/reset may save multiple keys together; only one notice remains.
        p.edit().putInt(ModuleSettings.KEY_AUTO_OPEN_S,8).putInt(ModuleSettings.KEY_AUTO_COLLAPSE_S,10).apply();
        advance(400);
        assertEquals(a.getString(R.string.setting_apply_next_card),message(feedback).getText().toString());
        assertEquals(R.string.setting_apply_next_charge,SettingChangeFeedback.messageFor(ModuleSettings.KEY_STOCK_CHARGING_ANIMATION,false));
        assertEquals(R.string.setting_apply_next_charge,SettingChangeFeedback.messageFor(ModuleSettings.KEY_EVENT_CHARGING,true));
        assertEquals(R.string.setting_apply_next_connection,SettingChangeFeedback.messageFor(ModuleSettings.KEY_EVENT_BLUETOOTH,true));
        assertEquals(R.string.setting_apply_next_state,SettingChangeFeedback.messageFor(ModuleSettings.KEY_EVENT_RINGER,true));
        assertEquals(R.string.setting_apply_soon,SettingChangeFeedback.messageFor(ModuleSettings.KEY_EVENT_BLUETOOTH,false));
        controller.pause().stop().destroy();
    }

    @Test public void connectionCheckRejectsStaleStatusOffersConfirmedRestartAndStopsOnPause() throws Exception {
        ActivityController<SettingsActivity> controller=Robolectric.buildActivity(SettingsActivity.class).setup();
        SettingsActivity a=controller.get();
        SharedPreferences p=ReflectionHelpers.getField(a,"prefs");
        Object feedback=ReflectionHelpers.getField(a,"changeFeedback");
        a.open(()->ReflectionHelpers.callInstanceMethod(a,"behaviorPage"));
        p.edit().putBoolean(ModuleSettings.KEY_HAPTICS,false).apply();advance(400);
        long request=nonce(feedback);
        Settings.Global.putString(a.getContentResolver(),Diagnostics.STATUS_SETTING,Long.toString(request-1));
        assertFalse(Diagnostics.statusAcknowledgedSince(a,request));
        // The hub can issue a newer ping without invalidating this connection check.
        long newer=SystemClock.elapsedRealtimeNanos();
        Diagnostics.acknowledgeStatus(a,newer);advance(600);
        assertTrue(Diagnostics.statusAcknowledgedSince(a,request));
        advance(5500);assertEquals(View.GONE,bar(feedback).getVisibility());
        assertEquals(View.GONE,restart(feedback).getVisibility());

        p.edit().putBoolean(ModuleSettings.KEY_HAPTICS,true).apply();advance(400);
        assertFalse(Diagnostics.statusAcknowledgedSince(a,nonce(feedback)));
        advance(5500);
        assertEquals(a.getString(R.string.setting_apply_unconfirmed),message(feedback).getText().toString());
        assertEquals(View.VISIBLE,restart(feedback).getVisibility());
        capture(a,"settings-change-restart");
        restart(feedback).performClick();
        AlertDialog dialog=ShadowAlertDialog.getLatestAlertDialog();
        assertTrue(dialog.isShowing());
        dialog.getButton(AlertDialog.BUTTON_NEGATIVE).performClick(); // never execute a restart in tests

        p.edit().putBoolean(ModuleSettings.KEY_HAPTICS,false).apply();advance(400);
        controller.pause();advance(10000);
        assertEquals(View.GONE,bar(feedback).getVisibility());
        controller.resume();advance(6000);
        assertEquals(View.GONE,bar(feedback).getVisibility());
        controller.pause().stop().destroy();
    }

    private Switch findSwitch(View view,String label) {
        if(view instanceof Switch&&label.contentEquals(view.getContentDescription()))return (Switch)view;
        if(view instanceof ViewGroup)for(int i=0;i<((ViewGroup)view).getChildCount();i++) {
            Switch found=findSwitch(((ViewGroup)view).getChildAt(i),label);if(found!=null)return found;
        }
        return null;
    }

    private void capture(SettingsActivity a,String name) throws Exception {
        if(!Boolean.getBoolean("render"))return;
        View root=a.findViewById(android.R.id.content);
        root.measure(View.MeasureSpec.makeMeasureSpec(1080,View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(2160,View.MeasureSpec.EXACTLY));
        root.layout(0,0,1080,2160);
        Bitmap bitmap=Bitmap.createBitmap(1080,2160,Bitmap.Config.ARGB_8888);
        root.draw(new Canvas(bitmap));
        File directory=new File("build/render");directory.mkdirs();
        try(FileOutputStream stream=new FileOutputStream(new File(directory,name+".png"))) {
            bitmap.compress(Bitmap.CompressFormat.PNG,100,stream);
        }
        bitmap.recycle();
    }
}
