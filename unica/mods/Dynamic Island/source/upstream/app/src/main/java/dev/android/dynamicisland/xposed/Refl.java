package dev.android.dynamicisland.xposed;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Reflection and hooking helpers for System UI internals, which are private API and change between
 * builds. Lookups are cached and every helper tolerates a missing target: the miss is logged once and
 * a neutral value (null, false, the default) comes back, so a renamed member costs one feature
 * rather than the whole module. Safe to call from any thread.
 */
public final class Refl {
    private static final Map<String, Field> FIELD_CACHE = new ConcurrentHashMap<>();
    private static final Map<String, Method> METHOD_CACHE = new ConcurrentHashMap<>();
    /** Lookups that already failed and were logged, so a hot path does not repeat the log line. */
    private static final Set<String> LOGGED_MISSES = ConcurrentHashMap.newKeySet();
    private static final Set<String> UNATTACHED = ConcurrentHashMap.newKeySet();

    private Refl() {
    }

    // ---- classes -------------------------------------------------------------------------------

    /**
     * Every name this class works with may list alternatives separated by {@code |}, the newest System UI build's
     * name first ("new.Name|old.Name"): the first one that exists on the running build is used, so one source line
     * serves several One UI versions. Alternatives other than the first that were used are kept for the report.
     */
    private static final String ALTERNATIVE_SEPARATOR = "\\|";
    private static final Set<String> FALLBACKS_USED = ConcurrentHashMap.newKeySet();

    private static String[] alternatives(String names) {
        return names.indexOf('|') < 0 ? new String[] {names} : names.split(ALTERNATIVE_SEPARATOR);
    }

    private static void noteFallback(String names, int index) {
        if (index > 0 && FALLBACKS_USED.add(names)) {
            String[] all = alternatives(names);
            XLog.i("older name used: " + all[index] + " (not " + all[0] + ")");
        }
    }

    /** The names that were found only under an older alternative, for the diagnostics report. */
    public static Set<String> fallbacksUsed() {
        return new TreeSet<>(FALLBACKS_USED);
    }

    /** Loads a class without initializing it; null (logged once) when {@code cl} does not have it. */
    public static Class<?> findClass(String name, ClassLoader cl) {
        String[] all = alternatives(name);
        for (int i = 0; i < all.length; i++) {
            try {
                Class<?> found = Class.forName(all[i], false, cl);
                noteFallback(name, i);
                return found;
            } catch (Throwable t) {
                // try the next alternative
            }
        }
        noteMiss("class:" + name, "class not found: " + name);
        return null;
    }

    /** True when the class exists in {@code cl}; unlike {@link #findClass} it never logs. */
    public static boolean hasClass(String name, ClassLoader cl) {
        for (String candidate : alternatives(name)) {
            try {
                Class.forName(candidate, false, cl);
                return true;
            } catch (Throwable t) {
                // try the next alternative
            }
        }
        return false;
    }

    /** Hooks that did not attach, so a System UI update that renamed something is obvious in the log. */
    public static Set<String> hookFailures() {
        return new TreeSet<>(UNATTACHED);
    }

    private static void noteMiss(String missKey, String message) {
        if (LOGGED_MISSES.add(missKey)) {
            XLog.i(message);
        }
    }

    // ---- fields --------------------------------------------------------------------------------

    /** The field of that name declared by {@code cls} or any superclass, made accessible; null if none. */
    public static Field field(Class<?> cls, String name) {
        String key = cls.getName() + "#" + name;
        Field known = FIELD_CACHE.get(key);
        if (known != null) {
            return known;
        }
        String[] all = alternatives(name);
        for (int i = 0; i < all.length; i++) {
            Class<?> level = cls;
            while (level != null) {
                try {
                    Field found = level.getDeclaredField(all[i]);
                    found.setAccessible(true);
                    FIELD_CACHE.put(key, found);
                    noteFallback(name, i);
                    return found;
                } catch (NoSuchFieldException notHere) {
                    level = level.getSuperclass();
                }
            }
        }
        noteMiss("field:" + key, "field not found: " + key);
        return null;
    }

    private static Field fieldOf(Object target, String name) {
        return target == null ? null : field(target.getClass(), name);
    }

    private static Object read(Field f, Object target) {
        if (f == null) {
            return null;
        }
        try {
            return f.get(target);
        } catch (Throwable t) {
            return null;
        }
    }

    public static Object get(Object obj, String name) {
        return read(fieldOf(obj, name), obj);
    }

    public static Object getStatic(Class<?> cls, String name) {
        return read(cls == null ? null : field(cls, name), null);
    }

    /** Writes a field; false when the object, the field or the write itself is not available. */
    public static boolean set(Object obj, String name, Object value) {
        Field f = fieldOf(obj, name);
        if (f == null) {
            return false;
        }
        try {
            f.set(obj, value);
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    public static int getInt(Object obj, String name, int def) {
        Object value = get(obj, name);
        return value instanceof Integer ? (Integer) value : def;
    }

    /** Like {@link #getInt} but also accepts boxed numbers (Kotlin {@code Integer?} fields). */
    public static int getObjectInt(Object obj, String name, int def) {
        Object value = get(obj, name);
        return value instanceof Number ? ((Number) value).intValue() : def;
    }

    public static boolean getBool(Object obj, String name, boolean def) {
        Object value = get(obj, name);
        return value instanceof Boolean ? (Boolean) value : def;
    }

    // ---- methods -------------------------------------------------------------------------------

    /**
     * The first method called {@code name} with {@code paramCount} parameters, searching the class and
     * then its superclasses; overloads of equal arity are not told apart.
     */
    public static Method method(Class<?> cls, String name, int paramCount) {
        String key = cls.getName() + "#" + name + "/" + paramCount;
        Method known = METHOD_CACHE.get(key);
        if (known != null) {
            return known;
        }
        String[] all = alternatives(name);
        for (int i = 0; i < all.length; i++) {
            for (Class<?> level = cls; level != null; level = level.getSuperclass()) {
                for (Method candidate : level.getDeclaredMethods()) {
                    if (candidate.getParameterCount() == paramCount && candidate.getName().equals(all[i])) {
                        candidate.setAccessible(true);
                        METHOD_CACHE.put(key, candidate);
                        noteFallback(name, i);
                        return candidate;
                    }
                }
            }
        }
        noteMiss("method:" + key, "method not found: " + key);
        return null;
    }

    public static Object call(Object obj, String name, Object... args) {
        if (obj == null) {
            return null;
        }
        Method m = method(obj.getClass(), name, args.length);
        if (m == null) {
            return null;
        }
        try {
            return m.invoke(obj, args);
        } catch (Throwable t) {
            XLog.e("call failed: " + name, t);
            return null;
        }
    }

    public static Object callStatic(Class<?> cls, String name, Object... args) {
        Method m = cls == null ? null : method(cls, name, args.length);
        if (m == null) {
            return null;
        }
        try {
            return m.invoke(null, args);
        } catch (Throwable t) {
            XLog.e("static call failed: " + name, t);
            return null;
        }
    }

    // ---- hooks ---------------------------------------------------------------------------------

    /** Hooks every non-abstract method of that name declared by {@code cls}; returns how many. */
    public static int hookAll(Class<?> cls, String name, XC_MethodHook hook) {
        if (cls == null) {
            return 0;
        }
        int hooked = hookFirstAlternative(cls, name, hook);
        if (hooked == 0) {
            UNATTACHED.add(cls.getName() + "#" + name);
            XLog.i("nothing to hook: " + cls.getName() + "#" + name);
        }
        return hooked;
    }

    /** Hooks the methods of the first method-name alternative that exists on {@code cls}. */
    private static int hookFirstAlternative(Class<?> cls, String names, XC_MethodHook hook) {
        String[] all = alternatives(names);
        for (int i = 0; i < all.length; i++) {
            int hooked = 0;
            for (Method m : cls.getDeclaredMethods()) {
                if (!m.getName().equals(all[i]) || Modifier.isAbstract(m.getModifiers())) {
                    continue;
                }
                XposedBridge.hookMethod(m, hook);
                hooked++;
            }
            if (hooked > 0) {
                noteFallback(names, i);
                return hooked;
            }
        }
        return 0;
    }

    /** Class and method names may both list alternatives (see {@link #findClass}); the first pair that hooks wins. */
    public static int hookAll(ClassLoader cl, String className, String name, XC_MethodHook hook) {
        String[] classes = alternatives(className);
        for (int i = 0; i < classes.length; i++) {
            Class<?> cls = hasClass(classes[i], cl) ? findClass(classes[i], cl) : null;
            if (cls == null) {
                continue;
            }
            int hooked = hookFirstAlternative(cls, name, hook);
            if (hooked > 0) {
                noteFallback(className, i);
                return hooked;
            }
        }
        UNATTACHED.add(className + "#" + name);
        XLog.i("nothing to hook: " + className + "#" + name);
        return 0;
    }

    public static int hookConstructors(ClassLoader cl, String className, XC_MethodHook hook) {
        Class<?> cls = findClass(className, cl); // alternatives are tried by findClass
        if (cls == null) {
            UNATTACHED.add(className + "#<init>");
            return 0;
        }
        Set<?> hooked = XposedBridge.hookAllConstructors(cls, hook);
        int count = hooked == null ? 0 : hooked.size();
        if (count == 0) {
            UNATTACHED.add(className + "#<init>");
            XLog.i("no constructors hooked: " + className);
        }
        return count;
    }

    public static Member memberOf(XC_MethodHook.MethodHookParam p) {
        return p.method;
    }

    // ---- proxies -------------------------------------------------------------------------------

    /**
     * A dynamic proxy for a System UI listener interface. {@code handler} sees the interface calls; the
     * {@code Object} basics are answered here and handler failures are contained (see {@link #answer}).
     */
    public static Object proxy(final Class<?> iface, final InvocationHandler handler) {
        return Proxy.newProxyInstance(iface.getClassLoader(), new Class[]{iface},
                (self, method, args) -> answer(iface, handler, self, method, args));
    }

    /**
     * Answers one call on a {@link #proxy}: {@code equals}/{@code hashCode}/{@code toString} locally,
     * anything else through the handler. Its exception, or a null for a primitive return type, never
     * reaches the caller - these proxies are listeners invoked inside System UI's own loops.
     */
    private static Object answer(Class<?> iface, InvocationHandler handler, Object self, Method m, Object[] args) throws Throwable {
        int argc = args == null ? 0 : args.length;
        String name = m.getName();
        if (name.equals("equals") && argc == 1 && m.getParameterTypes()[0] == Object.class) {
            return self == args[0];
        }
        if (name.equals("hashCode") && argc == 0) {
            return System.identityHashCode(self);
        }
        if (name.equals("toString") && argc == 0) {
            return "DynamicIslandProxy(" + iface.getSimpleName() + ")";
        }
        Object result = null;
        try {
            result = handler.invoke(self, m, args);
        } catch (Throwable t) {
            XLog.once("proxy " + iface.getSimpleName() + "." + name, t);
        }
        return result != null ? result : defaultValue(m.getReturnType());
    }

    /** The value a primitive-returning method gets when there is nothing to return; null for objects and void. */
    public static Object defaultValue(Class<?> type) {
        if (type == Boolean.TYPE) {
            return Boolean.FALSE;
        } else if (type == Integer.TYPE) {
            return 0;
        } else if (type == Long.TYPE) {
            return 0L;
        } else if (type == Float.TYPE) {
            return 0f;
        } else if (type == Double.TYPE) {
            return 0d;
        } else if (type == Short.TYPE) {
            return (short) 0;
        } else if (type == Byte.TYPE) {
            return (byte) 0;
        } else if (type == Character.TYPE) {
            return (char) 0;
        }
        return null;
    }
}
