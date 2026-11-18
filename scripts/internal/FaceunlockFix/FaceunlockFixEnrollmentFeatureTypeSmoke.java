package com.un1ca.face.smoketest;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;

/**
 * Pure validation of the actual private Noble enrollment feature converter,
 * using an isolated services.jar in app_process. Does NOT open the camera,
 * call HAL enrollment, access real Gatekeeper HAT, or modify registered faces.
 */
public final class FaceunlockFixEnrollmentFeatureTypeSmoke {
    private static boolean accepts(Method method, Object... values) throws Exception {
        ArrayList<Object> features = new ArrayList<>(Arrays.asList(values));
        try {
            return (Boolean) method.invoke(null, features);
        } catch (InvocationTargetException error) {
            // A ClassCastException used to kill the entire system_server
            // FaceHandler thread, restarting Android's System UI.
            throw new AssertionError("Unexpected feature parser crash", error.getCause());
        }
    }

    private static void check(boolean valid, boolean actual, String name) {
        if (valid != actual) {
            throw new AssertionError(name + " expected=" + valid + " actual=" + actual);
        }
    }

    public static void main(String[] args) throws Exception {
        try {
            Class<?> hidl = Class.forName(
                    "com.android.server.biometrics.sensors.face.faceunlockfix.FaceunlockFixHidl");
            Method parser = hidl.getDeclaredMethod(
                    "supportsNativeEnrollmentFeatures", ArrayList.class);
            parser.setAccessible(true);

            // Actual Android16 HIDL vector after conversion:
            // AIDL diverse poses 1 -> framework 2; AIDL debug 2 -> framework 3.
            check(true, accepts(parser, Integer.valueOf(2), Integer.valueOf(3)),
                    "Real Android16 converted int32_t feature vector");
            check(true, accepts(parser, Integer.valueOf(2)),
                    "Default Android16 feature");
            check(true, accepts(parser, Byte.valueOf((byte)2), Byte.valueOf((byte)3)),
                    "Legacy byte compatibility");
            check(true, accepts(parser, Byte.valueOf((byte)2), Integer.valueOf(3)),
                    "Mixed boxed numeric representations");
            check(false, accepts(parser, Integer.valueOf(2), Integer.valueOf(2)),
                    "Duplicate security policy");
            check(false, accepts(parser, Integer.valueOf(3)),
                    "Debug without ordinary pose policy");
            check(false, accepts(parser, Integer.valueOf(1), Integer.valueOf(2)),
                    "Unsupported attention feature");
            check(false, accepts(parser, Integer.valueOf(0)),
                    "Unknown feature");
            check(false, accepts(parser, Long.valueOf(2)),
                    "Invalid numeric boxing");
            check(false, accepts(parser, "2"), "Invalid feature type");
            check(false, accepts(parser, (Object) null), "Null feature");
            check(false, accepts(parser, 2, 3, 4), "Too many features");
            check(true, accepts(parser), "No optional features");

            System.out.println(
                    "PASS real Noble enrollment feature method handles Integer, "
                            + "Byte and rejects invalid features without crash");
        } catch (Throwable error) {
            System.err.println("BLOCK Noble enrollment feature parser: " + error);
            System.exit(1);
        }
    }
}
