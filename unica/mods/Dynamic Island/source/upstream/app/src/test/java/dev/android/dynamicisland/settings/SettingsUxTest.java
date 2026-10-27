package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;
import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import dev.android.dynamicisland.R;
import java.util.*;
import java.util.concurrent.atomic.AtomicReference;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.shadows.ShadowAlertDialog;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35, qualifiers = "w360dp-h800dp-xxhdpi")
public class SettingsUxTest {
    private SettingsActivity activity() { return Robolectric.buildActivity(SettingsActivity.class).setup().get(); }
    private SharedPreferences prefs(SettingsActivity a) { return ReflectionHelpers.getField(a, "prefs"); }
    private void open(SettingsActivity a, String method) { a.open(() -> ReflectionHelpers.callInstanceMethod(a, method)); }
    private View find(View v, CharSequence label) {
        if (v instanceof TextView && label.toString().contentEquals(((TextView) v).getText())) return v;
        if (v instanceof ViewGroup) for (int i = 0; i < ((ViewGroup) v).getChildCount(); i++) {
            View found = find(((ViewGroup) v).getChildAt(i), label); if (found != null) return found;
        }
        return null;
    }
    private void choose(SettingsActivity a, int title, int selection) {
        View label = find(a.page(), a.getString(title));
        ((View) label.getParent().getParent()).performClick();
        AlertDialog dialog = ShadowAlertDialog.getLatestAlertDialog();
        dialog.getListView().performItemClick(null, selection, selection);
    }
    private Switch toggle(SettingsActivity a, int title) {
        return findSwitch(a.page(), a.getString(title));
    }
    private Switch findSwitch(View v, String title) {
        if (v instanceof Switch && title.contentEquals(v.getContentDescription())) return (Switch) v;
        if (v instanceof ViewGroup) for (int i=0;i<((ViewGroup)v).getChildCount();i++) {
            Switch found=findSwitch(((ViewGroup)v).getChildAt(i),title);if(found!=null)return found;
        }
        return null;
    }
    @Test public void eachResetPreservesOtherDomains() {
        SettingsActivity a=activity(); SharedPreferences p=prefs(a);
        PositionScreen screen=ReflectionHelpers.getField(a,"position");
        p.edit().putInt(ModuleSettings.KEY_PILL_X_DP,14).putInt(ModuleSettings.KEY_PILL_MIN_W_DP,150)
                .putInt(ModuleSettings.KEY_HOLE_D_DP,30).putBoolean(ModuleSettings.KEY_HAPTICS,false).apply();
        screen.resetPosition();
        assertFalse(p.contains(ModuleSettings.KEY_PILL_X_DP));
        assertEquals(150,p.getInt(ModuleSettings.KEY_PILL_MIN_W_DP,0));
        assertEquals(30,p.getInt(ModuleSettings.KEY_HOLE_D_DP,0));
        screen.resetSize();
        assertFalse(p.contains(ModuleSettings.KEY_PILL_MIN_W_DP));
        assertEquals(30,p.getInt(ModuleSettings.KEY_HOLE_D_DP,0));
        screen.resetCalibration(); assertFalse(p.contains(ModuleSettings.KEY_HOLE_D_DP));
        assertFalse(p.getBoolean(ModuleSettings.KEY_HAPTICS,true));
    }
    @Test public void customWidthsRespectEachOtherAndScreenThenReturnToAutomatic() {
        SettingsActivity a=activity(); SharedPreferences p=prefs(a);
        PositionScreen screen=ReflectionHelpers.getField(a,"position");
        p.edit().putInt(ModuleSettings.KEY_PILL_MAX_W_DP,180).apply();
        screen.setWidthMode(ModuleSettings.KEY_PILL_MIN_W_DP,true,64,300);
        assertEquals(180,p.getInt(ModuleSettings.KEY_PILL_MIN_W_DP,0));
        screen.setWidthMode(ModuleSettings.KEY_PILL_MAX_W_DP,true,100,100);
        assertEquals(180,p.getInt(ModuleSettings.KEY_PILL_MAX_W_DP,0));
        screen.setWidthMode(ModuleSettings.KEY_PILL_MAX_W_DP,false,100,100);
        assertEquals(0,p.getInt(ModuleSettings.KEY_PILL_MAX_W_DP,-1));
        screen.setWidthMode(ModuleSettings.KEY_PILL_MAX_W_DP,true,100,9999);
        assertTrue(p.getInt(ModuleSettings.KEY_PILL_MAX_W_DP,0)<=screen.screenLimit());
    }
    @Test public void notificationModesMapBothExistingFlagsWithoutChangingOtp() {
        SettingsActivity a=activity(); SharedPreferences p=prefs(a);open(a,"notificationsPage");
        choose(a,R.string.ui_notification_mode,2);
        assertTrue(p.getBoolean(ModuleSettings.KEY_HEADS_UP_ISLAND,false));
        assertTrue(p.getBoolean(ModuleSettings.KEY_ALL_NOTIFICATIONS,false));
        choose(a,R.string.ui_notification_mode,0);
        assertFalse(p.getBoolean(ModuleSettings.KEY_HEADS_UP_ISLAND,true));
        assertFalse(p.getBoolean(ModuleSettings.KEY_ALL_NOTIFICATIONS,true));
        assertTrue(toggle(a,R.string.setting_otp).isChecked());
        assertTrue(toggle(a,R.string.foreground_notifications).isEnabled());
        toggle(a,R.string.setting_otp).toggle();
        assertFalse(toggle(a,R.string.foreground_notifications).isEnabled());
        choose(a,R.string.ui_notification_mode,1);
        assertTrue(p.getBoolean(ModuleSettings.KEY_HEADS_UP_ISLAND,false));
        assertFalse(p.getBoolean(ModuleSettings.KEY_ALL_NOTIFICATIONS,true));
    }

    @Test public void searchableAppSelectionIsTransactionalAcrossFilterChanges() {
        SettingsActivity a=activity();OneUi ui=ReflectionHelpers.getField(a,"ui");
        List<Map.Entry<String,String>> rows=Arrays.asList(new AbstractMap.SimpleEntry<>("com.alpha","Alpha"),new AbstractMap.SimpleEntry<>("com.beta","Beta"));
        Set<String> saved=new LinkedHashSet<>(Collections.singleton("com.beta"));
        AtomicReference<Set<String>> committed=new AtomicReference<>();
        AppPickerDialog.show(a,ui,rows,saved,committed::set);
        AlertDialog dialog=ShadowAlertDialog.getLatestAlertDialog();
        EditText search=(EditText)findHint(dialog.getWindow().getDecorView(),a.getString(R.string.ui_search_apps));
        search.setText("alpha");
        ListView list=findList(dialog.getWindow().getDecorView());assertEquals(1,list.getAdapter().getCount());
        View row=list.getAdapter().getView(0,null,list);row.performClick();
        search.setText("beta");assertEquals(1,list.getAdapter().getCount());
        dialog.getButton(AlertDialog.BUTTON_NEGATIVE).performClick();
        org.robolectric.Shadows.shadowOf(android.os.Looper.getMainLooper()).idle();
        assertNull(committed.get());assertEquals(Collections.singleton("com.beta"),saved);
        AppPickerDialog.show(a,ui,rows,saved,committed::set);
        dialog=ShadowAlertDialog.getLatestAlertDialog();list=findList(dialog.getWindow().getDecorView());
        list.getAdapter().getView(0,null,list).performClick();
        dialog.getButton(AlertDialog.BUTTON_POSITIVE).performClick();
        org.robolectric.Shadows.shadowOf(android.os.Looper.getMainLooper()).idle();
        assertEquals(new LinkedHashSet<>(Arrays.asList("com.alpha","com.beta")),committed.get());
    }
    private View findHint(View v,String hint) {
        if(v instanceof EditText&&hint.contentEquals(((EditText)v).getHint()))return v;
        if(v instanceof ViewGroup)for(int i=0;i<((ViewGroup)v).getChildCount();i++){View f=findHint(((ViewGroup)v).getChildAt(i),hint);if(f!=null)return f;}return null;
    }
    private ListView findList(View v) {
        if(v instanceof ListView)return(ListView)v;
        if(v instanceof ViewGroup)for(int i=0;i<((ViewGroup)v).getChildCount();i++){ListView f=findList(((ViewGroup)v).getChildAt(i));if(f!=null)return f;}return null;
    }
}
