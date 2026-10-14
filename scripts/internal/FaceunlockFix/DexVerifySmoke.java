package com.un1ca.face.smoketest;

/**
 * ART-only class verifier regression test for the boot-critical Face HAL
 * selector. Run against a PRIVATE services.jar copy in app_process CLASSPATH;
 * never installs or changes the loaded Android system framework.
 */
public final class DexVerifySmoke {
    public static void main(String[] args) {
        String candidate = "com.android.server.biometrics.sensors.face.hidl.HidlToAidlSensorAdapter";
        try {
            Class<?> target = Class.forName(candidate, false,
                    DexVerifySmoke.class.getClassLoader());
            // Class.forName()/getDeclaredMethod() alone do NOT verify this
            // method on ART. Allocate a completely uninitialized dummy
            // receiver and explicitly INVOKE the getter. It should throw
            // NullPointerException on the first field dereference, long
            // before opening any native HIDL/Binder face service.
            Class<?> unsafeType = Class.forName("sun.misc.Unsafe");
            java.lang.reflect.Field field = unsafeType.getDeclaredField("theUnsafe");
            field.setAccessible(true);
            Object unsafe = field.get(null);
            Object dummy = unsafeType.getMethod("allocateInstance", Class.class)
                    .invoke(unsafe, target);
            java.lang.reflect.Method getter = target.getDeclaredMethod("getIBiometricsFace");
            getter.setAccessible(true);
            try {
                getter.invoke(dummy);
                System.out.println("BLOCK getter unexpectedly completed with null fields");
                System.exit(1);
            } catch (java.lang.reflect.InvocationTargetException exception) {
                Throwable real = exception.getCause();
                if (!(real instanceof NullPointerException)) {
                    throw real;
                }
                System.out.println("PASS Android ART executed method until expected null receiver field");
            }
        } catch (Throwable error) {
            while (error instanceof java.lang.reflect.InvocationTargetException
                    && ((java.lang.reflect.InvocationTargetException) error).getCause() != null) {
                error = ((java.lang.reflect.InvocationTargetException) error).getCause();
            }
            System.out.println("BLOCK Android ART rejected HAL selector: "
                    + error.getClass().getName() + ": " + error.getMessage());
            System.exit(1);
        }
    }
}
