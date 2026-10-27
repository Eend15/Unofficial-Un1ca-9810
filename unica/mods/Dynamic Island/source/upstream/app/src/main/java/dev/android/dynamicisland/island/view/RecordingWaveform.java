package dev.android.dynamicisland.island.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.SystemClock;
import dev.android.dynamicisland.island.feedback.RecorderInput;
import dev.android.dynamicisland.island.model.IslandItem;

/** A closely spaced, smoothly scrolling history of actual microphone levels. */
final class RecordingWaveform {
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final RecorderInput input;
    private final float[] levels = new float[32];

    RecordingWaveform(RecorderInput input) { this.input = input; }

    void draw(Canvas canvas, IslandItem item, float left, float midY, float width, float height, float alpha) {
        if (width <= 0f || height <= 0f || alpha <= 0f) return;
        if (input == null || item.voiceRecordingPaused) java.util.Arrays.fill(levels, 0f);
        // AudioRecord timestamps use elapsedRealtime too. Uptime excludes deep sleep and
        // would pin the interpolation phase at zero after the phone has slept.
        else input.envelope.copyVisualLevels(item.key, levels, SystemClock.elapsedRealtime());
        int bars = Math.max(4, Math.min(levels.length, Math.round(width / Math.max(1f, height / 10f))));
        float step = width / bars;
        float barWidth = step * .46f;
        float baseline = Math.max(barWidth * 1.6f, height * .075f);
        for (int i = 0; i < bars; i++) {
            float position = i * (levels.length - 1f) / (bars - 1);
            int index = (int) position;
            float blend = position - index;
            float value = levels[index] * (1f - blend) + levels[Math.min(levels.length - 1, index + 1)] * blend;
            float h = baseline + (height - baseline) * (float) Math.pow(value, .8);
            float edge = Math.min(1f, Math.min(i + 1, bars - i) / 3f);
            paint.setColor(dev.android.dynamicisland.island.graphics.Colors.withAlpha(0xFFFF5B62,
                    alpha * (.45f + .55f * value) * (.55f + .45f * edge)));
            float x = left + step * (i + .5f) - barWidth / 2f;
            canvas.drawRoundRect(x, midY - h / 2f, x + barWidth, midY + h / 2f, barWidth / 2f, barWidth / 2f, paint);
        }
    }
}
