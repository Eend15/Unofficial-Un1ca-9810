package dev.android.dynamicisland.xposed.hooks;

import static org.junit.Assert.*;
import static org.robolectric.util.ReflectionHelpers.ClassParameter.from;
import android.content.Context;
import android.view.View;
import com.android.systemui.statusbar.phone.ongoingactivity.OngoingActivityDataHelper;
import dev.android.dynamicisland.island.IslandController;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.util.ReflectionHelpers;

/** Samsung measures the contracted child with measureChildWithMargins, then reports that child's height. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk=35,qualifiers="en-rUS-w440dp-h800dp-mdpi")
public class LiveCardHeightTest {
    static final class PaddedContent extends QuickPanelGateTest.Content {
        PaddedContent(Context context) { super(context); }
        void nativeMeasure(int width) {
            measureChildWithMargins(mContractedChild,View.MeasureSpec.makeMeasureSpec(width,View.MeasureSpec.EXACTLY),0,
                    View.MeasureSpec.makeMeasureSpec(mSmallHeight,View.MeasureSpec.AT_MOST),0);
            setMeasuredDimension(width,mContractedChild.getMeasuredHeight());
        }
    }

    @Test public void nativeContentInsetsDoNotReduceTheCardBelowItsDrawnHeight() throws Throwable {
        Context context=RuntimeEnvironment.getApplication();
        var prefs=context.getSharedPreferences("live-card-height",0);prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
        Object previous=ReflectionHelpers.getStaticField(IslandController.class,"instance");
        var store=OngoingActivityDataHelper.mOngoingActivityLists;
        var data=new QuickPanelGateTest.Data();store.clear();store.add(data);
        CardRowState state=null;
        try {
            IslandController controller=ReflectionHelpers.callConstructor(IslandController.class,
                    from(Context.class,context),from(ClassLoader.class,getClass().getClassLoader()));
            ReflectionHelpers.setStaticField(IslandController.class,"instance",controller);
            IslandItem item=ShadeLiveCards.item("quick-panel-probe");assertNotNull(item);
            var row=new QuickPanelGateTest.ProbeExpandableNotificationRow(context);
            PaddedContent content=new PaddedContent(context);row.addView(content);
            content.setPadding(5,7,9,11);content.layout(0,0,360,220);
            state=new CardRowState(row,content,"quick-panel-probe",item);state.install();
            int expected=state.card.heightFor(346);
            state.beginMeasure(360);
            try {
                content.nativeMeasure(360);
                assertEquals("padding is not subtracted from the card's required height",expected,state.card.getMeasuredHeight());
                state.card.layout(0,7,346,7+expected-18);
                assertEquals("native clipping is based on the fresh measure, not the old layout",expected+18,state.minimumHeight());
                state.fitMeasuredHeight(View.MeasureSpec.makeMeasureSpec(800,View.MeasureSpec.AT_MOST));
                assertEquals("the content view includes its own insets too",expected+18,content.getMeasuredHeight());
            } finally {state.endMeasure();}
            assertEquals(80,content.mSmallHeight);assertEquals(80,content.mMinContractedHeight);assertEquals(80,content.mHeadsUpHeight);
            content.setPadding(5,0,9,0);state.beginMeasure(360);
            try {
                content.nativeMeasure(360);state.fitMeasuredHeight(View.MeasureSpec.makeMeasureSpec(800,View.MeasureSpec.AT_MOST));
                assertEquals("zero-inset rows retain their original size",expected,content.getMeasuredHeight());
            } finally {state.endMeasure();}
        } finally {
            if(state!=null)state.restore();store.clear();ReflectionHelpers.setStaticField(IslandController.class,"instance",previous);
            prefs.edit().clear().commit();ModuleSettings.configurePreview(prefs);
        }
    }
}
