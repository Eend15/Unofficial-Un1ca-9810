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

    /**
     * Width of the widest digit. Every digit of a clock gets a cell this wide, so a digit never lands on its
     * neighbour whatever font, weight, size or "tnum" support the paint has.
     */
    private static float digitCell(Paint paint) {
        float widest = 0.0f;
        for (char d = '0'; d <= '9'; d++) {
            widest = Math.max(widest, paint.measureText(String.valueOf(d)));
        }
        return widest;
    }

    private static float cellOf(Paint paint, char ch, float digitCell) {
        return (ch >= '0' && ch <= '9') ? digitCell : paint.measureText(String.valueOf(ch));
    }

    /** Whether {@code text} is a clock string that {@link #draw} lays out cell by cell. */
    static boolean isClock(String text) {
        return text != null && TIME_TEXT.matcher(text).matches();
    }

    /**
     * Width {@link #draw} needs for {@code text}. Pill and card sizing must use this (not
     * {@code Paint.measureText}) for clocks, so the measured and the drawn width always agree.
     */
    static float width(Paint paint, String text) {
        if (text == null) {
            return 0.0f;
        }
        if (!isClock(text)) {
            return paint.measureText(text);
        }
        float digit = digitCell(paint);
        float w = 0.0f;
        for (int i = 0; i < text.length(); i++) {
            w += cellOf(paint, text.charAt(i), digit);
        }
        return w;
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
        if (!isClock(text)) {
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
        float digit = digitCell(paint);
        float x = left;
        for (int i = 0; i < text.length(); i++) {
            char ch = text.charAt(i);
            float cell = cellOf(paint, ch, digit);
            // glyphs are centred in their cell, so narrow ones ("1", ":") do not crowd the next digit
            float gx = x + ((cell - paint.measureText(text, i, i + 1)) / 2.0f);
            x += cell;
            float p = (t - roll.start[i]) / (float) IslandView.ROLL_MS;
            if (p >= 1.0f || roll.from[i] == ch) {
                c.drawText(text, i, i + 1, gx, baseline, paint);
                continue;
            }
            int save = c.save();
            c.clipRect(x - (1.2f * cell), fm.ascent + baseline, x + (0.2f * cell), fm.descent + baseline);
            // the old digit leaves in the direction of travel while the new one overshoots into place
            float out = easeInOut(Math.min(1.0f, 1.25f * p));
            float oldX = (x - cell) + ((cell - paint.measureText(String.valueOf(roll.from[i]))) / 2.0f);
            paint.setAlpha(Math.round(baseAlpha * (1.0f - out)));
            c.drawText(String.valueOf(roll.from[i]), oldX, baseline - ((dir * out) * travel), paint);
            float in = easeOutBack(p);
            paint.setAlpha(Math.round(baseAlpha * clamp01(1.8f * p)));
            c.drawText(text, i, i + 1, gx, ((1.0f - in) * dir * travel) + baseline, paint);
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
