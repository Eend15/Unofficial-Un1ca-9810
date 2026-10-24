package dev.android.dynamicisland.island.view.card;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.TextUtils;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.graphics.Glyphs;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import java.util.ArrayList;
import java.util.List;

/**
 * Laid-out content of one expanded card. The constructor of a subclass measures the text and places the
 * buttons (so {@link #h} is known before the first draw); {@link #draw} paints it. Rows fade in one after
 * another ({@link #rowAlpha}). Main thread only.
 */
public abstract class CardBody {
    /** Fade-in duration of one row, see {@link #rowAlpha}. */
    private static final float ROW_FADE_MS = 200.0f;
    /** Extra touch area around each button. */
    private static final float HIT_SLOP_DP = 6.0f;
    /** Fraction by which a fully pressed button shrinks. */
    private static final float PRESS_SHRINK = 0.14f;
    private static final float PRESS_HALO_ALPHA = 0.16f;
    private static final int MAX_TEXT_BUTTONS = 3;

    final List<Btn> buttons = new ArrayList<>();
    /** Total height of the body; set by the subclass constructor. */
    public float h;
    final IslandView owner;
    public final IslandItem item;
    /** Width of the body. */
    public final float w;

    CardBody(IslandView owner, IslandItem item, float w) {
        this.owner = owner;
        this.item = item;
        this.w = w;
    }

    /** Draws the body with its top-left corner at ({@code x}, {@code y}); {@code elapsed} is ms since it appeared. */
    public abstract void draw(Canvas canvas, float x, float y, float alpha, long elapsed);

    /**
     * Draws what fills the whole card behind the content (e.g. the music glow) into {@code frame}, the card's
     * current shape. Separate from {@link #draw} so it follows the card while it stretches and bounces,
     * instead of being cut off or leaving a gap. Nothing by default.
     */
    public void drawBackground(Canvas canvas, RectF frame, float alpha) {
    }

    /** The button under ({@code lx}, {@code ly}) in body coordinates, or null. */
    public Btn hit(float lx, float ly) {
        float slop = owner.dp(HIT_SLOP_DP);
        for (Btn b : buttons) {
            if (lx >= b.r.left - slop && lx <= b.r.right + slop && ly >= b.r.top - slop && ly <= b.r.bottom + slop) {
                return b;
            }
        }
        return null;
    }

    /** Fade-in of the given row: row n starts n * {@code ROW_STAGGER_MS} after the body appeared. */
    float rowAlpha(long elapsed, int row) {
        return IslandView.clamp01((elapsed - (row * IslandView.ROW_STAGGER_MS)) / ROW_FADE_MS);
    }

    void drawButtons(Canvas c, float x, float y, float alpha) {
        for (Btn b : buttons) {
            owner.tmpRect.set(b.r);
            owner.tmpRect.offset(x, y);
            float press = owner.pressOf(b, item);
            int save = c.save();
            if (press != 0.0f) {
                float scale = 1.0f - (PRESS_SHRINK * press);
                c.scale(scale, scale, owner.tmpRect.centerX(), owner.tmpRect.centerY());
                if (press > 0.0f) {
                    float haloRadius = (Math.max(owner.tmpRect.width(), owner.tmpRect.height()) / 2.0f) + (b.circle ? 0.0f : owner.dp(10.0f));
                    owner.fillPaint.setColor(Colors.withAlpha(Colors.WHITE, PRESS_HALO_ALPHA * alpha * Math.min(1.0f, press)));
                    if (b.circle || b.glyph != 0) {
                        c.drawCircle(owner.tmpRect.centerX(), owner.tmpRect.centerY(), haloRadius, owner.fillPaint);
                    } else {
                        c.drawRoundRect(owner.tmpRect, owner.tmpRect.height() / 2.0f, owner.tmpRect.height() / 2.0f, owner.fillPaint);
                    }
                }
            }
            drawButton(c, b, alpha);
            c.restoreToCount(save);
        }
    }

    private void drawButton(Canvas c, Btn b, float alpha) {
        if (!b.circle) {
            if (b.glyph != 0) {
                owner.fillPaint.setColor(Colors.withAlpha(Colors.WHITE, alpha));
                Glyphs.draw(c, b.glyph, owner.tmpRect.centerX(), owner.tmpRect.centerY(), owner.tmpRect.height() * 0.5f, owner.fillPaint);
                return;
            }
            owner.fillPaint.setColor(Colors.withAlpha(b.bg, alpha));
            c.drawRoundRect(owner.tmpRect, owner.tmpRect.height() / 2.0f, owner.tmpRect.height() / 2.0f, owner.fillPaint);
            if (b.label != null) {
                drawLabel(c, b.label, owner.tmpRect, alpha);
            }
            return;
        }
        owner.fillPaint.setColor(Colors.withAlpha(b.bg, alpha));
        c.drawOval(owner.tmpRect, owner.fillPaint);
        float contentSize = owner.tmpRect.height() * (b.bg == Colors.TRANSPARENT_MARK ? 0.6f : 0.44f);
        if (b.glyph != 0) {
            // a white fill gets a black glyph, anything else a white one
            owner.fillPaint.setColor(Colors.withAlpha(b.bg == Colors.WHITE ? Colors.BLACK : Colors.WHITE, alpha));
            if (b.glyph == Glyphs.PLAY || b.glyph == Glyphs.PAUSE) {
                contentSize = owner.tmpRect.height() * 0.4f;
            }
            Glyphs.draw(c, b.glyph, owner.tmpRect.centerX(), owner.tmpRect.centerY(), contentSize, owner.fillPaint);
            return;
        }
        if (b.icon != null) {
            owner.drawDrawable(c, b.icon, false, Colors.WHITE, owner.tmpRect.centerX() - (contentSize / 2.0f), owner.tmpRect.centerY() - (contentSize / 2.0f), contentSize, alpha, 0.0f);
        } else if (b.label != null) {
            drawLabel(c, b.label, owner.tmpRect, alpha);
        }
    }

    private void drawLabel(Canvas c, String label, RectF bounds, float alpha) {
        owner.buttonPaint.setColor(Colors.withAlpha(Colors.WHITE, alpha));
        String text = TextUtils.ellipsize(label, owner.buttonPaint, bounds.width() - owner.dp(14.0f), TextUtils.TruncateAt.END).toString();
        Paint.FontMetrics fm = owner.buttonPaint.getFontMetrics();
        c.drawText(text, bounds.centerX(), bounds.centerY() - ((fm.ascent + fm.descent) / 2.0f), owner.buttonPaint);
    }

    /**
     * Adds up to three equally wide pill buttons with the action titles in one row starting at {@code top},
     * leaving {@code sidePad} at both sides. Returns the row height, or 0 when there are no actions.
     */
    float layoutTextButtons(float top, float sidePad) {
        int count = Math.min(MAX_TEXT_BUTTONS, item.actions.size());
        if (count == 0) {
            return 0.0f;
        }
        float gap = owner.dp(8.0f);
        float buttonWidth = ((w - (2.0f * sidePad)) - ((count - 1) * gap)) / count;
        float rowHeight = owner.dp(40.0f);
        for (int i = 0; i < count; i++) {
            IslandItem.Action action = item.actions.get(i);
            Btn btn = new Btn();
            btn.r.set((i * (buttonWidth + gap)) + sidePad, top, (i * (buttonWidth + gap)) + sidePad + buttonWidth, top + rowHeight);
            btn.label = action.title != null ? action.title.toString() : null;
            btn.bg = action.destructive ? Colors.DESTRUCTIVE_RED : Colors.TRACK;
            btn.action = action;
            buttons.add(btn);
        }
        return rowHeight;
    }
}
