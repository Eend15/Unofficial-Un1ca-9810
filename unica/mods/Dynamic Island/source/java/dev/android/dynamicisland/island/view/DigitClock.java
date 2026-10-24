package dev.android.dynamicisland.island.view;

import static dev.android.dynamicisland.island.graphics.Easing.easeInOut;
import static dev.android.dynamicisland.island.graphics.Easing.easeOutBack;
import static dev.android.dynamicisland.island.view.IslandView.clamp01;

import android.graphics.Canvas;
import android.graphics.Paint;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

/** Draws time strings such as "12:34" whose changing digits roll vertically (downwards for countdowns). */
final class DigitClock {
    /** Roll state older than this is dropped once more than {@link #CACHE_SIZE} entries exist. */
    private static final long STALE_MS = 5000;
    private static final int CACHE_SIZE = 12;
    private static final Pattern TIME_TEXT = Pattern.compile("-?\\d{1,2}(:\\d{2}){1,2}(\\.\\d{2})?");

    private final IslandView view;
    private final Map<String, DigitRoll> rolls = new HashMap<>();
    private long rollingUntil;

    DigitClock(IslandView view) {
        this.view = view;
    }

    /** True while some digit is still on its way, so the view must keep drawing. */
    boolean rolling() {
        return IslandView.now() < rollingUntil;
    }

    /** @param key identifies the text field, so every field keeps its own roll state */
    void draw(Canvas c, String key, String text, Paint paint, float left, float baseline, boolean countDown) {
        if (text == null) {
            return;
        }
        if (!TIME_TEXT.matcher(text).matches()) {
            c.drawText(text, left, baseline, paint);
            return;
        }
        long t = IslandView.now();
        DigitRoll roll = rollFor(key, text, t);
        long until = roll.update(text, t);
        if (until > rollingUntil) {
            rollingUntil = until;
            view.scheduleFrame();
        }
        Paint.FontMetrics fm = paint.getFontMetrics();
        float travel = (fm.descent - fm.ascent) * 0.8f;
        float dir = countDown ? -1.0f : 1.0f;
        int baseAlpha = paint.getAlpha();
        for (int i = 0; i < text.length(); i++) {
            float x = paint.measureText(text, 0, i) + left;
            float p = (t - roll.start[i]) / (float) IslandView.ROLL_MS;
            if (p >= 1.0f || roll.from[i] == text.charAt(i)) {
                c.drawText(text, i, i + 1, x, baseline, paint);
                continue;
            }
            float charWidth = paint.measureText(text, i, i + 1);
            int save = c.save();
            c.clipRect(x - (0.2f * charWidth), fm.ascent + baseline, x + (1.2f * charWidth), fm.descent + baseline);
            // the old digit leaves in the direction of travel while the new one overshoots into place
            float out = easeInOut(Math.min(1.0f, 1.25f * p));
            paint.setAlpha(Math.round(baseAlpha * (1.0f - out)));
            c.drawText(String.valueOf(roll.from[i]), x, baseline - ((dir * out) * travel), paint);
            float in = easeOutBack(p);
            paint.setAlpha(Math.round(baseAlpha * clamp01(1.8f * p)));
            c.drawText(text, i, i + 1, x, ((1.0f - in) * dir * travel) + baseline, paint);
            paint.setAlpha(baseAlpha);
            c.restoreToCount(save);
        }
    }

    /** The roll state for {@code key}; a new one starts fully settled on {@code text}. */
    private DigitRoll rollFor(String key, String text, long t) {
        DigitRoll roll = rolls.get(key);
        if (roll == null) {
            if (rolls.size() > CACHE_SIZE) {
                rolls.values().removeIf(r -> t - r.seen > STALE_MS);
            }
            roll = new DigitRoll();
            roll.text = text;
            roll.from = text.toCharArray();
            roll.start = new long[text.length()];
            Arrays.fill(roll.start, t - IslandView.ROLL_MS);
            rolls.put(key, roll);
        }
        roll.seen = t;
        return roll;
    }
}
