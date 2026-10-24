package dev.android.dynamicisland.settings;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import java.util.Collections;
import org.junit.Test;

public class AppFilterTest {
    @Test
    public void blockListKeepsEverythingButTheListed() {
        AppFilter f = new AppFilter(false, Collections.singleton("a.b"));
        assertFalse(f.allows("a.b"));
        assertTrue(f.allows("c.d"));
        assertTrue(f.allows(null));
        assertTrue(AppFilter.OFF.allows("a.b"));
    }

    @Test
    public void allowListShowsOnlyTheListed() {
        AppFilter f = new AppFilter(true, Collections.singleton("a.b"));
        assertTrue(f.allows("a.b"));
        assertFalse(f.allows("c.d"));
        assertTrue(f.allows(null));
    }
}
