package dev.android.dynamicisland.island;

import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;
import android.app.Notification;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.feedback.AudioLevels;
import dev.android.dynamicisland.island.view.IslandHost;
import dev.android.dynamicisland.island.window.IslandWindow;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.hooks.HeadsUpHooks;
import java.time.Duration;
import java.util.List;
import org.junit.After;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=35,qualifiers="w360dp-h800dp-mdpi")
public class HeadsUpDelayedPostingTest {
    @After public void reset() {
        ReflectionHelpers.setStaticField(IslandController.class,"instance",null);
        ReflectionHelpers.setStaticField(HeadsUpHooks.class,"manager",null);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"experimentalRecovery",false);
    }
    public static class Manager {
        int removed;
        public boolean removeNotification(String key,String reason,boolean immediate) { removed++;return true; }
        public Object getHeadsUpEntry(String key) { return this; }
    }
    /** A heads-up manager whose banner for the key comes up only once {@code up} is set. */
    public static class LateManager {
        boolean up;
        int removedWhileUp;
        public boolean removeNotification(String key,String reason,boolean immediate) { if(up) { removedWhileUp++;up=false; } return true; }
        public Object getHeadsUpEntry(String key) { return up ? this : null; }
    }
    private StatusBarNotification note(Context app,long post,String text) {
        var n = new Notification.Builder(app,"test").setSmallIcon(android.R.drawable.stat_notify_chat)
                .setContentTitle("Sender").setContentText(text).build();
        return new StatusBarNotification("example.messages","example.messages",1,null,10100,1,0,n,android.os.Process.myUserHandle(),post);
    }
    private HeadsUpTakeover takeover(Context app) {
        var prefs=ModuleSettings.openStore(app);prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"experimentalRecovery",true);
        Handler main=new Handler(Looper.getMainLooper());
        var controller=ReflectionHelpers.callConstructor(IslandController.class,ReflectionHelpers.ClassParameter.from(Context.class,app),
                ReflectionHelpers.ClassParameter.from(ClassLoader.class,getClass().getClassLoader()));
        ReflectionHelpers.setStaticField(IslandController.class,"instance",controller);
        IslandSources sources=ReflectionHelpers.getField(controller,"sources");
        IslandPlacement placement=ReflectionHelpers.getField(controller,"placement");placement.ensureWindow(true);
        HeadsUpTakeover takeover=new HeadsUpTakeover(sources,placement,()->placement.view().setItems(List.of(sources.peeks.showing())));
        ReflectionHelpers.setField(controller,"headsUp",takeover);
        return takeover;
    }
    @Test public void recoveryRetriesCannotDismissAReplacementPostingWithTheSameKey() {
        Context app=RuntimeEnvironment.getApplication();var takeover=takeover(app);
        var old=note(app,System.currentTimeMillis(),"Old message");takeover.setSnapshot(List.of(old));assertTrue(takeover.take(old));
        Manager manager=new Manager();ReflectionHelpers.setStaticField(HeadsUpHooks.class,"manager",manager);
        HeadsUpHooks.dismissStock(old.getKey());assertEquals(2,manager.removed);
        takeover.setSnapshot(List.of(note(app,old.getPostTime()+1,"New message")));
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(700));
        assertEquals("neither the 120ms show task nor recovery retries may remove the new banner",2,manager.removed);
    }
    @Test public void recoveryStillRetriesWhenTheSamePostingRemainsOwned() {
        Context app=RuntimeEnvironment.getApplication();var takeover=takeover(app);
        var old=note(app,System.currentTimeMillis(),"Old message");takeover.setSnapshot(List.of(old));assertTrue(takeover.take(old));
        Manager manager=new Manager();ReflectionHelpers.setStaticField(HeadsUpHooks.class,"manager",manager);
        HeadsUpHooks.dismissStock(old.getKey());assertEquals(2,manager.removed);
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(700));
        assertTrue(manager.removed>2);
    }
    @Test public void aNewBannerThatCannotBeClaimedInvalidatesOldRetriesBeforeTheListSnapshotArrives() {
        Context app=RuntimeEnvironment.getApplication();var takeover=takeover(app);
        var old=note(app,System.currentTimeMillis(),"Old message");takeover.setSnapshot(List.of(old));assertTrue(takeover.take(old));
        Manager manager=new Manager();ReflectionHelpers.setStaticField(HeadsUpHooks.class,"manager",manager);
        HeadsUpHooks.dismissStock(old.getKey());assertEquals(2,manager.removed);
        var controller=IslandController.get();IslandPlacement placement=ReflectionHelpers.getField(controller,"placement");
        placement.view().setHeld(true);
        assertFalse(takeover.take(note(app,old.getPostTime()+1,"New message")));
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(700));
        assertEquals(2,manager.removed);
    }
    @Test public void aStockBannerThatComesUpAfterTheCardIsStillRemoved() {
        Context app=RuntimeEnvironment.getApplication();var takeover=takeover(app);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"experimentalRecovery",false);
        var old=note(app,System.currentTimeMillis(),"Old message");takeover.setSnapshot(List.of(old));assertTrue(takeover.take(old));
        LateManager manager=new LateManager();ReflectionHelpers.setStaticField(HeadsUpHooks.class,"manager",manager);
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(300));
        assertEquals("nothing to remove yet",0,manager.removedWhileUp);
        manager.up=true; // System UI binds the banner's view a moment after the card opened
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(2200));
        assertEquals("the island looked again and took the late banner away",1,manager.removedWhileUp);
    }
}
