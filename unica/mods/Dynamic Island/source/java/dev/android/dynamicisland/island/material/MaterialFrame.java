package dev.android.dynamicisland.island.material;

import android.graphics.Bitmap;
import android.graphics.Rect;

/** Immutable texture/coordinates published from the capture worker to the UI thread. Never recycle GPU-bound bitmaps. */
public final class MaterialFrame {
    public final Bitmap bitmap;
    public final MaterialPixels pixels;
    public final Rect screenBounds;
    public final int displayWidth;
    public MaterialFrame(Bitmap bitmap,MaterialPixels pixels,Rect bounds,int displayWidth) {
        this.bitmap=bitmap;this.pixels=pixels;this.screenBounds=new Rect(bounds);this.displayWidth=displayWidth;
    }
}
