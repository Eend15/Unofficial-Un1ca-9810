package dev.android.dynamicisland.xposed;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertSame;
import static org.junit.Assert.assertTrue;

import org.junit.Test;

public class ReflTest {
    public interface Listener {
        int count();

        boolean flag();

        void ping();
    }

    @SuppressWarnings("unused")
    private static class Base {
        private int secret = 7;
        private Integer boxed = 9;
    }

    private static class Derived extends Base {
        private boolean on = true;

        private String twice(String s) {
            return s + s;
        }
    }

    @Test
    public void readsPrivateFieldsAcrossTheHierarchy() {
        Derived d = new Derived();
        assertEquals(7, Refl.getInt(d, "secret", -1));
        assertEquals(9, Refl.getObjectInt(d, "boxed", -1));
        assertTrue(Refl.getBool(d, "on", false));
        assertTrue(Refl.set(d, "secret", 11));
        assertEquals(11, Refl.getInt(d, "secret", -1));
    }

    @Test
    public void callsPrivateMethodsByNameAndArity() {
        assertEquals("abab", Refl.call(new Derived(), "twice", "ab"));
    }

    @Test
    public void aLookupThatFailedKeepsFailingWithoutSearchingAgain() {
        Derived d = new Derived();
        for (int i = 0; i < 3; i++) {
            assertNull(Refl.field(Derived.class, "noSuchField"));
            assertNull(Refl.get(d, "noSuchField"));
            assertNull(Refl.method(Derived.class, "noSuchMethod", 1));
            assertNull(Refl.call(d, "noSuchMethod", 1));
        }
        // the miss of one name or arity does not hide the hits of others
        assertNotNull(Refl.field(Derived.class, "on"));
        assertNotNull(Refl.method(Derived.class, "twice", 1));
        assertNull(Refl.method(Derived.class, "twice", 2));
        assertEquals("abab", Refl.call(d, "twice", "ab"));
    }

    @Test
    public void aFoundMemberIsTheSameObjectEveryTime() {
        assertSame(Refl.field(Derived.class, "secret"), Refl.field(Derived.class, "secret"));
        assertSame(Refl.method(Derived.class, "twice", 1), Refl.method(Derived.class, "twice", 1));
        assertNotNull(Refl.field(Derived.class, "missing|secret"));
    }

    @Test
    public void methodsWithManyParametersAreStillFound() {
        class Wide {
            @SuppressWarnings("unused")
            int sum(int a, int b, int c, int d, int e, int f, int g, int h, int i) {
                return a + b + c + d + e + f + g + h + i;
            }
        }
        assertEquals(45, Refl.call(new Wide(), "sum", 1, 2, 3, 4, 5, 6, 7, 8, 9));
    }
}
