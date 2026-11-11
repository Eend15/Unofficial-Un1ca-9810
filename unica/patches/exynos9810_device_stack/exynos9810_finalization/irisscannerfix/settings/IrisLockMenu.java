package com.samsung.android.settings.un1ca;

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
 * Adds "Intelligent Scan" and "Irises" next to Face recognition and Fingerprints in
 * Screen lock and biometrics. Everything goes through reflection so this class only
 * needs the public SDK at build time.
 */
public final class IrisLockMenu {
    private static final String TAG = "UN1CA-IrisMenu";
    private static final String KEY = "key_iris_menu";
    private static final String INTEL_KEY = "key_intelligent_scan_menu";
    private static final String FACE_KEY = "key_face_menu";
    private static final String FEATURE = "com.samsung.android.camera.iris";
    private static final String UNLOCK_KEY = "un1ca_iris_unlock";
    private static final String INTEL_SCREEN_ON_KEY = "un1ca_intelligent_scan_screen_on";
    private static final String ARG_INTELLIGENT_SCAN = "un1ca_intelligent_scan";
    private static final String IRIS_SETTINGS_PKG = "com.samsung.android.irissettings";
    private static final String IRIS_FRAGMENT = "com.samsung.android.settings.un1ca.IrisSettingsFragment";
    private static final int SEM_TYPE_FACE = 256;
    private static final int ICON_VISIBLE = 0, ICON_GONE = 8;

    private IrisLockMenu() { }

    /** Called from ChooseLockGenericFragment right after the face/fingerprint menus are updated. */
    public static void update(Object fragment) {
        try {
            Context ctx = (Context) fragment.getClass().getMethod("getContext").invoke(fragment);
            if (ctx == null) return;
            Method find = fragment.getClass().getMethod("findPreference", CharSequence.class);
            Object face = find.invoke(fragment, FACE_KEY);
            Object intel = find.invoke(fragment, INTEL_KEY);
            Object iris = find.invoke(fragment, KEY);
            if (face == null || !ctx.getPackageManager().hasSystemFeature(FEATURE)) {
                if (intel != null) removeFromParent(intel);
                if (iris != null) removeFromParent(iris);
                return;
            }
            if (intel == null || iris == null) {
                if (intel != null) removeFromParent(intel);
                if (iris != null) removeFromParent(iris);
                Object[] created = createBoth(ctx, face, fragment);
                intel = created[0];
                iris = created[1];
            }
            int userId = userId(fragment);
            boolean irisEnrolled = enrolledIrises(ctx, userId) > 0;
            boolean irisActive = irisEnrolled
                    && Settings.Secure.getInt(ctx.getContentResolver(), UNLOCK_KEY, 1) == 1;
            boolean faceEnrolled = hasEnrolledFace(ctx, userId);
            boolean faceActive = faceEnrolled && isFaceUnlockEnabled(ctx, userId);
            boolean bothEnrolled = faceEnrolled && irisEnrolled;
            boolean bothActive = faceActive && irisActive;

            if (bothActive && Settings.Secure.getInt(ctx.getContentResolver(), INTEL_SCREEN_ON_KEY, -1) == -1) {
                Settings.Secure.putInt(ctx.getContentResolver(), INTEL_SCREEN_ON_KEY, 1);
            }

            Object enabled = invoke(face, "isEnabled");

            set(intel, "setEnabled", boolean.class, enabled);
            set(intel, "setSummary", CharSequence.class,
                    summary(ctx, fragment,
                            bothEnrolled
                                    ? irisText(ctx, "sec_intelligentscan_lockscreen_biometric_registered_summary",
                                            "Face and irises registered")
                                    : irisText(ctx, "sec_intelligentscan_lockscreen_biometric_not_registered_summary",
                                            "Combine face and iris scanning for better results."),
                            bothActive));
            setIconVisibility(intel, bothActive ? ICON_VISIBLE : ICON_GONE);

            set(iris, "setEnabled", boolean.class, enabled);
            set(iris, "setSummary", CharSequence.class,
                    summary(ctx, fragment,
                            irisEnrolled
                                    ? irisText(ctx, "iris_register_summary", "Your irises have been registered.")
                                    : irisText(ctx, "iris_add_summary", "Register your irises."),
                            irisActive));
            setIconVisibility(iris, irisActive ? ICON_VISIBLE : ICON_GONE);
        } catch (Throwable t) {
            Log.w(TAG, "iris menu not updated", t);
        }
    }

    private static Object[] createBoth(Context ctx, Object face, Object fragment) throws Exception {
        Object parent = invoke(face, "getParent");
        int faceOrder = (Integer) invoke(face, "getOrder");
        // Order: Intelligent Scan (faceOrder), Face recognition (faceOrder + 1),
        // Irises (faceOrder + 2), Fingerprints (shifted by +2).
        int count = (Integer) invoke(parent, "getPreferenceCount");
        Method get = parent.getClass().getMethod("getPreference", int.class);
        for (int i = 0; i < count; i++) {
            Object p = get.invoke(parent, i);
            int order = (Integer) invoke(p, "getOrder");
            if (order > faceOrder) {
                set(p, "setOrder", int.class, order + 2);
            }
        }
        set(face, "setOrder", int.class, faceOrder + 1);

        Object intel = createSingle(ctx, face, parent, fragment, INTEL_KEY,
                irisText(ctx, "bio_intelligentscan_title", "Intelligent Scan"), faceOrder, true);
        Object iris = createSingle(ctx, face, parent, fragment, KEY,
                irisText(ctx, "bio_iris_scanner_title", "Irises"), faceOrder + 2, false);
        return new Object[]{intel, iris};
    }

    private static Object createSingle(Context ctx, Object face, Object parent, Object fragment,
            String key, String title, int order, boolean intelligentScan) throws Exception {
        Object pref = face.getClass().getConstructor(Context.class).newInstance(ctx);
        set(pref, "setKey", String.class, key);
        set(pref, "setTitle", CharSequence.class, title);
        set(pref, "setPersistent", boolean.class, false);
        set(pref, "setOrder", int.class, order);
        Class<?> listener = Class.forName("androidx.preference.Preference$OnPreferenceClickListener",
                false, face.getClass().getClassLoader());
        Object onClick = Proxy.newProxyInstance(listener.getClassLoader(), new Class<?>[]{listener},
                (proxy, method, args) -> {
                    if (!"onPreferenceClick".equals(method.getName())) return null;
                    Bundle pageArgs = new Bundle();
                    pageArgs.putLong("gk_pw_handle", gkPwHandle(fragment));
                    pageArgs.putInt("android.intent.extra.USER_ID", userId(fragment));
                    pageArgs.putBoolean(ARG_INTELLIGENT_SCAN, intelligentScan);
                    String subSettings = "com.android.settings.SubSettings";
                    Intent i = new Intent().setClassName(ctx.getPackageName(), subSettings);
                    i.putExtra(":settings:show_fragment", IRIS_FRAGMENT);
                    i.putExtra(":settings:show_fragment_title", title);
                    i.putExtra(":settings:show_fragment_args", pageArgs);
                    ctx.startActivity(i);
                    return Boolean.TRUE;
                });
        set(pref, "setOnPreferenceClickListener", listener, onClick);
        parent.getClass().getMethod("addPreference", Class.forName("androidx.preference.Preference",
                false, face.getClass().getClassLoader())).invoke(parent, pref);
        return pref;
    }

    private static CharSequence summary(Context ctx, Object fragment, String text, boolean active)
            throws Exception {
        Resources res = ctx.getResources();
        String pkg = ctx.getPackageName();
        int colorId = res.getIdentifier("sec_lockscreen_biometrics_summary_color", "color", pkg);
        int commaId = res.getIdentifier("comma", "string", pkg);
        int color = colorId != 0 ? res.getColor(colorId, null) : 0;
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

    private static boolean hasEnrolledFace(Context ctx, int userId) {
        try {
            Object fm = ctx.getSystemService("face");
            if (fm == null) return false;
            return (Boolean) fm.getClass().getMethod("hasEnrolledTemplates", int.class).invoke(fm, userId);
        } catch (Throwable t) {
            return false;
        }
    }

    private static boolean isFaceUnlockEnabled(Context ctx, int userId) {
        try {
            Object lpu = Class.forName("com.android.internal.widget.LockPatternUtils")
                    .getConstructor(Context.class).newInstance(ctx);
            int state = (Integer) lpu.getClass().getMethod("getBiometricState", int.class, int.class)
                    .invoke(lpu, SEM_TYPE_FACE, userId);
            return state == 1;
        } catch (Throwable t) {
            return false;
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
