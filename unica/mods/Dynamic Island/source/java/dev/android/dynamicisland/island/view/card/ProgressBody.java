package dev.android.dynamicisland.island.view.card;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.text.StaticLayout;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;

/**
 * Android 16 ProgressStyle notification card.
 *
 * <pre>
 * +-------------------------------------+
 * | [image]  title                      |   image 40dp at the left, title (1 line) and
 * |          subtitle (up to 2 lines)   |   subtitle at its right
 * | =========-------------------       |   progress bar (plain, segmented or indeterminate)
 * | [ action ] [ action ] [ action ]    |   text buttons, equal width (optional)
 * +-------------------------------------+
 * </pre>
 */
public final class ProgressBody extends CardBody {
    /** Width of the indeterminate sweep relative to the bar, and its period. */
    private static final float SWEEP_RATIO = 0.38f;
    private static final long SWEEP_PERIOD_MS = 1500;

    final float actionsTop;
    /** Space between the image and the text. */
    final float gap;
    final float image;
    final float pad;
    final float progressTop;
    /** Height of the box the bar is drawn in (taller when a thumb is shown on a segmented bar). */
    final float barBoxH;
    final StaticLayout subtitle;
    final StaticLayout title;

    public ProgressBody(IslandView owner, IslandItem item, float w) {
        super(owner, item, w);
        pad = owner.dp(16.0f);
        image = owner.dp(40.0f);
        gap = owner.dp(14.0f);
        int textWidth = Math.max(1, Math.round(((w - (pad * 2.0f)) - image) - gap));
        title = item.title == null ? null : IslandView.layout(item.title, owner.titlePaint, textWidth, 1);
        subtitle = item.subtitle != null ? IslandView.layout(item.subtitle, owner.bodyPaint, textWidth, 2) : null;
        float textHeight = (title == null ? 0 : title.getHeight()) + (subtitle == null ? 0.0f : owner.dp(4.0f) + subtitle.getHeight());
        progressTop = pad + Math.max(image, textHeight) + owner.dp(14.0f);
        barBoxH = item.progressThumb != null && item.hasSegments() ? owner.dp(20.0f) : owner.dp(8.0f);
        boolean hasBar = item.progress >= 0.0f || item.progressIndeterminate;
        float contentBottom = hasBar ? progressTop + barBoxH : progressTop - owner.dp(14.0f);
        actionsTop = owner.dp(12.0f) + contentBottom;
        h = pad + (item.actions.isEmpty() ? contentBottom : actionsTop + layoutTextButtons(actionsTop, pad));
    }

    private void drawSegmentedBar(Canvas c, float left, float right, float top, float alpha) {
        owner.drawSegmentedBarOn(c, item, left, right, top, barBoxH, alpha);
    }

    @Override
    public void draw(Canvas c, float x, float y, float alpha, long elapsed) {
        float a = alpha * rowAlpha(elapsed, 0);
        Drawable icon = item.cardImage != null ? item.cardImage : item.icon;
        if (icon != null) {
            owner.drawDrawable(c, icon, true, 0, x + pad, y + pad, image, a, item.cardImageRound ? image / 2.0f : image * 0.25f);
        }
        float textX = pad + x + image + gap;
        float textY = pad + y;
        if (title != null) {
            owner.titlePaint.setColor(Colors.withAlpha(Colors.WHITE, a));
            IslandView.drawLayout(c, title, textX, textY);
            textY += title.getHeight() + owner.dp(4.0f);
        }
        if (subtitle != null) {
            owner.bodyPaint.setColor(Colors.withAlpha(Colors.TEXT_BODY, a));
            IslandView.drawLayout(c, subtitle, textX, textY);
        }
        // the bar is aligned with the text, not with the image
        float barLeft = pad + x + image + gap;
        float barRight = (w + x) - pad;
        float barTop = progressTop + y;
        if (item.progress < 0.0f && item.progressIndeterminate) {
            drawIndeterminateBar(c, barLeft, barRight, barTop, a);
        } else if (item.progress >= 0.0f) {
            if (item.hasSegments()) {
                drawSegmentedBar(c, barLeft, barRight, barTop, a);
            } else {
                drawPlainBar(c, barLeft, barRight, barTop, a);
            }
        }
        if (!item.actions.isEmpty()) {
            drawButtons(c, x, y, a);
        }
    }

    /** No number yet: the same sweeping bar as the live notification cards. */
    private void drawIndeterminateBar(Canvas c, float left, float right, float top, float alpha) {
        float height = owner.dp(7.0f);
        float width = right - left;
        owner.tmpRect.set(left, top, right, top + height);
        owner.fillPaint.setColor(Colors.withAlpha(Colors.TRACK, alpha));
        c.drawRoundRect(owner.tmpRect, height / 2.0f, height / 2.0f, owner.fillPaint);
        float sweep = width * SWEEP_RATIO;
        float start = left - sweep + ((width + sweep) * IslandView.easeInOut((IslandView.now() % SWEEP_PERIOD_MS) / (float) SWEEP_PERIOD_MS));
        int save = c.save();
        owner.barClip.rewind();
        owner.barClip.addRoundRect(owner.tmpRect, height / 2.0f, height / 2.0f, Path.Direction.CW);
        c.clipPath(owner.barClip);
        owner.fillPaint.setColor(Colors.withAlpha(item.accent, alpha));
        c.drawRect(Math.max(left, start), top, Math.min(right, start + sweep), top + height, owner.fillPaint);
        c.restoreToCount(save);
    }

    private void drawPlainBar(Canvas c, float left, float right, float top, float alpha) {
        float height = owner.dp(7.0f);
        owner.tmpRect.set(left, top, right, top + height);
        owner.fillPaint.setColor(Colors.withAlpha(Colors.TRACK, alpha));
        c.drawRoundRect(owner.tmpRect, height / 2.0f, height / 2.0f, owner.fillPaint);
        float fill = (right - left) * IslandView.clamp01(item.progress);
        if (fill > 0.0f) {
            owner.tmpRect.right = Math.min(right, Math.max(height, fill) + left);
            owner.fillPaint.setColor(Colors.withAlpha(item.accent, alpha));
            c.drawRoundRect(owner.tmpRect, height / 2.0f, height / 2.0f, owner.fillPaint);
        }
    }
}
