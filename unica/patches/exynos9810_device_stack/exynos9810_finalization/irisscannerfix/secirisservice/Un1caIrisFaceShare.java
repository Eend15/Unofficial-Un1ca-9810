package com.samsung.android.server.iris;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.OutputConfiguration;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/**
 * Intelligent Scan camera sharing, as on stock: the iris service owns the front RGB
 * camera (Camera 1) for its colour preview and the same capture session also fills
 * face unlock's 640x480 ImageReader, so face and iris scan at the same time.
 *
 * Face unlock (FaceunlockFixCamera2FrameSource in system_server) sends its ImageReader
 * Surface with TX_ATTACH while an iris client is active. The Surface is added as a
 * second output of the front session: on the next session start, or straight away by
 * re-creating a running session. TX_DETACH takes it out of the repeating request
 * before face closes its reader. Only the system uid may call either.
 */
final class Un1caIrisFaceShare {
    private static final String TAG = "UN1CA-IrisFaceShare";
    private static final String DESCRIPTOR = "com.samsung.android.camera.iris.IIrisService";
    // Inside FIRST_CALL_TRANSACTION..LAST_CALL_TRANSACTION, far above IIrisService's codes.
    static final int TX_ATTACH = 0x00ff5501;
    static final int TX_DETACH = 0x00ff5502;
    static final int TX_EXPECT_FACE = 0x00ff5503;

    // An authenticate() call is setting up an iris scan (client not registered yet).
    private static final long AUTH_SETUP_WINDOW_MS = 1500;
    private static volatile long sAuthStartMs = -AUTH_SETUP_WINDOW_MS;

    private static final Object sLock = new Object();
    private static Surface sFace;
    private static IBinder sToken;

    private Un1caIrisFaceShare() { }

    /** Injected at the top of IrisServiceWrapper.authenticate(). */
    static void onAuthenticateStart() {
        sAuthStartMs = SystemClock.uptimeMillis();
    }

    /** Called first from IrisServiceWrapper.onTransact; true means the call was handled. */
    static boolean onTransact(Object service, int code, Parcel data, Parcel reply) {
        if (code == TX_EXPECT_FACE) {
            // SystemUI announces an Intelligent Scan before it lays out the preview anchor
            // and calls authenticate(), so face can join before the first front session.
            if (!isSystemUi(service, Binder.getCallingUid())) {
                throw new SecurityException("Intelligent Scan announce is for SystemUI only");
            }
            data.enforceInterface(DESCRIPTOR);
            onAuthenticateStart();
            if (reply != null) {
                reply.writeNoException();
                reply.writeInt(1);
            }
            return true;
        }
        if (code != TX_ATTACH && code != TX_DETACH) return false;
        if (Binder.getCallingUid() != Process.SYSTEM_UID) {
            throw new SecurityException("Intelligent Scan camera share is for system_server only");
        }
        data.enforceInterface(DESCRIPTOR);
        boolean ok;
        if (code == TX_ATTACH) {
            Surface face = data.readInt() != 0 ? Surface.CREATOR.createFromParcel(data) : null;
            IBinder token = data.readStrongBinder();
            ok = attach(service, face, token);
        } else {
            ok = detach(service);
        }
        if (reply != null) {
            reply.writeNoException();
            reply.writeInt(ok ? 1 : 0);
        }
        return true;
    }

    private static boolean attach(Object service, Surface face, IBinder token) {
        if (face == null || token == null) return false;
        Object controller;
        try {
            // Intelligent Scan starts face while iris is still opening its cameras, so the
            // face output can go into the very first front session.
            if (get(service, "mCurrentClient") == null
                    && SystemClock.uptimeMillis() - sAuthStartMs > AUTH_SETUP_WINDOW_MS) {
                Log.i(TAG, "attach refused: no iris scan running");
                return false;
            }
            controller = get(service, "mIRController");
        } catch (Throwable t) {
            Log.w(TAG, "attach refused", t);
            return false;
        }
        synchronized (sLock) {
            sFace = face;
            sToken = token;
        }
        Log.i(TAG, "face unlock joined the iris front camera stream");
        try {
            // A front session that is already streaming has to be re-created with the
            // extra output; otherwise the next startFrontPreview() picks it up.
            CameraDevice device = (CameraDevice) get(controller, "mFrontCameraDevice");
            CameraCaptureSession session = (CameraCaptureSession) get(controller, "mFrontCaptureSession");
            Handler handler = (Handler) get(controller, "mFrontHandler");
            if (device != null && session != null && handler != null) {
                handler.post(() -> recreateSession(controller));
            }
        } catch (Throwable t) {
            Log.w(TAG, "cannot add face output to running session", t);
        }
        return true;
    }

    private static boolean detach(Object service) {
        Surface face;
        synchronized (sLock) {
            face = sFace;
            sFace = null;
            sToken = null;
        }
        if (face == null) return true;
        try {
            Object controller = get(service, "mIRController");
            CaptureRequest.Builder builder =
                    (CaptureRequest.Builder) get(controller, "mFrontPreviewRequestBuilder");
            CameraCaptureSession session = (CameraCaptureSession) get(controller, "mFrontCaptureSession");
            if (builder != null) {
                builder.removeTarget(face);
                if (session != null) {
                    session.setRepeatingRequest(builder.build(),
                            (CameraCaptureSession.CaptureCallback) get(controller, "mCaptureCallback"),
                            (Handler) get(controller, "mFrontHandler"));
                }
            }
        } catch (Throwable t) {
            // The iris session may be closing at the same time; face closes its reader anyway.
            Log.w(TAG, "detach while front session changes", t);
        }
        Log.i(TAG, "face unlock left the iris front camera stream");
        return true;
    }

    /**
     * Injected in IRV2Controller.startFrontPreview() right before
     * createCaptureSessionByOutputConfigurations: adds face unlock's Surface as a
     * second output and request target when face has joined.
     */
    static void onFrontSession(Object controller, List<OutputConfiguration> outputs) {
        Surface face;
        IBinder token;
        synchronized (sLock) {
            face = sFace;
            token = sToken;
        }
        if (face == null || outputs == null) return;
        if (token == null || !token.isBinderAlive()) {
            synchronized (sLock) {
                if (sFace == face) { sFace = null; sToken = null; }
            }
            return;
        }
        try {
            CaptureRequest.Builder builder =
                    (CaptureRequest.Builder) get(controller, "mFrontPreviewRequestBuilder");
            if (builder == null) return;
            outputs.add(new OutputConfiguration(face));
            builder.addTarget(face);
            Log.i(TAG, "front session carries face unlock output");
        } catch (Throwable t) {
            Log.w(TAG, "face output not added", t);
        }
    }

    private static void recreateSession(Object controller) {
        try {
            CameraDevice device = (CameraDevice) get(controller, "mFrontCameraDevice");
            Surface front = (Surface) get(controller, "outputFrontSurface");
            if (device == null || front == null) return;
            Method make = controller.getClass().getDeclaredMethod("createOutputConfiguration",
                    Surface.class, int.class);
            make.setAccessible(true);
            List<OutputConfiguration> outputs = new ArrayList<>(2);
            outputs.add((OutputConfiguration) make.invoke(controller, front, 1));
            int before = outputs.size();
            onFrontSession(controller, outputs);
            if (outputs.size() == before) return;
            Class<?> cb = Class.forName("com.samsung.android.server.iris.IRV2Controller$20");
            Constructor<?> ctor = cb.getDeclaredConstructor(controller.getClass());
            ctor.setAccessible(true);
            device.createCaptureSessionByOutputConfigurations(outputs,
                    (CameraCaptureSession.StateCallback) ctor.newInstance(controller), null);
        } catch (Throwable t) {
            Log.w(TAG, "front session not re-created for face", t);
        }
    }

    private static boolean isSystemUi(Object service, int uid) {
        try {
            String[] pkgs = ((android.content.Context) service).getPackageManager().getPackagesForUid(uid);
            if (pkgs == null) return false;
            for (String p : pkgs) if ("com.android.systemui".equals(p)) return true;
        } catch (Throwable t) {
            Log.w(TAG, "caller check failed", t);
        }
        return false;
    }

    private static Object get(Object owner, String name) throws ReflectiveOperationException {
        for (Class<?> c = owner.getClass(); c != null; c = c.getSuperclass()) {
            try {
                Field f = c.getDeclaredField(name);
                f.setAccessible(true);
                return f.get(owner);
            } catch (NoSuchFieldException ignored) { }
        }
        throw new NoSuchFieldException(name);
    }
}
