package dev.android.dynamicisland.testutil;

import android.graphics.Bitmap;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/** JUnit category for visual review only. Regular regressions may also export images with -Prender. */
public interface RenderCapture {
    static boolean enabled() {
        return Boolean.getBoolean("render");
    }

    static void write(Bitmap bitmap, File file) throws IOException {
        if (!enabled()) return;
        File parent = file.getParentFile();
        if (parent != null && !parent.isDirectory() && !parent.mkdirs()) {
            throw new IOException("Cannot create capture directory: " + parent);
        }
        try (FileOutputStream stream = new FileOutputStream(file)) {
            if (!bitmap.compress(Bitmap.CompressFormat.PNG, 100, stream)) {
                throw new IOException("Cannot encode capture: " + file);
            }
        }
    }
}
