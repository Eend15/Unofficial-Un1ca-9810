package dev.android.dynamicisland.island.view;

import static dev.android.dynamicisland.island.view.IslandView.clamp01;

import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;

/**
 * The small pieces the pill, the bubble and the cards share: the leading icon, the trailing text / ring /
 * waveform, progress rings and the segmented progress bar.
 */
final class IconPainter {
    private static final ColorMatrixColorFilter GRAYSCALE = grayscale();

    private final Metrics m;
    private final Paints paints;
    private final Waveform waveform;
    private final RecordingWaveform recordingWaveform;
    private final dev.android.dynamicisland.island.graphics.BatteryGauge batteryGauge = new dev.android.dynamicisland.island.graphics.BatteryGauge();
    private final DigitClock clock;
    private final MediaFxCache mediaFx;
    /** Scratch objects owned by the view; the card bodies share them. */
    private final RectF scratch;
    private final Path barClip;
    private final Path imageClip = new Path();

    IconPainter(Metrics m, Paints paints, Waveform waveform, RecordingWaveform recordingWaveform, DigitClock clock, MediaFxCache mediaFx, RectF scratch, Path barClip) {
        this.m = m;
        this.paints = paints;
        this.waveform = waveform;
        this.recordingWaveform = recordingWaveform;
        this.clock = clock;
        this.mediaFx = mediaFx;
        this.scratch = scratch;
        this.barClip = barClip;
    }

    private static ColorMatrixColorFilter grayscale() {
        ColorMatrix matrix = new ColorMatrix();
        matrix.setSaturation(0.0f);
        return new ColorMatrixColorFilter(matrix);
    }

    /** Leading icon of the compact pill: monochrome unless the icon is artwork. */
    void drawLeadingMono(Canvas c, IslandItem item, float left, float midY, float size, float alpha) {
        if (item.eventLayout == IslandItem.EventLayout.BATTERY && item.batteryPercent >= 0) {
            batteryGauge.draw(c, left + size / 2, midY, size, item.batteryPercent, item.fillAccent(), alpha,
                    false, item.batteryCharging && !ModuleSettings.hideBatteryIcon());
            return;
        }
        if (item.voiceRecording && ModuleSettings.concurrentRecordingInput()) {
            recordingWaveform.draw(c, item, left, midY, size, size * .85f, alpha);
            return;
        }
        if (item.pulsingDot || item.icon == null) {
            drawLeading(c, item, left, midY, size, alpha);
            return;
        }
        float top = midY - (size / 2.0f);
        if (!item.iconIsImage && ModuleSettings.colorIcons() && item.icon instanceof android.graphics.drawable.BitmapDrawable) {
            // a picture the app gave as a symbol (a team logo): tinting it would leave a flat white shape
            drawDrawable(c, item.icon, true, 0, left, top, size, alpha, size * 0.26f);
        } else if (!item.iconIsImage) {
            drawDrawable(c, item.icon, false, item.kind == IslandItem.Kind.CALL ? item.accent : -1, left, top, size, alpha, 0.0f);
        } else if (!item.isMedia) {
            if (ModuleSettings.colorIcons()) {
                drawDrawable(c, item.icon, true, 0, left, top, size, alpha, size * 0.26f);
            } else {
                item.icon.setColorFilter(GRAYSCALE);
                drawDrawable(c, item.icon, true, 0, left, top, size, alpha, size * 0.26f);
                item.icon.setColorFilter(null);
            }
        } else if (item.cardImage != null) {
            // same flipping album art as the card, so the pill animates on track changes
            mediaFx.obtain(item).drawArt(c, left, top, size, alpha, size * 0.26f, IslandView.now());
        } else {
            drawLeading(c, item, left, midY, size, alpha);
        }
    }

    void drawLeading(Canvas c, IslandItem item, float left, float midY, float size, float alpha) {
        Paint fill = paints.fill;
        if (item.pulsingDot) {
            float phase = (SystemClock.uptimeMillis() % 1100) / 1100.0f;
            float breathe = (((((float) Math.cos(phase * 3.141592653589793d * 2.0d)) * 0.5f) + 0.5f) * 0.45f) + 0.55f;
            fill.setColor(Colors.withAlpha(Colors.DESTRUCTIVE_RED, alpha * breathe));
            c.drawCircle((size / 2.0f) + left, midY, 0.32f * size, fill);
        } else if (item.icon == null) {
            fill.setColor(Colors.withAlpha(item.accent, alpha));
            c.drawCircle((size / 2.0f) + left, midY, 0.3f * size, fill);
        } else {
            drawDrawable(c, item.icon, item.iconIsImage, item.accent, left, midY - (size / 2.0f), size, alpha, size * 0.26f);
        }
    }

    /** Draws in a square slot: artwork is centre-cropped; tinted icons fit inside without stretching. */
    void drawDrawable(Canvas c, Drawable d, boolean image, int tint, float left, float top, float size, float alpha, float corner) {
        int l = Math.round(left);
        int t = Math.round(top);
        int sz = Math.round(size);
        d.setAlpha(Math.round(255.0f * alpha));
        if (!image) {
            d.setBounds(centerInside(d, l, t, sz));
            d.setTint(tint);
            d.draw(c);
            return;
        }
        int save = c.save();
        scratch.set(l, t, l + sz, t + sz);
        imageClip.rewind();
        imageClip.addRoundRect(scratch, corner, corner, Path.Direction.CW);
        c.clipPath(imageClip);
        d.setBounds(centerCrop(d, l, t, sz));
        d.setTintList(null);
        d.draw(c);
        c.restoreToCount(save);
    }

    /** Fits a symbol inside its slot, preserving its intrinsic aspect ratio and centring both axes. */
    private static android.graphics.Rect centerInside(Drawable d, int l, int t, int sz) {
        int iw = d.getIntrinsicWidth();
        int ih = d.getIntrinsicHeight();
        if (sz <= 0 || iw <= 0 || ih <= 0 || iw == ih) {
            return new android.graphics.Rect(l, t, l + sz, t + sz);
        }
        float scale = Math.min(sz / (float) iw, sz / (float) ih);
        int width = Math.max(1, Math.round(iw * scale));
        int height = Math.max(1, Math.round(ih * scale));
        int left = l + ((sz - width) / 2);
        int top = t + ((sz - height) / 2);
        return new android.graphics.Rect(left, top, left + width, top + height);
    }

    /**
     * Bounds that fit {@code d} into the square {@code sz} at ({@code l}, {@code t}) like ImageView's
     * CENTER_CROP, so non 1:1 artwork keeps its aspect ratio (the caller clips the overflow).
     */
    private static android.graphics.Rect centerCrop(Drawable d, int l, int t, int sz) {
        int iw = d.getIntrinsicWidth();
        int ih = d.getIntrinsicHeight();
        if (iw <= 0 || ih <= 0 || iw == ih) {
            return new android.graphics.Rect(l, t, l + sz, t + sz);
        }
        float scale = Math.max(sz / (float) iw, sz / (float) ih);
        int dw = Math.round(iw * scale);
        int dh = Math.round(ih * scale);
        int dl = l + ((sz - dw) / 2);
        int dt = t + ((sz - dh) / 2);
        return new android.graphics.Rect(dl, dt, dl + dw, dt + dh);
    }

    float trailingWidth(IslandItem item, String text) {
        switch (item.trailing) {
            case TEXT:
            case CHRONOMETER:
                return text == null ? 0.0f : DigitClock.width(paints.trail, text);
            case PROGRESS_RING:
                return m.ringSize;
            case WAVEFORM:
                return waveform.width();
            default:
                return 0.0f;
        }
    }

    void drawTrailing(Canvas c, IslandItem item, String text, float right, float midY, float w, float alpha) {
        switch (item.trailing) {
            case TEXT:
            case CHRONOMETER:
                if (text != null) {
                    Paint.FontMetrics fm = paints.trail.getFontMetrics();
                    paints.trail.setColor(Colors.withAlpha(item.voiceRecording && ModuleSettings.concurrentRecordingInput()
                            ? 0xFFFF5B62 : item.kind == IslandItem.Kind.CALL ? item.accent : -1, alpha));
                    float baseline = midY - ((fm.ascent + fm.descent) / 2.0f);
                    float natural = DigitClock.width(paints.trail, text);
                    int save = c.save();
                    if (DigitClock.isClock(text) && w > 0 && natural > w) c.scale(w / natural, w / natural, right, midY);
                    clock.draw(c, item.key + "#compact", text, paints.trail, right - natural, baseline, item.chronoCountDown);
                    c.restoreToCount(save);
                }
                break;
            case PROGRESS_RING:
                drawRing(c, right - (m.ringSize / 2.0f), midY, m.ringSize / 2.0f, item.progress, -1, alpha);
                break;
            case WAVEFORM:
                if (item.isMedia) {
                    waveform.draw(c, scratch, right - w, midY, mediaFx.obtain(item), alpha, IslandView.now());
                } else {
                    waveform.draw(c, scratch, right - w, midY, item.accent, alpha);
                }
                break;
            default:
                break;
        }
    }

    /** A ring that fills clockwise with {@code progress}, or a spinning arc when the progress is negative. */
    void drawRing(Canvas c, float x, float y, float radius, float progress, int color, float alpha) {
        float strokeW = m.dp(2.6f);
        Paint stroke = paints.stroke;
        stroke.setStrokeWidth(strokeW);
        float rr = radius - (strokeW / 2.0f);
        scratch.set(x - rr, y - rr, x + rr, y + rr);
        stroke.setColor(Colors.withAlpha(Colors.CARD_STROKE, alpha));
        c.drawArc(scratch, 0.0f, 360.0f, false, stroke);
        stroke.setColor(Colors.withAlpha(color, alpha));
        boolean spinning = progress < 0.0f;
        float sweep = spinning ? 90.0f : clamp01(progress) * 360.0f;
        float start = spinning ? ((SystemClock.uptimeMillis() % 1200) / 1200.0f) * 360.0f : -90.0f;
        c.drawArc(scratch, start, Math.max(sweep, 4.0f), false, stroke);
    }

    /**
     * Android 16 ProgressStyle bar: coloured segments with small gaps; the part behind the progress
     * keeps its colour, the rest is faded. Milestone points and the tracker sit on top.
     */
    void drawSegmentedBar(Canvas c, IslandItem it, float left, float right, float top, float boxH, float alpha) {
        Paint fill = paints.fill;
        float width = right - left;
        float barH = m.dp(8.0f);
        float barTop = top + ((boxH - barH) / 2.0f);
        float midY = barTop + (barH / 2.0f);
        float progress = clamp01(it.progress);
        float fillX = left + (width * progress);
        int n = it.progressSegmentColors.length;
        float gap = m.dp(2.0f);
        scratch.set(left, barTop, right, barTop + barH);
        int save = c.save();
        barClip.rewind();
        barClip.addRoundRect(scratch, barH / 2.0f, barH / 2.0f, Path.Direction.CW);
        c.clipPath(barClip);
        for (int i = 0; i < n; i++) {
            float segStart = left + (width * it.progressSegmentStarts[i]) + (i == 0 ? 0.0f : gap / 2.0f);
            float segEnd = i + 1 < n ? left + (width * it.progressSegmentStarts[i + 1]) - (gap / 2.0f) : right;
            int color = it.progressSegmentColors[i] | Colors.BLACK;
            // elapsed part in full colour, remainder faded when the style says so
            float elapsedEnd = Math.min(segEnd, Math.max(segStart, fillX));
            if (elapsedEnd > segStart) {
                fill.setColor(Colors.withAlpha(color, alpha));
                c.drawRect(segStart, barTop, elapsedEnd, barTop + barH, fill);
            }
            if (segEnd > elapsedEnd) {
                fill.setColor(Colors.withAlpha(color, alpha * (it.progressStyledByProgress ? 0.32f : 1.0f)));
                c.drawRect(elapsedEnd, barTop, segEnd, barTop + barH, fill);
            }
        }
        c.restoreToCount(save);
        if (it.progressPointPositions != null) {
            float pointR = barH * 0.34f;
            for (int i = 0; i < it.progressPointPositions.length; i++) {
                float px = left + (width * it.progressPointPositions[i]);
                int pointColor = it.progressPointColors[i] != 0 ? (it.progressPointColors[i] | Colors.BLACK) : -1;
                fill.setColor(Colors.withAlpha(Colors.BLACK, alpha * 0.55f));
                c.drawCircle(px, midY, pointR + m.dp(1.2f), fill);
                fill.setColor(Colors.withAlpha(pointColor, alpha));
                c.drawCircle(px, midY, pointR, fill);
            }
        }
        if (it.progressThumb != null) {
            float thumb = m.dp(20.0f);
            float tx = Math.max(left, Math.min(right - thumb, fillX - (thumb / 2.0f)));
            drawDrawable(c, it.progressThumb, true, 0, tx, top + ((boxH - thumb) / 2.0f), thumb, alpha, thumb / 2.0f);
        } else if (progress > 0.0f && progress < 1.0f) {
            // no tracker icon: a small dot keeps the current position readable against the faded rest
            fill.setColor(Colors.withAlpha(Colors.WHITE, alpha));
            c.drawCircle(fillX, midY, barH * 0.62f, fill);
        }
    }
}
