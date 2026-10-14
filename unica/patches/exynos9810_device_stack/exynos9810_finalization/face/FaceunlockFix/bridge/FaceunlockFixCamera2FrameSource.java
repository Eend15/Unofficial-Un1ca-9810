package com.android.server.biometrics.sensors.face.faceunlockfix;

import android.Manifest;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.ImageFormat;
import android.graphics.Rect;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.hardware.display.DisplayManager;
import android.media.Image;
import android.media.ImageReader;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import android.util.Size;
import android.view.Display;
import android.view.Surface;

import java.util.ArrayList;
import java.util.List;

/**
 * Real Camera2 RGB/front-camera frame transport for the stock Exynos9810 faced.
 *
 * Input: genuine 640x480 NV21 or YUV_420_888 from the FRONT camera. Output:
 * exact Samsung stock FrCamCtrl plane concatenation, tagged with the ORIGINAL native
 * imageType: NV21=0, YUV_420_888=2, never synthetic/repacked-frame semantics.
 * Does not run enrollment, manufacture hardware auth tokens, or report matches.
 * The caller must own a connected/initialized FaceunlockFixNativeBackend, permissions,
 * enrollment/authentication lifecycle and any optional preview Surface.
 */
public final class FaceunlockFixCamera2FrameSource implements AutoCloseable {
    private static final String TAG = "FaceunlockFixCamera";
    public static final int WIDTH = 640;
    public static final int HEIGHT = 480;
    public static final int FACEUNLOCKFIX_IMAGE_TYPE_NV21 = 0;
    public static final int FACEUNLOCKFIX_IMAGE_TYPE_YUV_420_888 = 2;
    private static final CaptureRequest.Key<Integer> SAMSUNG_SHOOTING_MODE =
            new CaptureRequest.Key<>("samsung.android.control.shootingMode", Integer.class);

    public interface Listener {
        /** A Camera2 repeating request was accepted; this is not a face result. */
        void onStreaming(long generation);

        /** Native tx16 returned 1 (it finished processing frames). NOT auth success. */
        void onNativeProcessingFinished(long generation);

        /** Capture, frame conversion or native transport failed; cancel the HAL operation. */
        void onFailure(long generation, String reason, Throwable cause);
    }

    private final Object lock = new Object();
    private final Context context;
    private final FaceunlockFixNativeBackend daemon;
    private final Listener listener;
    private final CameraManager cameraManager;
    // Camera IDs/output capabilities are stable for a device boot. Avoid
    // repeating multi-Binder metadata discovery on every Keyguard wakeup.
    // Only genuine Camera2-reported front sensors may populate this cache.
    private CameraSelection cachedFrontCamera;
    private final Display defaultDisplay;

    // All fields below are guarded by lock. Async callbacks carry their epoch.
    private boolean running;
    private boolean frameInFlight;
    // During Keyguard startup the real camera may warm up in parallel with
    // native authenticate(), but no image may reach faced before HAL accepts.
    private boolean nativeTransportArmed;
    private long epoch;
    private long lastStartedGeneration;
    private long captureStartElapsedMs;
    private HandlerThread cameraThread;
    private HandlerThread transportThread;
    private Handler cameraHandler;
    private Handler transportHandler;
    private ImageReader imageReader;
    private CameraDevice camera;
    private CameraCaptureSession session;
    private int nativeImageType;
    private int imageFormat;
    private boolean firstFrameLogged;

    private static final class CameraSelection {
        final String id;
        final int format;
        final int imageType;

        CameraSelection(String id, int format, int imageType) {
            this.id = id;
            this.format = format;
            this.imageType = imageType;
        }
    }

    public FaceunlockFixCamera2FrameSource(Context context, FaceunlockFixNativeBackend daemon,
            Listener listener) {
        if (context == null || daemon == null || listener == null) {
            throw new IllegalArgumentException("Context, genuine faced daemon and listener required");
        }
        this.context = context;
        this.daemon = daemon;
        this.listener = listener;
        cameraManager = (CameraManager) context.getSystemService(Context.CAMERA_SERVICE);
        if (cameraManager == null) {
            throw new IllegalStateException("No Android CameraManager");
        }
        DisplayManager displayManager = (DisplayManager) context.getSystemService(
                Context.DISPLAY_SERVICE);
        defaultDisplay = displayManager == null ? null
                : displayManager.getDisplay(Display.DEFAULT_DISPLAY);
    }

    /** Starts capture asynchronously. True means open requested, not yet streaming. */
    public boolean start() { return start(null); }

    /**
     * Optionally mirrors frames to a caller-owned preview surface; never releases it.
     * CAMERA permission must already be held by the hosting process.
     */
    public boolean start(Surface previewSurface) {
        return start(previewSurface, true);
    }

    /**
     * Start genuine Camera2 asynchronously before native authentication
     * returns. Frames are dropped until armNativeTransport() confirms that
     * stock IFaceDaemon accepted the operation. Enrollment uses the original
     * immediate-arm path because it needs a genuine Samsung preview Surface.
     */
    public boolean start(Surface previewSurface, boolean armImmediately) {
        if (context.checkSelfPermission(Manifest.permission.CAMERA)
                != PackageManager.PERMISSION_GRANTED) {
            return false;
        }
        if (previewSurface != null && !previewSurface.isValid()) {
            return false;
        }

        final long generation;
        synchronized (lock) {
            if (running) return false;
            running = true;
            generation = ++epoch;
            lastStartedGeneration = generation;
            captureStartElapsedMs = SystemClock.elapsedRealtime();
            frameInFlight = false;
            nativeTransportArmed = armImmediately;
            firstFrameLogged = false;
        }
        try {
            // Exact Samsung FrCamCtrl priority: native NV21 when advertised,
            // otherwise YUV_420_888 with imageType=2 (not packed NV21=0).
            CameraSelection selected;
            synchronized (lock) {
                selected = cachedFrontCamera;
            }
            if (selected == null) {
                selected = selectFrontCamera();
                synchronized (lock) {
                    if (!isCurrent(generation)) return false;
                    cachedFrontCamera = selected;
                }
            }
            synchronized (lock) {
                if (!isCurrent(generation)) return false;
                cameraThread = new HandlerThread("FaceunlockFixCamera2");
                // Favor first real frame delivery during active Keyguard
                // capture; this short-lived thread is stopped with the
                // session and never performs idle background recognition.
                transportThread = new HandlerThread("FaceunlockFixFrames",
                        android.os.Process.THREAD_PRIORITY_DISPLAY);
                cameraThread.start();
                transportThread.start();
                cameraHandler = new Handler(cameraThread.getLooper());
                transportHandler = new Handler(transportThread.getLooper());
                nativeImageType = selected.imageType;
                imageFormat = selected.format;
                // One captured Image is owned briefly by the Binder worker;
                // reserve two extra ImageReader slots so acquireLatestImage()
                // can still discard stale captures while that image is held.
                // This avoids large YUV plane copies on the camera callback
                // thread and keeps real frames arriving at low latency.
                imageReader = ImageReader.newInstance(WIDTH, HEIGHT,
                        selected.format, 3);
                imageReader.setOnImageAvailableListener(
                        reader -> onImageAvailable(generation, reader), cameraHandler);
                Log.i(TAG, "Genuine stock face camera payload selected, imageType="
                        + selected.imageType + ", previewSurfaceAttached="
                        + (previewSurface != null));
                cameraManager.openCamera(selected.id, stateCallback(generation, previewSurface),
                        cameraHandler);
            }
            return true;
        } catch (CameraAccessException | RuntimeException e) {
            fail(generation, "Unable to start front camera", e);
            return false;
        }
    }

    public boolean isRunning() {
        synchronized (lock) { return running; }
    }

    /** Stable generation for the most recent start, even if it failed quickly. */
    public long lastStartedGeneration() {
        synchronized (lock) { return lastStartedGeneration; }
    }

    /** No video reaches the genuine native matcher before native accept. */
    public boolean armNativeTransport(long expectedGeneration) {
        synchronized (lock) {
            if (!isCurrent(expectedGeneration)) return false;
            nativeTransportArmed = true;
            return true;
        }
    }

    /** Never allow teardown from an old session to close a newer camera. */
    public void stopIfGeneration(long generation) {
        synchronized (lock) {
            if (generation != 0 && running && epoch == generation) stop();
        }
    }

    private CameraSelection selectFrontCamera() throws CameraAccessException {
        for (String id : cameraManager.getCameraIdList()) {
            CameraCharacteristics characteristics = cameraManager.getCameraCharacteristics(id);
            Integer facing = characteristics.get(CameraCharacteristics.LENS_FACING);
            if (facing == null || facing != CameraCharacteristics.LENS_FACING_FRONT) continue;
            StreamConfigurationMap map = characteristics.get(
                    CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
            if (map == null) continue;
            int[] formats = {ImageFormat.NV21, ImageFormat.YUV_420_888};
            for (int format : formats) {
                Size[] sizes = map.getOutputSizes(format);
                if (sizes == null) continue;
                for (Size size : sizes) {
                    if (size.getWidth() == WIDTH && size.getHeight() == HEIGHT) {
                        return new CameraSelection(id, format,
                                format == ImageFormat.NV21
                                        ? FACEUNLOCKFIX_IMAGE_TYPE_NV21
                                        : FACEUNLOCKFIX_IMAGE_TYPE_YUV_420_888);
                    }
                }
            }
        }
        throw new IllegalStateException("Front camera cannot supply 640x480 NV21/YUV");
    }

    private CameraDevice.StateCallback stateCallback(long generation, Surface preview) {
        return new CameraDevice.StateCallback() {
            @Override public void onOpened(CameraDevice device) {
                synchronized (lock) {
                    if (!isCurrent(generation)) { device.close(); return; }
                    camera = device;
                    try {
                        CaptureRequest.Builder request = device.createCaptureRequest(
                                CameraDevice.TEMPLATE_PREVIEW);
                        List<Surface> targets = new ArrayList<>(2);
                        Surface input = imageReader.getSurface();
                        targets.add(input);
                        request.addTarget(input);
                        if (preview != null) {
                            if (!preview.isValid()) throw new IllegalStateException("Preview released");
                            targets.add(preview);
                            request.addTarget(preview);
                        }
                        request.set(CaptureRequest.CONTROL_MODE, CaptureRequest.CONTROL_MODE_AUTO);
                        // Stock FrCamCtrl requests Samsung face capture mode 22 and AF 103.
                        // Both are stock camera vendor extensions. If Android 16's
                        // camera HAL rejects either, abort instead of silently
                        // capturing with an unverified face recognition pipeline.
                        request.set(SAMSUNG_SHOOTING_MODE, 22);
                        request.set(CaptureRequest.CONTROL_AF_MODE, 103);
                        CaptureRequest repeating = request.build();
                        device.createCaptureSession(targets,
                                new CameraCaptureSession.StateCallback() {
                                    @Override public void onConfigured(CameraCaptureSession opened) {
                                        synchronized (lock) {
                                            if (!isCurrent(generation)) { opened.close(); return; }
                                            session = opened;
                                            try {
                                                opened.setRepeatingRequest(repeating, null, cameraHandler);
                                            } catch (CameraAccessException | RuntimeException e) {
                                                fail(generation, "Camera repeating request failed", e);
                                                return;
                                            }
                                        }
                                        synchronized (lock) {
                                            if (!isCurrent(generation)) return;
                                        }
                                        safeStreaming(generation);
                                    }

                                    @Override public void onConfigureFailed(CameraCaptureSession failed) {
                                        fail(generation, "Camera capture session rejected", null);
                                    }
                                }, cameraHandler);
                    } catch (CameraAccessException | RuntimeException e) {
                        fail(generation, "Camera session setup failed", e);
                    }
                }
            }

            @Override public void onDisconnected(CameraDevice device) {
                fail(generation, "Front camera disconnected", null);
                device.close();
            }

            @Override public void onError(CameraDevice device, int error) {
                fail(generation, "Front camera device error " + error, null);
                device.close();
            }
        };
    }

    private void onImageAvailable(long generation, ImageReader reader) {
        Image frame = null;
        boolean reserved = false;
        boolean queued = false;
        try {
            frame = reader.acquireLatestImage();
            if (frame == null) return;
            synchronized (lock) {
                if (!isCurrent(generation) || !nativeTransportArmed
                        || session == null || frameInFlight) return;
                frameInFlight = true;
                reserved = true;
            }
            int type;
            int format;
            Handler sendHandler;
            synchronized (lock) {
                if (!isCurrent(generation)) return;
                type = nativeImageType;
                format = imageFormat;
                sendHandler = transportHandler;
            }
            int rotation = legacyRotationDegrees();
            // Transfer ownership of this REAL Image to the native transport
            // worker. The Camera2 callback is deliberately kept minimal:
            // moving ~600KB plane-copy work off it shortens its critical path
            // without changing the stock byte order or frame identity.
            final Image queuedFrame = frame;
            if (sendHandler == null || !sendHandler.post(
                    () -> processImageOnTransport(generation, queuedFrame,
                            rotation, type, format))) {
                throw new IllegalStateException("Native frame worker stopped");
            }
            queued = true;
            frame = null; // Worker alone closes its owned camera image.
        } catch (RuntimeException e) {
            fail(generation, "Invalid camera frame or transport queue", e);
        } finally {
            if (frame != null) frame.close();
            if (reserved && !queued) {
                synchronized (lock) {
                    if (epoch == generation) frameInFlight = false;
                }
            }
        }
    }

    private void processImageOnTransport(long generation, Image frame,
            int rotation, int type, int format) {
        try {
            synchronized (lock) {
                if (!isCurrent(generation) || !nativeTransportArmed) return;
            }
            if (frame.getFormat() != format
                    || frame.getWidth() != WIDTH || frame.getHeight() != HEIGHT) {
                throw new IllegalStateException("Unexpected camera frame size/format");
            }
            Rect crop = frame.getCropRect();
            if (crop.left != 0 || crop.top != 0
                    || crop.right != WIDTH || crop.bottom != HEIGHT) {
                throw new IllegalStateException("Cropped Camera2 frame is unsupported");
            }
            Image.Plane[] planes = frame.getPlanes();
            if (planes == null || planes.length != 3) {
                throw new IllegalStateException("Expected three original YUV planes");
            }
            // Genuine Samsung FrCamCtrl sends the three raw plane buffers,
            // including padding, with native imageType=2; never repack them.
            byte[] payload = FaceunlockFixPlanePayload.copy(new java.nio.ByteBuffer[]{
                    planes[0].getBuffer(), planes[1].getBuffer(), planes[2].getBuffer()});
            synchronized (lock) {
                if (!isCurrent(generation)) return;
                if (!firstFrameLogged) {
                    firstFrameLogged = true;
                    Log.i(TAG, "First real FaceunlockFix camera frame queued: imageType="
                            + type + ", payloadBytes=" + payload.length
                            + ", cameraToFrameMs="
                            + (SystemClock.elapsedRealtime() - captureStartElapsedMs));
                }
            }
            dispatchFrame(generation, payload, rotation, type);
        } catch (RuntimeException e) {
            fail(generation, "Invalid original face frame or native transport", e);
        } finally {
            // Reader.close() can race a canceled in-flight frame. This image
            // belongs to THIS generation only; closing is unconditional.
            try { frame.close(); } catch (RuntimeException e) {
                Log.w(TAG, "Camera frame release failed", e);
            }
            synchronized (lock) {
                if (epoch == generation) frameInFlight = false;
            }
        }
    }

    private void dispatchFrame(long generation, byte[] payload, int rotation, int type) {
        try {
            synchronized (lock) {
                if (!isCurrent(generation)) return;
            }
            int code = daemon.processFrontImage(payload, WIDTH, HEIGHT, rotation, type);
            synchronized (lock) {
                if (!isCurrent(generation)) return;
            }
            if (code == 1) { // Samsung stock result: processing complete.
                // A new unlock may have started between the native Binder
                // return and this callback. Never stop its newer camera.
                stopIfGeneration(generation);
                safeProcessingFinished(generation);
            } else if (code != 0 && code != 2) { // 2 = native requested frame queue flush.
                fail(generation, "Unexpected native face frame result " + code, null);
            }
        } catch (RemoteException | RuntimeException e) {
            fail(generation, "Original IFaceDaemon.processFrontImage failed", e);
        }
    }

    /** Stock FaceUtils.getRotationInfoForPreview: 0/90/180/270 -> 270/0/90/180. */
    private int legacyRotationDegrees() {
        Display display = defaultDisplay;
        if (display == null) throw new IllegalStateException("Default display unavailable");
        switch (display.getRotation()) {
            case Surface.ROTATION_0: return 270;
            case Surface.ROTATION_90: return 0;
            case Surface.ROTATION_180: return 90;
            case Surface.ROTATION_270: return 180;
            default: throw new IllegalStateException("Unsupported display rotation");
        }
    }

    private boolean isCurrent(long generation) {
        return running && epoch == generation;
    }

    /** Idempotent. Stops camera/queued frames; caller must cancel HAL operation. */
    public void stop() {
        synchronized (lock) {
            running = false;
            ++epoch;
            frameInFlight = false;
            nativeTransportArmed = false;
            if (imageReader != null) {
                imageReader.setOnImageAvailableListener(null, null);
            }
            if (session != null) {
                try { session.stopRepeating(); } catch (CameraAccessException | RuntimeException e) {
                    Log.w(TAG, "stopRepeating", e);
                }
                session.close();
                session = null;
            }
            if (camera != null) { camera.close(); camera = null; }
            if (imageReader != null) { imageReader.close(); imageReader = null; }
            if (cameraThread != null) { cameraThread.quitSafely(); cameraThread = null; }
            if (transportThread != null) { transportThread.quitSafely(); transportThread = null; }
            cameraHandler = null;
            transportHandler = null;
        }
    }

    @Override public void close() { stop(); }

    private void fail(long generation, String reason, Throwable error) {
        synchronized (lock) {
            if (!isCurrent(generation)) return;
            // Provider/camera state may have changed; force a fresh genuinely
            // validated sensor discovery on the next legitimate attempt.
            cachedFrontCamera = null;
            stop();
        }
        notifyFailure(generation, reason, error);
    }

    private void safeStreaming(long generation) {
        try { listener.onStreaming(generation); } catch (RuntimeException e) {
            Log.e(TAG, "Camera listener failure", e);
            stopIfGeneration(generation);
        }
    }

    private void safeProcessingFinished(long generation) {
        try { listener.onNativeProcessingFinished(generation); } catch (RuntimeException e) {
            Log.e(TAG, "Native completion listener failure", e);
        }
    }

    private void notifyFailure(long generation, String reason, Throwable error) {
        Log.e(TAG, reason, error);
        try { listener.onFailure(generation, reason, error); } catch (RuntimeException e) {
            Log.e(TAG, "Failure listener threw", e);
        }
    }
}
