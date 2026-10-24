package dev.android.dynamicisland.island.view.card;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextUtils;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;

/**
 * Single-row card for timers, stopwatches and calls.
 *
 * <pre>
 * +----------------------------------------------+
 * | [icon]  12:34            (btn) (btn) (btn)   |   84dp tall, everything centred vertically
 * |         Label                                |
 * +----------------------------------------------+
 * </pre>
 *
 * Left: the item's leading icon (the caller photo for calls). Middle: the big time with the label under it;
 * for a call the caller name is the main line and the call duration sits under it in green. Right: up to three
 * round or pill buttons, laid out from the right edge.
 */
public final class TimerBody extends CardBody {
    private static final int MAX_BUTTONS = 3;
    /** Glyph id of the "stop" square (Glyphs.STOP, not public) used for actions that only have a callback. */
    private static final int GLYPH_STOP = 6;

    final boolean call;
    final float iconSize;
    final String label;
    final float pad;

    public TimerBody(IslandView owner, IslandItem item, float w) {
        super(owner, item, w);
        pad = owner.dp(16.0f);
        call = item.kind == IslandItem.Kind.CALL;
        iconSize = owner.dp(call ? 40.0f : 30.0f);
        h = owner.dp(84.0f);
        CharSequence labelText = item.title != null ? item.title : item.appName;
        label = labelText == null ? null : labelText.toString();
        float circleSize = owner.dp(46.0f);
        float gap = owner.dp(10.0f);
        float right = w - pad;
        int count = Math.min(item.actions.size(), MAX_BUTTONS);
        boolean usedAccent = false;
        // laid out right to left, so the first action ends up leftmost
        for (int i = count - 1; i >= 0; i--) {
            IslandItem.Action action = item.actions.get(i);
            Btn b = new Btn();
            b.action = action;
            b.icon = action.icon;
            b.label = action.title == null ? null : action.title.toString();
            b.circle = action.icon != null || action.runnable != null || action.glyph != 0;
            b.glyph = action.glyph;
            if (action.glyph != 0) {
                b.icon = null;
            }
            if (action.destructive) {
                b.bg = Colors.DESTRUCTIVE_RED;
            } else if (action.glyph != 0) {
                b.bg = action.active ? Colors.WHITE : Colors.BUTTON_GRAY;
            } else if (!usedAccent && i == 0) {
                // the primary (first) action gets the accent colour, darkened
                b.bg = call ? Colors.CALL_GREEN : Colors.blend(item.accent, Colors.BLACK, IslandView.PAUSED_SPEED);
                usedAccent = true;
            } else {
                b.bg = Colors.BUTTON_GRAY;
            }
            if (action.runnable != null && action.icon == null && b.glyph == 0) {
                b.glyph = GLYPH_STOP;
            }
            float buttonWidth;
            if (b.circle) {
                buttonWidth = circleSize;
            } else {
                buttonWidth = Math.min(owner.dp(110.0f), owner.buttonPaint.measureText(b.label == null ? "" : b.label) + owner.dp(28.0f));
            }
            b.r.set(right - buttonWidth, (h - circleSize) / 2.0f, right, (h + circleSize) / 2.0f);
            right -= buttonWidth + gap;
            buttons.add(b);
        }
    }

    @Override
    public void draw(Canvas c, float x, float y, float alpha, long elapsed) {
        float rowAlpha = rowAlpha(elapsed, 0);
        float a = alpha * rowAlpha;
        float dy = (1.0f - rowAlpha) * owner.dp(6.0f);
        float midY = y + (h / 2.0f) + dy;
        float iconX = x + pad;
        if (call && item.cardImage != null) {
            owner.drawDrawable(c, item.cardImage, true, 0, iconX, midY - (iconSize / 2.0f), iconSize, a, iconSize / 2.0f);
        } else {
            owner.drawLeading(c, item, iconX, midY, iconSize, a);
        }
        float textX = iconX + iconSize + owner.dp(14.0f);
        // text stops before the leftmost button, or at the card padding when there are none
        float textLimit;
        float textGap;
        if (buttons.isEmpty()) {
            textLimit = w + x;
            textGap = pad;
        } else {
            textLimit = buttons.get(buttons.size() - 1).r.left + x;
            textGap = owner.dp(8.0f);
        }
        float textRight = textLimit - textGap;
        String time = owner.trailingString(item);
        if (time == null && item.trailingText != null) {
            time = item.trailingText.toString();
        }
        if (!call || label == null) {
            drawTimeAndLabel(c, a, midY, textX, textRight, time);
        } else {
            drawCallLines(c, a, midY, textX, textRight, time);
        }
        drawButtons(c, x, y + dy, a);
    }

    /** Big time on top, small label under it; a lone label is centred on the row. */
    private void drawTimeAndLabel(Canvas c, float a, float midY, float textX, float textRight, String time) {
        Paint.FontMetrics timeMetrics = owner.bigTimePaint.getFontMetrics();
        float timeHeight = timeMetrics.descent - timeMetrics.ascent;
        float labelHeight = label != null ? owner.smallPaint.getTextSize() + owner.dp(4.0f) : 0.0f;
        float blockTop = midY - ((timeHeight + labelHeight) / 2.0f);
        if (time != null) {
            owner.bigTimePaint.setColor(Colors.withAlpha(Colors.WHITE, a));
            String shownTime = TextUtils.ellipsize(time, owner.bigTimePaint, textRight - textX, TextUtils.TruncateAt.END).toString();
            owner.drawTime(c, item.key + "#card", shownTime, owner.bigTimePaint, textX, blockTop - timeMetrics.ascent, item.chronoCountDown);
        }
        if (label != null) {
            owner.smallPaint.setColor(Colors.withAlpha(Colors.TEXT_SECONDARY, a));
            String shownLabel = TextUtils.ellipsize(label, owner.smallPaint, textRight - textX, TextUtils.TruncateAt.END).toString();
            float baseline;
            if (time != null) {
                baseline = ((blockTop + timeHeight) + owner.dp(2.0f)) - owner.smallPaint.getFontMetrics().ascent;
            } else {
                baseline = midY - ((owner.smallPaint.getFontMetrics().ascent + owner.smallPaint.getFontMetrics().descent) / 2.0f);
            }
            c.drawText(shownLabel, textX, baseline, owner.smallPaint);
        }
    }

    /** Call layout: caller name above the row centre, call duration in green below it. */
    private void drawCallLines(Canvas c, float a, float midY, float textX, float textRight, String time) {
        owner.titlePaint.setColor(Colors.withAlpha(Colors.WHITE, a));
        String name = TextUtils.ellipsize(label, owner.titlePaint, textRight - textX, TextUtils.TruncateAt.END).toString();
        Paint.FontMetrics titleMetrics = owner.titlePaint.getFontMetrics();
        c.drawText(name, textX, (midY - owner.dp(2.0f)) - titleMetrics.descent, owner.titlePaint);
        if (time != null) {
            owner.trailPaint.setColor(Colors.withAlpha(Colors.CALL_GREEN, a));
            owner.drawTime(c, item.key + "#call", time, owner.trailPaint, textX, (midY + owner.dp(4.0f)) - owner.trailPaint.getFontMetrics().ascent, false);
        }
    }
}
