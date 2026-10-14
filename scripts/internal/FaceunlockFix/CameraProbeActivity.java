package com.un1ca.noble.camerasmoke;

import android.Manifest;
import android.app.Activity;
import android.content.pm.PackageManager;
import android.graphics.ImageFormat;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.Image;
import android.media.ImageReader;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.util.Size;

import java.util.Collections;

/** Diagnostic only. Captures five real front-camera YUV frames, never saves them.
 * Does not touch face enrollment, create templates, synthesize tokens or call
 * any biometric API. Installs as an ordinary CAMERA-permission test app.
 */
public final class CameraProbeActivity extends Activity {
    private static final String TAG = "NobleCameraProbe";
    private static final int WIDTH = 640;
    private static final int HEIGHT = 480;
    private static final CaptureRequest.Key<Integer> SHOOTING_MODE =
            new CaptureRequest.Key<>("samsung.android.control.shootingMode", Integer.class);
    private final Object lock = new Object();
    private HandlerThread worker;
    private Handler handler;
    private ImageReader reader;
    private CameraDevice camera;
    private CameraCaptureSession session;
    private boolean stopping;
    private int frames;

    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        Log.i(TAG, "Probe started; no frames are stored or transmitted");
        if (checkSelfPermission(Manifest.permission.CAMERA) != PackageManager.PERMISSION_GRANTED) {
            Log.e(TAG, "CAMERA permission not granted; pm grant required");
            finish();
            return;
        }
        worker = new HandlerThread("NobleCameraProbe");
        worker.start();
        handler = new Handler(worker.getLooper());
        try {
            CameraManager cm = (CameraManager) getSystemService(CAMERA_SERVICE);
            String selected = null;
            for (String id : cm.getCameraIdList()) {
                CameraCharacteristics meta = cm.getCameraCharacteristics(id);
                Integer facing = meta.get(CameraCharacteristics.LENS_FACING);
                if (facing == null || facing != CameraCharacteristics.LENS_FACING_FRONT) continue;
                StreamConfigurationMap map = meta.get(
                        CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
                if (map == null) continue;
                for (Size size : map.getOutputSizes(ImageFormat.YUV_420_888)) {
                    if (size.getWidth() == WIDTH && size.getHeight() == HEIGHT) {
                        selected = id;
                        break;
                    }
                }
                if (selected != null) {
                    int[] af = meta.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES);
                    StringBuilder modes = new StringBuilder();
                    if (af != null) for (int value : af) modes.append(value).append(' ');
                    Log.i(TAG, "Front camera " + selected + ", advertised AF: " + modes);
                    break;
                }
            }
            if (selected == null) {
                Log.e(TAG, "No 640x480 YUV front camera supported");
                stopAndFinish();
                return;
            }
            reader = ImageReader.newInstance(WIDTH, HEIGHT, ImageFormat.YUV_420_888, 2);
            reader.setOnImageAvailableListener(source -> {
                Image image = null;
                try {
                    image = source.acquireLatestImage();
                    if (image == null) return;
                    synchronized (lock) {
                        if (!stopping) {
                            frames++;
                            if (frames == 1) {
                                Log.i(TAG, "PASS first genuine YUV frame received: "
                                        + image.getWidth() + "x" + image.getHeight());
                            }
                            if (frames == 5) {
                                Log.i(TAG, "PASS 5 genuine Camera2 YUV frames received");
                                handler.post(this::stopAndFinish);
                            }
                        }
                    }
                } catch (RuntimeException exception) {
                    Log.e(TAG, "ImageReader failed", exception);
                    handler.post(this::stopAndFinish);
                } finally {
                    if (image != null) image.close();
                }
            }, handler);
            cm.openCamera(selected, new CameraDevice.StateCallback() {
                @Override public void onOpened(CameraDevice opened) {
                    synchronized (lock) {
                        if (stopping) { opened.close(); return; }
                        camera = opened;
                    }
                    try {
                        CaptureRequest.Builder req = opened.createCaptureRequest(
                                CameraDevice.TEMPLATE_PREVIEW);
                        req.addTarget(reader.getSurface());
                        req.set(CaptureRequest.CONTROL_MODE, CaptureRequest.CONTROL_MODE_AUTO);
                        req.set(SHOOTING_MODE, 22);
                        req.set(CaptureRequest.CONTROL_AF_MODE, 103);
                        Log.i(TAG, "Configured genuine stock capture extensions: shootingMode=22, AF=103");
                        CaptureRequest request = req.build();
                        opened.createCaptureSession(Collections.singletonList(reader.getSurface()),
                                new CameraCaptureSession.StateCallback() {
                                    @Override public void onConfigured(CameraCaptureSession configured) {
                                        session = configured;
                                        try {
                                            configured.setRepeatingRequest(request, null, handler);
                                            Log.i(TAG, "Camera2 repeating request accepted");
                                        } catch (Exception exception) {
                                            Log.e(TAG, "BLOCK repeating request", exception);
                                            stopAndFinish();
                                        }
                                    }
                                    @Override public void onConfigureFailed(CameraCaptureSession failed) {
                                        Log.e(TAG, "BLOCK Camera2 capture session configuration");
                                        stopAndFinish();
                                    }
                                }, handler);
                    } catch (Exception exception) {
                        Log.e(TAG, "BLOCK Samsung camera extension/request", exception);
                        stopAndFinish();
                    }
                }
                @Override public void onDisconnected(CameraDevice disconnected) {
                    Log.e(TAG, "Camera disconnected");
                    stopAndFinish();
                }
                @Override public void onError(CameraDevice bad, int code) {
                    Log.e(TAG, "Camera opened with device error " + code);
                    stopAndFinish();
                }
            }, handler);
            handler.postDelayed(() -> {
                synchronized (lock) {
                    if (frames < 5) Log.e(TAG, "BLOCK frame timeout: " + frames);
                }
                stopAndFinish();
            }, 10000L);
        } catch (CameraAccessException | RuntimeException exception) {
            Log.e(TAG, "Camera start failed", exception);
            stopAndFinish();
        }
    }

    private void stopAndFinish() {
        synchronized (lock) {
            if (stopping) return;
            stopping = true;
        }
        if (session != null) session.close();
        if (camera != null) camera.close();
        if (reader != null) reader.close();
        if (worker != null) worker.quitSafely();
        runOnUiThread(this::finish);
    }
}
