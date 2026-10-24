package dev.android.dynamicisland.island.view;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import dev.android.dynamicisland.island.model.IslandItem;
import java.util.List;
import org.junit.Test;

/** Pure state logic split out of the island view: card selection, shade fade and display geometry. */
public class SceneMetricsTest {
    private static Scene scene() {
        return new Scene(new Springs());
    }

    @Test
    public void stackShowsLiveItemsThenNewestMinimizedOnesUpToTheLimit() {
        Scene scene = scene();
        scene.items.add(new IslandItem("a"));
        scene.items.add(new IslandItem("b"));
        scene.minimized.add(new IslandItem("m1"));
        scene.minimized.add(new IslandItem("m2"));
        scene.minimized.add(new IslandItem("m3"));
        List<IslandItem> shown = scene.stackItems(4);
        assertEquals(4, shown.size());
        assertEquals("a", shown.get(0).key);
        assertEquals("b", shown.get(1).key);
        assertEquals("m3", shown.get(2).key);
        assertEquals("m2", shown.get(3).key);
    }

    @Test
    public void shadeFadesOutSmoothlyAndIsGoneWhenPulledFar() {
        Scene scene = scene();
        assertEquals(1.0f, scene.shadeAlpha(), 1e-6f);
        scene.shade = 0.2f;
        float mid = scene.shadeAlpha();
        assertTrue(mid > 0.0f && mid < 1.0f);
        scene.shade = 0.4f;
        assertEquals(0.0f, scene.shadeAlpha(), 1e-6f);
        assertTrue(scene.shadePulled());
    }

    @Test
    public void findsCardsByItemKey() {
        Scene scene = scene();
        IslandItem item = new IslandItem("k");
        scene.cards.add(new Card(item, null));
        assertEquals(item, scene.findCard("k").item);
        assertEquals(null, scene.findCard("other"));
    }

    @Test
    public void geometryUpdateReportsOnlyRealChanges() {
        Metrics m = new Metrics(2.0f);
        assertTrue(m.update(1080, 540f, 66f, 90f, false));
        assertFalse(m.update(1080, 541f, 66.5f, 90f, false));
        assertTrue(m.update(1080, 540f, 66f, 90f, true));
        assertEquals(Math.min(1080 * IslandView.PAUSED_GLOW, 680f), m.maxPillW, 1e-3f);
        assertEquals(90f * 0.92f, m.restWidth(), 1e-4f);
    }

    @Test
    public void contentIsCentredButKeptInsideTheMargins() {
        Metrics m = new Metrics(1.0f);
        m.update(1000, 20f, 30f, 40f, false);
        // a narrow block near the left edge is pushed in to the margin
        assertEquals(m.cardMargin, m.centredLeft(100f), 1e-4f);
        // a block as wide as the screen is not moved
        assertEquals(20f - 500f, m.centredLeft(1000f), 1e-4f);
    }
}
