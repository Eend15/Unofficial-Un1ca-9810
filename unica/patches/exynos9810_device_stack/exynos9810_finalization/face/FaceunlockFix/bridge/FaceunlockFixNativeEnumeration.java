package com.android.server.biometrics.sensors.face.faceunlockfix;

/**
 * Strict decoder for the original Samsung FaceService.checkIntegrity() wire
 * format: IFaceDaemon.request(11, emptyInput, byte[10], 0) returns a byte
 * count, and each returned byte is one ASCII decimal template ID.
 *
 * Only a non-empty, unambiguous native result can be published. A zero byte
 * count, malformed data, duplicate ID, or native error is NOT proof of an
 * empty biometric store; callers must fall back to ordinary native enumerate
 * and fail closed if it does not finish. No face ID is ever inferred from
 * Android's settings_face.xml or made up by this decoder.
 */
public final class FaceunlockFixNativeEnumeration {
    public static final int MAX_NATIVE_ID_BYTES = 10;

    private FaceunlockFixNativeEnumeration() { }

    public static boolean confirmedEmptyStore(java.io.File store, int returnedCount) {
        if (returnedCount != 0 || store == null || !store.isDirectory()
                || !store.canRead()) return false;
        String[] files = store.list();
        return files != null && files.length == 0;
    }

    public static int[] positiveTemplateIds(byte[] nativeBytes, int returnedCount) {
        if (nativeBytes == null || nativeBytes.length != MAX_NATIVE_ID_BYTES
                || returnedCount <= 0 || returnedCount > nativeBytes.length) return null;
        int[] ids = new int[returnedCount];
        for (int i = 0; i < returnedCount; i++) {
            int character = nativeBytes[i] & 0xff;
            // Stock FaceService parses each individual character as an ID;
            // zero is not a valid Android FaceId and would terminate cleanup.
            if (character < '1' || character > '9') return null;
            int faceId = character - '0';
            for (int j = 0; j < i; j++) {
                if (ids[j] == faceId) return null;
            }
            ids[i] = faceId;
        }
        return ids;
    }
}
