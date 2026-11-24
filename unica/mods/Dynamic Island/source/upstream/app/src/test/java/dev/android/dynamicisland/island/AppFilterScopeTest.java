package dev.android.dynamicisland.island;

import static org.junit.Assert.*;
import android.app.Notification;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.source.PromotedSource;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.settings.AppFilter;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.junit.After;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=35,qualifiers="w360dp-h800dp-mdpi")
public class AppFilterScopeTest {
    @After public void reset() {
        ReflectionHelpers.setStaticField(ModuleSettings.class,"appFilter",AppFilter.OFF);
        PromotedSource.setEnabled(false);
    }
    private StatusBarNotification note(Context app,int id,String text,boolean live) {
        var n=new Notification.Builder(app,"test").setSmallIcon(android.R.drawable.stat_notify_chat)
                .setContentTitle("Sender").setContentText(text).setOngoing(live).build();
        if(live) { n.extras.putBoolean("android.requestPromotedOngoing",true);n.flags|=0x40000; }
        return new StatusBarNotification("example.blocked","example.blocked",id,null,10100,1,0,n,android.os.Process.myUserHandle(),System.currentTimeMillis());
    }
    @Test public void excludedAppsKeepOtpAndLiveActivitiesWhileOrdinaryMessagesStayExcluded() {
        Context app=RuntimeEnvironment.getApplication();var prefs=ModuleSettings.openStore(app);prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
        ReflectionHelpers.setStaticField(ModuleSettings.class,"appFilter",new AppFilter(false,Set.of("example.blocked")));
        var controller=ReflectionHelpers.callConstructor(IslandController.class,ReflectionHelpers.ClassParameter.from(Context.class,app),
                ReflectionHelpers.ClassParameter.from(ClassLoader.class,getClass().getClassLoader()));
        IslandPlacement placement=ReflectionHelpers.getField(controller,"placement");placement.ensureWindow(true);
        IslandSources sources=ReflectionHelpers.getField(controller,"sources");
        var code=note(app,1,"Verification code 123456",false);
        controller.onNotificationsSnapshot(List.of(code));
        assertNotNull("unfiltered OTP scan receives the excluded app",sources.peeks.showing());
        assertEquals("123456",sources.peeks.showing().otpCode);
        // Both live callbacks and background scans must honor the same exception.
        var takeover=new HeadsUpTakeover(sources,placement,()->placement.view().setItems(List.of(sources.peeks.showing())));
        var next=note(app,2,"Verification code 654321",false);takeover.setSnapshot(List.of(next));
        assertTrue(takeover.take(next));assertTrue(takeover.owns(next.getKey()));
        var message=note(app,3,"Ordinary message",false);assertFalse(takeover.take(message));
        PromotedSource.setEnabled(true);var live=note(app,4,"Live activity",true);
        assertTrue(PromotedSource.isPromoted(live));
        controller.onNotificationsSnapshot(List.of(live));
        var shown=new ArrayList<IslandItem>();sources.promoted.collect(shown,null);
        assertEquals("live activities bypass the ordinary app filter",1,shown.size());
        assertEquals(live.getKey(),shown.get(0).sourceKey);
    }
}
