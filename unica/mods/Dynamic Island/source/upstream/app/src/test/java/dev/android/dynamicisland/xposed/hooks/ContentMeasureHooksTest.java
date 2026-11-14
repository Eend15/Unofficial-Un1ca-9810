package dev.android.dynamicisland.xposed.hooks;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;
import org.junit.Test;

public class ContentMeasureHooksTest {
    @Test
    public void hooksRunInOrderBeforeAndInReverseAfter() {
        List<String> log = new ArrayList<>();
        ContentMeasureHooks.add(p -> log.add("first before"), p -> log.add("first after"));
        ContentMeasureHooks.add(p -> log.add("second before"), p -> log.add("second after"));
        ContentMeasureHooks.before(null);
        ContentMeasureHooks.after(null);
        assertEquals(List.of("first before", "second before", "second after", "first after"), log);
    }
}
