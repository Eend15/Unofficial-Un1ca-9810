package dev.android.dynamicisland.island.source;

import static org.junit.Assert.*;
import android.app.Notification;
import android.os.SystemClock;
import android.service.notification.StatusBarNotification;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.TimeFormat;
import java.time.Duration;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.shadows.ShadowSystemClock;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class ChronometerRegressionTest {
    public static class Data {
        public String mNotiID="watch", mPackageName="com.sec.android.app.clockpackage";
        public Entry mNotificationEntry;
    }
    public static class Entry { public StatusBarNotification mSbn; }
    @Test public void aPausedStopwatchKeepsTheReportedFrozenTimeOnRepost() throws Exception {
        var app=RuntimeEnvironment.getApplication();
        var builder=new OaCardBuilder(new IconLoader(app),new OaViews(app),new ProgressBinder(new IconLoader(app)));
        Notification n=new Notification.Builder(app,"stopwatch").setSmallIcon(android.R.drawable.stat_notify_chat)
                .setCategory("stopwatch").build();
        Data data=new Data(); data.mNotificationEntry=new Entry();
        var method=OaCardBuilder.class.getDeclaredMethod("bindTrailing",IslandItem.class,OaActivity.class,
                OaViews.Chrono.class,String.class,CharSequence.class,CharSequence.class); method.setAccessible(true);
        long base=System.currentTimeMillis()-60_000;
        data.mNotificationEntry.mSbn=new StatusBarNotification(data.mPackageName,data.mPackageName,1,null,10100,1,0,n,
                android.os.Process.myUserHandle(),base+60_000);
        var item=new IslandItem("oa:watch");
        method.invoke(builder,item,new OaActivity(data),new OaViews.Chrono(base,false,true,null),null,null,null);
        for (long repost : new long[]{base+60_000,base+90_000}) {
            data.mNotificationEntry.mSbn=new StatusBarNotification(data.mPackageName,data.mPackageName,1,null,10100,1,0,n,
                    android.os.Process.myUserHandle(),repost);
            var paused=new IslandItem("oa:watch");
            method.invoke(builder,paused,new OaActivity(data),new OaViews.Chrono(base,false,false,"1:00.00"),null,null,null);
            assertEquals("1:00.00",paused.trailingText);assertFalse(paused.hasChronometer());
        }
    }
    @Test public void wallClockChangesDoNotAffectElapsedTimeEvenWhenTheCardIsRebuilt() {
        var clocks=new ChronometerClock();
        long[] wall = {System.currentTimeMillis()}; clocks.wallTime = () -> wall[0];
        var item=new IslandItem("timer"); item.chronoBase=wall[0]-60_000;
        clocks.bind(item);assertEquals("1:00",TimeFormat.chronometer(item));
        long base=item.chronoBase;
        wall[0] += 3_600_000;
        assertEquals("1:00",TimeFormat.chronometer(item));
        ShadowSystemClock.advanceBy(Duration.ofSeconds(10));
        var repost=new IslandItem("timer");repost.chronoBase=base;clocks.bind(repost);
        assertEquals("1:10",TimeFormat.chronometer(repost));
        var down=new IslandItem("countdown");down.chronoBase=wall[0]+60_000;down.chronoCountDown=true;
        clocks.bind(down);assertEquals("1:00",TimeFormat.chronometer(down));
        wall[0] -= 3_600_000;
        assertEquals("1:00",TimeFormat.chronometer(down));
        ShadowSystemClock.advanceBy(Duration.ofSeconds(10));assertEquals("0:50",TimeFormat.chronometer(down));
    }
}
