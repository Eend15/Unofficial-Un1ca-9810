package dev.android.dynamicisland.settings;

import static org.junit.Assert.*;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.EditText;
import dev.android.dynamicisland.R;
import dev.android.dynamicisland.testutil.RenderCapture;
import java.util.List;
import java.util.Map;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.TimeUnit;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.shadows.ShadowAlertDialog;
import org.robolectric.shadows.ShadowLooper;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk=35,qualifiers="ko-rKR-w360dp-h800dp-night-xxhdpi")
public class SettingsSearchTest {
    @Test public void realCatalogSearchesAllLanguagesAndRoutesActionsWithoutExecutingThem() {
        try(var controller=Robolectric.buildActivity(SettingsActivity.class).setup()) {
            SettingsActivity a=controller.get();SettingsSearchCatalog catalog=new SettingsSearchCatalog(a);
            assertTrue(catalog.rows.size()>65);
            for(String query:new String[]{"블러","blur","ぼかし","毛玻璃","размытие"})
                assertEquals(R.string.material_style,catalog.rows.get(catalog.engine.search(query,10).get(0).id).title);
            assertEquals(R.string.low_performance_mode,catalog.rows.get(catalog.engine.search("DÜŞÜK PERFORMANS",10).get(0).id).title);
            assertEquals(R.string.setting_paused_timeout,catalog.rows.get(catalog.engine.search("노래 멈추면",10).get(0).id).title);
            assertFalse(catalog.engine.search("glwo",10).isEmpty());
            SharedPreferences prefs=ReflectionHelpers.getField(a,"prefs");Map<String,?> before=prefs.getAll();
            SettingsSearchCatalog.Row restart=catalog.rows.values().stream().filter(r->r.title==R.string.restart_systemui).findFirst().orElseThrow();
            a.openSearchResult(restart);
            assertNotNull(a.page().findViewWithTag(a.getString(R.string.restart_systemui)));
            assertNull("search never invokes an action",ShadowAlertDialog.getLatestAlertDialog());
            assertEquals(before,prefs.getAll());
        }
    }
    @Test public void typingResultsAndBackRetainQueryWithoutChangingPreferences() throws Exception {
        try(var controller=Robolectric.buildActivity(SettingsActivity.class).setup()) {
            SettingsActivity a=controller.get();OneUi ui=ReflectionHelpers.getField(a,"ui");
            SettingsSearchScreen original=ReflectionHelpers.getField(a,"search");original.close();
            SettingsSearchScreen search=new SettingsSearchScreen(a,ui,new DirectExecutor());ReflectionHelpers.setField(a,"search",search);
            SharedPreferences prefs=ReflectionHelpers.getField(a,"prefs");Map<String,?> before=prefs.getAll();
            search.launch();EditText input=findInput(a.page());assertNotNull(input);input.setText("배터리 아이콘");
            ShadowLooper.idleMainLooper(150,TimeUnit.MILLISECONDS);
            View row=a.page().findViewWithTag(a.getString(R.string.ui_show_battery_icon));assertNotNull(row);
            if(RenderCapture.enabled())SettingsRenderTest.render(a,"settings_search_ko_results");
            row.performClick();assertFalse(search.visible());assertEquals(before,prefs.getAll());
            assertNotNull(a.page().findViewWithTag(a.getString(R.string.ui_show_battery_icon)));
            a.goBack();ShadowLooper.idleMainLooper(150,TimeUnit.MILLISECONDS);
            assertTrue(search.visible());assertEquals("배터리 아이콘",findInput(a.page()).getText().toString());
            findInput(a.page()).setText("블러");findInput(a.page()).setText("없는설정zzzzzz");
            ShadowLooper.idleMainLooper(150,TimeUnit.MILLISECONDS);
            assertNull(a.page().findViewWithTag(a.getString(R.string.material_style)));
            assertEquals(before,prefs.getAll());
        }
    }
    private static EditText findInput(View root) {
        if(root instanceof EditText)return (EditText)root;
        if(root instanceof android.view.ViewGroup)for(int i=0;i<((android.view.ViewGroup)root).getChildCount();i++) {
            EditText found=findInput(((android.view.ViewGroup)root).getChildAt(i));if(found!=null)return found;
        }
        return null;
    }
    private static final class DirectExecutor extends AbstractExecutorService {
        boolean stopped;
        public void shutdown(){stopped=true;}
        public List<Runnable> shutdownNow(){stopped=true;return List.of();}
        public boolean isShutdown(){return stopped;}
        public boolean isTerminated(){return stopped;}
        public boolean awaitTermination(long time,TimeUnit unit){return stopped;}
        public void execute(Runnable runnable){if(!stopped)runnable.run();}
    }
}
