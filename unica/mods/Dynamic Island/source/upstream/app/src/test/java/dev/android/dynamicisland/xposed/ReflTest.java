package dev.android.dynamicisland.xposed;

import static org.junit.Assert.assertEquals;
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

}
