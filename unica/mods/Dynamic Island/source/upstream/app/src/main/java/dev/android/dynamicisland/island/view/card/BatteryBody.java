package dev.android.dynamicisland.island.view.card;

import android.graphics.Canvas;
import android.text.StaticLayout;
import dev.android.dynamicisland.island.graphics.BatteryGauge;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;

/** One level readout, a clear charging state, and optional measurements/statistics below. */
public final class BatteryBody extends CardBody {
    private final BatteryGauge gauge = new BatteryGauge();
    private final StaticLayout title, subtitle, details;
    private final float pad, diameter, rowHeight;

    public BatteryBody(IslandView owner, IslandItem item, float width) {
        super(owner, item, width);
        pad = owner.dp(18);
        diameter = owner.dp(56);
        int textWidth = Math.max(1, Math.round(width - pad * 2 - diameter - owner.dp(16)));
        title = IslandView.layout(item.title, owner.titlePaint, textWidth, 2);
        subtitle = item.subtitle == null ? null : IslandView.layout(item.subtitle, owner.bodyPaint, textWidth, 2);
        float block = title.getHeight() + (subtitle == null ? 0 : owner.dp(4) + subtitle.getHeight());
        rowHeight = Math.max(diameter, block);
        details = item.description == null ? null : IslandView.layout(item.description, owner.bodyPaint,
                Math.max(1, Math.round(width - pad * 2)), Math.max(1, Math.min(8, item.descriptionMaxLines)));
        h = pad * 2 + rowHeight + (details == null ? 0 : owner.dp(14) + details.getHeight());
    }

    @Override public void draw(Canvas canvas, float x, float y, float alpha, long elapsed) {
        float a = alpha * rowAlpha(elapsed, 0);
        float midY = y + pad + rowHeight / 2;
        gauge.draw(canvas, x + pad + diameter / 2, midY, diameter, item.batteryPercent, item.fillAccent(), a, true, false);
        float textX = x + pad + diameter + owner.dp(16);
        float block = title.getHeight() + (subtitle == null ? 0 : owner.dp(4) + subtitle.getHeight());
        float top = midY - block / 2;
        owner.titlePaint.setColor(Colors.withAlpha(Colors.WHITE, a));
        IslandView.drawLayout(canvas, title, textX, top);
        owner.bodyPaint.setColor(Colors.withAlpha(Colors.TEXT_SECONDARY, a));
        if (subtitle != null) IslandView.drawLayout(canvas, subtitle, textX, top + title.getHeight() + owner.dp(4));
        if (details != null) {
            float detailY = y + pad + rowHeight + owner.dp(14);
            owner.bodyPaint.setColor(Colors.withAlpha(Colors.TEXT_BODY, a));
            IslandView.drawLayout(canvas, details, x + pad, detailY);
        }
    }
}
