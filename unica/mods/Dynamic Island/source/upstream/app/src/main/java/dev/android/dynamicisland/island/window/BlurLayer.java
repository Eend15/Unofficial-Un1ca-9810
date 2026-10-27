package dev.android.dynamicisland.island.window;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.Outline;
import android.view.ViewOutlineProvider;
import android.view.View;
import android.widget.FrameLayout;
import dev.android.dynamicisland.island.view.BlurSink;
import dev.android.dynamicisland.island.view.CardPainter;
import dev.android.dynamicisland.xposed.XLog;
import dev.android.dynamicisland.settings.ModuleSettings;
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
    /**
     * Corner radius changes smaller than this (dp) do not rebuild the blur info. A card that opens or folds changes its
     * radius every frame (it is half its height while it is small); rebuilding the blur each time made it drop out for
     * a frame or two, which showed as the card turning see-through and unblurred.
     */
    private static final float CORNER_EPSILON_DP = 8.0f;
    /** Slots narrower or shorter than this (px) are hidden instead of blurred. */
    private static final float MIN_SLOT_SIZE = 2.0f;
    /** Frames a slot may go unplaced before it is hidden. */
    private static final int MISSED_FRAMES_BEFORE_HIDE = 1;
    /** How long the final painted surface may remain; its native backdrop is cleared immediately. */
    private static final long RELEASE_SURFACE_LINGER_MS = 32;

    interface Backend {
        boolean available();
        void apply(View view, int radius, float corner, int tint) throws ReflectiveOperationException;
        void clear(View view);
        void disable();
    }

    private static final Backend SYSTEM = new Backend() {
        @Override public boolean available() { return SemBlur.isSupported(); }
        @Override public void apply(View view, int radius, float corner, int tint) throws ReflectiveOperationException { SemBlur.apply(view, radius, corner, tint); }
        @Override public void clear(View view) { SemBlur.clear(view); }
        @Override public void disable() { SemBlur.giveUp(); }
    };
    private final Backend backend;
    private final Map<Object, Slot> slots = new IdentityHashMap<>();
    private CardPainter painter;
    /** The slots placed in the current frame, back to front. */
    private final java.util.List<Slot> placed = new java.util.ArrayList<>();
    /** Counts frames so a slot can tell whether it was placed in the current one. */
    private int frame;

    BlurLayer(Context context) { this(context, SYSTEM); }

    BlurLayer(Context context, Backend backend) {
        super(context);
        this.backend = backend;
        setClipChildren(false);
        setWillNotDraw(true);
    }

    /**
     * The slots are placed by hand every frame ({@code setLeftTopRightBottom}), their layout params say 0 x 0. A layout
     * pass, which every added or removed slot asks for, would put all of them back to 0 x 0 for a frame, and every blur
     * on screen dropped out at once whenever one card came or went.
     */
    @Override
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
    }

    static boolean isSupported() {
        return SemBlur.isSupported();
    }

    @Override
    public boolean available() {
        return !ModuleSettings.lowPerformance() && backend.available();
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
        place(owner, bounds, corner, alpha, 1);
    }

    @Override
    public void place(Object owner, RectF bounds, float corner, float alpha, float backdropAlpha) {
        Slot slot = slots.get(owner);
        if (slot == null) {
            slot = new Slot(getContext(), owner);
            slots.put(owner, slot);
            addView(slot, new FrameLayout.LayoutParams(0, 0));
        }
        slot.placedInFrame = frame;
        placed.add(slot);
        slot.update(bounds, corner, alpha, backdropAlpha);
    }

    @Override
    public void endFrame() {
        for (Slot slot : slots.values()) {
            // Tolerate one missing painted-surface frame, but never keep a stale native backdrop.
            if (frame != slot.placedInFrame) slot.hideBackdrop();
            if (frame - slot.placedInFrame > MISSED_FRAMES_BEFORE_HIDE) {
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
            // Only the painted surface may linger. Native blur must never survive the handoff to the pill.
            slot.hideBackdrop();
            postDelayed(() -> removeView(slot), RELEASE_SURFACE_LINGER_MS);
        }
    }

    /** The native backdrop and Canvas surface have separate RenderNodes and opacity. */
    private final class Slot extends FrameLayout {
        int placedInFrame = -1;
        private final View backdrop;
        private final View surface;
        private boolean blurApplied;
        private float blurCorner;
        private float lastCorner = -1;
        private float clipCorner;

        Slot(Context context, Object owner) {
            super(context);
            setWillNotDraw(true);
            setClipChildren(true);
            backdrop = new View(context);
            backdrop.setWillNotDraw(false);
            backdrop.setClipToOutline(true);
            backdrop.setOutlineProvider(new ViewOutlineProvider() {
                @Override public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), clipCorner);
                }
            });
            surface = new View(context) {
                @Override protected void onDraw(Canvas canvas) {
                    if (painter != null) painter.paintCard(owner, canvas, Slot.this.getLeft(), Slot.this.getTop());
                }
            };
            surface.setWillNotDraw(false);
            addView(backdrop, new FrameLayout.LayoutParams(-1, -1));
            addView(surface, new FrameLayout.LayoutParams(-1, -1));
            setVisibility(View.GONE);
        }

        // Bounds come from the spring geometry, never the zero-sized layout params in the parent.
        @Override protected void onLayout(boolean changed, int left, int top, int right, int bottom) { }

        void update(RectF bounds, float corner, float alpha, float backdropAlpha) {
            if (bounds.width() < MIN_SLOT_SIZE || bounds.height() < MIN_SLOT_SIZE) {
                hide();
                return;
            }
            setLeftTopRightBottom(Math.round(bounds.left), Math.round(bounds.top), Math.round(bounds.right), Math.round(bounds.bottom));
            backdrop.layout(0, 0, getWidth(), getHeight());
            surface.layout(0, 0, getWidth(), getHeight());
            setAlpha(alpha);
            clipCorner = Math.min(corner, Math.min(getWidth(), getHeight()) / 2f);
            backdrop.invalidateOutline();
            if (backdropAlpha > 0.001f && available()) {
                refreshBlur(corner);
                if (blurApplied) {
                    backdrop.setAlpha(Math.min(1, backdropAlpha));
                    backdrop.setVisibility(View.VISIBLE);
                } else hideBackdrop();
            } else hideBackdrop();
            if (getVisibility() != View.VISIBLE) setVisibility(View.VISIBLE);
            surface.invalidate();
        }

        private void refreshBlur(float corner) {
            float density = getResources().getDisplayMetrics().density;
            boolean steady = Math.abs(corner - lastCorner) < 0.25f * density;
            lastCorner = corner;
            if (blurApplied) {
                float off = Math.abs(corner - blurCorner);
                if (off < CORNER_EPSILON_DP * density && (!steady || off < 0.5f * density)) return;
            }
            try {
                backend.apply(backdrop, BLUR_RADIUS, corner, BLUR_TINT);
                blurApplied = true;
                blurCorner = corner;
            } catch (Throwable t) {
                XLog.e("blur update failed", t);
                backend.disable();
            }
        }

        void hideBackdrop() {
            backdrop.setAlpha(0);
            backdrop.setVisibility(View.GONE);
            if (blurApplied) {
                backend.clear(backdrop);
                blurApplied = false;
                lastCorner = -1;
            }
        }

        void hide() {
            hideBackdrop();
            if (getVisibility() != View.GONE) setVisibility(View.GONE);
        }
    }
}
