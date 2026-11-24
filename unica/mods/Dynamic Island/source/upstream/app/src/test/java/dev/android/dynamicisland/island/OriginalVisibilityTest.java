package dev.android.dynamicisland.island;
import static org.junit.Assert.*;
import android.app.Notification;
import android.content.Context;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.util.ReflectionHelpers;
@RunWith(RobolectricTestRunner.class)
@Config(sdk=35)
public class OriginalVisibilityTest {
    @Test public void lockingThePhoneMustRestoreTheOriginalProgressNotification() throws Exception {
        Context app=RuntimeEnvironment.getApplication();ModuleSettings.configurePreview(ModuleSettings.openStore(app));
        IslandController controller=ReflectionHelpers.callConstructor(IslandController.class,
                ReflectionHelpers.ClassParameter.from(Context.class,app),ReflectionHelpers.ClassParameter.from(ClassLoader.class,getClass().getClassLoader()));
        IslandPlacement placement=ReflectionHelpers.getField(controller,"placement");
        IslandView view=new IslandView(app,null);ReflectionHelpers.setField(placement,"view",view);
        Notification n=new Notification.Builder(app,"download").setSmallIcon(android.R.drawable.stat_sys_download)
                .setContentTitle("Download").setContentText("50%").setProgress(100,50,false).setOngoing(true).build();
        StatusBarNotification sbn=StatusBarNotification.class.getConstructor(String.class,String.class,int.class,String.class,int.class,int.class,
                Notification.class,android.os.UserHandle.class,String.class,long.class)
                .newInstance("example.download","example.download",1,null,10123,1,n,android.os.Process.myUserHandle(),null,1000);
        IslandSources sources=ReflectionHelpers.getField(controller,"sources");sources.progress.update(List.of(sbn));
        sources.progress.collect(new ArrayList<IslandItem>(),null);
        assertTrue(controller.hidesOriginal(sbn.getKey()));
        controller.setBarState(1);assertTrue(view.isSuppressedNow());
        assertFalse("there must be an original on the lock screen while the island cannot represent it",controller.hidesOriginal(sbn.getKey()));
        view.setSuppressed(false);view.setShadeFraction(1);
        assertTrue("opening quick settings alone retains the existing duplicate-hiding policy",controller.hidesOriginal(sbn.getKey()));
    }
}
