package dev.android.dynamicisland.island.view;

import android.graphics.RectF;

/** Receives the card backdrops that the island wants blurred behind it (implemented by the blur window layer). */
public interface BlurSink {
    /** Whether background blur can be used on this device. */
    boolean available();

    void beginFrame();

    void endFrame();

    /** Places (or moves) the blurred backdrop identified by {@code key} over {@code bounds}. */
    void place(Object key, RectF bounds, float corner, float alpha);

    /** Drops the backdrop identified by {@code key}. */
    void release(Object key);

    void setPainter(CardPainter painter);
}
