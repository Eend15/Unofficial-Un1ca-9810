package dev.android.dynamicisland.island.view;

import static dev.android.dynamicisland.island.view.IslandView.clamp01;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import dev.android.dynamicisland.island.feedback.AudioLevels;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.graphics.Spring;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.media.MediaFx;
import java.util.Random;
import dev.android.dynamicisland.settings.ModuleSettings;

/**
 * The little equaliser at the right of the pill while music plays. With live audio the bars follow the
 * frequency bands; without it they wander randomly, and they settle low when paused.
 */
final class Waveform {
    static final int BARS = 4;
    private static final float[] STATIC_LEVELS = {.3f, .65f, .45f, .25f};
    /** Audio band that drives each bar, left to right. */
    private static final int[] BAND_ORDER = {2, 0, 1, 3};
    private static final float MAX_HEIGHT_DP = 18.0f;
    private static final float MIN_HEIGHT_DP = 4.0f;
    /** Time constant in seconds with which the smoothed levels follow the raw ones. */
    private static final float LEVEL_SMOOTHING_S = 0.09f;

    private final Metrics m;
    private final Spring[] bars = new Spring[BARS];
    private final float[] level = new float[BARS];
    private final Random random = new Random();
    /** Flat non-media waveforms must not inherit a media shader or mutate the shared fill paint. */
    private final Paint flatPaint = new Paint(Paint.ANTI_ALIAS_FLAG);

    Waveform(Metrics m) {
        this.m = m;
        for (int i = 0; i < BARS; i++) {
            bars[i] = new Spring(0.2f, 0.3f, 1.0f).setValueThreshold(0.003f);
        }
    }

    float width() {
        return (BARS * m.waveBarW) + ((BARS - 1) * m.waveGap);
    }

    /**
     * Advances the bars for the playing/paused {@code item}.
     *
     * @return true while the display needs more frames
     */
    boolean step(float dt, IslandItem item, AudioLevels audio) {
        if (ModuleSettings.lowPerformance()) return false;
        boolean live = item.playing && ModuleSettings.visualizer() && audio != null && audio.isLive();
        float k = 1.0f - ((float) Math.exp((-dt) / LEVEL_SMOOTHING_S));
        boolean moving = false;
        for (int i = 0; i < BARS; i++) {
            Spring bar = bars[i];
            if (live) {
                followAudio(i, bar, audio, k);
            } else if (!item.playing) {
                bar.animateTo(IslandView.PAUSED_SPEED, 0.3f, 0.95f);
            } else if (bar.isAtRest() || Math.abs(bar.value() - bar.target()) < 0.05f) {
                bar.animateTo((random.nextFloat() * 0.45f) + 0.2f, (random.nextFloat() * 0.14f) + 0.32f, 0.95f);
            }
            if (!live) {
                level[i] += (bar.value() - level[i]) * k;
            }
            moving |= bar.step(dt);
        }
        return moving | item.playing;
    }

    private void followAudio(int index, Spring bar, AudioLevels audio, float k) {
        float raw = audio.level(BAND_ORDER[index]);
        if (index == BARS - 1) {
            raw = Math.max(raw, audio.level(AudioLevels.BANDS - 1)); // the last bar also follows the top band
        }
        level[index] += (raw - level[index]) * k;
        float target = (level[index] * 0.9f) + 0.1f;
        if (target > bar.value()) {
            bar.animateTo(target, 0.13f, 0.85f); // rises fast
        } else {
            bar.animateTo(target, 0.3f, 1.0f);
        }
    }

    void draw(Canvas c, RectF scratch, float left, float midY, int color, float alpha) {
        flatPaint.setColor(Colors.withAlpha(color, alpha));
        drawBars(c, flatPaint, scratch, left, midY);
    }

    void draw(Canvas c, RectF scratch, float left, float midY, MediaFx fx, float alpha, long now) {
        drawBars(c, fx.waveformPaint(left, width(), alpha, now), scratch, left, midY);
    }

    private void drawBars(Canvas c, Paint paint, RectF scratch, float left, float midY) {
        float maxH = m.dp(MAX_HEIGHT_DP);
        float minH = m.dp(MIN_HEIGHT_DP);
        float x = left;
        for (int i = 0; i < BARS; i++) {
            float value = ModuleSettings.lowPerformance() ? STATIC_LEVELS[i] : bars[i].value();
            float h = ((maxH - minH) * clamp01(value)) + minH;
            scratch.set(x, midY - (h / 2.0f), m.waveBarW + x, midY + (h / 2.0f));
            c.drawRoundRect(scratch, m.waveBarW / 2.0f, m.waveBarW / 2.0f, paint);
            x += m.waveBarW + m.waveGap;
        }
    }
}
