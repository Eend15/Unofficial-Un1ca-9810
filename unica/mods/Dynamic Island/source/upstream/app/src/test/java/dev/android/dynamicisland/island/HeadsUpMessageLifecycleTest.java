package dev.android.dynamicisland.island;

import static org.junit.Assert.*;
import android.app.Notification;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.feedback.AudioLevels;
import dev.android.dynamicisland.island.view.IslandHost;
import dev.android.dynamicisland.island.window.IslandWindow;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.time.Duration;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.shadows.ShadowSystemClock;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=35,qualifiers="w360dp-h800dp-mdpi")
public class HeadsUpMessageLifecycleTest {
    @Test public void repeatedTextIsANewMessageAfterRemovalOrANewPostingButTheSamePostingIsNotDuplicated() throws Exception {
        Context app=RuntimeEnvironment.getApplication();
        ModuleSettings.configurePreview(ModuleSettings.openStore(app));
        ReflectionHelpers.setStaticField(ModuleSettings.class,"headsUpIsland",true);
        Handler main=new Handler(Looper.getMainLooper());
        IslandSources sources=new IslandSources(app,getClass().getClassLoader(),main,()->{});
        IslandPlacement placement=new IslandPlacement(app,main,getClass().getClassLoader(),IslandHost.NONE,
                new IslandWindow.Listener() {
                    public void onWindowConfigurationChanged() { }
                    public void onWindowInsetsChanged() { }
                },new AudioLevels());
        placement.ensureWindow(true);
        HeadsUpTakeover takeover=new HeadsUpTakeover(sources,placement,()->{
            var item=sources.peeks.showing();placement.view().setItems(item==null ? List.of() : List.of(item));
        });
        StatusBarNotification first=message(1000);takeover.setSnapshot(List.of(first));
        assertTrue(takeover.take(first));
        var original=sources.peeks.showing();assertNotNull(original);
        assertTrue(takeover.take(first));assertSame("the same posting does not rebuild its popup",original,sources.peeks.showing());
        takeover.setSnapshot(List.of());
        sources.peeks.dismiss(original);placement.view().collapse();
        ShadowSystemClock.advanceBy(Duration.ofMinutes(1));
        StatusBarNotification second=message(61000);takeover.setSnapshot(List.of(second));
        assertTrue(takeover.take(second));
        var next=sources.peeks.showing();assertNotNull("new same-text notification gets an island popup",next);
        assertNotSame(original,next);assertEquals(second.getPostTime(),next.postTime);
        StatusBarNotification third=message(62000);takeover.setSnapshot(List.of(third));
        assertTrue(takeover.take(third));
        assertNotSame("a new posting is not suppressed even if the old notification key is still live",next,sources.peeks.showing());
    }
    private StatusBarNotification message(long post) throws Exception {
        Context app=RuntimeEnvironment.getApplication();
        Notification n=new Notification.Builder(app,"messages").setSmallIcon(android.R.drawable.ic_dialog_email)
                .setContentTitle("Same sender").setContentText("Yes").build();
        return StatusBarNotification.class.getConstructor(String.class,String.class,int.class,String.class,int.class,int.class,
                Notification.class,android.os.UserHandle.class,String.class,long.class)
                .newInstance("example.chat","example.chat",1,null,10123,1,n,android.os.Process.myUserHandle(),null,post);
    }
}
