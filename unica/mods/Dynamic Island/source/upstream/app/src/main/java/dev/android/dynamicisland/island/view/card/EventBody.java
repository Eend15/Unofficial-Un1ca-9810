package dev.android.dynamicisland.island.view.card;

import android.graphics.Canvas;
import android.text.StaticLayout;
import dev.android.dynamicisland.island.graphics.BatteryGauge;
import dev.android.dynamicisland.island.graphics.Colors;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;
import dev.android.dynamicisland.settings.ModuleSettings;

/** Small module-owned status/device card; unknown battery levels simply have no gauge. */
public final class EventBody extends CardBody {
    private final BatteryGauge gauge = new BatteryGauge();
    private final StaticLayout title, subtitle;
    private final float pad, icon, gaugeSize, rowHeight;

    public EventBody(IslandView owner, IslandItem item, float width) {
        super(owner, item, width);
        pad = owner.dp(18);
        icon = item.icon == null ? 0 : owner.dp(ModuleSettings.compactEventIcons() ? 24 : 36);
        gaugeSize = item.eventLayout == IslandItem.EventLayout.DEVICE && item.batteryPercent >= 0 ? owner.dp(42) : 0;
        float room = width - pad * 2 - (icon == 0 ? 0 : icon + owner.dp(14)) - (gaugeSize == 0 ? 0 : gaugeSize + owner.dp(12));
        int textWidth = Math.max(1, Math.round(room));
        title = IslandView.layout(item.title, owner.titlePaint, textWidth, 2);
        subtitle = item.subtitle == null || item.subtitle.toString().equals(String.valueOf(item.title)) ? null
                : IslandView.layout(item.subtitle, owner.bodyPaint, textWidth, 2);
        float block = title.getHeight() + (subtitle == null ? 0 : owner.dp(3) + subtitle.getHeight());
        rowHeight = Math.max(Math.max(icon, gaugeSize), block);
        h = Math.max(owner.dp(76), rowHeight + pad * 2);
    }

    @Override public void draw(Canvas canvas, float x, float y, float alpha, long elapsed) {
        float a = alpha * rowAlpha(elapsed, 0), midY = y + h / 2;
        if (icon > 0) owner.drawLeading(canvas, item, x + pad, midY, icon, a);
        float left = x + pad + (icon == 0 ? 0 : icon + owner.dp(14));
        float block = title.getHeight() + (subtitle == null ? 0 : owner.dp(3) + subtitle.getHeight());
        float top = midY - block / 2;
        owner.titlePaint.setColor(Colors.withAlpha(Colors.WHITE, a));
        IslandView.drawLayout(canvas, title, left, top);
        owner.bodyPaint.setColor(Colors.withAlpha(Colors.TEXT_SECONDARY, a));
        if (subtitle != null) IslandView.drawLayout(canvas, subtitle, left, top + title.getHeight() + owner.dp(3));
        if (gaugeSize > 0) gauge.draw(canvas, x + w - pad - gaugeSize / 2, midY,
                gaugeSize, item.batteryPercent, item.fillAccent(), a, true, false);
    }
}
