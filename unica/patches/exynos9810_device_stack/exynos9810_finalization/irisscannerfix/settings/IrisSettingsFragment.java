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
import android.widget.Toast;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceScreen;
import androidx.preference.SwitchPreference;
import com.android.settings.SettingsPreferenceFragment;
import com.samsung.android.camera.iris.Iris;
import com.samsung.android.camera.iris.SemIrisManager;
import java.util.Collections;
import java.util.List;

/**
 * The Iris and Intelligent Scan pages, hosted by SecSettings' SubSettings like the
 * One UI 8 face page so they get the same rounded cards, switches and animations.
 *
 * When opened with un1ca_intelligent_scan=true, presents the stock Galaxy S9
 * Intelligent Scan menu (combining Face Recognition + Iris Scanner).
 * Also automatically activates Intelligent Scan when both Face Unlock and Iris Unlock
 * are enabled.
 */
public final class IrisSettingsFragment extends SettingsPreferenceFragment {
    static final String TAG = "UN1CA-IrisSettings";
    static final String STRINGS_PKG = "com.samsung.android.irissettings";
    static final String IRIS_PKG = "com.samsung.android.server.iris";
    static final String KEY_UNLOCK = "un1ca_iris_unlock";
    static final String KEY_SCREEN_ON = "un1ca_iris_unlock_screen_on";
    static final String KEY_INTEL_SCREEN_ON = "un1ca_intelligent_scan_screen_on";
    static final String KEY_STAY = "un1ca_iris_stay_on_lockscreen";
    // 1 (default): SecIrisService shows its camera preview at the top while scanning.
    static final String KEY_PREVIEW = "un1ca_iris_preview";
    static final String KEY_FACE_STAY = "face_stay_on_lock_screen";
    static final String ARG_INTELLIGENT_SCAN = "un1ca_intelligent_scan";
    // Set by SecIrisService while the IR camera runs; irisd.rc turns it into a CPU floor.
    static final String BOOST_PROP = "sys.un1ca.iris_boost";
    static final int SEM_TYPE_FACE = 256;
    static final int REQUEST_CONFIRM = 1, REQUEST_ENROLL = 2, REQUEST_FACE_ENROLL = 3, REQUEST_CHOOSE_LOCK = 4;
    // One UI 8 entry points: the face flow ChooseLockGeneric itself uses for "Face recognition"
    // (sets a backup lock when there is none, confirms it, registers) and the biometrics
    // "Set secure screen lock" chooser it uses for that backup lock.
    static final String FACE_LOCK_SETTINGS = "com.samsung.android.settings.biometrics.face.FaceLockSettings";
    static final String FACE_STAGE = "lock_screen_face";
    static final String BIO_CHOOSE_LOCK = "com.samsung.android.settings.biometrics.BiometricsChooseLockGeneric";
    static final String CHOOSE_LOCK = "com.android.settings.password.ChooseLockGeneric";
    static final String SETUP_BIO_CHOOSE_LOCK = "com.samsung.android.settings.biometrics.SetupBiometricsChooseLockGeneric";
    static final String EXTRA_GK_PW_HANDLE = "gk_pw_handle";
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
    private boolean mIntelligentScan;
    // Handle lent by Screen lock and biometrics; Settings owns it, so never remove it here.
    private boolean mBorrowedHandle;
    private boolean mEnrollAfterConfirm;
    private boolean mRetriedStaleToken;
    private boolean mHadIrises;
    // Opened from the first setup's biometrics screen: report the result and leave.
    private boolean mFromSetupWizard;

    private PreferenceCategory mManage;
    private Preference mRemove, mRegister;
    private SwitchPreference mUnlock, mScreenOn, mStay, mPreview;

    @Override public int getMetricsCategory() {
        return 0;
    }

    @Override public void onCreate(Bundle savedInstanceState) {
        // onCreatePreferences() runs inside super.onCreate() and needs the managers.
        mContext = getContext();
        mUserId = myUserId();
        Bundle args = getArguments();
        mIntelligentScan = args != null && args.getBoolean(ARG_INTELLIGENT_SCAN, false);
        mFromSetupWizard = args != null && args.getBoolean(IrisLockMenu.ARG_FROM_SETUP_WIZARD, false);
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
        getActivity().setTitle(pageTitle(mContext));
        if (savedInstanceState != null) return;
        // Irises left over from before the screen lock was removed are not registered.
        IrisLockMenu.clearIfInsecure(mContext, mUserId);
        refresh();
        // Like stock Settings: confirm the screen lock first, register at once if nothing
        // is enrolled. Coming from Screen lock and biometrics the PIN was just entered.
        boolean enroll = mIntelligentScan
                ? (enrolled().isEmpty() || !hasEnrolledFace())
                : enrolled().isEmpty();
        long lent = args != null ? args.getLong(EXTRA_GK_PW_HANDLE, 0) : 0;
        if (lent != 0) {
            mGkHandle = lent;
            mBorrowedHandle = true;
            if (enroll) startRequestedEnroll(false);
        } else if (enroll && mIntelligentScan && !hasEnrolledFace()) {
            // Stock face flow: it sets a backup lock if there is none, or confirms the
            // existing one, and hands the gatekeeper handle back for the iris step.
            startFaceEnroll();
        } else {
            mEnrollAfterConfirm = enroll;
            if (!confirmCredential()) finish();
        }
    }

    @Override public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
        Context ctx = mContext;
        PreferenceScreen screen = getPreferenceManager().createPreferenceScreen(ctx);

        if (mIntelligentScan) {
            Preference guide = new Preference(ctx);
            guide.setSelectable(false);
            guide.setPersistent(false);
            guide.setSummary(text(ctx, "sec_biometrics_disclaimer_main_guide_intelligentscan",
                    "Intelligent Scan improves accuracy and security by using both iris and face data."));
            screen.addPreference(guide);
        }

        mManage = new PreferenceCategory(ctx);
        screen.addPreference(mManage);
        mRemove = new Preference(ctx);
        mRemove.setTitle(mIntelligentScan
                ? text(ctx, "sec_intelligentscan_remove_face_and_iris", "Remove face and iris data")
                : text(ctx, "my_irises", "Remove iris data"));
        mRemove.setOnPreferenceClickListener(p -> { confirmRemove(); return true; });
        mManage.addPreference(mRemove);
        mRegister = new Preference(ctx);
        mRegister.setTitle(mIntelligentScan
                ? text(ctx, "sec_intelligentscan_register_face_and_iris", "Register face and irises")
                : text(ctx, "register_irises", "Register irises"));
        mRegister.setOnPreferenceClickListener(p -> { startRequestedEnroll(false); return true; });
        mManage.addPreference(mRegister);

        PreferenceCategory unlocking = new PreferenceCategory(ctx);
        screen.addPreference(unlocking);
        if (mIntelligentScan) {
            mUnlock = new SwitchPreference(ctx, null);
            mUnlock.setKey(KEY_UNLOCK);
            mUnlock.setPersistent(false);
            mUnlock.setTitle(text(ctx, "sec_intelligentscan_unlock_title", "Intelligent Scan unlock"));
            mUnlock.setSummary(text(ctx, "sec_intelligentscan_unlock_summary",
                    "Unlock your phone using combined face and iris scanning."));
            mUnlock.setOnPreferenceChangeListener((p, v) -> {
                boolean on = (Boolean) v;
                setFaceUnlockEnabled(on);
                Settings.Secure.putInt(ctx.getContentResolver(), KEY_UNLOCK, on ? 1 : 0);
                if (on && Settings.Secure.getInt(ctx.getContentResolver(), KEY_INTEL_SCREEN_ON, -1) == -1) {
                    Settings.Secure.putInt(ctx.getContentResolver(), KEY_INTEL_SCREEN_ON, 1);
                }
                if (!on) {
                    Toast.makeText(ctx,
                            text(ctx, "sec_intelligentscan_turn_off_toast_message_intelligentscan",
                                    "Turning off Intelligent Scan unlock will also turn off face and iris unlock."),
                            Toast.LENGTH_SHORT).show();
                }
                new Handler(Looper.getMainLooper()).post(this::refresh);
                return true;
            });
            unlocking.addPreference(mUnlock);

            mScreenOn = toggle(unlocking, KEY_INTEL_SCREEN_ON, 1,
                    text(ctx, "sec_intelligentscan_unlock_when_turns_on_title", "Screen-on Intelligent Scan"),
                    text(ctx, "sec_intelligentscan_unlock_when_turns_on_summary",
                            "Unlock your phone with Intelligent Scan as soon as the screen turns on, without swiping first."));
            mStay = toggle(unlocking, KEY_STAY, 0,
                    text(ctx, "sec_biometrics_common_option_title_stay_on_lock_screen", "Stay on Lock screen"),
                    text(ctx, "sec_intelligentscan_stay_on_lock_screen_summary",
                            "When you unlock with Intelligent Scan, stay on the Lock screen until you swipe."));
        } else {
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
        }
        mPreview = toggle(unlocking, KEY_PREVIEW, 1,
                text(ctx, "un1ca_iris_preview_title", "Show camera preview"),
                text(ctx, "un1ca_iris_preview_summary",
                        "Show the camera preview at the top of the screen while your irises are scanned."));

        // Always the last card, like "About face recognition" on the face page.
        PreferenceCategory help = new PreferenceCategory(ctx);
        screen.addPreference(help);
        Preference tips = new Preference(ctx);
        tips.setTitle(text(ctx, "tips_for_iris", "Tips for using iris recognition"));
        tips.setOnPreferenceClickListener(p -> {
            String guideCls = IRIS_PKG + ".guide.IrisGuideActivity";
            Intent i = new Intent().setComponent(new ComponentName(IRIS_PKG, guideCls));
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
            int val = (Boolean) v ? 1 : 0;
            Settings.Secure.putInt(mContext.getContentResolver(), key, val);
            if (KEY_STAY.equals(key) && (mIntelligentScan || isFaceUnlockEnabled())) {
                // One UI 8 keeps the face "Stay on Lock screen" option in Settings.Secure.
                Settings.Secure.putInt(mContext.getContentResolver(), KEY_FACE_STAY, val);
            }
            if (KEY_UNLOCK.equals(key) && val == 1 && isFaceUnlockEnabled()) {
                if (Settings.Secure.getInt(mContext.getContentResolver(), KEY_INTEL_SCREEN_ON, -1) == -1) {
                    Settings.Secure.putInt(mContext.getContentResolver(), KEY_INTEL_SCREEN_ON, 1);
                }
            }
            new Handler(Looper.getMainLooper()).post(this::refresh);
            return true;
        });
        parent.addPreference(s);
        return s;
    }

    private void refresh() {
        if (mRemove == null || mIris == null) return;
        // Leaving with Back also reports the current state to setup.
        if (mFromSetupWizard) reportSetupResult();
        boolean hasIris = !enrolled().isEmpty();
        boolean hasFace = hasEnrolledFace();
        if (mIntelligentScan) {
            boolean both = hasIris && hasFace;
            boolean any = hasIris || hasFace;
            mHadIrises |= both;
            mRemove.setEnabled(any);
            mRegister.setVisible(!both);
            boolean irisUnlock = Settings.Secure.getInt(mContext.getContentResolver(), KEY_UNLOCK, 1) == 1;
            boolean unlocking = both && irisUnlock && isFaceUnlockEnabled();
            mUnlock.setEnabled(both);
            mUnlock.setChecked(unlocking);
            mScreenOn.setEnabled(unlocking);
            mScreenOn.setChecked(Settings.Secure.getInt(mContext.getContentResolver(), KEY_INTEL_SCREEN_ON, 1) == 1);
            mStay.setEnabled(unlocking);
            mStay.setChecked(Settings.Secure.getInt(mContext.getContentResolver(), KEY_STAY, 0) == 1);
            mPreview.setEnabled(unlocking);
        } else {
            mHadIrises |= hasIris;
            mRemove.setEnabled(hasIris);
            // The S9 stores one iris registration: offer "Register" only while there is none.
            mRegister.setVisible(!hasIris);
            boolean unlocking = hasIris && Settings.Secure.getInt(mContext.getContentResolver(), KEY_UNLOCK, 1) == 1;
            mUnlock.setEnabled(hasIris);
            mUnlock.setChecked(unlocking);
            mScreenOn.setEnabled(unlocking);
            mScreenOn.setChecked(Settings.Secure.getInt(mContext.getContentResolver(), KEY_SCREEN_ON, 0) == 1);
            mStay.setEnabled(unlocking);
            mStay.setChecked(Settings.Secure.getInt(mContext.getContentResolver(), KEY_STAY, 0) == 1);
            mPreview.setEnabled(unlocking);
        }
        mPreview.setChecked(Settings.Secure.getInt(mContext.getContentResolver(), KEY_PREVIEW, 1) == 1);
    }

    private void finish() {
        Activity a = getActivity();
        if (a != null) {
            if (mFromSetupWizard) reportSetupResult();
            a.finish();
        }
    }

    /** RESULT_OK once irises are registered (setup moves on), otherwise back to its list. */
    private void reportSetupResult() {
        Activity a = getActivity();
        if (a != null && mIris != null) {
            a.setResult(enrolled().isEmpty() ? Activity.RESULT_CANCELED : Activity.RESULT_OK);
        }
    }

    // ---- credential confirmation (Settings' own lock screen activity) ----

    private boolean confirmCredential() {
        int type = invokeInt(mLockUtils, "getCredentialTypeForUser", mUserId, CREDENTIAL_TYPE_NONE);
        if (type == CREDENTIAL_TYPE_NONE) {
            // No screen lock yet: set one first and continue with its handle, as stock
            // does for face and fingerprints (SET_NEW_PASSWORD lost the registration).
            return chooseLock();
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
        i.putExtra("com.android.settings.ConfirmCredentials.header", pageTitle(mContext));
        try {
            startActivityForResult(i, REQUEST_CONFIRM);
            return true;
        } catch (Throwable t) {
            Log.e(TAG, "cannot confirm credential", t);
            return false;
        }
    }

    private boolean chooseLock() {
        // During the first setup face uses the setup variant (it may run before the device
        // is provisioned and has the setup layout); do the same.
        String[] choosers = mFromSetupWizard
                ? new String[]{SETUP_BIO_CHOOSE_LOCK, BIO_CHOOSE_LOCK, CHOOSE_LOCK}
                : new String[]{BIO_CHOOSE_LOCK, CHOOSE_LOCK};
        for (String cls : choosers) {
            Intent i = new Intent().setClassName(mContext.getPackageName(), cls);
            // Same extras as the stock face flow (FaceLockSettings.launchChooseLock); the
            // iris flag keeps the "Set a secure screen lock first" chooser open and gives
            // it the iris wording (IrisLockMenu.isIrisChooser/onChooser*).
            i.putExtra("request_gk_pw_handle", true);
            i.putExtra("hide_insecure_options", true);
            i.putExtra("set_biometric_lock", true);
            i.putExtra(IrisLockMenu.EXTRA_FOR_IRIS, true);
            // The setup chooser only lists lock types (not the whole setup list with face,
            // irises and fingerprints again) when it is for a biometric.
            if (SETUP_BIO_CHOOSE_LOCK.equals(cls)) i.putExtra("for_biometrics", true);
            i.putExtra("requested_min_complexity", 0);
            i.putExtra("android.intent.extra.USER_ID", mUserId);
            try {
                startActivityForResult(i, REQUEST_CHOOSE_LOCK);
                return true;
            } catch (Throwable t) {
                Log.w(TAG, "cannot open " + cls, t);
            }
        }
        return false;
    }

    private boolean isSecure() {
        try {
            return (Boolean) mLockUtils.getClass().getMethod("isSecure", int.class).invoke(mLockUtils, mUserId);
        } catch (Throwable t) {
            return false;
        }
    }

    /** Takes over a gatekeeper handle created for this page (it is released in onDestroy). */
    private void adoptHandle(Intent data) {
        long h = data != null ? data.getLongExtra(EXTRA_GK_PW_HANDLE, 0) : 0;
        if (h == 0 || h == mGkHandle) return;
        releaseHandle();
        mGkHandle = h;
        mBorrowedHandle = false;
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

    private void startRequestedEnroll(boolean retry) {
        if (mIntelligentScan && !hasEnrolledFace()) {
            startFaceEnroll();
        } else {
            startEnroll(retry);
        }
    }

    /**
     * FaceLockSettings is an Activity on One UI 8 (it was opened as a SubSettings fragment,
     * which never showed). With the "lock_screen_face" stage it is exactly what Screen lock
     * and biometrics runs for "Face recognition": backup lock if needed, PIN confirmation
     * when no handle is given, disclaimer, registration. It keeps a handle it did not
     * create and returns the one it obtained, so the iris step needs no second PIN.
     */
    private void startFaceEnroll() {
        try {
            Intent i = new Intent().setClassName(mContext.getPackageName(), FACE_LOCK_SETTINGS);
            i.putExtra("previousStage", FACE_STAGE);
            i.putExtra("android.intent.extra.USER_ID", mUserId);
            i.putExtra("requested_min_complexity", 0);
            if (mGkHandle != 0) i.putExtra(EXTRA_GK_PW_HANDLE, mGkHandle);
            // Its backup-lock chooser then says "face and irises".
            if (mIntelligentScan) IrisLockMenu.markIntelligentChooser(true);
            startActivityForResult(i, REQUEST_FACE_ENROLL);
        } catch (Throwable t) {
            IrisLockMenu.markIntelligentChooser(false);
            Log.e(TAG, "cannot launch face enrollment", t);
            startEnroll(false);
        }
    }

    private void onFaceEnrollResult(Intent data) {
        IrisLockMenu.markIntelligentChooser(false);
        adoptHandle(data);
        if (!hasEnrolledFace()) {
            leaveIfNothingEnrolled();
            return;
        }
        setFaceUnlockEnabled(true);
        if (enrolled().isEmpty()) {
            startEnroll(false);
        } else {
            enableIntelligentScanDefaults();
        }
    }

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
        String enrollCls = IRIS_PKG + ".enroll.IrisEnrollActivity";
        Intent i = new Intent().setComponent(new ComponentName(IRIS_PKG, enrollCls));
        i.putExtra("hw_auth_token", token);
        i.putExtra("android.intent.extra.USER_ID", mUserId);
        // Opens the enroll screen on its "try again" page, as stock Settings does.
        if (retry) i.putExtra("iris_enroll_retry", true);
        startActivityForResult(i, REQUEST_ENROLL);
    }

    private void enableIntelligentScanDefaults() {
        if (!enrolled().isEmpty() && hasEnrolledFace()) {
            setFaceUnlockEnabled(true);
            Settings.Secure.putInt(mContext.getContentResolver(), KEY_UNLOCK, 1);
            if (Settings.Secure.getInt(mContext.getContentResolver(), KEY_INTEL_SCREEN_ON, -1) == -1) {
                Settings.Secure.putInt(mContext.getContentResolver(), KEY_INTEL_SCREEN_ON, 1);
            }
        }
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
        boolean missing = mIntelligentScan
                ? (enrolled().isEmpty() && !hasEnrolledFace())
                : enrolled().isEmpty();
        if (missing && !mHadIrises) finish();
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
            mGkHandle = data.getLongExtra(EXTRA_GK_PW_HANDLE, 0);
            if (mEnrollAfterConfirm) {
                mEnrollAfterConfirm = false;
                startRequestedEnroll(false);
            }
        } else if (request == REQUEST_CHOOSE_LOCK) {
            adoptHandle(data);
            if (mGkHandle != 0) {
                if (mEnrollAfterConfirm) {
                    mEnrollAfterConfirm = false;
                    startRequestedEnroll(false);
                }
            } else if (isSecure()) {
                // A lock was set but no handle came back: confirm it once.
                if (!confirmCredential()) finish();
            } else {
                Log.i(TAG, "no screen lock set (" + result + ")");
                finish();
                return;
            }
        } else if (request == REQUEST_FACE_ENROLL) {
            Log.i(TAG, "face enroll result " + result);
            onFaceEnrollResult(data);
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
            if (!enrolled().isEmpty()) {
                if (mIntelligentScan) {
                    enableIntelligentScanDefaults();
                } else {
                    // A new registration turns iris unlock on, like stock. Removal sets it
                    // to 0, so "only when unset" left it off after registering again.
                    Settings.Secure.putInt(mContext.getContentResolver(), KEY_UNLOCK, 1);
                }
                if (mFromSetupWizard) {
                    // Setup continues like after registering a face.
                    reportSetupResult();
                    finish();
                    return;
                }
            }
            if (!showEnrollError(result)) leaveIfNothingEnrolled();
        }
        refresh();
    }

    // ---- removal ----

    private void confirmRemove() {
        String title = mIntelligentScan
                ? text(mContext, "sec_intelligentscan_remove_intelligentscan_dialog_title",
                        "Remove face and iris data?")
                : text(mContext, "iris_delete_popup_title", "Remove iris data?");
        String body = mIntelligentScan
                ? text(mContext, "sec_intelligentscan_remove_intelligentscan_dialog_body_for_feature",
                        "Intelligent Scan features will be turned off.")
                : text(mContext, "iris_delete_popup_message_with_related_func",
                        "Features that use irises will be turned off.");
        new AlertDialog.Builder(getActivity())
                .setTitle(title)
                .setMessage(body)
                .setNegativeButton(android.R.string.cancel, null)
                .setPositiveButton(text(mContext, "common_remove", "Remove"), (d, w) -> removeAll())
                .show();
    }

    private void removeAll() {
        if (mIntelligentScan) {
            setFaceUnlockEnabled(false);
            removeFaceTemplates();
        }
        List<Object> irises = enrolled();
        if (irises.isEmpty()) {
            onRemoved();
            return;
        }
        for (Object iris : irises) {
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

    private boolean hasEnrolledFace() {
        try {
            Object fm = mContext.getSystemService("face");
            if (fm == null) return false;
            return (Boolean) fm.getClass().getMethod("hasEnrolledTemplates", int.class).invoke(fm, mUserId);
        } catch (Throwable t) {
            return false;
        }
    }

    private boolean isFaceUnlockEnabled() {
        try {
            int state = (Integer) mLockUtils.getClass().getMethod("getBiometricState", int.class, int.class)
                    .invoke(mLockUtils, SEM_TYPE_FACE, mUserId);
            return state == 1;
        } catch (Throwable t) {
            return false;
        }
    }

    private void setFaceUnlockEnabled(boolean enabled) {
        try {
            mLockUtils.getClass().getMethod("setBiometricState", int.class, int.class, int.class)
                    .invoke(mLockUtils, SEM_TYPE_FACE, enabled ? 1 : 0, mUserId);
        } catch (Throwable t) {
            Log.w(TAG, "setBiometricState failed", t);
        }
    }

    private void removeFaceTemplates() {
        try {
            Object fm = mContext.getSystemService("face");
            if (fm == null) return;
            Class<?> faceClass = Class.forName("android.hardware.face.Face");
            Class<?> cbClass = Class.forName("android.hardware.face.FaceManager$RemovalCallback");
            Object emptyFace = faceClass.getConstructor(CharSequence.class, int.class, long.class)
                    .newInstance("", 0, 0L);
            fm.getClass().getMethod("removeAll", int.class, cbClass).invoke(fm, mUserId, null);
        } catch (Throwable t) {
            try {
                Object fm = mContext.getSystemService("face");
                if (fm != null) {
                    List<?> faces = (List<?>) fm.getClass().getMethod("getEnrolledFaces", int.class).invoke(fm, mUserId);
                    Class<?> faceClass = Class.forName("android.hardware.face.Face");
                    Class<?> cbClass = Class.forName("android.hardware.face.FaceManager$RemovalCallback");
                    if (faces != null) {
                        for (Object f : faces) {
                            fm.getClass().getMethod("remove", faceClass, int.class, cbClass)
                                    .invoke(fm, f, mUserId, null);
                        }
                    }
                }
            } catch (Throwable inner) {
                Log.w(TAG, "removeFaceTemplates failed", inner);
            }
        }
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

    private String pageTitle(Context ctx) {
        return mIntelligentScan
                ? text(ctx, "bio_intelligentscan_title", "Intelligent Scan")
                : title(ctx);
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
