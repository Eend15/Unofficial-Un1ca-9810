package dev.android.dynamicisland.xposed.hooks;

import static org.junit.Assert.*;
import static org.robolectric.util.ReflectionHelpers.ClassParameter.from;

import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import android.widget.FrameLayout;
import com.android.systemui.statusbar.phone.ongoingactivity.OngoingActivityDataHelper;
import dev.android.dynamicisland.island.IslandController;
import dev.android.dynamicisland.island.view.IslandHost;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.lang.reflect.Proxy;
import java.time.Duration;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;
import org.robolectric.shadows.ShadowSystemClock;
import org.robolectric.util.ReflectionHelpers;

/** Exercise the system quick-panel signal, not the island's expanded activity list. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35)
public class QuickPanelGateTest {
    public static class Data {
        public String mNotiID = "quick-panel-probe", mPackageName = "example.sports", mPrimaryInfo = "Sports";
        public boolean mIsMediaOngoingData;
        public Object mNotificationEntry, mPendingIntent;
        public android.widget.RemoteViews mCustomExpandedCardView;
    }
    public static class Entry { public String getKey() { return "quick-panel-probe"; } }
    public static class TrackedRemoteViews extends android.widget.RemoteViews {
        int applies, reapplies;
        TrackedRemoteViews() { super("android", android.R.layout.simple_list_item_1); }
        @Override public View apply(Context context, android.view.ViewGroup parent) {
            applies++;
            return super.apply(context, parent);
        }
        @Override public void reapply(Context context, View view) {
            reapplies++;
            super.reapply(context, view);
        }
    }
    public static class Content extends FrameLayout {
        public View mContractedChild, mExpandedChild, mHeadsUpChild;
        public boolean mExpandable = true;
        public int mSmallHeight = 80, mMinContractedHeight = 80, mHeadsUpHeight = 80;
        Content(Context context) { super(context); mContractedChild = new View(context); addView(mContractedChild); }
        public void setContractedChild(View next) {
            if (mContractedChild != null) removeView(mContractedChild);
            mContractedChild = next;
            if (next != null) addView(next);
        }
        public void setExpandedChild(View next) { mExpandedChild = next; }
        public void setHeadsUpChild(View next) { mHeadsUpChild = next; }
        public void updateExpandButtons(boolean value) { mExpandable = value; }
        public void selectLayout(boolean animate, boolean force) { }
    }
    public static class ProbeExpandableNotificationRow extends FrameLayout {
        public final Content mPrivateLayout;
        public final Entry mEntryAdapter = new Entry();
        public boolean mExpandable = true;
        int heightChanges;
        ProbeExpandableNotificationRow(Context context) {
            super(context); mPrivateLayout = new Content(context); addView(mPrivateLayout);
        }
        public void notifyHeightChanged(String reason, boolean animate) { heightChanges++; }
        public void initBackground() { }
        public void updateBackground() { }
    }

    @Test public void compactPillFadesWithoutRebindingRowsAndRealCardHandoffsStillWork() throws Exception {
        Context context = RuntimeEnvironment.getApplication();
        Object previous = ReflectionHelpers.getStaticField(IslandController.class, "instance");
        var prefs = context.getSharedPreferences("quick-panel-gate", 0);
        prefs.edit().clear().commit(); ModuleSettings.configurePreview(prefs);
        var store = OngoingActivityDataHelper.mOngoingActivityLists;
        Data initial = new Data();
        TrackedRemoteViews firstRemote = new TrackedRemoteViews();
        initial.mCustomExpandedCardView = firstRemote;
        initial.mCustomExpandedCardView.setTextViewText(android.R.id.text1, "Score 1");
        store.clear(); store.add(initial);
        IslandView overlay = null;
        ProbeExpandableNotificationRow row = new ProbeExpandableNotificationRow(context);
        row.layout(0, 0, 360, 180); row.mPrivateLayout.layout(0, 0, 360, 180);
        View original = row.mPrivateLayout.mContractedChild;
        try {
            IslandController controller = ReflectionHelpers.callConstructor(IslandController.class,
                    from(Context.class, context), from(ClassLoader.class, getClass().getClassLoader()));
            ReflectionHelpers.setStaticField(IslandController.class, "instance", controller);
            int[] frameNotifications = {0};
            IslandHost host = (IslandHost) Proxy.newProxyInstance(getClass().getClassLoader(),
                    new Class<?>[]{IslandHost.class}, (proxy, method, args) -> {
                        if (method.getName().equals("onShadeFade")) return true;
                        if (method.getName().equals("hasMinimized")) return false;
                        if (method.getName().equals("onIslandFrame")) { frameNotifications[0]++; controller.onIslandFrame(); }
                        return null;
                    });
            overlay = new IslandView(context, host);
            ReflectionHelpers.setField(ReflectionHelpers.getField(controller, "placement"), "view", overlay);
            overlay.setGeometry(360, 180, 30, 18, false); overlay.layout(0, 0, 360, 1000);
            var item = ShadeLiveCards.item("quick-panel-probe"); assertNotNull(item);
            overlay.setItems(List.of(item)); step(overlay, 120);
            var bind = ShadeLiveCards.class.getDeclaredMethod("bind", Object.class); bind.setAccessible(true); bind.invoke(null, row);
            View card = row.mPrivateLayout.mContractedChild;
            assertTrue(card instanceof LiveCardView);
            View remoteContent = ((LiveCardView) card).getChildAt(0);
            assertNotNull(remoteContent);
            int heightChanges = row.heightChanges;
            for (int refresh = 0; refresh < 20; refresh++) {
                ShadeLiveCards.refreshVisibleCards();
                assertSame("unchanged reconciliation retains the card and its remote content",
                        card, row.mPrivateLayout.mContractedChild);
                assertSame(remoteContent, ((LiveCardView) card).getChildAt(0));
            }
            assertEquals("unchanged reconciliation sends no height-change notifications",
                    heightChanges, row.heightChanges);
            assertEquals("unchanged refreshes never reinflate custom content", 1, firstRemote.applies);
            assertEquals("unchanged refreshes never restart custom RemoteViews actions", 0, firstRemote.reapplies);
            Data updated = new Data(); updated.mPrimaryInfo = "Updated sports score";
            TrackedRemoteViews secondRemote = new TrackedRemoteViews();
            updated.mCustomExpandedCardView = secondRemote;
            updated.mCustomExpandedCardView.setTextViewText(android.R.id.text1, "Score 2");
            store.clear(); store.add(updated);
            ShadeLiveCards.refreshVisibleCards();
            assertSame("a content update reuses the installed host", card, row.mPrivateLayout.mContractedChild);
            item = ShadeLiveCards.item("quick-panel-probe");
            assertSame("the retained card receives the new live item", item, ReflectionHelpers.getField(card, "current"));
            ((LiveCardView) card).heightFor(360);
            assertSame("changed RemoteViews are reapplied to the existing content", remoteContent,
                    ((LiveCardView) card).getChildAt(0));
            assertEquals("Score 2", ((android.widget.TextView) remoteContent.findViewById(android.R.id.text1)).getText().toString());
            assertEquals(0, secondRemote.applies);
            assertEquals("an actual update reapplies its actions exactly once", 1, secondRemote.reapplies);
            CardRowState retained = CardRowState.installedIn(row.mPrivateLayout);
            retained.exposeOriginals();
            ShadeLiveCards.refreshVisibleCards();
            assertSame("a nested refresh must leave the stock reapply scope alone", original, row.mPrivateLayout.mContractedChild);
            assertTrue(retained.concealOriginals());
            row.mExpandable = true; row.mPrivateLayout.mExpandable = true;
            ShadeLiveCards.refreshVisibleCards();
            assertSame(card, row.mPrivateLayout.mContractedChild);
            assertFalse("stock updates must not make the custom card expandable", row.mExpandable);
            assertFalse(row.mPrivateLayout.mExpandable);
            heightChanges = row.heightChanges;
            overlay.setItems(List.of(item)); step(overlay, 120);
            for (int cycle = 0; cycle < 50; cycle++) {
                assertTrue(overlay.visibleAlpha() > .99f);
                controller.setShadeExpansion(.1f); step(overlay, 1);
                assertTrue("the pill shrinks gradually", overlay.visibleAlpha() > 0);
                step(overlay, 119); assertTrue(overlay.visibleAlpha() < .01f);
                int notifications = frameNotifications[0];
                controller.setShadeExpansion(.5f); controller.setShadeExpansion(1f);
                assertFalse("hidden pill does not queue frames for panel dragging",
                        (boolean) ReflectionHelpers.getField(overlay, "frameScheduled"));
                assertEquals(notifications, frameNotifications[0]);
                controller.setShadeExpansion(0); step(overlay, 150);
                assertTrue(overlay.visibleAlpha() > .99f);
                assertSame("system panel gestures retain the notification card", card, row.mPrivateLayout.mContractedChild);
            }
            assertEquals("no notification height changes from 50 compact-panel cycles", heightChanges, row.heightChanges);
            RuntimeEnvironment.setQualifiers("+night");
            ShadeLiveCards.refreshVisibleCards();
            assertNotSame("a system theme change must invalidate the old rendering context",
                    card, row.mPrivateLayout.mContractedChild);
            card = row.mPrivateLayout.mContractedChild;
            ShadeLiveCards.refreshVisibleCards(true);
            assertNotSame("a settings change still rebuilds cached geometry", card, row.mPrivateLayout.mContractedChild);
            store.clear(); ShadeLiveCards.refreshVisibleCards();
            assertSame("a withdrawn activity restores its native row", original, row.mPrivateLayout.mContractedChild);
            store.add(updated); ShadeLiveCards.refreshVisibleCards();
            assertTrue(row.mPrivateLayout.mContractedChild instanceof LiveCardView);
            CardRowState reinflated = CardRowState.installedIn(row.mPrivateLayout);
            reinflated.exposeOriginals();
            View newerOriginal = new View(context);
            row.mPrivateLayout.setContractedChild(newerOriginal);
            assertFalse("native reinflation must retire the old binding", reinflated.concealOriginals());
            ShadeLiveCards.refreshVisibleCards();
            assertTrue(row.mPrivateLayout.mContractedChild instanceof LiveCardView);
            original = newerOriginal;
            // Removing the broad shade-toggle refresh must not break real overlay-card handoffs.
            overlay.peek(item, 60000); assertTrue(overlay.isExpanded());
            assertSame("original shade row while the overlay owns the card", original, row.mPrivateLayout.mContractedChild);
            controller.setShadeExpansion(1); step(overlay, 150);
            assertTrue("shade copy returns after the overlay content fades",
                    row.mPrivateLayout.mContractedChild instanceof LiveCardView);
            CardRowState.installedIn(row.mPrivateLayout).restore();
            assertSame(original, row.mPrivateLayout.mContractedChild);
        } finally {
            if (overlay != null) {
                android.view.Choreographer.getInstance().removeFrameCallback(overlay);
                overlay.setItems(List.of());
                android.view.Choreographer.getInstance().removeFrameCallback(overlay);
            }
            CardRowState state = CardRowState.installedIn(row.mPrivateLayout);
            if (state != null) state.restore();
            ReflectionHelpers.setStaticField(IslandController.class, "instance", previous);
            store.clear(); prefs.edit().clear().commit(); ModuleSettings.configurePreview(prefs);
        }
    }

    private static void step(IslandView view, int frames) {
        for (int i = 0; i < frames; i++) {
            ShadowSystemClock.advanceBy(Duration.ofMillis(16));
            view.doFrame(SystemClock.uptimeMillis() * 1_000_000L);
        }
    }
}
