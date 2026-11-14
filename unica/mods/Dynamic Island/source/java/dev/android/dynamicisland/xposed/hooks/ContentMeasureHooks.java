package dev.android.dynamicisland.xposed.hooks;

import de.robv.android.xposed.XC_MethodHook;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Consumer;

/**
 * {@code NotificationContentView.onMeasure} runs for every notification row each time the shade is measured, and
 * several hooks want it. It is hooked once here: the before phases run in the order the hooks were added and the
 * after phases in the opposite order, as separate hooks on the method would have run.
 */
final class ContentMeasureHooks {
    private static final String CONTENT_VIEW = "com.android.systemui.statusbar.notification.row.NotificationContentView";
    private record Entry(Consumer<XC_MethodHook.MethodHookParam> before, Consumer<XC_MethodHook.MethodHookParam> after) { }

    private static final List<Entry> HOOKS = new CopyOnWriteArrayList<>();
    private static int attached = -1;

    private ContentMeasureHooks() { }

    /** Adds a hook to the measure; returns how many methods the shared hook is on (0: it did not attach). */
    static synchronized int add(ClassLoader cl, SafeHook hook) {
        add(hook::runBefore, hook::runAfter);
        if (attached < 0) {
            attached = Refl.hookAll(cl, CONTENT_VIEW, "onMeasure", new Dispatcher());
        }
        return attached;
    }

    static void add(Consumer<XC_MethodHook.MethodHookParam> before, Consumer<XC_MethodHook.MethodHookParam> after) {
        HOOKS.add(new Entry(before, after));
    }

    static void before(XC_MethodHook.MethodHookParam param) {
        for (int i = 0, n = HOOKS.size(); i < n; i++) {
            HOOKS.get(i).before().accept(param);
        }
    }

    static void after(XC_MethodHook.MethodHookParam param) {
        for (int i = HOOKS.size() - 1; i >= 0; i--) {
            HOOKS.get(i).after().accept(param);
        }
    }

    private static final class Dispatcher extends XC_MethodHook {
        @Override
        protected void beforeHookedMethod(MethodHookParam param) {
            before(param);
        }

        @Override
        protected void afterHookedMethod(MethodHookParam param) {
            after(param);
        }
    }
}
