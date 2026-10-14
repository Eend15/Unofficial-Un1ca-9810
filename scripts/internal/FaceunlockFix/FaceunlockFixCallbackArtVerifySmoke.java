package com.un1ca.face.smoketest;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.function.Consumer;

/**
 * Isolated Android ART verifier for the FaceunlockFix callback bridge.
 * No instance is constructed: no native face daemon, camera, PIN, tokens,
 * templates, enrollment or authentication are accessed.
 */
public final class FaceunlockFixCallbackArtVerifySmoke {
    private static void require(boolean value, String explanation) {
        if (!value) throw new AssertionError(explanation);
    }

    public static void main(String[] args) {
        try {
            ClassLoader loader = FaceunlockFixCallbackArtVerifySmoke.class.getClassLoader();
            Class<?> faceunlockfix = Class.forName(
                    "com.android.server.biometrics.sensors.face.faceunlockfix.FaceunlockFixHidl",
                    false, loader);
            Class<?> converter = Class.forName(
                    "com.android.server.biometrics.sensors.face.hidl.HidlToAidlCallbackConverter",
                    false, loader);
            Class<?> handler = Class.forName(
                    "com.android.server.biometrics.sensors.face.aidl.AidlResponseHandler",
                    false, loader);
            Class<?> acquisition = Class.forName(
                    "com.android.server.biometrics.sensors.AcquisitionClient",
                    false, loader);
            Class<?> enroll = Class.forName(
                    "com.android.server.biometrics.sensors.face.aidl.FaceEnrollClient",
                    false, loader);
            Class<?> surface = Class.forName("android.view.Surface", false, loader);
            Class<?> synthetic = Class.forName(
                    "com.android.server.biometrics.sensors.face.aidl.AidlResponseHandler$$ExternalSyntheticLambda1",
                    false, loader);

            // Full method resolution + Android ART verification of the
            // installed/candidate classes, including lambda call sites.
            for (Method m : faceunlockfix.getDeclaredMethods()) {
                require(!m.getName().equals("sendOneway"),
                        "Unsafe local HwBinder callback transact method still exists");
            }
            Method frameworkCallback = faceunlockfix.getDeclaredMethod("frameworkCallback");
            require(frameworkCallback.getReturnType() == converter,
                    "FaceunlockFix must require the real Android16 in-process converter");
            require(faceunlockfix.getDeclaredMethod("genuineEnrollmentPreview")
                            .getReturnType() == surface,
                    "FaceunlockFix must retrieve real Samsung enrollment preview Surface");
            require(enroll.getField("mPreviewSurface").getType() == surface,
                    "Samsung FaceEnrollClient's UI preview Surface unavailable");
            Field responseField = converter.getField("mAidlResponseHandler");
            require(responseField.getType() == handler,
                    "Android16 converter's AIDL response handler unavailable");
            require(handler.getMethod("onEnrollmentProgress", int.class, int.class) != null,
                    "Android16 genuine enroll progress route unavailable");
            require(handler.getMethod("handleResponse", Class.class, Consumer.class, synthetic)
                    != null, "Android16 acquired scheduler route unavailable");
            require(acquisition.getMethod("onAcquired", int.class, int.class) != null,
                    "Android16 AcquisitionClient route unavailable");
            require(converter.getMethod("onAuthenticated", long.class, int.class, int.class,
                    ArrayList.class) != null,
                    "Android16 genuine authentication+HAT callback unavailable");
            require(faceunlockfix.getMethod("onAcquired", long.class, int.class) != null,
                    "FaceunlockFix onAcquired callback method unavailable");
            // Pure converter checks; never invoke native authenticate. These
            // values are traced from Android16 SemFaceUtils.getSecurityMode
            // and the *original* Noble AuthenticationClient.getSecurityMode.
            Method security = faceunlockfix.getDeclaredMethod(
                    "stockFaceunlockFixSecurityMode", int.class, int.class);
            security.setAccessible(true);
            require(((Integer) security.invoke(null, 4, 1)) == 10,
                    "Android16 REQUIRE_OPEN_EYES must retain stock Noble eye-open mode 10");
            require(((Integer) security.invoke(null, 0, 0)) == 6,
                    "Explicitly disabled open-eyes must map to stock mode 6");
            require(((Integer) security.invoke(null, 0, -1)) == 2,
                    "Unspecified open-eyes must map to stock RGB mode 2");
            require(((Integer) security.invoke(null, 0, 1)) == -1,
                    "Open-eyes setting mismatch must fail closed");
            require(((Integer) security.invoke(null, 4, 0)) == -1,
                    "Disallowed open-eyes flag mismatch must fail closed");
            require(((Integer) security.invoke(null, 16, 0)) == -1,
                    "Unknown/mask-only Android16 mode must fail closed");
            require(((Integer) security.invoke(null, 20, 1)) == -1,
                    "Mask recognition must not be silently downgraded");
            require(((Integer) security.invoke(null, -1, 1)) == -1,
                    "Negative security modes must be rejected");
            require(((Integer) security.invoke(null, 4, -1)) == -1,
                    "Unsupported open-eyes setting must fail closed");

            // Original stock faster-recognition remains strictly opt-in and
            // still enforces the user's open-eyes setting. Never synthesize a
            // fast native result or bypass its real HAT/camera callbacks.
            Method optionalSpeed = faceunlockfix.getDeclaredMethod(
                    "stockFaceunlockFixSecurityMode", int.class, int.class, int.class);
            optionalSpeed.setAccessible(true);
            require(((Integer) optionalSpeed.invoke(null, 4, 1, 2)) == 10,
                    "Standard Keyguard must keep stock eye-open mode 10");
            require(((Integer) optionalSpeed.invoke(null, 4, 1, 0)) == 8,
                    "Opt-in stock fast recognition must retain eyes-open mode 8");
            require(((Integer) optionalSpeed.invoke(null, 0, 0, 0)) == 4,
                    "Original explicit eyes-off fast mode mismatch");
            require(((Integer) optionalSpeed.invoke(null, 0, -1, 0)) == 0,
                    "Original unset eyes fast mode mismatch");
            require(((Integer) optionalSpeed.invoke(null, 20, 1, 0)) == -1,
                    "Faster recognition must NEVER ignore unsupported mask bit");
            require(((Integer) optionalSpeed.invoke(null, 4, 1, 1)) == -1,
                    "Unknown stock speed mode must fail closed");

            System.out.println("PASS Android ART verifies typed FaceunlockFix callbacks, "
                    + "genuine preview, and strict stock open-eyes mode conversion");
        } catch (Throwable error) {
            System.err.println("BLOCK FaceunlockFix ART callback verification: " + error);
            System.exit(1);
        }
    }
}
