package dev.android.dynamicisland.nativebridge;

import android.app.Application;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.callbacks.XC_LoadPackage;
import dev.android.dynamicisland.island.IslandController;
import dev.android.dynamicisland.xposed.Entry;
import java.lang.reflect.*;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/** Static call-site adapter. No ART patching, process injection or external framework. */
public final class NativeRuntime {
    public static volatile boolean enabled = true;
    public static Application application;

    private static final class CallSite {
        final Method original;
        final Method wrapper;
        CallSite(Method original, Method wrapper) {
            this.original = original;
            this.wrapper = wrapper;
        }
    }

    private static final Map<Member, List<XC_MethodHook>> hooks = new ConcurrentHashMap<>();
    private static final Map<String, CallSite> callSites = new ConcurrentHashMap<>();
    private static final String KEY = "unica_dynamic_island_enabled";
    private static final Uri PROVIDER_URI = Uri.parse("content://io.mesalabs.unica.dynamicisland.settings");
    private static volatile long lastRestartToken = -1L;

    public static String descriptor(Class<?> c) {
        if (c.isArray()) return c.getName().replace('.', '/');
        if (!c.isPrimitive()) return "L" + c.getName().replace('.', '/') + ";";
        if (c == void.class) return "V";
        if (c == boolean.class) return "Z";
        if (c == byte.class) return "B";
        if (c == char.class) return "C";
        if (c == short.class) return "S";
        if (c == int.class) return "I";
        if (c == long.class) return "J";
        if (c == float.class) return "F";
        return "D";
    }

    public static String signature(Member member) {
        Class<?>[] params = member instanceof Method
                ? ((Method) member).getParameterTypes()
                : ((Constructor<?>) member).getParameterTypes();
        StringBuilder s = new StringBuilder(member instanceof Method ? member.getName() : "<init>").append('(');
        for (Class<?> p : params) s.append(descriptor(p));
        return s.append(')').append(member instanceof Method ? descriptor(((Method) member).getReturnType()) : "V").toString();
    }

    public static String id(String signature) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(signature.getBytes(StandardCharsets.UTF_8));
            StringBuilder s = new StringBuilder("unica_di_");
            for (int i = 0; i < 8; i++) s.append(String.format(Locale.ROOT, "%02x", digest[i]));
            return s.toString();
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }

    public static boolean register(Member member, XC_MethodHook callback) {
        if (member instanceof Method
                && member.getDeclaringClass() == android.app.Instrumentation.class
                && member.getName().equals("callApplicationOnCreate")) {
            // Fired explicitly from the SystemUIApplication lifecycle bridge.
        } else if (member instanceof Method) {
            Method m = (Method) member;
            Class<?> owner = m.getDeclaringClass();
            try {
                Method orig = owner.getDeclaredMethod(id(signature(m)), m.getParameterTypes());
                orig.setAccessible(true);
                m.setAccessible(true);
                callSites.put(owner.getName() + "#" + signature(m), new CallSite(orig, m));
            } catch (NoSuchMethodException e) {
                if (owner.getName().startsWith("android.")) {
                    // Optional framework micro-hooks (ShadePerf / Notification.isColorized) are skipped cleanly.
                    Log.w("UnicaDynamicIsland", "Unsupported framework hook: " + member);
                    return false;
                }
                throw new UnsupportedOperationException("No static call-site: " + member, e);
            }
        } else {
            if (!Coverage.constructors.contains(member.getDeclaringClass().getName() + "#" + signature(member))) {
                throw new UnsupportedOperationException("No constructor call-site: " + member);
            }
        }
        hooks.computeIfAbsent(member, k -> new CopyOnWriteArrayList<>()).add(callback);
        return true;
    }

    public static void checkRestartToken() {
        try {
            if (application == null) return;
            Bundle b = application.getContentResolver().call(PROVIDER_URI, "all", null, null);
            if (b == null) return;
            long token = b.getLong("unica_restart_token", 0L);
            if (lastRestartToken < 0L) {
                lastRestartToken = token;
            } else if (token > lastRestartToken) {
                lastRestartToken = token;
                Log.i("UnicaDynamicIsland", "Restart requested from Dynamic Island settings; recreating SystemUI");
                new Handler(Looper.getMainLooper()).postDelayed(
                        () -> android.os.Process.killProcess(android.os.Process.myPid()), 150);
            }
        } catch (Throwable ignored) {
        }
    }

    public static void init(Application app, ClassLoader systemLoader) throws Throwable {
        application = app;
        enabled = Settings.Global.getInt(app.getContentResolver(), KEY, 1) == 1;
        checkRestartToken();
        app.getContentResolver().registerContentObserver(
                Settings.Global.getUriFor(KEY),
                false,
                new ContentObserver(new Handler(Looper.getMainLooper())) {
                    @Override
                    public void onChange(boolean self) {
                        boolean next = Settings.Global.getInt(app.getContentResolver(), KEY, 1) == 1;
                        if (next == enabled) return;
                        enabled = next;
                        if (!next) {
                            IslandController island = IslandController.get();
                            if (island != null) island.onDisabled();
                        }
                        // Recreate just SystemUI so both the native island and stock capsule get
                        // a clean lifecycle. No reboot, permission changes or cached hidden views.
                        new Handler(Looper.getMainLooper()).postDelayed(
                                () -> android.os.Process.killProcess(android.os.Process.myPid()), 250);
                    }
                });
        try {
            app.getContentResolver().registerContentObserver(
                    PROVIDER_URI,
                    true,
                    new ContentObserver(new Handler(Looper.getMainLooper())) {
                        @Override
                        public void onChange(boolean self) {
                            checkRestartToken();
                        }
                    });
        } catch (Throwable ignored) {
        }
        if (!enabled) {
            Settings.Global.putString(
                    app.getContentResolver(),
                    "dynamicisland_report",
                    "Built-in Dynamic Island is disabled; stock SystemUI active.");
            return;
        }
        XC_LoadPackage.LoadPackageParam p = new XC_LoadPackage.LoadPackageParam();
        p.packageName = p.processName = "com.android.systemui";
        p.appInfo = app.getApplicationInfo();
        p.classLoader = systemLoader;
        new Entry().handleLoadPackage(p);
        Method onCreate = android.app.Instrumentation.class.getDeclaredMethod("callApplicationOnCreate", Application.class);
        XC_MethodHook.MethodHookParam frame = new XC_MethodHook.MethodHookParam();
        frame.method = onCreate;
        frame.args = new Object[]{app};
        runBefore(frame, hooks.get(onCreate));
        runAfter(frame, hooks.get(onCreate));
        Log.i("UnicaDynamicIsland", "Built-in runtime active; no LSPosed/Zygisk dependency; callbacks=" + hooks.size());
    }

    static void runBefore(XC_MethodHook.MethodHookParam p, List<XC_MethodHook> list) {
        if (list != null) {
            for (XC_MethodHook h : list) {
                try {
                    h.runBefore(p);
                } catch (Throwable e) {
                    Log.e("UnicaDynamicIsland", "before callback", e);
                }
            }
        }
    }

    static void runAfter(XC_MethodHook.MethodHookParam p, List<XC_MethodHook> list) {
        if (list != null) {
            for (int i = list.size() - 1; i >= 0; i--) {
                try {
                    list.get(i).runAfter(p);
                } catch (Throwable e) {
                    Log.e("UnicaDynamicIsland", "after callback", e);
                }
            }
        }
    }

    private static CallSite resolveCallSite(Class<?> owner, String sig) throws NoSuchMethodException {
        String key = owner.getName() + "#" + sig;
        CallSite cs = callSites.get(key);
        if (cs != null) return cs;
        String targetId = id(sig);
        Method original = null;
        for (Method m : owner.getDeclaredMethods()) {
            if (m.getName().equals(targetId)) {
                original = m;
                break;
            }
        }
        if (original == null) throw new NoSuchMethodException(key);
        original.setAccessible(true);
        Method wrapper = owner.getDeclaredMethod(sig.substring(0, sig.indexOf('(')), original.getParameterTypes());
        wrapper.setAccessible(true);
        cs = new CallSite(original, wrapper);
        callSites.put(key, cs);
        return cs;
    }

    public static Object invoke(Object receiver, Class<?> owner, String sig, Object[] args) throws Throwable {
        CallSite cs = resolveCallSite(owner, sig);
        List<XC_MethodHook> list = enabled ? hooks.get(cs.wrapper) : null;
        if (list == null || list.isEmpty()) {
            try {
                return cs.original.invoke(receiver, args);
            } catch (InvocationTargetException e) {
                throw e.getCause();
            }
        }
        XC_MethodHook.MethodHookParam p = new XC_MethodHook.MethodHookParam();
        p.method = cs.wrapper;
        p.thisObject = receiver;
        p.args = args;
        runBefore(p, list);
        if (!p.isEarly()) {
            try {
                p.setOriginalResult(cs.original.invoke(receiver, p.args));
            } catch (InvocationTargetException e) {
                p.setOriginalThrowable(e.getCause());
            }
        }
        runAfter(p, list);
        if (p.hasThrowable()) throw p.getThrowable();
        return p.getResult();
    }

    public static void constructed(Object receiver, Class<?> owner, String sig, Object[] args) {
        for (Constructor<?> c : owner.getDeclaredConstructors()) {
            if (signature(c).equals(sig)) {
                List<XC_MethodHook> list = hooks.get(c);
                if (list == null || list.isEmpty()) return;
                Object[] resolvedArgs = args;
                if ((resolvedArgs == null || resolvedArgs.length == 0)
                        && owner.getName().equals("com.android.systemui.statusbar.window.StatusBarWindowStateController")) {
                    try {
                        Field f = owner.getDeclaredField("thisDisplayId");
                        f.setAccessible(true);
                        resolvedArgs = new Object[]{f.get(receiver), null};
                    } catch (Throwable ignored) {
                    }
                }
                XC_MethodHook.MethodHookParam p = new XC_MethodHook.MethodHookParam();
                p.method = c;
                p.thisObject = receiver;
                p.args = resolvedArgs != null ? resolvedArgs : new Object[0];
                // Always capture controllers/listeners, including when the master switch is off.
                runAfter(p, list);
                return;
            }
        }
    }
}
