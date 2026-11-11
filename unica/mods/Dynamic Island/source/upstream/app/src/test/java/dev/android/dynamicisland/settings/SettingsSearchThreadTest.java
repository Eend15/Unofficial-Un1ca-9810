package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;
import android.view.View;
import android.widget.EditText;
import dev.android.dynamicisland.R;
import java.util.concurrent.TimeUnit;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.shadows.ShadowLooper;

/** Search with the real worker thread, as on a phone (the other search test runs the worker inline). */
@RunWith(RobolectricTestRunner.class)
@Config(sdk=35,qualifiers="ko-rKR-w360dp-h800dp-night-xxhdpi")
public class SettingsSearchThreadTest {
    @Test public void resultsAppearWithTheRealWorkerThread() throws Exception {
        try(var controller=Robolectric.buildActivity(SettingsActivity.class).setup()) {
            SettingsActivity a=controller.get();
            SettingsSearchScreen search=org.robolectric.util.ReflectionHelpers.getField(a,"search");
            search.launch();EditText input=find(a.page());assertNotNull(input);
            input.setText("배터리");
            View row=null;
            for(int i=0;i<40&&row==null;i++) {
                ShadowLooper.idleMainLooper(150,TimeUnit.MILLISECONDS);Thread.sleep(100);
                row=a.page().findViewWithTag(a.getString(R.string.ui_show_battery_icon));
            }
            assertNotNull("results must appear while typing",row);
        }
    }
    private static EditText find(View root) {
        if(root instanceof EditText)return (EditText)root;
        if(root instanceof android.view.ViewGroup)for(int i=0;i<((android.view.ViewGroup)root).getChildCount();i++) {
            EditText f=find(((android.view.ViewGroup)root).getChildAt(i));if(f!=null)return f;
        }
        return null;
    }
}
