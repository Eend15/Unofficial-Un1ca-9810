package dev.android.dynamicisland.island.view.card;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.settings.ModuleSettings;

/**
 * Generic live-notification card, laid out like the stock System UI ongoing activity card:
 * header (app + time), primary line (or chronometer), secondary line with optional icon
 * (or chronometer / description), progress (plain, segmented with marker, or indeterminate)
 * and either round icon buttons or text buttons.
 *
 * <pre>
 * +-----------------------------------------+
 * | App name . 12:30                        |   header (optional, small, secondary colour)
 * | Title (up to 2 lines)             [icon]|   app icon 22dp at the top right
 * | Secondary text / description            |   a small icon may indent this line
 * | Detail line                             |
 * | ======------------------                |   progress bar
 * |  (o)    (o)    (o)    (o)               |   round icon buttons, or equal width text buttons
 * +-----------------------------------------+
 * </pre>
 *
 * Sports items ({@code teams}) replace the icon and indent with a row of two team logos, the score between
 * them, and the text lines below. Rows (content, progress, buttons) fade in one after the other.
 * Fields ending in {@code Y} / {@code Top} are offsets from the top of the body, fixed at construction.
 */
public final class LiveBody extends CardBody {
    private static final int MAX_ICON_BUTTONS = 4;
    /** Corner radius of the app icon, relative to its size. */
    private static final float ICON_CORNER_RATIO = 0.26f;
    /** Corner radius of team logos, relative to their size. */
    private static final float LOGO_CORNER_RATIO = 0.14f;
    /** Width of the indeterminate sweep relative to the bar, and its period. */
    private static final float SWEEP_RATIO = 0.38f;
    private static final long SWEEP_PERIOD_MS = 1500;
    /** Slide-up distance of a row while it fades in. */
    private static final float ROW_SLIDE_DP = 8.0f;

    /** Top of the button row, or -1 when there are no actions. */
    float actionsTop;
    final StaticLayout description;
    final StaticLayout detail;
    final String header;
    final float headerY;
    final float iconSize;
    final float logoSize;
    final float pad;
    /** Top of the progress box, or -1 when the item has no progress. */
    float progressTop;
    float progressBoxH;
    /** Score text of a sports item, drawn between the team logos. */
    String score;
    /** Indent of the secondary line when it has a leading icon. */
    final float secIndent;
    final float subY;
    final float subH;
    final StaticLayout subtitle;
    /** The secondary line is a live chronometer. */
    final boolean subChrono;
    final boolean teams;
    final StaticLayout title;
    /** The primary line is a live chronometer. */
    final boolean titleChrono;
    final float titleY;
    final float textW;

    public LiveBody(IslandView owner, IslandItem item, float w) {
        super(owner, item, w);
        pad = owner.dp(18.0f);
        iconSize = owner.dp(22.0f);
        logoSize = owner.dp(52.0f);
        progressTop = -1.0f;
        actionsTop = -1.0f;
        teams = item.hasTeams();
        if (teams && item.trailing == IslandItem.Trailing.TEXT && item.trailingText != null) {
            score = item.trailingText.toString();
        }
        textW = Math.max(1, Math.round((w - (pad * 2.0f)) - (teams ? 0.0f : iconSize + owner.dp(12.0f))));
        int textWidth = Math.round(textW);
        float y = pad;
        if (teams) {
            y += logoSize + owner.dp(10.0f);
        }

        // header: "App · 12:30"
        CharSequence app = item.appName;
        String headerText = null;
        if (ModuleSettings.cardHeader() && app != null && item.title != null && app.length() > 0) {
            headerText = app.toString();
            if (item.whenMillis > 0) {
                headerText += " \u00b7 " + android.text.format.DateFormat.getTimeFormat(owner.getContext()).format(new java.util.Date(item.whenMillis));
            }
        }
        this.header = headerText;
        headerY = y;
        if (header != null) {
            y += lineHeight(owner.smallPaint) + owner.dp(4.0f);
        }

        // primary line
        titleChrono = item.hasChronometer() && item.chronoPosition == 1;
        CharSequence primary = item.title != null ? item.title : item.appName;
        title = (titleChrono || primary == null) ? null : IslandView.layout(primary, owner.titlePaint, textWidth, 2);
        titleY = y;
        if (titleChrono) {
            y += lineHeight(owner.titlePaint);
        } else if (title != null) {
            y += title.getHeight();
        }

        // secondary line: description wins, then chronometer, then text; icon indents the text
        subChrono = item.description == null && item.hasChronometer() && item.chronoPosition == 2;
        secIndent = (item.secondaryIcon != null && item.description == null) ? owner.dp(22.0f) : 0.0f;
        CharSequence secondary = item.subtitle;
        if (item.trailing == IslandItem.Trailing.TEXT && item.trailingText != null && secondary == null && score == null) {
            secondary = item.trailingText;
        }
        this.description = item.description == null ? null : IslandView.layout(item.description, owner.bodyPaint, textWidth, 3);
        subtitle = (description != null || subChrono || secondary == null) ? null
                : IslandView.layout(secondary, owner.bodyPaint, Math.max(1, textWidth - Math.round(secIndent)), 2);
        subY = y + ((title != null || titleChrono) ? owner.dp(3.0f) : 0.0f);
        float secondaryHeight = 0.0f;
        if (description != null) {
            secondaryHeight = description.getHeight();
        } else if (subChrono) {
            secondaryHeight = lineHeight(owner.bodyPaint);
        } else if (subtitle != null) {
            secondaryHeight = subtitle.getHeight();
        }
        subH = secondaryHeight;
        if (secondaryHeight > 0.0f) {
            y = subY + secondaryHeight + owner.dp(2.0f);
        }
        detail = item.detail != null ? IslandView.layout(item.detail, owner.bodyPaint, textWidth, 1) : null;
        if (detail != null) {
            y += detail.getHeight() + owner.dp(2.0f);
        }
        y = Math.max(y, pad + (teams ? 0.0f : iconSize));

        if (item.progress >= 0.0f || item.progressIndeterminate) {
            progressBoxH = item.progressThumb != null && item.hasSegments() ? owner.dp(18.0f) : owner.dp(8.0f);
            progressTop = y + owner.dp(14.0f);
            y = progressTop + progressBoxH;
        }
        if (!item.actions.isEmpty()) {
            actionsTop = owner.dp(14.0f) + y;
            y = actionsTop + (useIconButtons() ? layoutIconButtons(actionsTop) : layoutTextButtons(actionsTop, pad));
        }
        h = pad + y;
    }

    private float lineHeight(TextPaint paint) {
        Paint.FontMetrics fm = paint.getFontMetrics();
        return fm.descent - fm.ascent;
    }

    /** actionType 0 = round icon buttons, as long as every action actually has an icon. */
    private boolean useIconButtons() {
        if (item.actionType != 0) {
            return false;
        }
        int count = Math.min(MAX_ICON_BUTTONS, item.actions.size());
        for (int i = 0; i < count; i++) {
            if (item.actions.get(i).icon == null) {
                return false;
            }
        }
        return count > 0;
    }

    /** Adds up to four round buttons, each centred in its own equal-width column; returns the row height. */
    private float layoutIconButtons(float top) {
        int count = Math.min(MAX_ICON_BUTTONS, item.actions.size());
        float size = owner.dp(44.0f);
        float column = (w - (pad * 2.0f)) / count;
        for (int i = 0; i < count; i++) {
            IslandItem.Action action = item.actions.get(i);
            Btn b = new Btn();
            float centerX = pad + (column * i) + (column / 2.0f);
            b.r.set(centerX - (size / 2.0f), top, centerX + (size / 2.0f), top + size);
            b.circle = true;
            b.icon = action.icon;
            b.action = action;
            int customColor = (item.actionBgColors != null && i < item.actionBgColors.length) ? item.actionBgColors[i] : 0;
            if (action.destructive) {
                b.bg = Colors.DESTRUCTIVE_RED;
            } else if (customColor != 0) {
                b.bg = customColor | Colors.BLACK;
            } else if (i == item.primaryActionIndex) {
                b.bg = Colors.blend(item.accent, Colors.BLACK, IslandView.PAUSED_SPEED);
            } else {
                b.bg = Colors.BUTTON_ACTION_FILL;
            }
            buttons.add(b);
        }
        return size;
    }

    @Override
    public void draw(Canvas c, float x, float y, float alpha, long elapsed) {
        float a0 = alpha * rowAlpha(elapsed, 0);
        float dy0 = (1.0f - rowAlpha(elapsed, 0)) * owner.dp(ROW_SLIDE_DP);
        float top = y + dy0;
        if (teams) {
            float ty = top + pad;
            float midY = ty + (logoSize / 2.0f);
            owner.drawDrawable(c, item.leftImage, true, 0, x + pad, ty, logoSize, a0, logoSize * LOGO_CORNER_RATIO);
            owner.drawDrawable(c, item.rightImage, true, 0, ((w + x) - pad) - logoSize, ty, logoSize, a0, logoSize * LOGO_CORNER_RATIO);
            if (score != null) {
                owner.bigTimePaint.setColor(Colors.withAlpha(Colors.WHITE, a0));
                float room = ((w - (pad * 2.0f)) - (logoSize * 2.0f)) - owner.dp(16.0f);
                String text = TextUtils.ellipsize(score, owner.bigTimePaint, room, TextUtils.TruncateAt.END).toString();
                Paint.FontMetrics fm = owner.bigTimePaint.getFontMetrics();
                float tw = owner.bigTimePaint.measureText(text);
                c.drawText(text, ((w / 2.0f) + x) - (tw / 2.0f), midY - ((fm.ascent + fm.descent) / 2.0f), owner.bigTimePaint);
            }
        }
        float left = pad + x;
        if (header != null) {
            owner.smallPaint.setColor(Colors.withAlpha(Colors.TEXT_SECONDARY, a0));
            String text = TextUtils.ellipsize(header, owner.smallPaint, textW, TextUtils.TruncateAt.END).toString();
            c.drawText(text, left, top + headerY - owner.smallPaint.getFontMetrics().ascent, owner.smallPaint);
        }
        if (titleChrono) {
            owner.titlePaint.setColor(Colors.withAlpha(Colors.WHITE, a0));
            String text = TextUtils.ellipsize(owner.chronoText(item), owner.titlePaint, textW, TextUtils.TruncateAt.END).toString();
            owner.drawTime(c, item.key + "#live1", text, owner.titlePaint, left, top + titleY - owner.titlePaint.getFontMetrics().ascent, item.chronoCountDown);
        } else if (title != null) {
            owner.titlePaint.setColor(Colors.withAlpha(Colors.WHITE, a0));
            IslandView.drawLayout(c, title, left, top + titleY);
        }
        if (secIndent > 0.0f && item.secondaryIcon != null) {
            float smallIcon = owner.dp(16.0f);
            float lineH = subChrono ? lineHeight(owner.bodyPaint) : owner.bodyPaint.getTextSize() * 1.3f;
            owner.drawDrawable(c, item.secondaryIcon, false, Colors.TEXT_BODY, left, top + subY + Math.max(0.0f, (lineH - smallIcon) / 2.0f), smallIcon, a0, 0.0f);
        }
        owner.bodyPaint.setColor(Colors.withAlpha(Colors.TEXT_BODY, a0));
        if (description != null) {
            IslandView.drawLayout(c, description, left, top + subY);
        } else if (subChrono) {
            String text = TextUtils.ellipsize(owner.chronoText(item), owner.bodyPaint, textW - secIndent, TextUtils.TruncateAt.END).toString();
            owner.drawTime(c, item.key + "#live2", text, owner.bodyPaint, left + secIndent, top + subY - owner.bodyPaint.getFontMetrics().ascent, item.chronoCountDown);
        } else if (subtitle != null) {
            IslandView.drawLayout(c, subtitle, left + secIndent, top + subY);
        }
        if (detail != null) {
            owner.bodyPaint.setColor(Colors.withAlpha(Colors.TEXT_SECONDARY, a0));
            IslandView.drawLayout(c, detail, left, top + subY + subH + owner.dp(2.0f));
        }
        if (!teams) {
            float iconX = ((w + x) - pad) - iconSize;
            float iconY = y + pad + dy0;
            if (item.cardIcon != null) {
                owner.drawDrawable(c, item.cardIcon, true, 0, iconX, iconY, iconSize, a0, iconSize * ICON_CORNER_RATIO);
            } else if (item.icon != null) {
                owner.drawDrawable(c, item.icon, item.iconIsImage, Colors.WHITE, iconX, iconY, iconSize, a0, iconSize * ICON_CORNER_RATIO);
            }
            if (item.profileBadge != null) {
                // work-profile badge overlapping the icon's bottom right corner
                float badgeSize = owner.dp(12.0f);
                owner.drawDrawable(c, item.profileBadge, true, 0, iconX + iconSize - (badgeSize * 0.7f), iconY + iconSize - (badgeSize * 0.7f), badgeSize, a0, badgeSize / 2.0f);
            }
        }
        if (progressTop >= 0.0f) {
            float progressAlpha = rowAlpha(elapsed, 1);
            drawProgress(c, x, y + progressTop + ((1.0f - progressAlpha) * owner.dp(ROW_SLIDE_DP)), alpha * progressAlpha);
        }
        if (actionsTop >= 0.0f) {
            float buttonsAlpha = rowAlpha(elapsed, 2);
            drawButtons(c, x, y + ((1.0f - buttonsAlpha) * owner.dp(ROW_SLIDE_DP)), alpha * buttonsAlpha);
        }
    }

    private void drawProgress(Canvas c, float x, float top, float alpha) {
        float left = pad + x;
        float width = w - (pad * 2.0f);
        boolean segmented = item.hasSegments();
        float barHeight = owner.dp(segmented ? 8.0f : 7.0f);
        float barTop = top + ((progressBoxH - barHeight) / 2.0f);
        owner.tmpRect.set(left, barTop, left + width, barTop + barHeight);
        int save = c.save();
        owner.barClip.rewind();
        owner.barClip.addRoundRect(owner.tmpRect, barHeight / 2.0f, barHeight / 2.0f, Path.Direction.CW);
        c.clipPath(owner.barClip);
        if (segmented) {
            int segments = item.progressSegmentColors.length;
            float gap = owner.dp(2.0f);
            for (int i = 0; i < segments; i++) {
                float segStart = item.progressSegmentStarts[i];
                float segEnd = i + 1 < segments ? item.progressSegmentStarts[i + 1] : 1.0f;
                owner.fillPaint.setColor(Colors.withAlpha(item.progressSegmentColors[i] | Colors.BLACK, alpha));
                c.drawRect(left + (width * segStart) + (i == 0 ? 0.0f : gap / 2.0f), barTop, (left + (width * segEnd)) - (i + 1 == segments ? 0.0f : gap / 2.0f), barTop + barHeight, owner.fillPaint);
            }
        } else {
            owner.fillPaint.setColor(Colors.withAlpha(Colors.TRACK, alpha));
            c.drawRect(left, barTop, left + width, barTop + barHeight, owner.fillPaint);
        }
        float fillEnd = left;
        if (item.progressIndeterminate && item.progress < 0.0f) {
            float sweep = width * SWEEP_RATIO;
            float phase = (IslandView.now() % SWEEP_PERIOD_MS) / (float) SWEEP_PERIOD_MS;
            float eased = IslandView.easeInOut(phase);
            float start = left - sweep + ((width + sweep) * eased);
            owner.fillPaint.setColor(Colors.withAlpha(item.accent, alpha));
            c.drawRect(Math.max(left, start), barTop, Math.min(left + width, start + sweep), barTop + barHeight, owner.fillPaint);
        } else {
            fillEnd = left + Math.max(barHeight, width * IslandView.clamp01(item.progress));
            int fillColor = segmented ? (item.progressTrackColor != 0 ? (item.progressTrackColor | Colors.BLACK) : Colors.SEGMENT_UNREACHED) : item.accent;
            owner.fillPaint.setColor(Colors.withAlpha(fillColor, alpha));
            c.drawRect(left, barTop, fillEnd, barTop + barHeight, owner.fillPaint);
        }
        c.restoreToCount(save);
        if (segmented && item.progressThumb != null && !(item.progressIndeterminate && item.progress < 0.0f)) {
            float thumbSize = owner.dp(18.0f);
            float thumbX = Math.max(left, Math.min(left + width - thumbSize, fillEnd - (thumbSize / 2.0f)));
            owner.drawDrawable(c, item.progressThumb, false, Colors.WHITE, thumbX, top + ((progressBoxH - thumbSize) / 2.0f), thumbSize, alpha, 0.0f);
        }
    }
}
