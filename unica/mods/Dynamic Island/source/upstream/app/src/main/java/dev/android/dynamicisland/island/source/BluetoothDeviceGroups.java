package dev.android.dynamicisland.island.source;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;
import java.util.function.Supplier;

/** Read-only identity of an audio set. Names, address prefixes and arrival times never establish a group. */
final class BluetoothDeviceGroups {
    private final Supplier<Object> cache;

    BluetoothDeviceGroups(Context context) {
        this(() -> deviceCache(context.getClassLoader()));
    }

    BluetoothDeviceGroups(Supplier<Object> cache) {
        this.cache = cache;
    }

    @android.annotation.SuppressLint("MissingPermission")
    Set<String> identity(BluetoothDevice device) {
        Set<String> result = new LinkedHashSet<>();
        address(result, device.getAddress());
        address(result, call(device, "getIdentityAddress"));
        // Some dual-mode headsets explicitly expose their other transport's peer address.
        address(result, call(device, "getTwsPlusPeerAddress"));
        try {
            Object manager = cache.get();
            Object roots = call(manager, "getCachedDevicesCopy");
            if (roots instanceof Iterable<?>) {
                for (Object root : (Iterable<?>) roots) {
                    Set<String> group = cachedIdentity(root);
                    if (group.contains("address:" + device.getAddress().toUpperCase(Locale.ROOT))) {
                        result.addAll(group);
                        return result;
                    }
                }
            }
            // Samsung can hide a member from its filtered list while still finding it in the full cache.
            result.addAll(cachedIdentity(call(manager, "findDevice", device)));
        } catch (RuntimeException | LinkageError unavailable) {
            // Older/other ROMs keep independent per-address cards when they cannot prove a relationship.
        }
        return result;
    }

    private static Set<String> cachedIdentity(Object root) {
        Set<String> result = new LinkedHashSet<>();
        Set<Object> visited = Collections.newSetFromMap(new IdentityHashMap<>());
        ArrayDeque<Object> pending = new ArrayDeque<>();
        if (root != null) pending.add(root);
        while (!pending.isEmpty() && visited.size() < 64) {
            Object cached = pending.removeFirst();
            if (!visited.add(cached)) continue;
            Object device = value(cached, "getDevice", "mDevice");
            if (device instanceof BluetoothDevice) {
                address(result, ((BluetoothDevice) device).getAddress());
                address(result, call(device, "getIdentityAddress"));
            } else address(result, call(cached, "getAddress"));
            Object group = value(cached, "getGroupId", "mGroupId");
            if (group instanceof Number && ((Number) group).intValue() >= 0)
                result.add("csip:" + ((Number) group).intValue());
            Object hearing = value(cached, "getHiSyncId", "mHiSyncId");
            if (hearing instanceof Number && ((Number) hearing).longValue() > 0)
                result.add("hearing:" + ((Number) hearing).longValue());
            Object members = value(cached, "getMemberDevice", "mMemberDevices");
            if (members instanceof Iterable<?>)
                for (Object member : (Iterable<?>) members) if (member != null) pending.add(member);
            Object sub = value(cached, "getSubDevice", "mSubDevice");
            if (sub != null) pending.add(sub);
            Object lead = field(cached.getClass(), cached, "mLeadDevice");
            if (lead != null) pending.add(lead);
        }
        return result;
    }

    private static void address(Set<String> out, Object value) {
        if (!(value instanceof String)) return;
        String address = ((String) value).toUpperCase(Locale.ROOT);
        if (BluetoothAdapter.checkBluetoothAddress(address) && !address.equals("00:00:00:00:00:00")
                && !address.equals("02:00:00:00:00:00")) out.add("address:" + address);
    }

    private static Object deviceCache(ClassLoader loader) {
        try {
            Class<?> managerType = Class.forName("com.android.settingslib.bluetooth.LocalBluetoothManager", false, loader);
            Object manager = field(managerType, null, "sInstance");
            if (manager == null) {
                Class<?> dependency = Class.forName("com.android.systemui.Dependency", false, loader);
                Class<?> controller = Class.forName("com.android.systemui.statusbar.policy.BluetoothController", false, loader);
                Object instance = dependency.getMethod("get", Class.class).invoke(null, controller);
                if (instance != null) manager = field(instance.getClass(), instance, "mLocalBluetoothManager");
            }
            return value(manager, "getCachedDeviceManager", "mCachedDeviceManager");
        } catch (ReflectiveOperationException | RuntimeException | LinkageError unavailable) {
            return null;
        }
    }

    private static Object value(Object target, String method, String field) {
        Object result = call(target, method);
        return result != null || target == null ? result : field(target.getClass(), target, field);
    }

    /** Optional ROM APIs must neither fail SystemUI nor flood diagnostics with expected missing members. */
    private static Object call(Object target, String name, Object... args) {
        if (target == null) return null;
        for (Class<?> type = target.getClass(); type != null; type = type.getSuperclass()) {
            for (Method method : type.getDeclaredMethods()) {
                if (!method.getName().equals(name) || method.getParameterCount() != args.length) continue;
                boolean matches = true;
                for (int i = 0; i < args.length; i++)
                    if (args[i] != null && !method.getParameterTypes()[i].isInstance(args[i])) matches = false;
                if (!matches) continue;
                try { method.setAccessible(true); return method.invoke(target, args); }
                catch (ReflectiveOperationException | RuntimeException unavailable) { return null; }
            }
        }
        return null;
    }

    private static Object field(Class<?> type, Object target, String name) {
        for (; type != null; type = type.getSuperclass()) {
            try { Field field = type.getDeclaredField(name); field.setAccessible(true); return field.get(target); }
            catch (NoSuchFieldException missing) { /* try the superclass */ }
            catch (ReflectiveOperationException | RuntimeException unavailable) { return null; }
        }
        return null;
    }
}
