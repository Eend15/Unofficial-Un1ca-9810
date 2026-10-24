package dev.android.dynamicisland.island.window;

import android.view.View;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.XLog;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/**
 * Reflective access to Samsung's hidden {@code SemBlurInfo} API. The lookup happens once; on any
 * other device (or after a failed call) {@link #isSupported()} stays false for good.
 */
final class SemBlur {
    /** The resolved reflection handles. */
    private static final class Api {
        final Constructor<?> newBuilder;
        final Method setRadius;
        final Method setCornerRadius;
        final Method setColor;
        final Method build;
        final Method applyToView;

        Api() throws ReflectiveOperationException {
            Class<?> builderClass = Class.forName("android.view.SemBlurInfo$Builder");
            Class<?> infoClass = Class.forName("android.view.SemBlurInfo");
            newBuilder = builderClass.getConstructor(Integer.TYPE);
            setRadius = builderClass.getMethod("setRadius", Integer.TYPE);
            setCornerRadius = builderClass.getMethod("setBackgroundCornerRadius", Float.TYPE);
            setColor = builderClass.getMethod("setBackgroundColor", Integer.TYPE);
            build = builderClass.getMethod("build");
            applyToView = View.class.getMethod("semSetBlurInfo", infoClass);
        }
    }

    private static Api api;
    private static boolean probed;

    private SemBlur() {
    }

    static boolean isSupported() {
        if (!probed) {
            probed = true;
            try {
                Api candidate = new Api();
                String why = unusableReason();
                if (why == null) {
                    api = candidate;
                    Diagnostics.fact("blur", "real-time (SemBlurInfo)");
                } else {
                    api = null;
                    Diagnostics.fact("blur", "off: " + why);
                    XLog.i("blur off: " + why);
                }
            } catch (Throwable t) {
                XLog.e("SemBlurInfo unavailable", t);
                api = null;
            }
        }
        return api != null;
    }

    /** Samsung's feature switch for real-time (live) blur; phones without it only support the captured kind. */
    private static final String FEATURE_REAL_TIME_BLUR = "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_3D_SURFACE_TRANSITION_FLAG";
    private static final String SETTING_REDUCE_TRANSPARENCY = "accessibility_reduce_transparency";

    /**
     * Why the real-time blur would show nothing on this phone, or null when it should work. The API calls succeed
     * either way, so without this the cards would be see-through and unblurred (and hard to read) on such phones.
     */
    private static String unusableReason() {
        try {
            Object features = Class.forName("com.samsung.android.feature.SemFloatingFeature").getMethod("getInstance").invoke(null);
            Object supported = features.getClass().getMethod("getBoolean", String.class).invoke(features, FEATURE_REAL_TIME_BLUR);
            if (Boolean.FALSE.equals(supported)) {
                return "this phone has no real-time blur (" + FEATURE_REAL_TIME_BLUR + "=false)";
            }
        } catch (ClassNotFoundException notSamsung) {
            return null;
        } catch (Throwable t) {
            XLog.e("blur feature check failed", t);
        }
        try {
            Object app = Class.forName("android.app.ActivityThread").getMethod("currentApplication").invoke(null);
            if (app instanceof android.content.Context) {
                android.content.ContentResolver resolver = ((android.content.Context) app).getContentResolver();
                if (android.provider.Settings.System.getInt(resolver, SETTING_REDUCE_TRANSPARENCY, 0) != 0) {
                    return "\"reduce transparency\" is on in the accessibility settings";
                }
            }
        } catch (Throwable ignored) {
            // the setting is only a hint
        }
        return null;
    }

    /** Gives {@code target} a background blur of the given radius, corner radius and tint colour. */
    static void apply(View target, int radius, float corner, int tint) throws ReflectiveOperationException {
        Object builder = api.newBuilder.newInstance(0);
        api.setRadius.invoke(builder, radius);
        api.setCornerRadius.invoke(builder, corner);
        api.setColor.invoke(builder, tint);
        api.applyToView.invoke(target, api.build.invoke(builder));
    }

    /** Removes the blur from {@code target}; failures are ignored (the view is going away). */
    static void clear(View target) {
        try {
            api.applyToView.invoke(target, (Object) null);
        } catch (Throwable ignored) {
            // nothing to undo
        }
    }

    /** Disables blur for the rest of the process after an unexpected failure. */
    static void giveUp() {
        api = null;
    }
}
