package com.samsung.android.camera.iris;

import android.content.Context;
import java.util.List;

/** Compile-time stub of the hidden One UI 8 framework class (not packaged). */
public class SemIrisManager {
    public static SemIrisManager getSemIrisManager(Context context) { throw new RuntimeException(); }
    public List getEnrolledIrises(int userId) { throw new RuntimeException(); }
    public long preEnroll() { throw new RuntimeException(); }
    public int postEnroll() { throw new RuntimeException(); }
    public void remove(Iris iris, int userId, RemovalCallback callback) { }

    public static abstract class RemovalCallback {
        public void onRemovalSucceeded(Iris iris) { }
        public void onRemovalError(Iris iris, int errMsgId, CharSequence errString) { }
    }
}
