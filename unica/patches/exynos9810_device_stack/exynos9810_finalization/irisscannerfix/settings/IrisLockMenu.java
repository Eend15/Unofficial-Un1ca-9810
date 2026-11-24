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
import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.samsung.android.camera.iris.Iris;
import com.samsung.android.camera.iris.SemIrisManager;
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
    private static final String FINGERPRINT_KEY = "key_fingerprint_menu";
    private static final String FEATURE = "com.samsung.android.camera.iris";
    private static final String UNLOCK_KEY = "un1ca_iris_unlock";
    private static final String INTEL_SCREEN_ON_KEY = "un1ca_intelligent_scan_screen_on";
    private static final String ARG_INTELLIGENT_SCAN = "un1ca_intelligent_scan";
    private static final String IRIS_SETTINGS_PKG = "com.samsung.android.irissettings";
    private static final String IRIS_FRAGMENT = "com.samsung.android.settings.un1ca.IrisSettingsFragment";
    private static final int SEM_TYPE_FACE = 256;
    private static final int ICON_VISIBLE = 0, ICON_GONE = 8;

    private IrisLockMenu() { }

    static final String ARG_FROM_SETUP_WIZARD = "un1ca_from_setup_wizard";
    private static final String SUW_ROW_TAG = "un1ca_suw_iris";

    /**
     * Called by SuwBiometricsSetupActivity.onCreate right after setContentView: the first
     * setup's "Set up biometrics" screen only lists face and fingerprints. Adds "Irises"
     * below face (a copy of the stock face row) that opens the iris page; it sets the
     * screen lock, registers and returns RESULT_OK, so setup continues like after face.
     */
    public static void onSetupBiometrics(Object activityObj) {
        try {
            final Activity activity = (Activity) activityObj;
            if (!activity.getPackageManager().hasSystemFeature(FEATURE)) return;
            Resources res = activity.getResources();
            String pkg = activity.getPackageName();
            int faceId = res.getIdentifier("face_unlock", "id", pkg);
            int contentId = res.getIdentifier("content_layout", "id", pkg);
            int layoutId = res.getIdentifier("sec_biometrics_setup_layout", "layout", pkg);
            if (faceId == 0 || contentId == 0 || layoutId == 0) return;
            ViewGroup content = activity.findViewById(contentId);
            if (content == null || content.findViewWithTag(SUW_ROW_TAG) != null) return;
            View copy = LayoutInflater.from(activity).inflate(layoutId, null, false);
            View row = copy.findViewById(faceId);
            if (!(row instanceof ViewGroup)) return;
            ((ViewGroup) row.getParent()).removeView(row);
            row.setId(View.NO_ID);
            row.setTag(SUW_ROW_TAG);
            TextView label = firstTextView((ViewGroup) row);
            if (label == null) return;
            final String title = irisText(activity, "bio_iris_scanner_title", "Irises");
            label.setText(title);
            View face = activity.findViewById(faceId);
            int at = face != null ? content.indexOfChild(face) + 1 : 0;
            content.addView(row, Math.max(at, 0));
            row.setOnClickListener(v -> openSetupIrisPage(activity, title));
        } catch (Throwable t) {
            Log.w(TAG, "cannot add the iris setup entry", t);
        }
    }

    private static final String SETUP_FACE_KEY = "unlock_set_face";
    private static final String SETUP_IRIS_KEY = "un1ca_unlock_set_iris";
    // SetupChooseLockGenericFragment's request code for face and fingerprints: a result
    // with a screen lock set finishes the step (setup moves on), otherwise the list stays.
    private static final int SETUP_ENROLL_REQUEST = 0x2735;

    /**
     * Called by SetupChooseLockGenericFragment.addPreferences right after it loads the first
     * setup's "Protect your phone" list (face, fingerprints, PIN, password, pattern). Adds
     * "Irises" below face; the iris page sets the lock, registers and returns like face.
     */
    public static void onSetupLockPicker(Object fragment) {
        try {
            Context ctx = (Context) fragment.getClass().getMethod("getContext").invoke(fragment);
            if (ctx == null || !ctx.getPackageManager().hasSystemFeature(FEATURE)) return;
            Method find = fragment.getClass().getMethod("findPreference", CharSequence.class);
            Object face = find.invoke(fragment, SETUP_FACE_KEY);
            if (face == null || find.invoke(fragment, SETUP_IRIS_KEY) != null) return;
            Object parent = invoke(face, "getParent");
            if (parent == null) return;
            ClassLoader cl = face.getClass().getClassLoader();
            Class<?> prefClass = Class.forName("androidx.preference.Preference", false, cl);
            int faceOrder = (Integer) invoke(face, "getOrder");
            int count = (Integer) invoke(parent, "getPreferenceCount");
            Method get = parent.getClass().getMethod("getPreference", int.class);
            for (int n = 0; n < count; n++) {
                Object p = get.invoke(parent, n);
                int order = (Integer) invoke(p, "getOrder");
                if (order > faceOrder) set(p, "setOrder", int.class, order + 1);
            }
            final String title = irisText(ctx, "bio_iris_scanner_title", "Irises");
            Object pref = face.getClass().getConstructor(Context.class).newInstance(ctx);
            set(pref, "setKey", String.class, SETUP_IRIS_KEY);
            set(pref, "setTitle", CharSequence.class, title);
            set(pref, "setPersistent", boolean.class, false);
            set(pref, "setOrder", int.class, faceOrder + 1);
            Class<?> listener = Class.forName("androidx.preference.Preference$OnPreferenceClickListener", false, cl);
            Object onClick = Proxy.newProxyInstance(listener.getClassLoader(), new Class<?>[]{listener},
                    (proxy, method, args) -> {
                        if (!"onPreferenceClick".equals(method.getName())) return null;
                        Intent i = setupIrisIntent(ctx, title, -1);
                        fragment.getClass().getMethod("startActivityForResult", Intent.class, int.class)
                                .invoke(fragment, i, SETUP_ENROLL_REQUEST);
                        return Boolean.TRUE;
                    });
            set(pref, "setOnPreferenceClickListener", listener, onClick);
            parent.getClass().getMethod("addPreference", prefClass).invoke(parent, pref);
        } catch (Throwable t) {
            Log.w(TAG, "cannot add the iris entry to the setup lock list", t);
        }
    }

    private static Intent setupIrisIntent(Context ctx, String title, int userId) {
        Bundle pageArgs = new Bundle();
        if (userId >= 0) pageArgs.putInt("android.intent.extra.USER_ID", userId);
        pageArgs.putBoolean(ARG_FROM_SETUP_WIZARD, true);
        Intent i = new Intent().setClassName(ctx.getPackageName(), "com.android.settings.SubSettings");
        i.putExtra(":settings:show_fragment", IRIS_FRAGMENT);
        i.putExtra(":settings:show_fragment_title", title);
        i.putExtra(":settings:show_fragment_args", pageArgs);
        i.putExtra("fromSetupWizard", true);
        return i;
    }

    private static void openSetupIrisPage(Activity activity, String title) {
        int user = -1;
        try {
            Object userId = fieldValue(activity, "mUserId");
            if (userId instanceof Integer) user = (Integer) userId;
        } catch (Throwable ignored) { }
        Intent i = setupIrisIntent(activity, title, user);
        try {
            // The activity's own result launcher: a non-zero result finishes the biometrics
            // step with that code (setup moves on), RESULT_CANCELED shows the list again.
            Object launcher = fieldValue(activity, "mSetLockResult");
            launcher.getClass().getMethod("launch", Object.class).invoke(launcher, i);
            Object root = fieldValue(activity, "mRootLayout");
            if (root instanceof View) ((View) root).setVisibility(View.INVISIBLE);
        } catch (Throwable t) {
            Log.w(TAG, "setup result launcher unavailable, opening the iris page directly", t);
            activity.startActivity(i);
        }
    }

    private static TextView firstTextView(ViewGroup group) {
        for (int n = 0; n < group.getChildCount(); n++) {
            View child = group.getChildAt(n);
            if (child instanceof TextView) return (TextView) child;
            if (child instanceof ViewGroup) {
                TextView found = firstTextView((ViewGroup) child);
                if (found != null) return found;
            }
        }
        return null;
    }

    /**
     * Called at the end of ChooseLockGenericFragment.onResume. Stock only refreshes the
     * biometrics menus in onCreate/onActivityResult, so after registering or removing
     * through the iris page (a plain startActivity) the old state stayed on screen.
     */
    public static void onResume(Object fragment) {
        try {
            Method find = fragment.getClass().getMethod("findPreference", CharSequence.class);
            Method menu = fragment.getClass().getMethod("updateBiometricsMenuPreference", String.class);
            for (String key : new String[]{FACE_KEY, FINGERPRINT_KEY}) {
                Object pref = find.invoke(fragment, key);
                if (pref == null) continue;
                // Stock only sets the check mark when a method is active; clear it first.
                setIconVisibility(pref, ICON_GONE);
                menu.invoke(fragment, key);
                notifyChanged(pref);
            }
        } catch (Throwable t) {
            Log.w(TAG, "biometrics menus not refreshed", t);
        }
        update(fragment);
    }

    // ---- "Set a secure screen lock first" (BiometricsChooseLockGenericFragment) ----

    /** Intent extra the iris page sets when it opens the biometrics lock chooser. */
    public static final String EXTRA_FOR_IRIS = "un1ca_for_iris";
    private static final String[] LOCK_TYPE_KEYS = {"unlock_set_pin", "unlock_set_password", "unlock_set_pattern"};
    private static final long INTELLIGENT_WINDOW_MS = 10 * 60 * 1000L;
    // Intelligent Scan goes through the stock face flow, which builds the chooser intent
    // itself; the iris page marks that flow here (same Settings process).
    private static long sIntelligentChooserSince;

    /** Intelligent Scan is about to run the face flow (true) or it returned (false). */
    public static void markIntelligentChooser(boolean active) {
        sIntelligentChooserSince = active ? android.os.SystemClock.elapsedRealtime() : 0;
    }

    /**
     * Hooked into BiometricsChooseLockGenericFragment.onCreate: stock finishes the chooser
     * unless it is for face or fingerprints. Keep it open for irises.
     */
    public static boolean isIrisChooser(Object fragment) {
        try {
            Object activity = fragment.getClass().getMethod("getActivity").invoke(fragment);
            Intent i = activity instanceof android.app.Activity ? ((android.app.Activity) activity).getIntent() : null;
            return i != null && i.getBooleanExtra(EXTRA_FOR_IRIS, false);
        } catch (Throwable t) {
            return false;
        }
    }

    private static boolean isIntelligentChooser(Object fragment) {
        if (sIntelligentChooserSince == 0
                || android.os.SystemClock.elapsedRealtime() - sIntelligentChooserSince > INTELLIGENT_WINDOW_MS) {
            return false;
        }
        try {
            return fieldBoolean(fragment, "mForFace");
        } catch (Throwable t) {
            return false;
        }
    }

    /** End of the chooser's onCreate: "PIN, Irises" instead of "PIN, Biometrics" (or Face). */
    public static void onChooserCreated(Object fragment) {
        try {
            boolean iris = isIrisChooser(fragment);
            boolean intel = !iris && isIntelligentChooser(fragment);
            if (!iris && !intel) return;
            Context ctx = (Context) fragment.getClass().getMethod("getContext").invoke(fragment);
            Resources res = ctx.getResources();
            String pkg = ctx.getPackageName();
            int stockId = res.getIdentifier(intel ? "bio_face_recognition_title" : "biometrics", "string", pkg);
            if (stockId == 0) return;
            String stock = res.getString(stockId);
            String ours = intel
                    ? irisText(ctx, "bio_intelligentscan_title", "Intelligent Scan")
                    : irisText(ctx, "bio_iris_scanner_title", "Irises");
            Method find = fragment.getClass().getMethod("findPreference", CharSequence.class);
            for (String key : LOCK_TYPE_KEYS) {
                Object pref = find.invoke(fragment, key);
                if (pref == null) continue;
                CharSequence title = (CharSequence) invoke(pref, "getTitle");
                if (title == null) continue;
                String t = title.toString();
                // Stock appended ", <stock>" only for a biometric lock; replace that suffix.
                if (t.endsWith(stock)) {
                    set(pref, "setTitle", CharSequence.class, t.substring(0, t.length() - stock.length()) + ours);
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "lock chooser titles not updated", t);
        }
    }

    /** After the chooser set its header text: the iris (or face and iris) wording. */
    public static void onChooserViewCreated(Object fragment) {
        try {
            boolean iris = isIrisChooser(fragment);
            boolean intel = !iris && isIntelligentChooser(fragment);
            if (!iris && !intel) return;
            Context ctx = (Context) fragment.getClass().getMethod("getContext").invoke(fragment);
            Object header = callAny(fragment, "getHeaderView");
            if (header == null) return;
            android.view.View root = (android.view.View) fieldValue(header, "mRootView");
            int id = ctx.getResources().getIdentifier("description_text", "id", ctx.getPackageName());
            if (root == null || id == 0) return;
            android.view.View v = root.findViewById(id);
            if (!(v instanceof android.widget.TextView)) return;
            ((android.widget.TextView) v).setText(intel
                    ? irisText(ctx, "sec_intelligentscan_chooselock_help_text_1",
                            "Before you can register your face and irises, you need to set a secure screen lock (pattern, PIN, or password).")
                    : irisText(ctx, "iris_backup_lock_type_helptext_2",
                            "Before you can register your irises, you need to set a secure screen lock (pattern, PIN, or password)."));
        } catch (Throwable t) {
            Log.w(TAG, "lock chooser text not updated", t);
        }
    }

    private static boolean fieldBoolean(Object target, String name) throws Exception {
        Object v = fieldValue(target, name);
        return v instanceof Boolean && (Boolean) v;
    }

    private static Object fieldValue(Object target, String name) throws Exception {
        for (Class<?> c = target.getClass(); c != null; c = c.getSuperclass()) {
            try {
                Field f = c.getDeclaredField(name);
                f.setAccessible(true);
                return f.get(target);
            } catch (NoSuchFieldException e) {
                // keep looking in the superclass
            }
        }
        return null;
    }

    /** No-argument method of any visibility, looked up through the class hierarchy. */
    private static Object callAny(Object target, String name) throws Exception {
        for (Class<?> c = target.getClass(); c != null; c = c.getSuperclass()) {
            try {
                Method m = c.getDeclaredMethod(name);
                m.setAccessible(true);
                return m.invoke(target);
            } catch (NoSuchMethodException e) {
                // keep looking in the superclass
            }
        }
        return null;
    }

    /** Called from ChooseLockGenericFragment right after the face/fingerprint menus are updated. */
    public static void update(Object fragment) {
        try {
            Context ctx = (Context) fragment.getClass().getMethod("getContext").invoke(fragment);
            if (ctx == null) return;
            Method find = fragment.getClass().getMethod("findPreference", CharSequence.class);
            Object face = find.invoke(fragment, FACE_KEY);
            Object intel = find.invoke(fragment, INTEL_KEY);
            Object iris = find.invoke(fragment, KEY);
            // "Set a secure screen lock first" (also a ChooseLockGenericFragment): only lock
            // types, like the stock face chooser; no biometrics section.
            if (fragment.getClass().getName().endsWith("BiometricsChooseLockGenericFragment")) {
                for (Object p : new Object[]{intel, iris,
                        find.invoke(fragment, "biometrics_category"),
                        find.invoke(fragment, "pref_biometrics_description")}) {
                    if (p != null) removeFromParent(p);
                }
                // Opened for irises as a generic biometric (the first setup's chooser): stock
                // hides the face and fingerprint entries only for face or fingerprints.
                if (isIrisChooser(fragment)) {
                    for (String k : new String[]{"fingerprint_category", "unlock_set_fingerprint",
                            "switch_face", "switch_fingerprint", FACE_KEY, FINGERPRINT_KEY,
                            "key_about_unlock_biometrics"}) {
                        Object p = find.invoke(fragment, k);
                        if (p != null) removeFromParent(p);
                    }
                }
                return;
            }
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
            // Removing the screen lock deletes face and fingerprints, but not irises.
            boolean irisEnrolled = clearIfInsecure(ctx, userId) > 0;
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
            // Check mark first: setSummary only rebinds when the text changes.
            setIconVisibility(intel, bothActive ? ICON_VISIBLE : ICON_GONE);
            set(intel, "setSummary", CharSequence.class,
                    summary(ctx, fragment,
                            bothEnrolled
                                    ? irisText(ctx, "sec_intelligentscan_lockscreen_biometric_registered_summary",
                                            "Face and irises registered")
                                    : irisText(ctx, "sec_intelligentscan_lockscreen_biometric_not_registered_summary",
                                            "Combine face and iris scanning for better results."),
                            bothActive));
            notifyChanged(intel);

            set(iris, "setEnabled", boolean.class, enabled);
            setIconVisibility(iris, irisActive ? ICON_VISIBLE : ICON_GONE);
            set(iris, "setSummary", CharSequence.class,
                    summary(ctx, fragment,
                            irisEnrolled
                                    ? irisText(ctx, "iris_register_summary", "Your irises have been registered.")
                                    : irisText(ctx, "iris_add_summary", "Register your irises."),
                            irisActive));
            notifyChanged(iris);
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

    /**
     * Without a secure screen lock there is no iris unlock. Android removes face and
     * fingerprints together with the screen lock; do the same for the irises and turn
     * iris unlock off, so Settings no longer shows them as registered or active.
     * Returns the number of irises still registered (0 after a removal).
     */
    static int clearIfInsecure(Context ctx, int userId) {
        int count = enrolledIrises(ctx, userId);
        if (count == 0 || isSecure(ctx, userId)) return count;
        Log.i(TAG, "no secure screen lock: removing " + count + " iris registration(s)");
        try {
            SemIrisManager m = SemIrisManager.getSemIrisManager(ctx);
            List<?> irises = m == null ? null : m.getEnrolledIrises(userId);
            if (irises != null) {
                for (Object iris : irises) {
                    m.remove((Iris) iris, userId, new SemIrisManager.RemovalCallback() {
                        @Override public void onRemovalError(Iris removed, int code, CharSequence msg) {
                            Log.w(TAG, "iris removal error " + code + " " + msg);
                        }
                    });
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "iris removal failed", t);
        }
        Settings.Secure.putInt(ctx.getContentResolver(), UNLOCK_KEY, 0);
        return 0;
    }

    /** LockPatternUtils.isSecure; on any error assume secure so nothing is ever deleted by mistake. */
    private static boolean isSecure(Context ctx, int userId) {
        try {
            Object lpu = Class.forName("com.android.internal.widget.LockPatternUtils")
                    .getConstructor(Context.class).newInstance(ctx);
            return (Boolean) lpu.getClass().getMethod("isSecure", int.class).invoke(lpu, userId);
        } catch (Throwable t) {
            Log.w(TAG, "isSecure failed", t);
            return true;
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

    /** Preference.notifyChanged: rebinds the row so a changed check mark is drawn. */
    private static void notifyChanged(Object pref) {
        for (Class<?> c = pref.getClass(); c != null; c = c.getSuperclass()) {
            try {
                Method m = c.getDeclaredMethod("notifyChanged");
                m.setAccessible(true);
                m.invoke(pref);
                return;
            } catch (NoSuchMethodException e) {
                // keep looking in the superclass
            } catch (Throwable t) {
                Log.w(TAG, "notifyChanged failed", t);
                return;
            }
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
