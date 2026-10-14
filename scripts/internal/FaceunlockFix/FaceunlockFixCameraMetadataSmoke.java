package com.un1ca.face.smoketest;

import android.Manifest;
import android.app.ActivityThread;
import android.content.Context;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.graphics.ImageFormat;
import android.os.Looper;
import android.util.Size;
import java.util.List;

/** Read-only, real-device Camera2 metadata check: no photos or frames stored. */
public final class FaceunlockFixCameraMetadataSmoke {
    public static void main(String[] args) {
        try {
            Looper.prepareMainLooper();
            Context context = ActivityThread.systemMain().getSystemContext();
            System.out.println("Camera context permission: " +
                    context.checkSelfPermission(Manifest.permission.CAMERA));
            CameraManager cm = (CameraManager) context.getSystemService(Context.CAMERA_SERVICE);
            for (String id : cm.getCameraIdList()) {
                CameraCharacteristics info = cm.getCameraCharacteristics(id);
                Integer facing = info.get(CameraCharacteristics.LENS_FACING);
                if (facing == null || facing != CameraCharacteristics.LENS_FACING_FRONT) {
                    continue;
                }
                System.out.println("Front camera ID: " + id);
                StreamConfigurationMap streams =
                        info.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
                boolean hasYuv = false;
                for (Size size : streams.getOutputSizes(ImageFormat.YUV_420_888)) {
                    if (size.getWidth() == 640 && size.getHeight() == 480) {
                        hasYuv = true;
                    }
                }
                System.out.println("Front 640x480 YUV_420_888 supported: " + hasYuv);
                List<CaptureRequest.Key<?>> keys = info.getAvailableCaptureRequestKeys();
                boolean mode = false;
                for (CaptureRequest.Key<?> key : keys) {
                    if (key.getName().equals("samsung.android.control.shootingMode")) {
                        mode = true;
                    }
                }
                System.out.println("Samsung shootingMode vendor capture key exposed: " + mode);
                int[] afModes = info.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES);
                StringBuilder af = new StringBuilder();
                if (afModes != null) {
                    for (int value : afModes) {
                        if (af.length() != 0) af.append(',');
                        af.append(value);
                    }
                }
                System.out.println("Available Camera2 AF modes: " + af);
            }
        } catch (Throwable problem) {
            System.out.println("BLOCK camera metadata inspection: " + problem);
        }
    }
}
