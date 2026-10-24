package dev.android.dynamicisland.island.window;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.view.View;
import android.widget.FrameLayout;
import dev.android.dynamicisland.island.view.BlurSink;
import dev.android.dynamicisland.island.view.CardPainter;
import dev.android.dynamicisland.xposed.XLog;
import java.util.IdentityHashMap;
import java.util.Map;

/**
 * Layer behind the island that gives each card a real background blur using Samsung's hidden
 * {@code SemBlurInfo} API (see {@link SemBlur}; unsupported elsewhere).
 *
 * <p>Every blurred card owns a child {@link Slot} view that is moved/resized/faded to match the card
 * each frame; the card itself is painted into the slot by the {@link CardPainter}. Main thread only.
 */
public final class BlurLayer extends FrameLayout implements BlurSink {
    private static final int BLUR_RADIUS = 120;
    /** Faint dark tint under the blur so bright wallpapers do not wash the card out. */
    private static final int BLUR_TINT = 0x14000000;
    /** Corner radius changes smaller than this (px) do not rebuild the blur info. */
    private static final float CORNER_EPSILON = 1.0f;
    /** Slots narrower or shorter than this (px) are hidden instead of blurred. */
    private static final float MIN_SLOT_SIZE = 2.0f;

    private final Map<Object, Slot> slots = new IdentityHashMap<>();
    private CardPainter painter;
    /** The slots placed in the current frame, back to front. */
    private final java.util.List<Slot> placed = new java.util.ArrayList<>();
    /** Counts frames so a slot can tell whether it was placed in the current one. */
    private int frame;

    BlurLayer(Context context) {
        super(context);
        setClipChildren(false);
        setWillNotDraw(true);
    }

    static boolean isSupported() {
        return SemBlur.isSupported();
    }

    @Override
    public boolean available() {
        return SemBlur.isSupported();
    }

    @Override
    public void setPainter(CardPainter painter) {
        this.painter = painter;
    }

    @Override
    public void beginFrame() {
        frame++;
        placed.clear();
    }

    @Override
    public void place(Object owner, RectF bounds, float corner, float alpha) {
        Slot slot = slots.get(owner);
        if (slot == null) {
            slot = new Slot(getContext(), owner);
            slots.put(owner, slot);
            addView(slot, new FrameLayout.LayoutParams(0, 0));
        }
        slot.placedInFrame = frame;
        placed.add(slot);
        slot.update(bounds, corner, alpha);
    }

    @Override
    public void endFrame() {
        for (Slot slot : slots.values()) {
            if (slot.placedInFrame != frame) {
                slot.hide();
            }
        }
        keepPlacementOrder();
    }

    /** Slots are placed back to front; when a card changed its place in the stack its view has to follow. */
    private void keepPlacementOrder() {
        int first = getChildCount() - placed.size();
        boolean inOrder = first >= 0;
        for (int i = 0; inOrder && i < placed.size(); i++) {
            inOrder = getChildAt(first + i) == placed.get(i);
        }
        if (!inOrder) {
            for (Slot slot : placed) {
                slot.bringToFront();
            }
        }
    }

    @Override
    public void release(Object owner) {
        Slot slot = slots.remove(owner);
        if (slot != null) {
            slot.removeBlur();
            removeView(slot);
        }
    }

    /** One blurred rectangle belonging to one card. */
    private final class Slot extends View {
        private final Object owner;
        int placedInFrame = -1;
        private boolean blurApplied;
        /** Corner radius the current blur was built with. */
        private float blurCorner;

        Slot(Context context, Object owner) {
            super(context);
            this.owner = owner;
            setWillNotDraw(false);
            setVisibility(View.GONE);
        }

        void update(RectF bounds, float corner, float alpha) {
            if (bounds.width() < MIN_SLOT_SIZE || bounds.height() < MIN_SLOT_SIZE) {
                hide();
                return;
            }
            setLeftTopRightBottom(Math.round(bounds.left), Math.round(bounds.top), Math.round(bounds.right), Math.round(bounds.bottom));
            setAlpha(alpha);
            if (SemBlur.isSupported()) {
                refreshBlur(corner);
            }
            if (getVisibility() != View.VISIBLE) {
                setVisibility(View.VISIBLE);
            }
            invalidate();
        }

        private void refreshBlur(float corner) {
            if (blurApplied && Math.abs(corner - blurCorner) < CORNER_EPSILON) {
                return;
            }
            try {
                SemBlur.apply(this, BLUR_RADIUS, corner, BLUR_TINT);
                blurApplied = true;
                blurCorner = corner;
            } catch (Throwable t) {
                XLog.e("blur update failed", t);
                SemBlur.giveUp();
            }
        }

        void hide() {
            if (getVisibility() != View.GONE) {
                setVisibility(View.GONE);
            }
        }

        void removeBlur() {
            if (blurApplied && SemBlur.isSupported()) {
                SemBlur.clear(this);
            }
        }

        @Override
        protected void onDraw(Canvas canvas) {
            if (painter != null) {
                painter.paintCard(owner, canvas, getLeft(), getTop());
            }
        }
    }
}
