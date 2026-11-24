package dev.android.dynamicisland.island.graphics;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/** A team without a logo: a grey tile with the team's letter, as the sports notification itself draws it. */
public final class TeamBadge extends Drawable {
    private static final int TILE = 0xFF8E8E93;
    private final Paint tile = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint letter = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final String text;

    public TeamBadge(String text) {
        this.text = text == null ? "" : text;
        tile.setColor(TILE);
        letter.setColor(0xFFFFFFFF);
        letter.setTextAlign(Paint.Align.CENTER);
        letter.setFakeBoldText(true);
    }

    @Override
    public void draw(Canvas canvas) {
        Rect b = getBounds();
        canvas.drawRect(b, tile);
        if (text.isEmpty()) {
            return;
        }
        letter.setTextSize(b.height() * (text.length() > 1 ? 0.42f : 0.56f));
        Paint.FontMetrics fm = letter.getFontMetrics();
        canvas.drawText(text, b.exactCenterX(), b.exactCenterY() - (fm.ascent + fm.descent) / 2f, letter);
    }

    @Override public void setAlpha(int alpha) { tile.setAlpha(alpha); letter.setAlpha(alpha); invalidateSelf(); }
    @Override public void setColorFilter(ColorFilter filter) { tile.setColorFilter(filter); letter.setColorFilter(filter); invalidateSelf(); }
    @Override public int getOpacity() { return PixelFormat.OPAQUE; }
    @Override public int getIntrinsicWidth() { return 64; }
    @Override public int getIntrinsicHeight() { return 64; }
}
