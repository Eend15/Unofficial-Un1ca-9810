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
    String leadingLabel;
    float leadingLabelW;

    CompactContent(IslandView owner, IslandItem item) {
        super(owner, item);
        teams = item.hasTeams();
        remeasure();
    }

    /** Recomputes the trailing text and width after the item changed; returns whether the width changed. */
    boolean remeasure() {
        float width;
        String text = owner.trailingString(item);
        if (item.eventLayout == IslandItem.EventLayout.BATTERY && item.batteryPercent >= 0) {
            text = java.text.NumberFormat.getPercentInstance(owner.getResources().getConfiguration().getLocales().get(0))
                    .format(item.batteryPercent / 100d);
        }
        leadingLabel = null;
        leadingLabelW = 0;
        if (item.compactLabel != null && item.trailing == IslandItem.Trailing.TEXT
                && !item.compactLabel.toString().equals(text)) {
            float room = owner.holeD > 0 ? (owner.maxPillW - owner.holeD) / 2 - owner.holeGap - owner.padding
                    - Math.min(owner.holeTextPadding, owner.dp(16)) - owner.leadSize - owner.innerGap
                    : owner.maxPillW - owner.padding * 2 - owner.leadSize - owner.innerGap * 2
                    - Math.max(owner.dp(MIN_TRAILING_DP), text == null ? 0 : owner.trailPaint.measureText(text));
            if (room >= owner.dp(16)) {
                leadingLabel = TextUtils.ellipsize(item.compactLabel, owner.trailPaint,
                        Math.min(owner.dp(96), room), TextUtils.TruncateAt.END).toString();
                leadingLabelW = owner.trailPaint.measureText(leadingLabel);
            }
        }
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
            return Math.max(minWidth, (((owner.maxPillW - owner.holeD) / 2.0f) - owner.holeGap) - owner.padding - holeClearance());
        }
        return Math.max(minWidth, ((owner.maxPillW - (owner.padding * 2.0f)) - leadingWidth()) - owner.innerGap);
    }

    private float holeClearance() {
        float spare = (owner.maxPillW - owner.holeD) / 2f - owner.holeGap - owner.padding
                - Math.max(leadingWidth(), owner.dp(MIN_TRAILING_DP));
        return Math.max(0, Math.min(owner.holeTextPadding, spare));
    }

    @Override
    float desiredWidth() {
        float width;
        if (owner.holeD > 0.0f) {
            // both sides get the width of the wider one, so the pill stays symmetric around the hole
            float side = Math.max(leadingWidth(), trailW);
            float extra = trailW > 0 ? holeClearance() : 0;
            width = owner.holeD + ((owner.holeGap + extra + side + owner.padding) * 2.0f);
        } else {
            width = (trailW > 0.0f ? owner.innerGap + trailW : 0.0f) + (owner.padding * 2.0f) + leadingWidth();
        }
        return Math.max(owner.minPillW, Math.min(width, owner.maxPillW));
    }

    private float leadingWidth() {
        if (!owner.hasRecordingWaveform(item)) return owner.leadSize + (leadingLabel == null ? 0 : owner.innerGap + leadingLabelW);
        float available = owner.holeD > 0 ? (owner.maxPillW - owner.holeD) / 2f - owner.holeGap - owner.padding
                : owner.maxPillW - owner.padding * 2f - owner.innerGap - owner.dp(MIN_TRAILING_DP);
        return Math.max(owner.leadSize, Math.min(owner.dp(42), available));
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
        if (owner.hasRecordingWaveform(item)) {
            float room = owner.holeD > 0 ? shape.width() / 2f - owner.holeD / 2f - owner.holeGap - owner.padding
                    : shape.width() - owner.padding * 2f - (trailW > 0 ? trailW + owner.innerGap : 0);
            owner.drawRecordingWaveform(c, item, shape.left + owner.padding, midY,
                    Math.max(1f, Math.min(leadingWidth(), room)), lead * .9f, alpha);
        } else {
            owner.drawLeadingMono(c, item, shape.left + owner.padding, midY, lead, alpha);
            if (leadingLabel != null) {
                float left = shape.left + owner.padding + owner.leadSize + owner.innerGap;
                float limit = owner.holeD > 0 ? shape.centerX() - owner.holeD / 2 - owner.holeGap - holeClearance()
                        : shape.right - owner.padding - trailW - owner.innerGap;
                int save = c.save();
                c.clipRect(left, shape.top, Math.max(left, limit), shape.bottom);
                owner.trailPaint.setColor(Colors.withAlpha(Colors.WHITE, alpha));
                Paint.FontMetrics fm = owner.trailPaint.getFontMetrics();
                c.drawText(leadingLabel, left, midY - (fm.ascent + fm.descent) / 2, owner.trailPaint);
                c.restoreToCount(save);
            }
        }
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
