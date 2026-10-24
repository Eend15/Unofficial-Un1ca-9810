package dev.android.dynamicisland.xposed;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

/** A name may list alternatives, newest System UI build first; the first one that exists is used. */
public class ReflAlternativesTest {
    @SuppressWarnings("unused")
    private static final class Sample {
        private final String current = "now";
        String older = "before";

        int value(int a) {
            return a + 1;
        }

        int oldName(int a, int b) {
            return a + b;
        }
    }

    private final ClassLoader cl = getClass().getClassLoader();

    @Test
    public void firstExistingClassWins() {
        assertEquals(String.class, Refl.findClass("no.such.NewName|java.lang.String|java.lang.Integer", cl));
        assertEquals(Integer.class, Refl.findClass("java.lang.Integer|java.lang.String", cl));
        assertNull(Refl.findClass("no.such.A|no.such.B", cl));
        assertTrue(Refl.hasClass("no.such.A|java.lang.String", cl));
        assertFalse(Refl.hasClass("no.such.A|no.such.B", cl));
    }

    @Test
    public void fieldAndMethodAlternatives() {
        Sample sample = new Sample();
        assertEquals("now", Refl.get(sample, "gone|current"));
        assertEquals("before", Refl.get(sample, "older|current"));
        assertNull(Refl.get(sample, "gone|alsoGone"));
        assertNotNull(Refl.method(Sample.class, "renamed|value", 1));
        assertEquals(4, Refl.call(sample, "renamed|oldName", 1, 3));
        assertNull(Refl.call(sample, "renamed|alsoRenamed", 1));
    }

    @Test
    public void olderNamesAreReportedForTheDiagnostics() {
        Refl.findClass("no.such.Newer|java.lang.Long", cl);
        assertTrue(Refl.fallbacksUsed().contains("no.such.Newer|java.lang.Long"));
    }
}
