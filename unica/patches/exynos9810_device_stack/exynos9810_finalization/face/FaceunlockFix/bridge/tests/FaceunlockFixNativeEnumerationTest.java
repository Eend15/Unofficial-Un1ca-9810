package com.android.server.biometrics.sensors.face.faceunlockfix;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/** Run with ordinary javac/java; no daemon, Android frameworks or biometrics. */
public final class FaceunlockFixNativeEnumerationTest {
    private static byte[] nativeBuffer(String content) {
        byte[] buffer = new byte[FaceunlockFixNativeEnumeration.MAX_NATIVE_ID_BYTES];
        byte[] bytes = content.getBytes(StandardCharsets.US_ASCII);
        System.arraycopy(bytes, 0, buffer, 0, Math.min(buffer.length, bytes.length));
        return buffer;
    }

    private static void expectIds(String nativeIds, int length, int... expected) {
        int[] actual = FaceunlockFixNativeEnumeration.positiveTemplateIds(
                nativeBuffer(nativeIds), length);
        if (!Arrays.equals(actual, expected)) {
            throw new AssertionError("Native positive IDs rejected");
        }
    }

    private static void reject(String nativeIds, int length) {
        if (FaceunlockFixNativeEnumeration.positiveTemplateIds(
                nativeBuffer(nativeIds), length) != null) {
            throw new AssertionError("Unsafe native response accepted");
        }
    }

    public static void main(String[] args) throws Exception {
        java.nio.file.Path store = java.nio.file.Files.createTempDirectory("native-face-store-test");
        try {
            if (!FaceunlockFixNativeEnumeration.confirmedEmptyStore(store.toFile(), 0))
                throw new AssertionError("Readable empty store rejected");
            if (FaceunlockFixNativeEnumeration.confirmedEmptyStore(store.resolve("missing").toFile(), 0)
                    || FaceunlockFixNativeEnumeration.confirmedEmptyStore(store.toFile(), -1)
                    || FaceunlockFixNativeEnumeration.confirmedEmptyStore(store.toFile(), 1))
                throw new AssertionError("Missing/native-error store accepted");
            java.nio.file.Path template = store.resolve("1tmpl.dat");
            java.nio.file.Files.write(template, new byte[] {1});
            if (FaceunlockFixNativeEnumeration.confirmedEmptyStore(store.toFile(), 0)
                    || FaceunlockFixNativeEnumeration.confirmedEmptyStore(template.toFile(), 0))
                throw new AssertionError("Persisted template or regular file accepted as empty");
            java.nio.file.Files.delete(template);
        } finally { java.nio.file.Files.delete(store); }

        expectIds("2", 1, 2); // Live-enrolled Face ID, decoded only from native bytes
        expectIds("139", 3, 1, 3, 9);
        reject("", 0); // Zero-count alone cannot prove an empty native store
        reject("2", -1);
        reject("2", 11);
        reject("0", 1);
        reject("22", 2);
        reject("1A", 2);
        reject("1 ", 2);
        reject("1\n", 2);
        reject("12", 3); // reject a trailing zero in the claimed returned region
        if (FaceunlockFixNativeEnumeration.positiveTemplateIds(null, 1) != null)
            throw new AssertionError("Null buffer accepted");
        System.out.println("PASS original Samsung request(11) positive-only template decoder");
    }
}
