package dev.android.dynamicisland.xposed.hooks;

import static org.junit.Assert.*;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class ActionButtonHitTestTest {
    private static final int ACTION_BUTTONS = 42;

    private static final class Content extends FrameLayout {
        public View mContractedChild;
        public View mExpandedChild;
        Content(Context context) { super(context); }
    }

    private static final class SamsungRow {
        final Content mPrivateLayout;
        boolean snoozeButtonHit;
        boolean bubbleButtonHit;
        int menus;
        SamsungRow(Content layout) { mPrivateLayout = layout; }
        boolean isActionButtonLongClick() {
            // The unguarded expanded-child dereference seen in the report and SystemUI APK.
            View buttons = mPrivateLayout.mExpandedChild.findViewById(ACTION_BUTTONS);
            return buttons != null || snoozeButtonHit || bubbleButtonHit;
        }
        void doLongClickCallback() {
            if (!isActionButtonLongClick()) menus++;
        }
    }

    @Test public void aCardLongPressOpensTheMenuAndPreservesSystemButtonHitsWithoutLeavingAnExpandedChild() {
        Context context = RuntimeEnvironment.getApplication();
        Content layout = new Content(context);
        View card = new View(context);
        layout.mContractedChild = card; layout.addView(card);
        SamsungRow row = new SamsungRow(layout);
        assertThrows(NullPointerException.class, row::doLongClickCallback); // reproduce issue #16
        try (ActionButtonHitTest scope = ActionButtonHitTest.begin(layout,card)) {
            assertNotNull(scope);
            assertSame(card,layout.mExpandedChild);
            assertSame(card,layout.mContractedChild);
            assertEquals(1,layout.getChildCount());
            row.doLongClickCallback(); assertEquals(1,row.menus);
            row.snoozeButtonHit=true; row.doLongClickCallback(); assertEquals(1,row.menus);
            row.snoozeButtonHit=false; row.bubbleButtonHit=true;
            row.doLongClickCallback(); assertEquals(1,row.menus);
            try (ActionButtonHitTest nested = ActionButtonHitTest.begin(layout,card)) {
                assertNull(nested);
            }
            assertSame(card,layout.mExpandedChild);
        }
        assertNull(layout.mExpandedChild);
        assertSame(card,layout.mContractedChild);
        assertEquals(1,layout.getChildCount());
    }

    @Test public void cleanupSurvivesAnExceptionAndLeavesStockOrReboundContentUntouched() {
        Context context = RuntimeEnvironment.getApplication();
        Content layout = new Content(context);
        View card = new View(context), stock = new View(context);
        layout.mContractedChild = card;
        assertThrows(IllegalStateException.class, () -> {
            try (ActionButtonHitTest scope = ActionButtonHitTest.begin(layout,card)) {
                assertNotNull(scope);
                throw new IllegalStateException("stock hit-test failure");
            }
        });
        assertNull(layout.mExpandedChild);
        try (ActionButtonHitTest scope = ActionButtonHitTest.begin(layout,card)) {
            assertNotNull(scope);
            layout.mExpandedChild = stock; // a stock rebind wins over cleanup
        }
        assertSame(stock,layout.mExpandedChild);
        assertNull(ActionButtonHitTest.begin(layout,card)); // existing expanded content
        layout.mExpandedChild = null; layout.mContractedChild = stock;
        assertNull(ActionButtonHitTest.begin(layout,card)); // ordinary row
        assertNull(layout.mExpandedChild);
    }
}
