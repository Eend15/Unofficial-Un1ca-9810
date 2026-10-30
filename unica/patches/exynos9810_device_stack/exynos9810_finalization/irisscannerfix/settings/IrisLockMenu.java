package com.samsung.android.settings.un1ca;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.provider.Settings;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;

/**
 * Adds "Irises" next to Face recognition and Fingerprints in Screen lock and
 * biometrics. One UI 8 dropped its own iris entry; the screen behind it is the
 * UN1CA iris settings app. Everything goes through reflection so this class only
 * needs the public SDK at build time.
 */
public final class IrisLockMenu {
    private static final String TAG = "UN1CA-IrisMenu";
    private static final String KEY = "key_iris_menu";
    private static final String FACE_KEY = "key_face_menu";
    private static final String FEATURE = "com.samsung.android.camera.iris";
    private static final String UNLOCK_KEY = "un1ca_iris_unlock";
    private static final String IRIS_SETTINGS_PKG = "com.samsung.android.irissettings";
    private static final String IRIS_FRAGMENT = "com.samsung.android.settings.un1ca.IrisSettingsFragment";
    private static final int ICON_VISIBLE = 0, ICON_GONE = 8;

    private IrisLockMenu() { }

    /** Called from ChooseLockGenericFragment right after the face/fingerprint menus are updated. */
    public static void update(Object fragment) {
        try {
            Context ctx = (Context) fragment.getClass().getMethod("getContext").invoke(fragment);
            if (ctx == null) return;
            Method find = fragment.getClass().getMethod("findPreference", CharSequence.class);
            Object face = find.invoke(fragment, FACE_KEY);
            Object iris = find.invoke(fragment, KEY);
            if (face == null || !ctx.getPackageManager().hasSystemFeature(FEATURE)) {
                if (iris != null) removeFromParent(iris);
                return;
            }
            if (iris == null) iris = create(ctx, face, fragment);
            int userId = userId(fragment);
            boolean enrolled = enrolledIrises(ctx, userId) > 0;
            boolean active = enrolled && Settings.Secure.getInt(ctx.getContentResolver(), UNLOCK_KEY, 1) == 1;
            set(iris, "setEnabled", boolean.class, invoke(face, "isEnabled"));
            set(iris, "setSummary", CharSequence.class, summary(ctx, fragment, enrolled, active));
            setIconVisibility(iris, active ? ICON_VISIBLE : ICON_GONE);
        } catch (Throwable t) {
            Log.w(TAG, "iris menu not updated", t);
        }
    }

    private static Object create(Context ctx, Object face, Object fragment) throws Exception {
        Object iris = face.getClass().getConstructor(Context.class).newInstance(ctx);
        set(iris, "setKey", String.class, KEY);
        set(iris, "setTitle", CharSequence.class, irisText(ctx, "bio_iris_scanner_title", "Irises"));
        set(iris, "setPersistent", boolean.class, false);
        Object parent = invoke(face, "getParent");
        int faceOrder = (Integer) invoke(face, "getOrder");
        // Slot the entry in directly above Face recognition.
        int count = (Integer) invoke(parent, "getPreferenceCount");
        Method get = parent.getClass().getMethod("getPreference", int.class);
        for (int i = 0; i < count; i++) {
            Object p = get.invoke(parent, i);
            int order = (Integer) invoke(p, "getOrder");
            if (order >= faceOrder) set(p, "setOrder", int.class, order + 1);
        }
        set(iris, "setOrder", int.class, faceOrder);
        Class<?> listener = Class.forName("androidx.preference.Preference$OnPreferenceClickListener",
                false, face.getClass().getClassLoader());
        Object onClick = Proxy.newProxyInstance(listener.getClassLoader(), new Class<?>[]{listener},
                (proxy, method, args) -> {
                    if (!"onPreferenceClick".equals(method.getName())) return null;
                    // Same host as the Face page (SubSettings), so the iris page gets the
                    // One UI cards and animations. Like the Face entry, hand over the
                    // handle from the PIN already entered so the iris page does not ask again.
                    Bundle pageArgs = new Bundle();
                    pageArgs.putLong("gk_pw_handle", gkPwHandle(fragment));
                    pageArgs.putInt("android.intent.extra.USER_ID", userId(fragment));
                    Intent i = new Intent().setClassName(ctx.getPackageName(), "com.android.settings.SubSettings");
                    i.putExtra(":settings:show_fragment", IRIS_FRAGMENT);
                    i.putExtra(":settings:show_fragment_title", irisText(ctx, "bio_iris_scanner_title", "Irises"));
                    i.putExtra(":settings:show_fragment_args", pageArgs);
                    ctx.startActivity(i);
                    return Boolean.TRUE;
                });
        set(iris, "setOnPreferenceClickListener", listener, onClick);
        parent.getClass().getMethod("addPreference", Class.forName("androidx.preference.Preference",
                false, face.getClass().getClassLoader())).invoke(parent, iris);
        return iris;
    }

    private static CharSequence summary(Context ctx, Object fragment, boolean enrolled, boolean active)
            throws Exception {
        Resources res = ctx.getResources();
        String pkg = ctx.getPackageName();
        int colorId = res.getIdentifier("sec_lockscreen_biometrics_summary_color", "color", pkg);
        int commaId = res.getIdentifier("comma", "string", pkg);
        int color = colorId != 0 ? res.getColor(colorId, null) : 0;
        String text = enrolled ? irisText(ctx, "iris_register_summary", "Your irises have been registered.")
                : irisText(ctx, "iris_add_summary", "Register your irises.");
        SpannableStringBuilder sb = new SpannableStringBuilder(text);
        if (active) {
            sb.append((commaId != 0 ? res.getString(commaId) : ",") + " ");
            if (colorId != 0) sb.setSpan(new ForegroundColorSpan(color), 0, sb.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
            Method append = fragment.getClass().getMethod("appendCurrentLockTypeToSummary", CharSequence.class);
            sb.append((CharSequence) append.invoke(fragment, (Object) null));
        } else if (colorId != 0) {
            sb.setSpan(new ForegroundColorSpan(color), 0, sb.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        }
        return sb;
    }

    /**
     * Iris text in the phone's language. One UI 8 Settings only kept English iris
     * strings, so the translations come from the UN1CA iris settings app.
     */
    private static String irisText(Context ctx, String name, String fallback) {
        for (String pkg : new String[]{IRIS_SETTINGS_PKG, ctx.getPackageName()}) {
            try {
                Resources res = ctx.getPackageManager().getResourcesForApplication(pkg);
                int id = res.getIdentifier(name, "string", pkg);
                if (id != 0) return res.getString(id);
            } catch (Throwable ignored) {
                // try the next source
            }
        }
        return fallback;
    }

    private static int enrolledIrises(Context ctx, int userId) {
        try {
            Class<?> mc = Class.forName("com.samsung.android.camera.iris.SemIrisManager");
            Object m = mc.getMethod("getSemIrisManager", Context.class).invoke(null, ctx);
            if (m == null) return 0;
            List<?> l = (List<?>) mc.getMethod("getEnrolledIrises", int.class).invoke(m, userId);
            return l == null ? 0 : l.size();
        } catch (Throwable t) {
            Log.w(TAG, "iris enrollment query failed", t);
            return 0;
        }
    }

    private static int userId(Object fragment) {
        for (Class<?> c = fragment.getClass(); c != null; c = c.getSuperclass()) {
            try {
                Field f = c.getDeclaredField("mUserId");
                f.setAccessible(true);
                return f.getInt(fragment);
            } catch (NoSuchFieldException e) {
                // keep looking in the superclass
            } catch (Throwable t) {
                break;
            }
        }
        return 0;
    }

    private static long gkPwHandle(Object fragment) {
        try {
            return fragment.getClass().getField("mGkPwHandle").getLong(fragment);
        } catch (Throwable t) {
            Log.w(TAG, "no gatekeeper handle on the lock screen fragment", t);
            return 0;
        }
    }

    private static void setIconVisibility(Object pref, int visibility) {
        try {
            Field f = pref.getClass().getField("mIconVisibility");
            f.setInt(pref, visibility);
        } catch (Throwable t) {
            Log.w(TAG, "no lock type check mark", t);
        }
    }

    private static void removeFromParent(Object pref) throws Exception {
        Object parent = invoke(pref, "getParent");
        if (parent != null) parent.getClass().getMethod("removePreference",
                Class.forName("androidx.preference.Preference", false, pref.getClass().getClassLoader()))
                .invoke(parent, pref);
    }

    private static Object invoke(Object target, String name) throws Exception {
        return target.getClass().getMethod(name).invoke(target);
    }

    private static void set(Object target, String name, Class<?> type, Object value) throws Exception {
        target.getClass().getMethod(name, type).invoke(target, value);
    }
}
