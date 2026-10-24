package dev.android.dynamicisland.xposed;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNull;
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
    public void nullTargetsGiveNeutralValues() {
        assertNull(Refl.get(null, "x"));
        assertFalse(Refl.set(null, "x", 1));
        assertNull(Refl.call(null, "x"));
        assertEquals(5, Refl.getInt(null, "x", 5));
    }

    @Test
    public void callsPrivateMethodsByNameAndArity() {
        assertEquals("abab", Refl.call(new Derived(), "twice", "ab"));
    }

    @Test
    public void proxyAnswersObjectBasicsAndDefaultsForPrimitives() {
        Listener l = (Listener) Refl.proxy(Listener.class, (self, m, args) -> null);
        assertEquals(0, l.count());
        assertFalse(l.flag());
        l.ping();
        assertTrue(l.equals(l));
        assertFalse(l.equals(new Object()));
        assertEquals(System.identityHashCode(l), l.hashCode());
        assertEquals("DynamicIslandProxy(Listener)", l.toString());
    }

    @Test
    public void proxyPassesHandlerResultsThrough() {
        Listener l = (Listener) Refl.proxy(Listener.class, (self, m, args) -> m.getName().equals("count") ? 42 : null);
        assertEquals(42, l.count());
    }

    @Test
    public void defaultValuesMatchPrimitiveTypes() {
        assertEquals(0L, Refl.defaultValue(long.class));
        assertEquals((short) 0, Refl.defaultValue(short.class));
        assertEquals((char) 0, Refl.defaultValue(char.class));
        assertNull(Refl.defaultValue(String.class));
        assertNull(Refl.defaultValue(void.class));
    }
}
