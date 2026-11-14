package dev.android.dynamicisland.island.view;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import dev.android.dynamicisland.island.model.IslandItem;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.RuntimeEnvironment;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35, qualifiers = "mdpi")
public class FullWidthPillTest {
    @Test
    public void aFullWidthItemTakesTheWidestPillAndOthersKeepTheirOwnWidth() {
        IslandView view = new IslandView(RuntimeEnvironment.getApplication(), IslandHost.NONE);
        view.setGeometry(360, 180, 35, 22, false);
        IslandItem plain = new IslandItem("plain");
        plain.trailing = IslandItem.Trailing.TEXT;
        plain.trailingText = "54%";
        IslandItem wide = new IslandItem("wide");
        wide.trailing = IslandItem.Trailing.TEXT;
        wide.trailingText = "54%";
        wide.fullWidth = true;
        float own = new CompactContent(view, plain).desiredWidth();
        float widest = new CompactContent(view, wide).desiredWidth();
        assertTrue("the plain pill is narrower than the widest it may be", own < widest);
        assertEquals("it fills the status bar, not just the widest ordinary pill", view.fullPillW, widest, 0.01f);
        assertTrue("and that is wider than an ordinary pill may be", view.fullPillW > view.maxPillW);
        assertEquals("as long for its height as the iPhone's charging pill", 8.8f, view.fullPillW / (float) org.robolectric.util.ReflectionHelpers.getField(
                org.robolectric.util.ReflectionHelpers.getField(view, "metrics"), "pillH"), 0.01f);
    }

    @Test
    public void aFullWidthPillKeepsTheWordOnItsLeftAndThePercentageOnItsRight() {
        IslandView view = new IslandView(RuntimeEnvironment.getApplication(), IslandHost.NONE);
        view.setGeometry(360, 180, 35, 22, false);
        IslandItem wide = new IslandItem("wide");
        wide.title = "Charging";
        wide.compactLabel = wide.title;
        wide.trailing = IslandItem.Trailing.TEXT;
        wide.trailingText = "54%";
        wide.fullWidth = true;
        CompactContent content = new CompactContent(view, wide);
        assertEquals("Charging", org.robolectric.util.ReflectionHelpers.getField(content, "leadingLabel"));
        assertEquals("54%", org.robolectric.util.ReflectionHelpers.getField(content, "trailText"));
        IslandItem plain = new IslandItem("plain");
        plain.title = "Charging";
        plain.trailing = IslandItem.Trailing.TEXT;
        plain.trailingText = "54%";
        assertEquals("a pill that is not full width shows no label", null,
                org.robolectric.util.ReflectionHelpers.getField(new CompactContent(view, plain), "leadingLabel"));
    }

    @Test
    public void aFullWidthPillIsNotTheWidthOtherPillsAreKeptAt() {
        try {
            dev.android.dynamicisland.settings.ModuleSettings.applyPlacementPreview(new android.content.Intent()
                    .putExtra(dev.android.dynamicisland.settings.ModuleSettings.KEY_PILL_KEEP_WIDTH, true));
            IslandView view = new IslandView(RuntimeEnvironment.getApplication(), IslandHost.NONE);
            view.setGeometry(360, 180, 35, 22, false);
            Scene scene = org.robolectric.util.ReflectionHelpers.getField(view, "scene");
            IslandItem plain = new IslandItem("plain");
            plain.trailing = IslandItem.Trailing.TEXT;
            plain.trailingText = "54%";
            IslandItem wide = new IslandItem("wide");
            wide.trailing = IslandItem.Trailing.TEXT;
            wide.trailingText = "54%";
            wide.fullWidth = true;
            float before = scene.pillWidthFor(new CompactContent(view, plain));
            float full = scene.pillWidthFor(new CompactContent(view, wide));
            float after = scene.pillWidthFor(new CompactContent(view, plain));
            assertTrue(full > before);
            assertEquals("the pill goes back to its own width after the wide one", before, after, 0.01f);
        } finally {
            dev.android.dynamicisland.settings.ModuleSettings.applyPlacementPreview(new android.content.Intent()
                    .putExtra(dev.android.dynamicisland.settings.ModuleSettings.KEY_PILL_KEEP_WIDTH, false));
        }
    }

    @Test
    public void theIslandSaysItTakesTheWholeStatusBarOnlyWhileAFullWidthPopupIsShown() {
        IslandView view = new IslandView(RuntimeEnvironment.getApplication(), IslandHost.NONE);
        view.setGeometry(360, 180, 35, 22, false);
        view.layout(0, 0, 360, 300);
        assertTrue("nothing shown: no", !view.takesWholeStatusBar());
        IslandItem plain = new IslandItem("plain");
        plain.trailing = IslandItem.Trailing.TEXT;
        plain.trailingText = "54%";
        java.util.List<IslandItem> items = new java.util.ArrayList<>();
        items.add(plain);
        view.setItems(items);
        assertTrue("an ordinary pill: no", !view.takesWholeStatusBar());
        IslandItem wide = new IslandItem("wide");
        wide.trailing = IslandItem.Trailing.TEXT;
        wide.trailingText = "54%";
        wide.fullWidth = true;
        items.clear();
        items.add(wide);
        view.setItems(items);
        assertTrue("a full-width popup: yes", view.takesWholeStatusBar());
        items.clear();
        items.add(plain);
        view.setItems(items);
        assertTrue("and back to no once it is gone", !view.takesWholeStatusBar());
    }
}
