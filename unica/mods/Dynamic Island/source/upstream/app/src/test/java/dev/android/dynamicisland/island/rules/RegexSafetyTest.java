package dev.android.dynamicisland.island.rules;
import static org.junit.Assert.*;
import org.junit.Test;
public class RegexSafetyTest {
    @Test public void wrappersCannotHideARepeatedAmbiguousAlternative() {
        for(String pattern:new String[]{"(a|aa)+$","((a|aa))+$","(?:(?:a|aa))+$","((((a|aa)))){1,}$","((a+))+$"})
            assertNull("unsafe structure must be rejected before entering either the JVM or ICU engine: "+pattern,Rx.compile(pattern,false));
        assertNotNull(Rx.compile("((foo|bar))",false));
        assertNotNull(Rx.compile("[()|+]+",false));
        assertNotNull(Rx.compile("((a|aa)){2}",false));
    }
}
