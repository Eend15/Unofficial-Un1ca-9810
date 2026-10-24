package dev.android.dynamicisland.island.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.TextUtils;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.model.IslandItem;
import java.util.regex.Matcher;

/**
 * Content of the compact pill: a leading icon at the left and, when the item has one, trailing text,
 * chronometer or indicator at the right. With a camera hole the two sides are placed left and right of
 * the hole. For sports items ({@code teams}) the leading icon is the home team's logo and the trailing
 * side is the away team's logo, with the score in between (or, around a hole, one score on each side).
 */
public final class CompactContent extends Content {
    /** Smallest width the trailing part may be squeezed to. */
    private static final float MIN_TRAILING_DP = 20.0f;
    /** Home score, shown beside the home logo (only when the score text splits around a hole). */
    String scoreA;
    /** Away score, shown beside the away logo. */
    String scoreB;
    float scoreW;
    final boolean teams;
    String trailText;
    float trailW;

    CompactContent(IslandView owner, IslandItem item) {
        super(owner, item);
        teams = item.hasTeams();
        remeasure();
    }

    /** Recomputes the trailing text and width after the item changed; returns whether the width changed. */
    boolean remeasure() {
        float width;
        String text = owner.trailingString(item);
        float maxTrail = maxTrailingWidth();
        if (teams && owner.holeD > 0.0f && splitScore(text)) {
            float maxHalf = Math.max(0.0f, (maxTrail - owner.leadSize) - owner.innerGap);
            scoreA = TextUtils.ellipsize(scoreA, owner.trailPaint, maxHalf, TextUtils.TruncateAt.END).toString();
            scoreB = TextUtils.ellipsize(scoreB, owner.trailPaint, maxHalf, TextUtils.TruncateAt.END).toString();
            scoreW = Math.max(owner.trailPaint.measureText(scoreA), owner.trailPaint.measureText(scoreB));
            width = owner.leadSize + owner.innerGap + scoreW;
        } else if (teams) {
            scoreA = null;
            scoreB = null;
            float maxScore = Math.max(0.0f, (maxTrail - owner.leadSize) - owner.innerGap);
            if (text != null && item.trailing == IslandItem.Trailing.TEXT) {
                text = TextUtils.ellipsize(text, owner.trailPaint, maxScore, TextUtils.TruncateAt.END).toString();
            } else {
                text = null;
            }
            scoreW = text == null ? 0.0f : owner.trailPaint.measureText(text);
            width = owner.leadSize + scoreW + (text != null ? owner.innerGap : 0.0f);
        } else {
            if (text != null && item.trailing == IslandItem.Trailing.TEXT) {
                text = TextUtils.ellipsize(text, owner.trailPaint, maxTrail, TextUtils.TruncateAt.END).toString();
            }
            width = Math.min(owner.trailingWidth(item, text), maxTrail);
        }
        boolean changed = Math.abs(width - trailW) > 0.5f;
        trailText = text;
        trailW = width;
        return changed;
    }

    /** Splits a "2 - 1" style score into {@link #scoreA} and {@link #scoreB}; false if it does not match. */
    private boolean splitScore(String text) {
        scoreA = null;
        scoreB = null;
        if (text == null || item.trailing != IslandItem.Trailing.TEXT) {
            return false;
        }
        Matcher m = IslandView.SCORE.matcher(text.trim());
        if (!m.matches()) {
            return false;
        }
        scoreA = m.group(1);
        scoreB = m.group(2);
        return true;
    }

    private float maxTrailingWidth() {
        float minWidth = owner.dp(MIN_TRAILING_DP);
        if (owner.holeD > 0.0f) {
            return Math.max(minWidth, (((owner.maxPillW - owner.holeD) / 2.0f) - owner.holeGap) - owner.padding);
        }
        return Math.max(minWidth, ((owner.maxPillW - (owner.padding * 2.0f)) - owner.leadSize) - owner.innerGap);
    }

    @Override
    float desiredWidth() {
        float width;
        if (owner.holeD > 0.0f) {
            // both sides get the width of the wider one, so the pill stays symmetric around the hole
            float side = Math.max(owner.leadSize, trailW);
            width = owner.holeD + ((owner.holeGap + side + owner.padding) * 2.0f);
        } else {
            width = (trailW > 0.0f ? owner.innerGap + trailW : 0.0f) + (owner.padding * 2.0f) + owner.leadSize;
        }
        return Math.max(owner.minPillW, Math.min(width, owner.maxPillW));
    }

    @Override
    void draw(Canvas c, RectF shape, float alpha, long elapsedIn) {
        if (item.trailing == IslandItem.Trailing.CHRONOMETER) {
            trailText = owner.trailingString(item);
        }
        float midY = shape.centerY();
        float lead = Math.min(owner.leadSize, shape.height() * 0.8f);
        if (teams) {
            drawTeams(c, shape, midY, lead, alpha);
            return;
        }
        owner.drawLeadingMono(c, item, shape.left + owner.padding, midY, lead, alpha);
        if (trailW > 0.0f) {
            owner.drawTrailing(c, item, trailText, shape.right - owner.padding, midY, trailW, alpha);
        }
    }

    private void drawTeams(Canvas c, RectF shape, float midY, float lead, float alpha) {
        float corner = lead * 0.14f;
        float logoTop = midY - (lead / 2.0f);
        float leftLogoX = shape.left + owner.padding;
        float rightLogoX = (shape.right - owner.padding) - lead;
        owner.drawDrawable(c, item.leftImage, true, 0, leftLogoX, logoTop, lead, alpha, corner);
        owner.drawDrawable(c, item.rightImage, true, 0, rightLogoX, logoTop, lead, alpha, corner);
        if (scoreA != null) {
            // split score: each half sits next to its team's logo, on either side of the hole
            owner.trailPaint.setColor(Colors.withAlpha(Colors.WHITE, alpha));
            Paint.FontMetrics fm = owner.trailPaint.getFontMetrics();
            float baseline = midY - ((fm.ascent + fm.descent) / 2.0f);
            c.drawText(scoreA, leftLogoX + lead + owner.innerGap, baseline, owner.trailPaint);
            c.drawText(scoreB, (rightLogoX - owner.innerGap) - owner.trailPaint.measureText(scoreB), baseline, owner.trailPaint);
            return;
        }
        if (trailText != null) {
            owner.trailPaint.setColor(Colors.withAlpha(Colors.WHITE, alpha));
            Paint.FontMetrics fm = owner.trailPaint.getFontMetrics();
            c.drawText(trailText, (rightLogoX - owner.innerGap) - scoreW, midY - ((fm.ascent + fm.descent) / 2.0f), owner.trailPaint);
        }
    }
}
