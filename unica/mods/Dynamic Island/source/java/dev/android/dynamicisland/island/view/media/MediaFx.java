package dev.android.dynamicisland.island.view.media;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.island.view.Tween;

/**
 * Animation state of one media item's card: the colourful glow behind the music card (three drifting blobs
 * over a tinted base, recoloured when the accent changes), the cover art flip with its blurred ghost on a
 * track change, the speed / brightness easing between playing and paused, and the smoothed playback position.
 * One instance per media item key, owned by {@code IslandView}; main thread only.
 */
public final class MediaFx {
    /** Duration of the accent cross-fade and of the flip animation (see {@code IslandView.FLIP_MS}). */
    private static final float ACCENT_FADE_MS = 500.0f;
    private static final float FLIP_DURATION_MS = 340.0f;
    /** The blurred ghost of the art is built from a tiny copy of this size. */
    private static final int BLUR_SIZE = 24;
    private static final int BLUR_RADIUS = 3;
    private static final int BLUR_PASSES = 2;
    /** Largest time step per frame, so a stall does not make the glow jump. */
    private static final float MAX_FRAME_DT_S = 0.05f;
    /** Speed of the seek bar glow pulse in radians per second (about 2.6 s per cycle). */
    private static final float SEEK_PULSE_RATE = 2.3809524f;
    /** Time constant of the position smoothing in seconds. */
    private static final float POSITION_SMOOTHING_S = 0.18f;
    /** Reported positions further apart than this are not smoothed (a real seek). */
    private static final long POSITION_JUMP_MS = 2000;
    /** Range between the paused and the fully playing glow brightness (1 - PAUSED_GLOW, as a float). */
    private static final float GLOW_RANGE = 0.27999997f;

    private final IslandView owner;
    /** How much faster than the cross-fade the new colours come in. */
    private static final float NEW_TONES_LEAD = 1.6f;
    int accentFrom;
    long accentStart;
    int accentTo;
    /** Current cover art, and the one flipping away after a track change. */
    Drawable artCur;
    /** Identity of the current art: the bitmap, or {@link #iconKey} for an app icon; used to detect a new track. */
    Object artKey;
    Drawable artPrev;
    final Paint basePaint;
    final Paint blobPaint;
    /** Blurred ghost of the current / previous art, cross-faded during the flip. */
    Drawable blurCur;
    Drawable blurPrev;
    long flipStart;
    /** Glow brightness easing between paused and playing. */
    final Tween glow;
    /** Art key for items that only have a card image (no bitmap). */
    final Object iconKey;
    long lastAdvance;
    long lastFrameNanos;
    /** Seconds covered by the last {@link #advance}. */
    float lastDt;
    long lastSeq;
    long lastShown;
    /** Drift phase of each of the three blobs, in radians. */
    final float[] phase;
    IslandItem posItem;
    /** Remaining difference between the reported and the shown position, decaying to 0. */
    float posOffset;
    boolean primed;
    public float seekPhase;
    final ToneSet setFrom;
    final ToneSet setTo;
    /** Drift speed easing between paused and playing. */
    final Tween speed;

    public MediaFx(IslandView owner) {
        this.owner = owner;
        phase = new float[3];
        speed = new Tween(1.0f, IslandView.FX_EASE_MS);
        glow = new Tween(1.0f, IslandView.FX_EASE_MS);
        setFrom = new ToneSet();
        setTo = new ToneSet();
        basePaint = new Paint();
        blobPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        // soft gradients on a dark card band visibly in 8 bits without dithering
        basePaint.setDither(true);
        blobPaint.setDither(true);
        iconKey = new Object();
        flipStart = -340L;
        lastShown = -1L;
    }

    /** Takes over the state of a (possibly newer) snapshot of the item; stale snapshots are ignored. */
    public void sync(IslandItem item, long now) {
        if (item.seq < lastSeq) {
            return;
        }
        lastSeq = item.seq;
        float targetSpeed = item.playing ? 1.0f : IslandView.PAUSED_SPEED;
        float targetGlow = item.playing ? 1.0f : IslandView.PAUSED_GLOW;
        if (!primed) {
            // first sight: jump to the final state instead of animating from "playing"
            primed = true;
            speed.set(targetSpeed, now - IslandView.FX_EASE_MS);
            glow.set(targetGlow, now - IslandView.FX_EASE_MS);
            accentTo = item.accent;
            accentFrom = item.accent;
            accentStart = now - IslandView.FX_COLOR_MS;
            artKey = artKeyOf(item);
            artCur = item.cardImage;
            blurCur = makeBlur(item.art);
            return;
        }
        speed.set(targetSpeed, now);
        glow.set(targetGlow, now);
        if (item.accent != accentTo) {
            accentFrom = accent(now);
            accentTo = item.accent;
            accentStart = now;
        }
        Object key = artKeyOf(item);
        if (key != artKey) {
            if (artCur != null && key != null) {
                artPrev = artCur;
                blurPrev = blurCur;
                flipStart = now;
            }
            artKey = key;
            blurCur = makeBlur(item.art);
        }
        artCur = item.cardImage;
    }

    private Object artKeyOf(IslandItem item) {
        if (item.art != null) {
            return item.art;
        }
        if (item.cardImage == null) {
            return null;
        }
        return iconKey;
    }

    /**
     * Builds a very soft version of the art: centre square, scaled down to 24x24 and box-blurred twice in
     * both directions. Returns null when the art is missing or cannot be processed.
     */
    private Drawable makeBlur(Bitmap art) {
        if (art == null) {
            return null;
        }
        try {
            Bitmap source = art;
            if (source.getConfig() == Bitmap.Config.HARDWARE) {
                // hardware bitmaps cannot be read back
                source = source.copy(Bitmap.Config.ARGB_8888, false);
            }
            int side = Math.min(source.getWidth(), source.getHeight());
            Bitmap square = Bitmap.createBitmap(source, (source.getWidth() - side) / 2, (source.getHeight() - side) / 2, side, side);
            Bitmap tiny = Bitmap.createScaledBitmap(square, BLUR_SIZE, BLUR_SIZE, true);
            int[] pixels = new int[BLUR_SIZE * BLUR_SIZE];
            tiny.getPixels(pixels, 0, BLUR_SIZE, 0, 0, BLUR_SIZE, BLUR_SIZE);
            int[] scratch = new int[BLUR_SIZE * BLUR_SIZE];
            for (int pass = 0; pass < BLUR_PASSES; pass++) {
                boxBlur(pixels, scratch, BLUR_SIZE, BLUR_RADIUS, true);
                boxBlur(scratch, pixels, BLUR_SIZE, BLUR_RADIUS, false);
            }
            Bitmap soft = Bitmap.createBitmap(pixels, BLUR_SIZE, BLUR_SIZE, Bitmap.Config.ARGB_8888);
            BitmapDrawable drawable = new BitmapDrawable(owner.getResources(), soft);
            drawable.setFilterBitmap(true);
            return drawable;
        } catch (Throwable t) {
            return null;
        }
    }

    /**
     * One box-blur pass over a square ARGB image of {@code size} x {@code size} pixels, along rows
     * ({@code horizontal}) or columns, clamping at the edges.
     */
    private void boxBlur(int[] in, int[] out, int size, int radius, boolean horizontal) {
        for (int line = 0; line < size; line++) {
            for (int pos = 0; pos < size; pos++) {
                int sumAlpha = 0;
                int sumRed = 0;
                int sumGreen = 0;
                int sumBlue = 0;
                int count = 0;
                for (int offset = -radius; offset <= radius; offset++) {
                    int sample = Math.max(0, Math.min(size - 1, pos + offset));
                    int argb = horizontal ? in[(line * size) + sample] : in[(sample * size) + line];
                    sumAlpha += argb >>> 24;
                    sumRed += (argb >> 16) & 255;
                    sumGreen += (argb >> 8) & 255;
                    sumBlue += argb & 255;
                    count++;
                }
                int averaged = ((sumAlpha / count) << 24) | ((sumRed / count) << 16) | ((sumGreen / count) << 8) | (sumBlue / count);
                if (horizontal) {
                    out[(line * size) + pos] = averaged;
                } else {
                    out[(pos * size) + line] = averaged;
                }
            }
        }
    }

    /** The glow accent, cross-fading to the item's latest accent colour. */
    public int accent(long now) {
        return Colors.blend(accentFrom, accentTo, IslandView.easeInOut((now - accentStart) / ACCENT_FADE_MS));
    }

    /** Whether something is still easing, so the view must keep redrawing. */
    public boolean animating(long now) {
        return speed.running(now) || glow.running(now) || now - accentStart < IslandView.FX_COLOR_MS || now - flipStart < IslandView.FLIP_MS;
    }

    /** Advances the blob phases by the time since the previous frame; call once per drawn frame. */
    public void advance(long now) {
        // step by the display frame's own (vsync) time: uptime in milliseconds read while drawing jitters by
        // a millisecond or more per frame, which shows as uneven motion at 90 / 120 Hz
        long frame = IslandView.frameNanos();
        float dt = lastFrameNanos == 0 ? 0.0f : Math.max(0.0f, Math.min(MAX_FRAME_DT_S, (frame - lastFrameNanos) / 1.0E9f));
        lastFrameNanos = frame;
        lastAdvance = now;
        lastDt = dt;
        float speedFactor = speed.value(now);
        for (int i = 0; i < 3; i++) {
            phase[i] = phase[i] + (IslandView.GLOW_RATE[i] * dt * speedFactor);
            if (phase[i] > IslandView.TWO_PI) {
                phase[i] = phase[i] - IslandView.TWO_PI;
            }
        }
        seekPhase += SEEK_PULSE_RATE * dt * speedFactor;
        if (seekPhase > IslandView.TWO_PI) {
            seekPhase -= IslandView.TWO_PI;
        }
    }

    /** Draws the glow into the card rectangle at ({@code x}, {@code y}) of size {@code w} x {@code h}. */
    public void drawGlow(Canvas c, float x, float y, float w, float h, float alpha, long now) {
        float fade = IslandView.easeInOut((now - accentStart) / ACCENT_FADE_MS);
        if (setTo.h != h || setTo.accent != accentTo) {
            setTo.build(accentTo, h);
        }
        float glowAlpha = alpha * glow.value(now);
        c.save();
        c.translate(x, y);
        if (fade < 1.0f) {
            // during an accent change the old colours fade out (partially) under the new ones
            if (setFrom.h != h || setFrom.accent != accentFrom) {
                setFrom.build(accentFrom, h);
            }
            // the old colours leave completely by the end and the new ones come in a little ahead of them, so the
            // glow neither dims in the middle nor jumps when the cross-fade ends
            drawLayer(c, setFrom, w, h, glowAlpha * (1.0f - fade));
            drawLayer(c, setTo, w, h, glowAlpha * Math.min(1.0f, fade * NEW_TONES_LEAD));
        } else {
            drawLayer(c, setTo, w, h, glowAlpha);
        }
        c.restore();
    }

    /** Draws the base gradient and the three drifting, breathing blobs of one tone set. */
    private void drawLayer(Canvas c, ToneSet set, float w, float h, float alpha) {
        if (alpha <= 0.002f) {
            return;
        }
        basePaint.setShader(set.base);
        basePaint.setAlpha(Math.round(alpha * 255.0f));
        c.drawRect(0.0f, h * 0.4f, w, h, basePaint);
        for (int i = 0; i < 3; i++) {
            float blobPhase = phase[i];
            float centerX = (IslandView.GLOW_LANE[i] + (((float) Math.sin(blobPhase)) * 0.12f)) * w;
            float centerY = h * (0.95f - (((float) Math.sin((blobPhase * 2.0f) + i)) * 0.07f));
            float breathe = (((float) Math.sin((3.0f * blobPhase) + (i * 2.0f))) * 0.18f) + 0.82f;
            c.save();
            c.translate(centerX, centerY);
            c.scale(IslandView.GLOW_RX[i] * w * breathe, IslandView.GLOW_RY[i] * h * breathe);
            blobPaint.setShader(set.blobs[i]);
            blobPaint.setAlpha(Math.round(alpha * 255.0f * IslandView.GLOW_PEAK[i] * ((0.2f * breathe) + 0.8f)));
            c.drawCircle(0.0f, 0.0f, 1.0f, blobPaint);
            c.restore();
        }
        blobPaint.setShader(null);
        basePaint.setShader(null);
    }

    /** 0 while paused up to 1 while playing: how alive the glow currently is. */
    public float liveness(long now) {
        return IslandView.clamp01((glow.value(now) - IslandView.PAUSED_GLOW) / GLOW_RANGE);
    }

    /**
     * Playback position to show. When the reported position jumps a little (a new snapshot of the same
     * track) the difference is blended out over a fraction of a second instead of making the bar jump.
     */
    public long shownPosition(IslandItem item, long nowElapsed) {
        long position = item.currentMediaPosition(nowElapsed);
        if (item != posItem) {
            boolean sameTrack = posItem != null && TextUtils.equals(posItem.title, item.title) && posItem.mediaDuration == item.mediaDuration;
            boolean smooth = sameTrack && lastShown >= 0 && position >= 0 && Math.abs(lastShown - position) < POSITION_JUMP_MS;
            posOffset = smooth ? lastShown - position : 0.0f;
            posItem = item;
        }
        posOffset *= (float) Math.exp((-lastDt) / POSITION_SMOOTHING_S);
        if (Math.abs(posOffset) < 1.0f) {
            posOffset = 0.0f;
        }
        long shown = position < 0 ? position : Math.max(0L, Math.round(posOffset) + position);
        lastShown = shown;
        return shown;
    }

    /**
     * Draws the cover art at ({@code left}, {@code top}). During a track change the old art rotates about
     * the vertical axis and is replaced halfway by the new one, each with its blurred ghost fading in and out.
     */
    public void drawArt(Canvas c, float left, float top, float size, float alpha, float corner, long now) {
        float t = (now - flipStart) / FLIP_DURATION_MS;
        if (artPrev != null && t < 1.0f) {
            float eased = IslandView.easeInOut(t);
            float angle = eased * 180.0f;
            boolean firstHalf = angle < 90.0f;
            Drawable art = firstHalf ? artPrev : artCur;
            Drawable ghost = firstHalf ? blurPrev : blurCur;
            // the second half starts mirrored and rotates into place
            float rotation = firstHalf ? angle : angle - 180.0f;
            float ghostAlpha = Math.min(1.0f, ((float) Math.sin(IslandView.clamp01(t) * 3.141592653589793d)) * 1.3f);
            float pivotX = left + (size / 2.0f);
            float pivotY = top + (size / 2.0f);
            owner.flipCamera.save();
            owner.flipCamera.rotateY(-rotation);
            owner.flipCamera.getMatrix(owner.flipMatrix);
            owner.flipCamera.restore();
            owner.flipMatrix.preTranslate(-pivotX, -pivotY);
            owner.flipMatrix.postTranslate(pivotX, pivotY);
            int save = c.save();
            c.concat(owner.flipMatrix);
            if (art != null) {
                owner.drawDrawable(c, art, true, 0, left, top, size, alpha, corner);
            }
            if (ghost != null && ghostAlpha > 0.01f) {
                owner.drawDrawable(c, ghost, true, 0, left, top, size, alpha * ghostAlpha, corner);
            }
            c.restoreToCount(save);
            return;
        }
        artPrev = null;
        blurPrev = null;
        if (artCur != null) {
            owner.drawDrawable(c, artCur, true, 0, left, top, size, alpha, corner);
        }
    }
}
