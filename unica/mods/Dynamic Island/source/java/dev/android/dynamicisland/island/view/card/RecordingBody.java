package dev.android.dynamicisland.island.view.card;

import android.graphics.Canvas;
import android.graphics.Paint;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.graphics.Glyphs;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;

/** Reference layout with the island's existing action colours. */
public final class RecordingBody extends CardBody {
    private final Paint time;
    private final float pad;
    private final float controlsLeft;

    public static boolean supports(IslandItem item) {
        boolean toggle = false, stop = false;
        for (IslandItem.Action action : item.actions) {
            toggle |= action.recordingControl == 1 || action.recordingControl == 2;
            stop |= action.recordingControl == 3;
        }
        return toggle && stop;
    }

    public RecordingBody(IslandView owner, IslandItem item, float width) {
        super(owner, item, width);
        h = owner.dp(88);
        pad = owner.dp(20);
        time = new Paint(owner.bigTimePaint);
        float diameter = owner.dp(width < owner.dp(330) ? 48 : 52);
        float gap = owner.dp(12);
        float right = width - pad;
        IslandItem.Action toggle = null, stop = null;
        for (IslandItem.Action action : item.actions) {
            if (action.recordingControl == 1 || action.recordingControl == 2) toggle = action;
            if (action.recordingControl == 3) stop = action;
        }
        add(stop, right - diameter, diameter, 6);
        right -= diameter + gap;
        add(toggle, right - diameter, diameter, toggle != null && toggle.recordingControl == 2 ? Glyphs.PLAY : Glyphs.PAUSE);
        controlsLeft = right - diameter;
    }

    private void add(IslandItem.Action action, float left, float diameter, int glyph) {
        if (action == null) return;
        Btn button = new Btn();
        button.action = action;
        button.circle = true;
        button.glyph = glyph;
        // Same precedence as TimerBody, including the user's accent on a primary action.
        button.bg = action.destructive ? Colors.DESTRUCTIVE_RED
                : action.glyph != 0 ? (action.active ? Colors.WHITE : Colors.BUTTON_GRAY)
                : item.actions.indexOf(action) == 0 ? Colors.blend(item.fillAccent(), Colors.BLACK, IslandView.PAUSED_SPEED)
                : Colors.BUTTON_GRAY;
        button.label = action.title == null ? null : action.title.toString();
        button.r.set(left, (h - diameter) / 2f, left + diameter, (h + diameter) / 2f);
        buttons.add(button);
    }

    @Override public void draw(Canvas canvas, float x, float y, float alpha, long elapsed) {
        float a = alpha * rowAlpha(elapsed, 0);
        float middle = y + h / 2f;
        String value = owner.trailingString(item);
        if (value == null) value = item.trailingText == null ? "0:00" : item.trailingText.toString();
        time.setTextSize(owner.dp(32));
        float usable = controlsLeft - pad - owner.dp(12);
        float clockWidth = time.measureText(value);
        float waveWidth = Math.max(owner.dp(24), Math.min(owner.dp(92), usable - clockWidth - owner.dp(14)));
        float clockRoom = Math.max(owner.dp(32), usable - waveWidth - owner.dp(12));
        if (clockWidth > clockRoom) time.setTextSize(time.getTextSize() * clockRoom / clockWidth);
        owner.drawRecordingWaveform(canvas, item, x + pad, middle, waveWidth, owner.dp(38), a);
        time.setColor(Colors.withAlpha(0xFFFF5B62, a));
        Paint.FontMetrics fm = time.getFontMetrics();
        float textX = x + pad + waveWidth + owner.dp(12);
        owner.drawTime(canvas, item.key + "#voice", value, time, textX, middle - (fm.ascent + fm.descent) / 2f, false);
        drawButtons(canvas, x, y, a);
    }
}
