package dev.android.dynamicisland.island.view;

import static org.junit.Assert.*;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RemoteViews;
import android.widget.TextView;
import dev.android.dynamicisland.island.model.IslandItem;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.Implementation;
import org.robolectric.annotation.Implements;
import org.robolectric.util.ReflectionHelpers;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=35,shadows=RemoteCardsRecoveryTest.Remote.class)
public class RemoteCardsRecoveryTest {
    @Implements(RemoteViews.class)
    public static class Remote {
        static boolean fail;
        @Implementation protected int getLayoutId() { return 1; }
        @Implementation protected View apply(Context context,ViewGroup parent) {
            if(fail)throw new IllegalStateException("Broken remote layout");return new TextView(context);
        }
        @Implementation protected void reapply(Context context,View view) {
            if(fail)throw new IllegalStateException("Broken remote update");
        }
    }
    @Test public void aBrokenRemoteLayoutCanRecoverWithAnAttachedViewOnTheNextUpdate() {
        var app=RuntimeEnvironment.getApplication();var view=new IslandView(app,null);
        var layer=new FrameLayout(app);view.setRemoteLayer(layer);
        RemoteCards remote=ReflectionHelpers.getField(view,"remote");
        var item=new IslandItem("remote");item.remoteView=new RemoteViews(app.getPackageName(),1);Remote.fail=false;
        View old=remote.viewFor(item);assertSame(layer,old.getParent());
        item.remoteView=new RemoteViews(app.getPackageName(),1);Remote.fail=true;
        assertThrows(IllegalStateException.class,()->remote.viewFor(item));assertNull(old.getParent());
        item.remoteView=new RemoteViews(app.getPackageName(),1);Remote.fail=false;
        View recovered=remote.viewFor(item);assertSame(layer,recovered.getParent());assertEquals(1,layer.getChildCount());
    }
}
