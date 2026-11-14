package dev.android.dynamicisland.xposed.hooks;

import android.view.ViewTreeObserver;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;
import dev.android.dynamicisland.xposed.XLog;
import java.lang.reflect.Field;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * Keeps System UI's notification decorators from piling up global layout callbacks.
 *
 * <p>The lock screen and shade decorate live notifications (the Google sports matches above all) with a
 * {@link ViewTreeObserver.OnGlobalLayoutListener} that removes itself once it has run. It does so through the
 * view's current observer, which is not always the observer that is dispatching to it, so the removal hits
 * the wrong observer, the listener stays, and each layout pass runs it again and registers more of them. With
 * a live match the shade and the lock screen then spend every frame in these callbacks.
 *
 * <p>While an observer dispatches a layout pass, a removal of such a listener that names another observer is
 * redirected to the observer that is dispatching. Only listeners of the decorator class are touched; any other
 * listener removed on another observer is just counted for the diagnostics report.
 */
public final class ShadeLayoutCallbacks {
    /** Simple name of the notification controller the decorators hold; its package differs between One UI builds. */
    private static final String OWNER_SUFFIX = "FaceWidgetNotificationController";
    private static final int MAX_SEEN = 6;

    /** The observers that are dispatching a global layout pass on this thread, innermost first. */
    private static final ThreadLocal<ArrayDeque<ViewTreeObserver>> DISPATCH =
            ThreadLocal.withInitial(ArrayDeque::new);
    private static final Map<Class<?>, Boolean> DECORATORS = new ConcurrentHashMap<>();
    /** Other listener classes seen removed on an observer that was not dispatching to them. */
    private static final Set<String> OTHERS = ConcurrentHashMap.newKeySet();
    private static final AtomicInteger REPAIRED = new AtomicInteger();

    private ShadeLayoutCallbacks() {
    }

    public static void install() {
        Refl.hookAll(ViewTreeObserver.class, "dispatchOnGlobalLayout", new SafeHook("layout dispatch") {
            @Override
            protected void before(de.robv.android.xposed.XC_MethodHook.MethodHookParam p) {
                enter((ViewTreeObserver) p.thisObject);
            }

            @Override
            protected void after(de.robv.android.xposed.XC_MethodHook.MethodHookParam p) {
                leave();
            }
        });
        Refl.hookAll(ViewTreeObserver.class, "removeOnGlobalLayoutListener", SafeHook.before("layout listener removal", p -> {
            if (p.args.length != 1 || !(p.args[0] instanceof ViewTreeObserver.OnGlobalLayoutListener)) {
                return;
            }
            ViewTreeObserver.OnGlobalLayoutListener listener = (ViewTreeObserver.OnGlobalLayoutListener) p.args[0];
            if (!isDispatchedElsewhere((ViewTreeObserver) p.thisObject)) {
                return;
            }
            if (!isDecorator(listener.getClass())) {
                noteOther(listener.getClass());
                return;
            }
            if (removeFromDispatch((ViewTreeObserver) p.thisObject, listener)) {
                p.setResult((Object) null);
                int count = REPAIRED.incrementAndGet();
                if (count == 1 || count % 32 == 0) {
                    XLog.i("shade decorator callbacks repaired=" + count);
                }
            }
        }));
        Diagnostics.live("shade layout callbacks", ShadeLayoutCallbacks::summary);
    }

    /** Whether the listener class holds the notification controller, which marks the shade decorators. */
    static boolean isDecorator(Class<?> type) {
        return DECORATORS.computeIfAbsent(type, cls -> {
            try {
                for (Field field : cls.getDeclaredFields()) {
                    if (field.getType().getName().endsWith(OWNER_SUFFIX)) {
                        return true;
                    }
                }
            } catch (Throwable unresolved) {
                // a field type from a plugin that is not loaded: not a decorator we know
            }
            return false;
        });
    }

    static void enter(ViewTreeObserver dispatching) {
        DISPATCH.get().push(dispatching);
    }

    static void leave() {
        ArrayDeque<ViewTreeObserver> stack = DISPATCH.get();
        if (!stack.isEmpty()) {
            stack.pop();
        }
    }

    private static boolean isDispatchedElsewhere(ViewTreeObserver requested) {
        ViewTreeObserver active = DISPATCH.get().peek();
        return active != null && active != requested && active.isAlive();
    }

    /**
     * Removes {@code listener} from the observer that is dispatching, when that is not {@code requested}.
     * Returns true when it did, so the caller can skip the removal on the wrong observer.
     */
    static boolean removeFromDispatch(ViewTreeObserver requested, ViewTreeObserver.OnGlobalLayoutListener listener) {
        ViewTreeObserver active = DISPATCH.get().peek();
        if (active == null || active == requested || !active.isAlive()) {
            return false;
        }
        active.removeOnGlobalLayoutListener(listener);
        return true;
    }

    private static void noteOther(Class<?> type) {
        if (OTHERS.size() < MAX_SEEN) {
            OTHERS.add(type.getName());
        }
    }

    private static String summary() {
        return "repaired " + REPAIRED.get() + (OTHERS.isEmpty() ? "" : "; other listeners removed on another observer: " + OTHERS);
    }
}
