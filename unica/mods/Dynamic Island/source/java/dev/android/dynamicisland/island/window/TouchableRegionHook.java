package dev.android.dynamicisland.island.window;

import android.graphics.Region;
import android.view.View;
import android.view.ViewTreeObserver;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.XLog;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * Restricts the touches a window receives to a region, through the hidden
 * {@code OnComputeInternalInsetsListener}, so a window can be taller than its content without
 * blocking the app underneath. The listener is registered while the view is attached to a window.
 */
final class TouchableRegionHook {
    /** ViewTreeObserver.InternalInsetsInfo.TOUCHABLE_INSETS_REGION (hidden): only the given region takes touches. */
    private static final int TOUCHABLE_INSETS_REGION = 3;
    private static final String LISTENER_CLASS = "android.view.ViewTreeObserver$OnComputeInternalInsetsListener";
    private static final String INFO_CLASS = "android.view.ViewTreeObserver$InternalInsetsInfo";

    private final Region region;
    private Class<?> listenerClass;
    private Object listener;
    private Method setTouchableInsets;
    private Field regionField;
    private Method addListener;

    private TouchableRegionHook(Region region) {
        this.region = region;
    }

    /** Hooks {@code root} so that only {@code region} (read live) takes touches; logs and gives up if unavailable. */
    static void install(View root, Region region) {
        try {
            TouchableRegionHook hook = new TouchableRegionHook(region);
            hook.resolve();
            root.addOnAttachStateChangeListener(hook.new AttachWatcher());
        } catch (Throwable t) {
            XLog.e("touchable region unavailable", t);
        }
    }

    private void resolve() throws ReflectiveOperationException {
        listenerClass = Class.forName(LISTENER_CLASS);
        Class<?> infoClass = Class.forName(INFO_CLASS);
        setTouchableInsets = infoClass.getMethod("setTouchableInsets", Integer.TYPE);
        regionField = infoClass.getField("touchableRegion");
        listener = Refl.proxy(listenerClass, (proxy, method, args) -> {
            if ("onComputeInternalInsets".equals(method.getName()) && args != null && args.length == 1) {
                setTouchableInsets.invoke(args[0], TOUCHABLE_INSETS_REGION);
                ((Region) regionField.get(args[0])).set(region);
            }
            return null;
        });
        addListener = ViewTreeObserver.class.getMethod("addOnComputeInternalInsetsListener", listenerClass);
    }

    private final class AttachWatcher implements View.OnAttachStateChangeListener {
        @Override
        public void onViewAttachedToWindow(View v) {
            try {
                addListener.invoke(v.getViewTreeObserver(), listener);
            } catch (Throwable t) {
                XLog.e("addOnComputeInternalInsetsListener failed", t);
            }
        }

        @Override
        public void onViewDetachedFromWindow(View v) {
            try {
                ViewTreeObserver.class.getMethod("removeOnComputeInternalInsetsListener", listenerClass)
                        .invoke(v.getViewTreeObserver(), listener);
            } catch (Throwable ignored) {
                // already removed
            }
        }
    }
}
