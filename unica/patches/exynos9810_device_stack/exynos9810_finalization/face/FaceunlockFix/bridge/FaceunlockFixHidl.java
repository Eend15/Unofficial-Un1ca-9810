package com.android.server.biometrics.sensors.face.faceunlockfix;

import android.content.Context;
import android.hardware.biometrics.face.V1_0.IBiometricsFaceClientCallback;
import android.hardware.biometrics.face.V1_0.OptionalBool;
import android.hardware.biometrics.face.V1_0.OptionalUint64;
import android.hidl.base.V1_0.DebugInfo;
import android.os.HidlSupport;
import android.os.HwBinder;
import android.os.HwParcel;
import android.os.IHwBinder;
import android.os.IHwInterface;
import android.os.Handler;
import android.os.Looper;
import android.os.NativeHandle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Slog;
import android.view.Surface;

import com.android.server.biometrics.sensors.BaseClientMonitor;
import com.android.server.biometrics.sensors.AcquisitionClient;
import com.android.server.biometrics.sensors.face.aidl.FaceEnrollClient;
import com.android.server.biometrics.sensors.face.aidl.FaceAuthenticationClient;
import com.android.server.biometrics.sensors.face.hidl.HidlToAidlCallbackConverter;

import vendor.samsung.hardware.biometrics.face.V2_0.ISehBiometricsFace;
import vendor.samsung.hardware.biometrics.face.V2_0.ISehBiometricsFaceClientCallback;
import vendor.samsung.hardware.biometrics.face.V2_0.ISehBiometricsFace$sehGetSecurityLevelCallback;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Source-only Android 16 HIDL-to-AIDL adapter for genuine Samsung stock faced.
 *
 * Unlike services.jar's TestHal, EVERY supported biometric operation reaches
 * the original native IFaceDaemon and ALL results originate in that engine.
 * Neither this class nor the Camera2 frame source detects faces or creates HATs.
 *
 * This is deliberately local to system_server: HidlToAidlSensorAdapter may
 * hold this Java IBiometricsFace instance directly, without registering a
 * second native HIDL service. Remote HwBinder transactions are disabled.
 *
 * Common Exynos9810 source for starlte (S9), star2lte (S9+) and crownlte
 * (Note9). Target packaging and opt-in remain separate from this class;
 * unmodified devices retain their existing vendor HAL.
 */
public final class FaceunlockFixHidl extends HwBinder implements ISehBiometricsFace,
        FaceunlockFixNativeBackend.Events, FaceunlockFixCamera2FrameSource.Listener, AutoCloseable {
    private static final String TAG = "FaceunlockFixHidl";
    private static final String FACE_HIDL =
            "android.hardware.biometrics.face@1.0::IBiometricsFace";
    private static final String VENDOR_HIDL =
            "vendor.samsung.hardware.biometrics.face@2.0::ISehBiometricsFace";
    private static final String BASE_HIDL = "android.hidl.base@1.0::IBase";
    private static final int HAL_OK = 0;
    private static final int HAL_UNSUPPORTED = -38; // -ENOSYS, never false success
    private static final int HAL_UNAVAILABLE = -19; // -ENODEV
    private static final int HAL_ERROR_HW_UNAVAILABLE = 1;
    private static final int HAL_ERROR_UNABLE_TO_PROCESS = 2;
    private static final int HAT_LENGTH = 69;
    // Android16's FaceEnrollClient.startHalOperation defaults to AIDL feature
    // 1 (REQUIRE_DIVERSE_POSES), unless the user has disabled that feature.
    // Before calling HIDL it converts AIDL 1 -> FRAMEWORK 2 via
    // AidlConversionUtils.convertAidlToFrameworkFeature(). The HIDL bridge
    // thus receives Integer(2), NOT Byte(1).
    // Genuine Samsung stock faced does not accept a separate AIDL feature list: its
    // stock EnrollClient passes flags=0 and the native engine owns the actual
    // enrollment progress/pose collection. Only that ordinary non-debug
    // default is admissible on this explicitly opt-in WEAK RGB sensor.
    // AIDL DEBUG=2 becomes FRAMEWORK 3. It is an optional consent flag,
    // not a biometric guarantee. Reject unsupported REQUIRE_ATTENTION=1
    // and all unknown codes; never record/export raw biometric data.
    private static final int FACEUNLOCKFIX_SUPPORTED_DEFAULT_FEATURE = 2;
    private static final int FACEUNLOCKFIX_IGNORED_OPTIONAL_DEBUG_FEATURE = 3;
    private static final int FACEUNLOCKFIX_ENROLL_TIMEOUT = 0; // verified EnrollClient.start()
    // Samsung's native RGB authentication mode, not Android biometric strength.
    // Stock Samsung AuthenticationClient.getSecurityMode(): 2 = unspecified
    // open-eyes setting, 6 = explicitly disabled, 10 = required eyes open.
    // Android16's SemFaceUtils instead passes bitwise mode 0 or 4, plus an
    // optional 0x10 mask-recognition bit that this stock engine never supported.
    private static final int FACEUNLOCKFIX_RGB_AUTH_MODE = 2;
    private static final int A16_REQUIRE_OPEN_EYES = 4;
    private static final int FACEUNLOCKFIX_RGB_NO_OPEN_EYES = 6;
    private static final int FACEUNLOCKFIX_RGB_REQUIRE_OPEN_EYES = 10;
    // Genuine Samsung stock fast-recognition modes (original AuthenticationClient).
    // These must ONLY be selected by explicit user secure-setting preference.
    private static final int STOCK_FAST_WITH_OPEN_EYES = 8;
    private static final int STOCK_FAST_NO_OPEN_EYES = 4;
    private static final int STOCK_FAST_UNSPECIFIED_EYES = 0;
    private static final int REQ_SESSION_OPEN = 12;
    private static final int REQ_SESSION_STATUS = 13;
    private static final int REQ_SESSION_CLOSE = 14;
    private static final int REQ_GET_CAMERA_INFO = 10001;
    private static final int REQ_GET_SECURITY_LEVEL = 10002;
    // This only bounds framework startup's internal template cleanup.
    // Expiry sends a real hardware error, NEVER an invented empty enumeration.
    private static final long ENUMERATE_CALLBACK_TIMEOUT_MS = 30000L;
    // Native work and camera are event-driven, never permanently background
    // streaming. Guard against lost framework cancellations/Binder callbacks:
    // these are *upper limits*, not early face-success or shortened native
    // recognition windows. Android's ordinary auth timeout is much shorter.
    private static final long AUTH_CAPTURE_HARD_LIMIT_MS = 12000L;
    private static final long ENROLL_CAPTURE_HARD_LIMIT_MS = 60000L;

    private enum Operation { NONE, AUTHENTICATE, ENROLL, ENUMERATE, REMOVE }

    private final Object lock = new Object();
    private final Context context;
    private final FaceunlockFixNativeBackend backend;
    private final FaceunlockFixCamera2FrameSource camera;
    private final Handler callbackWatchdog;
    private final Map<IHwBinder.DeathRecipient, Long> recipients = new HashMap<>();
    private volatile ISehBiometricsFaceClientCallback callback;
    private Operation operation = Operation.NONE;
    private long operationSerial;
    private long operationStartElapsedMs;
    // Tracks only the camera associated with the current native operation.
    // A late terminal callback must never stop a subsequent capture session.
    private long activeCameraGeneration;
    // During Camera2-only Keyguard warmup, do not send a spurious native
    // cancel before the real authenticate Binder request has been issued.
    private boolean nativeAuthInvoked;
    private Runnable pendingEnumerateTimeout;
    private Runnable pendingCaptureTimeout;
    private int currentUser = -1;
    private boolean closed;
    private int acquiredDiagnostics;
    private boolean loggedEnrollmentProgress;

    /**
     * Requires a real native Binder daemon and a CameraManager. A missing
     * daemon, invalid descriptor or failed native openHal is fatal; callers
     * must NOT replace this with a TestHal or pretend sensor availability.
     */
    public FaceunlockFixHidl(Context context) throws RemoteException {
        if (context == null) throw new IllegalArgumentException("Context required");
        this.context = context;
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper == null) {
            throw new IllegalStateException("System server main looper required");
        }
        FaceunlockFixNativeBackend connected = FaceunlockFixNativeBackend.connect(this);
        FaceunlockFixCamera2FrameSource source;
        try {
            source = new FaceunlockFixCamera2FrameSource(context, connected, this);
        } catch (RuntimeException e) {
            connected.close();
            throw e;
        }
        backend = connected;
        camera = source;
        callbackWatchdog = new Handler(mainLooper);
    }

    /**
     * Deliberately explicit test-build integration point. Registration does
     * not start the daemon and cannot enable the experimental path: the
     * separate FaceunlockFixProbe still requires debuggable Exynos9810 + opt-in.
     * Do not call until actual Android 16 compilation/permission validation.
     */
    public static void registerVerifiedFactoryForProbe() {
        FaceunlockFixProbe.registerFactory((context, genuineNativeDaemon) -> {
            if (genuineNativeDaemon == null || !genuineNativeDaemon.isBinderAlive()
                    || !NativeFaceTransport.NAME.equals(
                            genuineNativeDaemon.getInterfaceDescriptor())) {
                throw new RemoteException("Expected genuine stock IFaceDaemon");
            }
            return new FaceunlockFixHidl(context);
        });
    }

    /** This is an in-process typed Java HAL, not a hwservicemanager service. */
    @Override public IHwBinder asBinder() { return this; }

    private boolean isOpen() {
        synchronized (lock) {
            return !closed && backend.getDeviceId() != 0;
        }
    }

    private boolean transition(Operation next) {
        synchronized (lock) {
            if (closed || currentUser < 0 || operation != Operation.NONE
                    || callback == null) return false;
            operation = next;
            operationSerial++;
            operationStartElapsedMs = SystemClock.elapsedRealtime();
            activeCameraGeneration = 0;
            nativeAuthInvoked = false;
            acquiredDiagnostics = 0;
            loggedEnrollmentProgress = false;
            return true;
        }
    }

    /**
     * Android16 HidlToAidlSessionAdapter drops the integer return code of
     * enumerate/enroll/authenticate/remove. An invalid request must therefore
     * also notify the pending framework client with a genuine failure.
     * Never error another operation already in progress.
     */
    private int rejectOperation(int code, String reason) {
        Slog.w(TAG, reason);
        boolean safeToNotify;
        synchronized (lock) {
            safeToNotify = !closed && operation == Operation.NONE && callback != null;
        }
        if (safeToNotify) sendError(HAL_ERROR_UNABLE_TO_PROCESS);
        return code;
    }

    /** Cancel only the previously scheduled *error* timeout, not native work. */
    private void cancelEnumerationTimeoutLocked() {
        if (pendingEnumerateTimeout != null) {
            callbackWatchdog.removeCallbacks(pendingEnumerateTimeout);
            pendingEnumerateTimeout = null;
        }
    }

    private void cancelCaptureTimeoutLocked() {
        if (pendingCaptureTimeout != null) {
            callbackWatchdog.removeCallbacks(pendingCaptureTimeout);
            pendingCaptureTimeout = null;
        }
    }

    /** Hard-stop a camera session only if it still belongs to this operation. */
    private void armCaptureHardLimit(Operation expected, long expectedSerial) {
        final boolean scheduled;
        synchronized (lock) {
            if (closed || operation != expected || operationSerial != expectedSerial) return;
            cancelCaptureTimeoutLocked();
            Runnable timer = () -> {
                failOperationForSerial(expectedSerial, HAL_UNAVAILABLE,
                        "FaceunlockFix camera session hard limit reached", null);
            };
            pendingCaptureTimeout = timer;
            scheduled = callbackWatchdog.postDelayed(timer,
                    expected == Operation.ENROLL
                            ? ENROLL_CAPTURE_HARD_LIMIT_MS : AUTH_CAPTURE_HARD_LIMIT_MS);
            if (!scheduled) pendingCaptureTimeout = null;
        }
        if (!scheduled)
            failOperationForSerial(expectedSerial, HAL_UNAVAILABLE,
                    "FaceunlockFix cannot schedule camera hard limit", null);
    }

    /**
     * Android 16 InternalCleanupClient requires a terminal native enumerate
     * callback. The legacy faced occasionally provides no callback when user
     * storage is locked or uninitialized. If it does not respond, fail closed
     * instead of leaving all later genuine enrollment requests queued forever.
     * No synthetic empty template list or positive authentication is issued.
     */
    private void armEnumerationTimeout() {
        boolean scheduled;
        synchronized (lock) {
            if (closed || operation != Operation.ENUMERATE) return;
            cancelEnumerationTimeoutLocked();
            final long serial = operationSerial;
            Runnable timeout = () -> {
                synchronized (lock) {
                    if (closed || operation != Operation.ENUMERATE
                            || operationSerial != serial) return;
                }
                finishTimedOutEnumeration(serial);
            };
            pendingEnumerateTimeout = timeout;
            scheduled = callbackWatchdog.postDelayed(
                    timeout, ENUMERATE_CALLBACK_TIMEOUT_MS);
            if (!scheduled) {
                pendingEnumerateTimeout = null;
            }
        }
        if (!scheduled) {
            failOperation(HAL_UNAVAILABLE,
                    "Cannot schedule native enumerate timeout", null);
        }
    }

    /**
     * Fail the genuine Android cleanup sub-client, not enumeration data.
     * AidlResponseHandler.onError intentionally ignores InternalCleanupClient;
     * see FaceunlockFixCleanupFailureBridge's exact framework failure route.
     */
    private void finishTimedOutEnumeration(long serial) {
        ISehBiometricsFaceClientCallback cb;
        int user;
        synchronized (lock) {
            if (closed || operation != Operation.ENUMERATE
                    || operationSerial != serial) return;
            operation = Operation.NONE;
            operationSerial++;
            cancelEnumerationTimeoutLocked();
            cb = callback;
            user = currentUser;
        }
        Slog.e(TAG, "Genuine stock daemon did not complete enumeration");
        backend.completeCallbackOperation();
        if (!FaceunlockFixCleanupFailureBridge.completeFailedEnumeration(cb, user)) {
            // Not the internal cleanup client: report a hardware failure via
            // the normal HAL callback. No positive/empty result is fabricated.
            sendError(HAL_ERROR_HW_UNAVAILABLE);
        }
        // Do not issue a late cancelEnumeration() here: faced already returned
        // status=0 without a callback, and a delayed cancel could race the
        // *next* legitimate enrollment/authentication operation.
    }

    private void endOperation() {
        long cameraGeneration;
        synchronized (lock) {
            cameraGeneration = activeCameraGeneration;
            activeCameraGeneration = 0;
            nativeAuthInvoked = false;
            operation = Operation.NONE;
            operationSerial++;
            cancelEnumerationTimeoutLocked();
            cancelCaptureTimeoutLocked();
        }
        // The native Binder backend also tracks overlapping operations.
        // Release that ownership after real terminal enrollment/auth/remove/
        // enumerate events; otherwise the next unlock is always rejected.
        backend.completeCallbackOperation();
        camera.stopIfGeneration(cameraGeneration);
    }

    private int failOperation(int code, String message, Throwable error) {
        return failOperationForSerial(-1, code, message, error);
    }

    /** Ignore delayed camera/watchdog failures belonging to an older unlock. */
    private int failOperationForSerial(long expectedSerial, int code,
            String message, Throwable error) {
        Operation active;
        long cameraGeneration;
        boolean authInvoked;
        synchronized (lock) {
            if (closed || operation == Operation.NONE
                    || (expectedSerial >= 0 && operationSerial != expectedSerial)) return code;
            active = operation;
            authInvoked = nativeAuthInvoked;
            cameraGeneration = activeCameraGeneration;
            activeCameraGeneration = 0;
            nativeAuthInvoked = false;
            operation = Operation.NONE;
            operationSerial++;
            cancelEnumerationTimeoutLocked();
            cancelCaptureTimeoutLocked();
        }
        Slog.e(TAG, message, error);
        camera.stopIfGeneration(cameraGeneration);
        try {
            switch (active) {
                case AUTHENTICATE:
                    if (authInvoked) backend.cancelAuthentication();
                    break;
                case ENROLL: backend.cancelEnrollment(); break;
                case ENUMERATE: backend.cancelEnumeration(); break;
                default: break;
            }
        } catch (RemoteException | RuntimeException ignored) {
            Slog.w(TAG, "Unable to cancel failed native operation", ignored);
        }
        sendError(HAL_ERROR_HW_UNAVAILABLE);
        return code;
    }

    private void sendError(int error) {
        ISehBiometricsFaceClientCallback cb = callback;
        if (cb == null) return;
        int user;
        synchronized (lock) { user = currentUser; }
        try {
            cb.onError(user, error, 0);
        } catch (Exception ex) {
            Slog.w(TAG, "Error callback failed", ex);
        }
    }

    private static OptionalUint64 optional64(int status, long value) {
        OptionalUint64 result = new OptionalUint64();
        result.status = status;
        result.value = value;
        return result;
    }

    private static OptionalBool unsupportedBool() {
        OptionalBool result = new OptionalBool();
        result.status = HAL_UNSUPPORTED;
        result.value = false;
        return result;
    }

    private static byte[] genuineBytes(ArrayList<Byte> boxed, int requiredLength) {
        if (boxed == null || (requiredLength > 0 && boxed.size() != requiredLength)
                || boxed.size() > 4096) return null;
        byte[] raw = new byte[boxed.size()];
        for (int i = 0; i < raw.length; ++i) {
            if (boxed.get(i) == null) return null;
            raw[i] = boxed.get(i);
        }
        return raw;
    }

    private static boolean supportsNativeEnrollmentFeatures(ArrayList<?> features) {
        if (features == null || features.isEmpty()) return true;
        if (features.size() > 2) return false;
        boolean hasDiversePoses = false;
        boolean hasDebug = false;
        // HIDL 1.0 enroll() receives an int32_t vector, so Android's
        // HidlToAidlSessionAdapter passes ArrayList<Integer>. Treating the
        // raw list as ArrayList<Byte> throws ClassCastException on the
        // system_server FaceHandler thread and soft-reboots the device.
        // Accept only the two valid boxed integer representations; never
        // coerce arbitrary Number values or unknown security-related flags.
        for (Object boxedFeature : features) {
            if (!(boxedFeature instanceof Integer)
                    && !(boxedFeature instanceof Byte)) return false;
            int feature = ((Number) boxedFeature).intValue();
            if (feature == FACEUNLOCKFIX_SUPPORTED_DEFAULT_FEATURE) {
                if (hasDiversePoses) return false;
                hasDiversePoses = true;
            } else if (feature == FACEUNLOCKFIX_IGNORED_OPTIONAL_DEBUG_FEATURE) {
                if (hasDebug) return false;
                hasDebug = true;
            } else {
                return false;
            }
        }
        // The stock enrollment engine owns pose collection; DEBUG consent is
        // intentionally non-operational because raw biometric debug recording
        // is outside the legacy daemon's supported interface.
        return hasDiversePoses;
    }

    private static ArrayList<Byte> box(byte[] bytes) {
        ArrayList<Byte> boxed = new ArrayList<>(bytes.length);
        for (byte b : bytes) boxed.add(b);
        return boxed;
    }

    private static boolean hasGenuineTokenMac(byte[] hat) {
        if (hat == null || hat.length != HAT_LENGTH) return false;
        // HAT ends in 32 bytes of secure-world HMAC. Keystore will perform
        // cryptographic verification; refusing an empty/all-zero HMAC avoids
        // propagating an obviously unsigned native result as success.
        int macAggregate = 0;
        for (int i = HAT_LENGTH - 32; i < HAT_LENGTH; ++i)
            macAggregate |= hat[i];
        return macAggregate != 0;
    }

    /**
     * Android16 constructs the HidlToAidlCallbackConverter as an in-process
     * HwBinder object. Calling cb.asBinder().transact() on that local Java
     * object aborts *all of system_server* inside JHwBinder_native_transact
     * (EX_TRANSACTION_FAILED / unchecked HIDL Return), even if Java catches
     * RemoteException. Never perform a native HwBinder transact here.
     *
     * This experimental bridge only supports that actual Android16 callback
     * class; do not silently substitute a test callback or fabricate data.
     */
    private HidlToAidlCallbackConverter frameworkCallback() throws RemoteException {
        ISehBiometricsFaceClientCallback cb = callback;
        if (!(cb instanceof HidlToAidlCallbackConverter)) {
            throw new RemoteException("Expected in-process Android16 Face callback converter");
        }
        return (HidlToAidlCallbackConverter) cb;
    }

    /**
     * Samsung's Android16 FaceEnrollClient owns the real caller-provided
     * preview Surface. HIDL 1.0 enrollment receives only HAT/features;
     * HidlToAidlSessionAdapter discards its incoming preview NativeHandle.
     * Without obtaining the already-validated Java Surface here, Camera2 only
     * targets our private ImageReader: native face processing runs but the
     * UI circle remains black and cannot show the live registration preview.
     *
     * Never create a fake Surface or reuse a stale client from another
     * session. If the active genuine enrollment client has no valid Surface,
     * fail closed instead of silently running a blind enrollment.
     */
    private Surface genuineEnrollmentPreview() throws RemoteException {
        BaseClientMonitor active = frameworkCallback().mAidlResponseHandler
                .mScheduler.getCurrentClient();
        if (!(active instanceof FaceEnrollClient)) {
            throw new RemoteException("Active Android16 FaceEnrollClient is absent");
        }
        Surface preview = ((FaceEnrollClient) active).mPreviewSurface;
        if (preview == null || !preview.isValid()) {
            throw new RemoteException("Genuine enrollment preview Surface unavailable");
        }
        return preview;
    }

    private int startFramesAfterAcceptedNative(Operation expected, long expectedSerial) {
        synchronized (lock) {
            // A genuine terminal callback may arrive before the synchronous
            // native enroll/authenticate start call has returned. Do not open
            // a camera after the operation already completed or errored out.
            if (closed || operation != expected || operationSerial != expectedSerial)
                return HAL_OK;
        }
        final Surface preview;
        try {
            preview = expected == Operation.ENROLL ? genuineEnrollmentPreview() : null;
        } catch (RemoteException | RuntimeException ex) {
            return failOperationForSerial(expectedSerial, HAL_UNAVAILABLE,
                    "Cannot attach genuine Samsung enrollment preview", ex);
        }
        synchronized (lock) {
            if (closed || operation != expected || operationSerial != expectedSerial)
                return HAL_OK;
        }
        if (!camera.start(preview)) {
            return failOperationForSerial(expectedSerial, HAL_UNAVAILABLE,
                    "Real RGB Camera2 source unavailable", null);
        }
        long cameraGeneration = camera.lastStartedGeneration();
        if (preview != null) {
            Slog.i(TAG, "Real Samsung enrollment preview Surface supplied to Camera2");
        }
        final boolean completed;
        final boolean failedBeforeRegistration;
        synchronized (lock) {
            // Close an asynchronous camera launch racing a terminal callback.
            completed = closed || operation != expected
                    || operationSerial != expectedSerial;
            if (!completed) activeCameraGeneration = cameraGeneration;
            // Camera2 may call onFailure during start() before the listener
            // has had a chance to register its generation here. The earlier
            // callback would be ignored as unowned. Check while holding the
            // owner lock so failure cannot vanish between registration and
            // this check.
            failedBeforeRegistration = !completed && !camera.isRunning();
        }
        if (completed) camera.stopIfGeneration(cameraGeneration);
        else if (failedBeforeRegistration)
            return failOperationForSerial(expectedSerial, HAL_UNAVAILABLE,
                    "Enrollment Camera2 failed before generation registration", null);
        else armCaptureHardLimit(expected, expectedSerial);
        return HAL_OK;
    }

    /**
     * Keyguard cold-start optimization: overlap Camera2 open/configure with
     * the stock daemon's synchronous authentication setup. The front camera
     * opens ONLY for an accepted framework authentication client, while the
     * frame transport remains DISARMED until the genuine native operation has
     * returned HAL_OK. This avoids idle scanning and does not change the
     * stock matcher, open-eyes checks or 69-byte signed HAT requirements.
     */
    private int warmCameraDuringNativeAuthentication(long expectedSerial) {
        synchronized (lock) {
            if (closed || operation != Operation.AUTHENTICATE
                    || operationSerial != expectedSerial) return HAL_OK;
        }
        if (!camera.start(null, false)) {
            return failOperationForSerial(expectedSerial, HAL_UNAVAILABLE,
                    "Unable to prewarm real front camera for Keyguard", null);
        }
        long generation = camera.lastStartedGeneration();
        final boolean completed;
        final boolean failedBeforeRegistration;
        synchronized (lock) {
            completed = closed || operation != Operation.AUTHENTICATE
                    || operationSerial != expectedSerial;
            if (!completed) activeCameraGeneration = generation;
            failedBeforeRegistration = !completed && !camera.isRunning();
        }
        if (completed) camera.stopIfGeneration(generation);
        else if (failedBeforeRegistration)
            return failOperationForSerial(expectedSerial, HAL_UNAVAILABLE,
                    "Prewarmed Camera2 stopped before generation registration", null);
        else armCaptureHardLimit(Operation.AUTHENTICATE, expectedSerial);
        return HAL_OK;
    }

    // ---- Android biometrics.face@1.0 core operations ----

    @Override public int authenticate(long operationId) {
        // Android16 HidlToAidlSessionAdapter.authenticate(J) invokes this
        // base HIDL 1.0 method. A vendor sehAuthenticate-only implementation
        // would leave Keyguard hanging. Delegate to the genuine native mode.
        // Base HIDL 1.0 does not include Samsung face flags; derive the
        // current Android16 setting rather than disabling open-eyes checks.
        int a16Mode = Settings.Secure.getIntForUser(context.getContentResolver(),
                "face_open_eyes", -1, -2) == 1 ? A16_REQUIRE_OPEN_EYES : 0;
        return sehAuthenticate(operationId, a16Mode,
                new ArrayList<>());
    }

    @Override public int cancel() {
        Operation active;
        long cameraGeneration;
        boolean authInvoked;
        synchronized (lock) {
            if (closed) return HAL_UNAVAILABLE;
            active = operation;
            authInvoked = nativeAuthInvoked;
            cameraGeneration = activeCameraGeneration;
            activeCameraGeneration = 0;
            nativeAuthInvoked = false;
            operation = Operation.NONE;
            operationSerial++;
            cancelEnumerationTimeoutLocked();
            cancelCaptureTimeoutLocked();
        }
        camera.stopIfGeneration(cameraGeneration);
        try {
            switch (active) {
                case AUTHENTICATE:
                    return authInvoked ? backend.cancelAuthentication() : HAL_OK;
                case ENROLL: return backend.cancelEnrollment();
                case ENUMERATE: return backend.cancelEnumeration();
                case REMOVE: return HAL_UNSUPPORTED; // native remove has no cancel
                case NONE: return HAL_OK;
                default: return HAL_UNSUPPORTED;
            }
        } catch (RemoteException | RuntimeException e) {
            Slog.e(TAG, "FaceunlockFix native cancel failed", e);
            return HAL_UNAVAILABLE;
        }
    }

    @Override public int enroll(ArrayList hat, ArrayList features) {
        // The Samsung stock engine requires the *original* Gatekeeper HAT; no
        // synthetic/default token or flags. The lone Android default diverse
        // pose feature can use Samsung's normal native enrollment procedure;
        // its enrollment policy remains owned by the original face engine.
        // Other features are rejected rather than silently downgraded.
        byte[] originalHat = genuineBytes(hat, HAT_LENGTH);
        if (originalHat == null || !hasGenuineTokenMac(originalHat)
                || !supportsNativeEnrollmentFeatures(features)) {
            // Only record sizes, NEVER log the token, HMAC or feature payload.
            Slog.w(TAG, "Native enrollment input rejected, HAT bytes="
                    + (hat == null ? -1 : hat.size()) + ", features count="
                    + (features == null ? -1 : features.size()));
            return rejectOperation(HAL_UNSUPPORTED,
                    "Native enrollment refused: invalid original HAT or unsupported feature count");
        }
        Slog.i(TAG, "FaceunlockFix genuine enrollment: 69-byte Gatekeeper HAT and "
                + "default pose feature accepted; optional debug recording disabled");
        if (!transition(Operation.ENROLL))
            return rejectOperation(HAL_UNAVAILABLE, "Native enrollment busy or user unavailable");
        final long serial;
        synchronized (lock) { serial = operationSerial; }
        try {
            // Samsung BioFaceService EnrollClient.start() passes timeout=0,
            // flags=0 when none explicitly requested.
            final long ticket;
            synchronized (lock) {
                if (closed || operation != Operation.ENROLL
                        || operationSerial != serial) return HAL_OK;
                // Close the same cancel-before-Binder race for enrollment:
                // cancelEnrollment cannot be sent before a later enroll RPC.
                ticket = backend.reserveEnrollment();
            }
            if (ticket == 0L)
                return failOperationForSerial(serial, HAL_UNAVAILABLE,
                        "Genuine native enrollment reservation unavailable", null);
            int result = backend.enrollReserved(ticket, originalHat,
                    FACEUNLOCKFIX_ENROLL_TIMEOUT, 0);
            synchronized (lock) {
                // Enrollment can complete or cancel in a synchronous native
                // Binder callback; never start its preview after completion.
                if (closed || operation != Operation.ENROLL
                        || operationSerial != serial) return HAL_OK;
            }
            if (result != HAL_OK)
                return failOperationForSerial(serial, result, "Native face enrollment refused", null);
            return startFramesAfterAcceptedNative(Operation.ENROLL, serial);
        } catch (RemoteException | RuntimeException e) {
            return failOperationForSerial(serial, HAL_UNAVAILABLE,
                    "FaceunlockFix enrollment failed", e);
        } finally {
            Arrays.fill(originalHat, (byte) 0);
        }
    }

    @Override public int enumerate() {
        if (!transition(Operation.ENUMERATE)) {
            return rejectOperation(HAL_UNAVAILABLE,
                    "Native enumeration rejected: no active user/callback or HAL busy");
        }
        try {
            // Stock Samsung FaceService.checkIntegrity() reads genuine native
            // template IDs via request(11). Some stock daemons accept
            // daemon.enumerate() yet never deliver its async callback.
            // A verified read-only native result is sufficient to
            // complete Android16 cleanup with REAL IDs, not fake templates.
            // Empty results require readable selected-store checks in the
            // backend; native errors and missing storage stay closed.
            int[] nativeIds = backend.readVerifiedNativeTemplateIds();
            if (nativeIds != null) {
                int[] nativeUsers = new int[nativeIds.length];
                synchronized (lock) { Arrays.fill(nativeUsers, currentUser); }
                onEnumerate(backend.getDeviceId(), nativeIds, nativeUsers);
                return HAL_OK;
            }
            int rc = backend.enumerate();
            if (rc != HAL_OK) {
                return failOperation(rc, "Genuine native enumeration rejected", null);
            }
            Slog.i(TAG, "Genuine native enumeration request accepted");
            // A synchronous genuine callback may already have completed it.
            // Otherwise guarantee a bounded failure, never fake templates.
            armEnumerationTimeout();
            return rc;
        } catch (RemoteException | RuntimeException e) {
            return failOperation(HAL_UNAVAILABLE, "FaceunlockFix enumeration failed", e);
        }
    }

    @Override public OptionalUint64 generateChallenge() {
        if (!isOpen()) return optional64(HAL_UNAVAILABLE, 0);
        try {
            long result = backend.preEnroll();
            return result != 0 ? optional64(HAL_OK, result)
                    : optional64(HAL_UNAVAILABLE, 0);
        } catch (RemoteException | RuntimeException e) {
            Slog.e(TAG, "FaceunlockFix preEnroll failed", e);
            return optional64(HAL_UNAVAILABLE, 0);
        }
    }

    @Override public OptionalUint64 getAuthenticatorId() {
        if (!isOpen()) return optional64(HAL_UNAVAILABLE, 0);
        synchronized (lock) {
            if (currentUser < 0) return optional64(HAL_UNAVAILABLE, 0);
        }
        // This genuine native query is safe *after* setActiveGroup, even for
        // an empty user (verified on Exynos9810: it returns 0). It was unsafe
        // before selecting a native user and previously dereferenced null.
        // Query on every call so a real enrolled authenticatorId survives boot.
        try {
            return optional64(HAL_OK, backend.getAuthenticatorId());
        } catch (RemoteException | RuntimeException e) {
            Slog.e(TAG, "FaceunlockFix authenticator ID query failed", e);
            return optional64(HAL_UNAVAILABLE, 0);
        }
    }

    @Override public OptionalBool getFeature(int feature, int faceId) {
        return unsupportedBool();
    }

    @Override public int remove(int faceId) {
        if (!transition(Operation.REMOVE))
            return rejectOperation(HAL_UNAVAILABLE, "Native removal busy or user unavailable");
        try {
            int[] existing = backend.readVerifiedNativeTemplateIds();
            if (existing != null && existing.length == 0) {
                // Native storage already has no template: reconcile the
                // requested Android metadata using the framework removal
                // client's own IDs, never invent an enrollment or a HAT.
                FaceunlockFixRemovalCompletion.complete(callback, currentUser, true);
                endOperation();
                return HAL_OK;
            }
            final long serial;
            synchronized (lock) { serial = operationSerial; }
            callbackWatchdog.postDelayed(() -> {
                synchronized (lock) {
                    if (closed || operation != Operation.REMOVE
                            || operationSerial != serial) return;
                }
                FaceunlockFixRemovalCompletion.complete(callback, currentUser, false);
                endOperation();
            }, 5000);
            int result = backend.remove(faceId);
            if (result != HAL_OK) {
                endOperation();
                sendError(HAL_ERROR_UNABLE_TO_PROCESS);
            }
            return result;
        } catch (RemoteException | RuntimeException e) {
            return failOperation(HAL_UNAVAILABLE, "FaceunlockFix removal failed", e);
        }
    }

    @Override public int resetLockout(ArrayList hardwareAuthToken) {
        // No known native lockout-reset primitive with a validated HAT.
        return HAL_UNSUPPORTED;
    }

    @Override public int revokeChallenge() {
        if (!isOpen()) return HAL_UNAVAILABLE;
        try {
            return backend.postEnroll();
        } catch (RemoteException | RuntimeException e) {
            Slog.e(TAG, "FaceunlockFix postEnroll failed", e);
            return HAL_UNAVAILABLE;
        }
    }

    @Override public int setActiveUser(int userId, String storagePath) {
        synchronized (lock) {
            if (closed || operation != Operation.NONE || userId < 0)
                return HAL_UNAVAILABLE;
        }
        // Never honor untrusted Binder-supplied storagePath. The genuine
        // backend derives its own per-user /data/system/users/<id>/bio/fr.
        try {
            backend.setActiveUser(userId);
            synchronized (lock) { currentUser = userId; }
            Slog.i(TAG, "Genuine native user storage activated");
            return HAL_OK;
        } catch (RemoteException | RuntimeException e) {
            Slog.e(TAG, "FaceunlockFix setActiveUser failed", e);
            return HAL_UNAVAILABLE;
        }
    }

    @Override public int setFeature(int feature, boolean enabled,
                                    ArrayList hardwareAuthToken, int faceId) {
        return HAL_UNSUPPORTED;
    }

    @Override public OptionalUint64 setCallback(IBiometricsFaceClientCallback cb) {
        if (!(cb instanceof ISehBiometricsFaceClientCallback))
            return optional64(HAL_UNSUPPORTED, 0);
        return sehSetCallback((ISehBiometricsFaceClientCallback) cb);
    }

    @Override public void userActivity() {
        // Legacy optional operation, no authenticated result is implied.
    }

    // ---- Samsung vendor.face@2.0 extensions ----

    /**
     * Converts the verified Android16 Samsung bit flags into ORIGINAL stock
     * Samsung stock FaceService mode values. Not the Android biometric strength.
     * Specifically, user setting face_open_eyes=1 (Android16 sends flag 4)
     * MUST use the stronger Samsung native mode 10, never mode 2 or 6.
     *
     * Reject any mismatch, unknown setting or mask flag (0x10). This stock engine's
     * original RGB engine has no validated mask policy, so dropping that bit
     * would silently weaken security. Do not "fix" unsupported input by
     * defaulting to a lower recognition mode.
     */
    private static int stockFaceunlockFixSecurityMode(int androidMode, int openEyesSetting) {
        return stockFaceunlockFixSecurityMode(androidMode, openEyesSetting, 2);
    }

    /**
     * The optional stock fast-recognition algorithm uses speed code 0,
     * standard is code 2. Both retain the *same* original open-eyes flag.
     * A non-stock speed value, mask flag, or inconsistent setting fails closed.
     */
    private static int stockFaceunlockFixSecurityMode(
            int androidMode, int openEyesSetting, int stockSpeed) {
        if (stockSpeed != 2 && stockSpeed != 0) return -1;
        if (androidMode == A16_REQUIRE_OPEN_EYES && openEyesSetting == 1) {
            return stockSpeed == 0
                    ? STOCK_FAST_WITH_OPEN_EYES : FACEUNLOCKFIX_RGB_REQUIRE_OPEN_EYES;
        }
        if (androidMode != 0) return -1;
        if (openEyesSetting == 0) return stockSpeed == 0
                ? STOCK_FAST_NO_OPEN_EYES : FACEUNLOCKFIX_RGB_NO_OPEN_EYES;
        if (openEyesSetting == -1) return stockSpeed == 0
                ? STOCK_FAST_UNSPECIFIED_EYES : FACEUNLOCKFIX_RGB_AUTH_MODE;
        return -1;
    }

    private int userSelectedStockSpeed() {
        // Match original FaceService AuthenticationClient: Keyguard-only
        // faster-recognition preference. Never silently turn it ON or use it
        // for arbitrary app-facing biometric prompts.
        try {
            BaseClientMonitor client = frameworkCallback().mAidlResponseHandler
                    .mScheduler.getCurrentClient();
            if (!(client instanceof FaceAuthenticationClient)
                    || !"com.android.systemui".equals(client.mOwner)) return 2;
        } catch (RemoteException | RuntimeException ignored) {
            return 2;
        }
        int modern = Settings.Secure.getIntForUser(context.getContentResolver(),
                "face_faster_recognition", -1, -2);
        if (modern == 0) return 0;
        if (modern == 2) return 2;
        int legacy = Settings.Secure.getIntForUser(context.getContentResolver(),
                "face_recognition_speed_up", -1, -2);
        return legacy == 1 ? 0 : 2;
    }

    @Override public int sehAuthenticate(long operationId, int securityMode,
                                         ArrayList fidoRequestData) {
        int openEyesSetting = Settings.Secure.getIntForUser(
                context.getContentResolver(), "face_open_eyes", -1, -2);
        final int nativeSecurityMode = stockFaceunlockFixSecurityMode(
                securityMode, openEyesSetting, userSelectedStockSpeed());
        if (nativeSecurityMode < 0)
            return rejectOperation(HAL_UNSUPPORTED,
                    "Unsupported Android16 face security flags or setting mismatch");
        byte[] originalFido = genuineBytes(fidoRequestData, 0);
        if (originalFido == null)
            return rejectOperation(HAL_UNSUPPORTED, "Invalid native FIDO request");
        if (!transition(Operation.AUTHENTICATE))
            return rejectOperation(HAL_UNAVAILABLE, "Native authentication busy or user unavailable");
        final long serial;
        synchronized (lock) { serial = operationSerial; }
        try {
            // The native Binder call and Camera2 open previously ran one after
            // another. Start the real camera first but forbid frame delivery
            // until daemon.authenticate accepts the exact current operation.
            int warmup = warmCameraDuringNativeAuthentication(serial);
            if (warmup != HAL_OK) return warmup;
            final long ticket;
            synchronized (lock) {
                if (closed || operation != Operation.AUTHENTICATE
                        || operationSerial != serial) return HAL_OK;
                // Reserve the native start *before* cancel() can acquire the
                // HIDL lock. A cancellation may then revoke that reservation
                // or defer the real native cancel until authenticate replies.
                // Do not hold this lock over the subsequent Binder RPC.
                ticket = backend.reserveAuthentication();
                if (ticket != 0L) nativeAuthInvoked = true;
            }
            if (ticket == 0L)
                return failOperationForSerial(serial, HAL_UNAVAILABLE,
                        "Genuine native authentication reservation unavailable", null);
            Slog.i(TAG, "FaceunlockFix authentic native mode="
                    + nativeSecurityMode);
            long nativeStartElapsed = SystemClock.elapsedRealtime();
            int rc = backend.authenticateReserved(ticket, operationId,
                    nativeSecurityMode, originalFido);
            synchronized (lock) {
                // A synchronous native callback may finish before the Binder
                // reply, or cancel() may have withdrawn the reserved start.
                if (closed || operation != Operation.AUTHENTICATE
                        || operationSerial != serial) return HAL_OK;
            }
            // Duration only (no HAT, face ID, FIDO bytes or camera payload).
            // A stale completed/canceled session is not attributed to a new
            // unlock in the timing logs.
            Slog.i(TAG, "Genuine native authenticate Binder setupMs="
                    + (SystemClock.elapsedRealtime() - nativeStartElapsed));
            if (rc != HAL_OK) return failOperationForSerial(serial, rc,
                    "Native authentication rejected", null);
            final long generation;
            synchronized (lock) {
                // Native callbacks can finish/cancel before the synchronous
                // authenticate() Binder reply. Never resurrect old sessions.
                if (closed || operation != Operation.AUTHENTICATE
                        || operationSerial != serial) return HAL_OK;
                generation = activeCameraGeneration;
            }
            if (generation == 0 || !camera.armNativeTransport(generation)) {
                return failOperationForSerial(serial, HAL_UNAVAILABLE,
                        "Prewarmed Camera2 session ended before native accept", null);
            }
            return HAL_OK;
        } catch (RemoteException | RuntimeException e) {
            return failOperationForSerial(serial, HAL_UNAVAILABLE,
                    "FaceunlockFix authentication failed", e);
        } finally {
            Arrays.fill(originalFido, (byte) 0);
        }
    }

    @Override public int sehCloseTaSession() {
        if (!isOpen()) return HAL_UNAVAILABLE;
        try {
            return backend.request(REQ_SESSION_CLOSE, new byte[0], new byte[0], 0);
        } catch (RemoteException | RuntimeException e) {
            Slog.e(TAG, "FaceunlockFix close TA failed", e);
            return HAL_UNAVAILABLE;
        }
    }

    @Override public String sehGetEngineVersion() {
        // No verified conversion from native GET_TA_VERSION to this string.
        return null;
    }

    @Override public void sehGetSecurityLevel(
            ISehBiometricsFace$sehGetSecurityLevelCallback result) {
        if (result == null) return;
        // Samsung FaceService.java:4184-4199 first requests CAMERA_INFO(10001).
        // If it returns 0 (no daemon-managed preview), Samsung stock sets its
        // *legacy vendor session level* to 2; only a return of 1 makes it
        // query native SECURITY_LEVEL(10002). Device verified both return 0
        // in the non-daemon-managed stock RGB camera path. This is NOT the
        // Android platform biometric strength: AuthService still advertises
        // non-JDM face as BIOMETRIC_WEAK (0xff), never STRONG (0x0f).
        if (!isOpen()) {
            result.onValues(HAL_UNAVAILABLE, 0);
            return;
        }
        byte[] cameraInfo = new byte[256];
        try {
            int infoStatus = backend.request(REQ_GET_CAMERA_INFO,
                    new byte[0], cameraInfo, 0);
            int nativeLevel;
            if (infoStatus == 0) {
                nativeLevel = 2; // Real Samsung stock FaceService legacy fallback
            } else if (infoStatus == 1) {
                nativeLevel = backend.request(REQ_GET_SECURITY_LEVEL,
                        new byte[0], new byte[0], 0);
            } else {
                result.onValues(HAL_UNSUPPORTED, 0);
                return;
            }
            if (nativeLevel >= 1 && nativeLevel <= 3) {
                result.onValues(HAL_OK, nativeLevel);
            } else {
                result.onValues(HAL_UNSUPPORTED, 0);
            }
        } catch (RemoteException | RuntimeException exception) {
            Slog.e(TAG, "Real stock TA security-level query failed", exception);
            result.onValues(HAL_UNAVAILABLE, 0);
        } finally {
            Arrays.fill(cameraInfo, (byte) 0);
        }
    }

    @Override public String sehGetTaInfo() {
        return null; // unknown native output, never synthetic TA metadata
    }

    @Override public boolean sehIsTaSessionClosed() {
        // Request(13)'s return convention has not been proven. Fail closed
        // instead of advertising an open, authenticated secure session.
        return true;
    }

    @Override public int sehOpenTaSession() {
        if (!isOpen()) return HAL_UNAVAILABLE;
        try {
            return backend.request(REQ_SESSION_OPEN, new byte[0], new byte[0], 0);
        } catch (RemoteException | RuntimeException e) {
            Slog.e(TAG, "FaceunlockFix open TA failed", e);
            return HAL_UNAVAILABLE;
        }
    }

    @Override public int sehPauseEnrollment() {
        // Original pause/resume request payload contract not confirmed.
        return HAL_UNSUPPORTED;
    }

    @Override public int sehResumeEnrollment() { return HAL_UNSUPPORTED; }

    @Override public OptionalUint64 sehSetCallback(
            ISehBiometricsFaceClientCallback cb) {
        if (cb == null || !isOpen()) return optional64(HAL_UNAVAILABLE, 0);
        synchronized (lock) {
            if (closed) return optional64(HAL_UNAVAILABLE, 0);
            callback = cb;
        }
        Slog.i(TAG, "FaceunlockFix genuine client callback registered");
        // The backend was already initialized with the real NativeFace
        // callback in connect(). No TestHal-generated callback/sensor ID.
        return optional64(HAL_OK, backend.getDeviceId());
    }

    @Override public int sehSetFaceTag(ArrayList tag) {
        return HAL_UNSUPPORTED;
    }

    @Override public int sehSetRotation(int rotation) {
        // Real Camera2 source sends the verified Samsung per-frame rotation.
        // The vendor control request's payload is unverified.
        return HAL_UNSUPPORTED;
    }

    // ---- IBase / IHwBinder methods ----

    @Override public void debug(NativeHandle handle, ArrayList<String> options) {
        // Never log biometric tokens, raw face frames or per-user templates.
    }

    @Override public DebugInfo getDebugInfo() {
        DebugInfo info = new DebugInfo();
        info.pid = HidlSupport.getPidIfSharable();
        info.ptr = 0;
        info.arch = 0;
        return info;
    }

    private static byte[] hex(String value) {
        byte[] result = new byte[value.length() / 2];
        for (int i = 0; i < result.length; i++) {
            result[i] = (byte) Integer.parseInt(value.substring(2 * i, 2 * i + 2), 16);
        }
        return result;
    }

    @Override public ArrayList<byte[]> getHashChain() {
        // Hashes copied from Android 16's same ISehBiometricsFace TestHal
        // descriptor implementation; not hashes of a fabricated HAL.
        return new ArrayList<>(Arrays.asList(
                hex("c32e54f8ed166da9fcedffd7aed62633ef1008053707d45d923c73ae6d4da981"),
                hex("081c60bc9bf7b05f35d5478bc26bc16da180fddf77874036760c4f6cf27eea44"),
                hex("e18ff318f3fc43db37f554696dc4e551abb9b119bde53950f73e28ce33a97a40"),
                hex("ec7fd79ed02dfa85bc499426adae3ebe23ef0524f3cd6957139324b83b18ca4c")));
    }

    @Override public ArrayList<String> interfaceChain() {
        return new ArrayList<>(Arrays.asList(VENDOR_HIDL, FACE_HIDL, BASE_HIDL));
    }

    @Override public String interfaceDescriptor() { return VENDOR_HIDL; }

    @Override public boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) {
        if (recipient == null) return false;
        synchronized (lock) {
            if (closed || backend.getDeviceId() == 0) return false;
            recipients.put(recipient, cookie);
            return true;
        }
    }

    @Override public boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) {
        synchronized (lock) { return recipients.remove(recipient) != null; }
    }

    @Override public void notifySyspropsChanged() {
        HwBinder.enableInstrumentation();
    }

    @Override public void onTransact(int code, HwParcel request, HwParcel reply, int flags) {
        // This object is injected directly as a typed Java IBiometricsFace.
        // It is NOT exposed as a service in hwservicemanager. Never silently
        // acknowledge remote HIDL calls that were not actually executed.
        throw new UnsupportedOperationException("FaceunlockFixHidl local-only HwBinder");
    }

    @Override public void ping() {
        if (!isOpen()) throw new IllegalStateException("FaceunlockFix stock faced unavailable");
    }

    @Override public IHwInterface queryLocalInterface(String descriptor) {
        return VENDOR_HIDL.equals(descriptor) || FACE_HIDL.equals(descriptor) ? this : null;
    }

    @Override public void setHALInstrumentation() {
        HwBinder.enableInstrumentation();
    }

    @Override public String toString() { return VENDOR_HIDL + "@faceunlockfix-real-native"; }

    // ---- Only authentic Samsung native callback events reach framework ----

    @Override public void onEnrollResult(long dev, int faceId, int user, int progress) {
        synchronized (lock) {
            if (closed || currentUser != user || operation != Operation.ENROLL
                    || dev != backend.getDeviceId()) return;
        }
        if (progress < 0 || progress > 100 || faceId < 0
                || (progress == 100 && faceId == 0)) {
            failOperation(HAL_UNAVAILABLE, "Invalid native enrollment progress", null);
            return;
        }
        synchronized (lock) {
            if (!loggedEnrollmentProgress) {
                loggedEnrollmentProgress = true;
                // Metadata only, no frames, HATs or templates.
                Slog.i(TAG, "First genuine native enrollment callback: progress="
                        + progress + ", faceIdPresent=" + (faceId > 0));
            }
        }
        try {
            // The REAL Samsung AIDL service treats this callback as progress
            // 0..100 (EnrollClient.java:24, terminal progress == 100).
            // Android 16 HIDL converter expects remaining steps, terminal 0.
            // Platform onTransact(1) ultimately calls this exact typed method.
            // Only genuine native terminal progress=100 becomes remaining=0.
            frameworkCallback().mAidlResponseHandler.onEnrollmentProgress(
                    faceId, 100 - progress);
        } catch (RemoteException | RuntimeException ex) {
            failOperation(HAL_UNAVAILABLE, "FaceunlockFix enrollment callback failed", ex);
            return;
        }
        if (progress == 100) endOperation();
    }

    @Override public void onAcquired(long dev, int acquiredInfo) {
        synchronized (lock) {
            if (closed || operation == Operation.NONE
                    || dev != backend.getDeviceId()) return;
            if (acquiredDiagnostics++ < 4) {
                Slog.i(TAG, "Real native acquired state=" + acquiredInfo
                        + ", operation=" + operation);
            }
        }
        try {
            // Platform onTransact(3) posts AcquisitionClient.onAcquired to the
            // biometric scheduler (via AidlResponseHandler.handleResponse).
            // Preserve that scheduling and its current-client type guard;
            // never use HwBinder_native_transact on a local callback.
            frameworkCallback().mAidlResponseHandler.handleResponse(
                    AcquisitionClient.class,
                    client -> ((AcquisitionClient) client).onAcquired(acquiredInfo, 0),
                    null);
        } catch (RemoteException | RuntimeException ex) {
            failOperation(HAL_UNAVAILABLE, "FaceunlockFix acquired callback failed", ex);
        }
    }

    @Override public void onAuthenticated(long dev, int faceId, int user,
                                          byte[] originalHat, byte[] originalFido) {
        final long authenticatorElapsedMs;
        synchronized (lock) {
            if (closed || operation != Operation.AUTHENTICATE || currentUser != user
                    || dev != backend.getDeviceId()) return;
            authenticatorElapsedMs = SystemClock.elapsedRealtime() - operationStartElapsedMs;
        }
        // Android 16's HidlToAidlCallbackConverter would count positive
        // face IDs with a short HAT as success(nullptr). Forbid that path.
        if (faceId > 0 && !hasGenuineTokenMac(originalHat)) {
            failOperation(HAL_UNAVAILABLE, "Positive face without genuine signed 69-byte HAT", null);
            return;
        }
        if (faceId < 0) {
            failOperation(HAL_UNAVAILABLE, "Invalid native face ID", null);
            return;
        }
        try {
            byte[] token = faceId > 0 ? originalHat : new byte[0];
            // Android16 already implements the correctly typed HIDL callback.
            // It converts the *original native* signed 69-byte HAT to AIDL.
            frameworkCallback().onAuthenticated(dev, faceId, user, box(token));
        } catch (RemoteException | RuntimeException ex) {
            failOperation(HAL_UNAVAILABLE, "FaceunlockFix authentication callback failed", ex);
            return;
        }
        if (faceId > 0) {
            // Timing metadata only: no raw images, HAT, face IDs, or template
            // details. Allows comparing actual Keyguard latency after install.
            Slog.i(TAG, "Genuine native face authentication latencyMs="
                    + authenticatorElapsedMs);
            endOperation();
        }
        // faceId == 0 may indicate acquired retry; only backend says when
        // an operation genuinely completes. Never promote retry to success.
    }

    @Override public void onError(long dev, int nativeCode) {
        synchronized (lock) {
            // Old native callbacks after a failed cleanup must never poison
            // the next framework operation when no FaceunlockFix action is pending.
            if (closed || operation == Operation.NONE || dev != backend.getDeviceId())
                return;
        }
        boolean removal;
        synchronized (lock) { removal = operation == Operation.REMOVE; }
        if (removal) {
            final long serial;
            synchronized (lock) { serial = operationSerial; }
            // Native remove may be waiting for this synchronous Binder
            // callback to return. Never reenter faced from that callback.
            callbackWatchdog.post(() -> {
                synchronized (lock) {
                    if (closed || operation != Operation.REMOVE
                            || operationSerial != serial) return;
                }
                boolean empty = false;
                try {
                    int[] ids = backend.readVerifiedNativeTemplateIds();
                    empty = ids != null && ids.length == 0;
                } catch (RemoteException | RuntimeException e) {
                    Slog.w(TAG, "Cannot verify native store after removal error", e);
                }
                FaceunlockFixRemovalCompletion.complete(callback, currentUser, empty);
                endOperation();
            });
            return;
        }
        endOperation();
        sendError(nativeCode >= 1 && nativeCode <= 9
                ? nativeCode : HAL_ERROR_UNABLE_TO_PROCESS);
    }

    @Override public void onRemoved(long dev, int faceId, int user) {
        synchronized (lock) {
            if (closed || operation != Operation.REMOVE || currentUser != user
                    || dev != backend.getDeviceId()) return;
        }
        if (faceId == 0) {
            // Stock faced uses zero as its remove-all terminal event. Android
            // AIDL needs the actual framework IDs, not an empty removal list.
            // Verify absence outside the synchronous native callback thread.
            final long serial;
            synchronized (lock) { serial = operationSerial; }
            callbackWatchdog.post(() -> {
                synchronized (lock) {
                    if (closed || operation != Operation.REMOVE
                            || operationSerial != serial) return;
                }
                boolean empty = false;
                try {
                    int[] ids = backend.readVerifiedNativeTemplateIds();
                    empty = ids != null && ids.length == 0;
                } catch (RemoteException | RuntimeException e) {
                    Slog.w(TAG, "Cannot verify native remove-all completion", e);
                }
                FaceunlockFixRemovalCompletion.complete(callback, currentUser, empty);
                endOperation();
            });
            return;
        }
        try {
            ISehBiometricsFaceClientCallback cb = callback;
            if (cb == null) throw new RemoteException("No real callback");
            ArrayList<Integer> removed = new ArrayList<>();
            if (faceId > 0) removed.add(faceId);
            cb.onRemoved(user, removed);
            endOperation();
        } catch (RemoteException | RuntimeException ex) {
            failOperation(HAL_UNAVAILABLE, "FaceunlockFix remove callback failed", ex);
        }
    }

    @Override public void onEnumerate(long dev, int[] faceIds, int[] groups) {
        synchronized (lock) {
            if (closed || operation != Operation.ENUMERATE || dev != backend.getDeviceId()
                    || faceIds == null || groups == null || faceIds.length != groups.length) {
                Slog.w(TAG, "Rejected invalid/unexpected native enumerate callback");
                return;
            }
            for (int group : groups) {
                if (currentUser != group) {
                    Slog.w(TAG, "Rejected native enumerate callback for wrong user");
                    return;
                }
            }
        }
        try {
            ISehBiometricsFaceClientCallback cb = callback;
            if (cb == null) throw new RemoteException("No real callback");
            ArrayList<Integer> ids = new ArrayList<>();
            for (int faceId : faceIds) {
                if (faceId <= 0) throw new RemoteException("Invalid native template ID");
                ids.add(faceId);
            }
            cb.onEnumerate(currentUser, ids);
            Slog.i(TAG, "Genuine native enumeration completed; templates=" + ids.size());
            endOperation();
        } catch (RemoteException | RuntimeException ex) {
            failOperation(HAL_UNAVAILABLE, "FaceunlockFix enumerate callback failed", ex);
        }
    }

    @Override public void onNativeDied() {
        Map<IHwBinder.DeathRecipient, Long> old;
        synchronized (lock) {
            if (closed) return;
            closed = true;
            operation = Operation.NONE;
            nativeAuthInvoked = false;
            operationSerial++;
            cancelEnumerationTimeoutLocked();
            cancelCaptureTimeoutLocked();
            old = new HashMap<>(recipients);
            recipients.clear();
        }
        if (camera != null) camera.stop();
        sendError(HAL_ERROR_HW_UNAVAILABLE);
        for (Map.Entry<IHwBinder.DeathRecipient, Long> entry : old.entrySet()) {
            try {
                entry.getKey().serviceDied(entry.getValue());
            } catch (RuntimeException ex) {
                Slog.w(TAG, "HIDL death notification failed", ex);
            }
        }
    }

    // Camera callbacks are not face results. They may cancel an operation,
    // but can never report enrollment/authentication success.
    @Override public void onStreaming(long generation) {
        synchronized (lock) {
            if (closed || activeCameraGeneration != generation) return;
        }
        Slog.i(TAG, "FaceunlockFix real front-camera repeating capture started");
    }
    @Override public void onNativeProcessingFinished(long generation) {
        synchronized (lock) {
            if (closed || activeCameraGeneration != generation) return;
        }
        // The Camera2 worker has already stopped its own generation. A late
        // completion must never close a new authentication capture.
        Slog.i(TAG, "FaceunlockFix native engine finished processing real frames");
    }
    @Override public void onFailure(long generation, String reason, Throwable cause) {
        final long serial;
        synchronized (lock) {
            if (closed || generation == 0 || activeCameraGeneration != generation) return;
            serial = operationSerial;
        }
        failOperationForSerial(serial, HAL_UNAVAILABLE,
                "FaceunlockFix Camera2: " + reason, cause);
    }

    @Override public void close() throws RemoteException {
        synchronized (lock) {
            if (closed) return;
            closed = true;
            operation = Operation.NONE;
            nativeAuthInvoked = false;
            operationSerial++;
            cancelEnumerationTimeoutLocked();
            cancelCaptureTimeoutLocked();
            recipients.clear();
            callback = null;
        }
        camera.close();
        backend.close();
    }
}
