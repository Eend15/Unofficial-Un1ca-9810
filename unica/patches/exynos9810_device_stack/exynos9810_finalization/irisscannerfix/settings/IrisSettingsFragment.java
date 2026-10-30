package com.samsung.android.settings.un1ca;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.Log;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceScreen;
import androidx.preference.SwitchPreference;
import com.android.settings.SettingsPreferenceFragment;
import com.samsung.android.camera.iris.Iris;
import com.samsung.android.camera.iris.SemIrisManager;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;

/**
 * The iris page, hosted by SecSettings' SubSettings like the One UI 8 face page so it
 * gets the same rounded cards, switches and animations. Layout follows the Galaxy S9
 * (Android 10) iris page without Samsung Pass; texts come from Samsung's Android 10
 * translations shipped in com.samsung.android.irissettings.
 *
 * Credentials are confirmed with Settings' own lock screen activity (or the handle
 * lent by Screen lock and biometrics), registration runs in SecIrisService.
 */
public final class IrisSettingsFragment extends SettingsPreferenceFragment {
    static final String TAG = "UN1CA-IrisSettings";
    static final String STRINGS_PKG = "com.samsung.android.irissettings";
    static final String IRIS_PKG = "com.samsung.android.server.iris";
    static final String KEY_UNLOCK = "un1ca_iris_unlock";
    static final String KEY_SCREEN_ON = "un1ca_iris_unlock_screen_on";
    static final String KEY_STAY = "un1ca_iris_stay_on_lockscreen";
    // Set by SecIrisService while the IR camera runs; irisd.rc turns it into a CPU floor.
    static final String BOOST_PROP = "sys.un1ca.iris_boost";
    static final int REQUEST_CONFIRM = 1, REQUEST_ENROLL = 2;
    // LockPatternUtils.CREDENTIAL_TYPE_*
    static final int CREDENTIAL_TYPE_NONE = -1, CREDENTIAL_TYPE_PATTERN = 1;
    // SemIrisManager enrollment results that stock Settings answers with a Retry popup.
    static final int ENROLL_TIMEOUT = -2, ENROLL_TOO_CLOSE = -3, ENROLL_SENSOR = -4,
            ENROLL_HW = -6, ENROLL_EYE_SAFETY = -9;

    private Context mContext;
    private SemIrisManager mIris;
    private Object mLockUtils;
    private int mUserId;
    private long mGkHandle;
    // Handle lent by Screen lock and biometrics; Settings owns it, so never remove it here.
    private boolean mBorrowedHandle;
    private boolean mEnrollAfterConfirm;
    private boolean mRetriedStaleToken;
    private boolean mHadIrises;

    private PreferenceCategory mManage;
    private Preference mRemove, mRegister;
    private SwitchPreference mUnlock, mScreenOn, mStay;

    @Override public int getMetricsCategory() {
        return 0;
    }

    @Override public void onCreate(Bundle savedInstanceState) {
        // onCreatePreferences() runs inside super.onCreate() and needs the managers.
        mContext = getContext();
        mUserId = myUserId();
        try {
            mIris = SemIrisManager.getSemIrisManager(mContext);
            mLockUtils = Class.forName("com.android.internal.widget.LockPatternUtils")
                    .getConstructor(Context.class).newInstance(mContext);
        } catch (Throwable t) {
            Log.e(TAG, "iris framework unavailable", t);
        }
        super.onCreate(savedInstanceState);
        if (mIris == null || mLockUtils == null) {
            finish();
            return;
        }
        getActivity().setTitle(title(mContext));
        if (savedInstanceState != null) return;
        // Like stock Settings: confirm the screen lock first, register at once if nothing
        // is enrolled. Coming from Screen lock and biometrics the PIN was just entered.
        boolean enroll = enrolled().isEmpty();
        Bundle args = getArguments();
        long lent = args != null ? args.getLong("gk_pw_handle", 0) : 0;
        if (lent != 0) {
            mGkHandle = lent;
            mBorrowedHandle = true;
            if (enroll) startEnroll(false);
        } else {
            mEnrollAfterConfirm = enroll;
            if (!confirmCredential()) finish();
        }
    }

    @Override public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
        Context ctx = mContext;
        PreferenceScreen screen = getPreferenceManager().createPreferenceScreen(ctx);

        mManage = new PreferenceCategory(ctx);
        screen.addPreference(mManage);
        mRemove = new Preference(ctx);
        mRemove.setTitle(text(ctx, "my_irises", "Remove iris data"));
        mRemove.setOnPreferenceClickListener(p -> { confirmRemove(); return true; });
        mManage.addPreference(mRemove);
        mRegister = new Preference(ctx);
        mRegister.setTitle(text(ctx, "register_irises", "Register irises"));
        mRegister.setOnPreferenceClickListener(p -> { startEnroll(false); return true; });
        mManage.addPreference(mRegister);

        PreferenceCategory unlocking = new PreferenceCategory(ctx);
        screen.addPreference(unlocking);
        mUnlock = toggle(unlocking, KEY_UNLOCK, 1,
                text(ctx, "iris_unlock", "Iris unlock"),
                text(ctx, "iris_unlock_summary", "Unlock your phone with your irises."));
        mScreenOn = toggle(unlocking, KEY_SCREEN_ON, 0,
                text(ctx, "use_iris_first_lock", "Iris unlock when screen turns on"),
                text(ctx, "use_iris_first_lock_summary",
                        "Unlock your phone with your irises as soon as the screen turns on, without swiping first."));
        mStay = toggle(unlocking, KEY_STAY, 0,
                text(ctx, "sec_biometrics_common_option_title_stay_on_lock_screen", "Stay on Lock screen"),
                text(ctx, "iris_stay_on_lockscreen_summary",
                        "When you unlock with iris recognition, stay on the Lock screen until you swipe."));

        // Always the last card, like "About face recognition" on the face page.
        PreferenceCategory help = new PreferenceCategory(ctx);
        screen.addPreference(help);
        Preference tips = new Preference(ctx);
        tips.setTitle(text(ctx, "tips_for_iris", "Tips for using iris recognition"));
        tips.setOnPreferenceClickListener(p -> {
            Intent i = new Intent().setComponent(new ComponentName(IRIS_PKG, IRIS_PKG + ".guide.IrisGuideActivity"));
            i.putExtra("from_iris_settings", true);
            startActivity(i);
            return true;
        });
        help.addPreference(tips);

        setPreferenceScreen(screen);
        refresh();
    }

    @Override public void onResume() {
        super.onResume();
        refresh();
    }

    @Override public void onDestroy() {
        releaseHandle();
        super.onDestroy();
    }

    private SwitchPreference toggle(PreferenceCategory parent, String key, int def, String title, String summary) {
        SwitchPreference s = new SwitchPreference(mContext, null);
        s.setKey(key);
        s.setPersistent(false);
        s.setTitle(title);
        s.setSummary(summary);
        s.setChecked(Settings.Secure.getInt(mContext.getContentResolver(), key, def) == 1);
        s.setOnPreferenceChangeListener((p, v) -> {
            Settings.Secure.putInt(mContext.getContentResolver(), key, (Boolean) v ? 1 : 0);
            new Handler(Looper.getMainLooper()).post(this::refresh);
            return true;
        });
        parent.addPreference(s);
        return s;
    }

    private void refresh() {
        if (mRemove == null || mIris == null) return;
        boolean any = !enrolled().isEmpty();
        mHadIrises |= any;
        mRemove.setEnabled(any);
        // The S9 stores one iris registration: offer "Register" only while there is none.
        mRegister.setVisible(!any);
        boolean unlocking = any && Settings.Secure.getInt(mContext.getContentResolver(), KEY_UNLOCK, 1) == 1;
        mUnlock.setEnabled(any);
        mUnlock.setChecked(unlocking);
        mScreenOn.setEnabled(unlocking);
        mStay.setEnabled(unlocking);
    }

    private void finish() {
        Activity a = getActivity();
        if (a != null) a.finish();
    }

    // ---- credential confirmation (Settings' own lock screen activity) ----

    private boolean confirmCredential() {
        int type = invokeInt(mLockUtils, "getCredentialTypeForUser", mUserId, CREDENTIAL_TYPE_NONE);
        if (type == CREDENTIAL_TYPE_NONE) {
            startActivity(new Intent("android.app.action.SET_NEW_PASSWORD"));
            return false;
        }
        String cls = type == CREDENTIAL_TYPE_PATTERN
                ? "com.android.settings.password.ConfirmLockPattern$InternalActivity"
                : "com.android.settings.password.ConfirmLockPassword$InternalActivity";
        Intent i = new Intent().setComponent(new ComponentName(mContext.getPackageName(), cls));
        // Same extras ChooseLockSettingsHelper sends for a gatekeeper password handle;
        // without force_verify a recently unlocked device returns OK without one.
        i.putExtra("request_gk_pw_handle", true);
        i.putExtra("return_credentials", true);
        i.putExtra("force_verify", true);
        i.putExtra("foreground_only", true);
        i.putExtra("com.android.settings.ConfirmCredentials.showCancelButton", true);
        i.putExtra("android.intent.extra.USER_ID", mUserId);
        i.putExtra("com.android.settings.ConfirmCredentials.header", title(mContext));
        try {
            startActivityForResult(i, REQUEST_CONFIRM);
            return true;
        } catch (Throwable t) {
            Log.e(TAG, "cannot confirm credential", t);
            return false;
        }
    }

    private void releaseHandle() {
        if (mGkHandle == 0) return;
        if (!mBorrowedHandle) {
            try {
                mLockUtils.getClass().getMethod("removeGatekeeperPasswordHandle", long.class)
                        .invoke(mLockUtils, mGkHandle);
            } catch (Throwable ignored) { }
        }
        mGkHandle = 0;
        mBorrowedHandle = false;
    }

    // ---- registration ----

    private void startEnroll(boolean retry) {
        if (mGkHandle == 0) {
            mEnrollAfterConfirm = true;
            confirmCredential();
            return;
        }
        byte[] token = null;
        try {
            long challenge = mIris.preEnroll();
            Object hat = mLockUtils.getClass()
                    .getMethod("verifyGatekeeperPasswordHandle", long.class, long.class, int.class)
                    .invoke(mLockUtils, mGkHandle, challenge, mUserId);
            token = (byte[]) hat.getClass().getMethod("getGatekeeperHAT").invoke(hat);
        } catch (Throwable t) {
            Log.e(TAG, "auth token", t);
        }
        if (token == null) {
            // The handle expired; ask for the credential again.
            releaseHandle();
            mEnrollAfterConfirm = true;
            confirmCredential();
            return;
        }
        Intent i = new Intent().setComponent(new ComponentName(IRIS_PKG, IRIS_PKG + ".enroll.IrisEnrollActivity"));
        i.putExtra("hw_auth_token", token);
        i.putExtra("android.intent.extra.USER_ID", mUserId);
        // Opens the enroll screen on its "try again" page, as stock Settings does.
        if (retry) i.putExtra("iris_enroll_retry", true);
        startActivityForResult(i, REQUEST_ENROLL);
    }

    /** Stock IrisLockSettings.showErrorPopup: explain the failure and offer Retry. */
    private boolean showEnrollError(int result) {
        String msg;
        String title = "iris_failed_to_register";
        switch (result) {
            case ENROLL_TIMEOUT: case ENROLL_EYE_SAFETY: msg = "iris_eye_safety_msg"; break;
            case ENROLL_TOO_CLOSE: msg = "iris_proximity_restriction_popop_message"; break;
            case ENROLL_SENSOR: msg = "iris_sensor_not_working_msg"; title = "iris_sensor_not_working_popup_title"; break;
            case ENROLL_HW: msg = "iris_hw_problem_msg"; title = "iris_sensor_not_working_popup_title"; break;
            default: return false;
        }
        new AlertDialog.Builder(getActivity())
                .setTitle(text(mContext, title, "Couldn't register irises"))
                .setMessage(text(mContext, msg, ""))
                .setPositiveButton(text(mContext, "lockpattern_retry_button_text", "Retry"),
                        (d, w) -> startEnroll(true))
                .setNegativeButton(android.R.string.cancel, (d, w) -> leaveIfNothingEnrolled())
                .setOnCancelListener(d -> leaveIfNothingEnrolled())
                .show();
        return true;
    }

    private void leaveIfNothingEnrolled() {
        if (enrolled().isEmpty() && !mHadIrises) finish();
    }

    @Override public void onActivityResult(int request, int result, Intent data) {
        super.onActivityResult(request, result, data);
        if (request == REQUEST_CONFIRM) {
            if (result != Activity.RESULT_OK || data == null || data.getLongExtra("gk_pw_handle", 0) == 0) {
                Log.i(TAG, "credential not confirmed (" + result + ")");
                finish();
                return;
            }
            releaseHandle();
            mGkHandle = data.getLongExtra("gk_pw_handle", 0);
            if (mEnrollAfterConfirm) {
                mEnrollAfterConfirm = false;
                startEnroll(false);
            }
        } else if (request == REQUEST_ENROLL) {
            Log.i(TAG, "enroll result " + result);
            setSystemProperty(BOOST_PROP, "0");
            try {
                mIris.postEnroll();
            } catch (Throwable t) {
                Log.w(TAG, "postEnroll", t);
            }
            // If the iris service was killed in the background, Android reopens the scan
            // screen with the old token and the TEE rejects it. Retry once with a new one.
            if (result == ENROLL_SENSOR && !mRetriedStaleToken) {
                mRetriedStaleToken = true;
                Log.i(TAG, "sensor error, retrying once with a new token");
                startEnroll(true);
                return;
            }
            mRetriedStaleToken = false;
            if (!enrolled().isEmpty() && Settings.Secure.getInt(mContext.getContentResolver(), KEY_UNLOCK, -1) == -1)
                Settings.Secure.putInt(mContext.getContentResolver(), KEY_UNLOCK, 1);
            if (!showEnrollError(result)) leaveIfNothingEnrolled();
        }
        refresh();
    }

    // ---- removal ----

    private void confirmRemove() {
        new AlertDialog.Builder(getActivity())
                .setTitle(text(mContext, "iris_delete_popup_title", "Remove iris data?"))
                .setMessage(text(mContext, "iris_delete_popup_message_with_related_func",
                        "Features that use irises will be turned off."))
                .setNegativeButton(android.R.string.cancel, null)
                .setPositiveButton(text(mContext, "common_remove", "Remove"), (d, w) -> removeAll())
                .show();
    }

    private void removeAll() {
        for (Object iris : enrolled()) {
            try {
                mIris.remove((Iris) iris, mUserId, new SemIrisManager.RemovalCallback() {
                    @Override public void onRemovalSucceeded(Iris removed) { onRemoved(); }
                    @Override public void onRemovalError(Iris removed, int code, CharSequence msg) {
                        Log.e(TAG, "iris removal error " + code + " " + msg);
                        onRemoved();
                    }
                });
            } catch (Throwable t) {
                Log.e(TAG, "remove failed", t);
            }
        }
    }

    private void onRemoved() {
        new Handler(Looper.getMainLooper()).post(() -> {
            if (!isAdded()) return;
            if (enrolled().isEmpty()) {
                Settings.Secure.putInt(mContext.getContentResolver(), KEY_UNLOCK, 0);
                finish();
            } else {
                refresh();
            }
        });
    }

    @SuppressWarnings("unchecked")
    private List<Object> enrolled() {
        try {
            List<?> l = mIris.getEnrolledIrises(mUserId);
            if (l != null) return (List<Object>) l;
        } catch (Throwable t) {
            Log.w(TAG, "getEnrolledIrises", t);
        }
        return Collections.emptyList();
    }

    // ---- helpers ----

    private static int invokeInt(Object target, String name, int arg, int fallback) {
        try {
            Object r = target.getClass().getMethod(name, int.class).invoke(target, arg);
            return r == null ? fallback : ((Number) r).intValue();
        } catch (Throwable t) {
            Log.w(TAG, name + " failed", t);
            return fallback;
        }
    }

    private static void setSystemProperty(String key, String value) {
        try {
            Class.forName("android.os.SystemProperties").getMethod("set", String.class, String.class)
                    .invoke(null, key, value);
        } catch (Throwable t) {
            Log.w(TAG, "cannot set " + key, t);
        }
    }

    private static int myUserId() {
        try {
            return (Integer) UserHandle.class.getMethod("myUserId").invoke(null);
        } catch (Throwable t) {
            return 0;
        }
    }

    static String title(Context ctx) {
        return text(ctx, "bio_iris_scanner_title", "Irises");
    }

    /**
     * Samsung's iris string in the phone's language: the Android 10 translations shipped
     * with the iris app (One UI 8 Settings only kept English), Settings as the fallback.
     */
    static String text(Context ctx, String name, String fallback) {
        for (String p : new String[]{STRINGS_PKG, ctx.getPackageName()}) {
            try {
                Resources res = p.equals(ctx.getPackageName()) ? ctx.getResources()
                        : ctx.getPackageManager().getResourcesForApplication(p);
                int id = res.getIdentifier(name, "string", p);
                if (id != 0) return res.getString(id);
            } catch (Throwable ignored) { }
        }
        return fallback;
    }
}
