package dev.android.dynamicisland.island.view.card;

import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.IslandView;

/**
 * Card that hosts the item's inflated RemoteViews (custom notification content). The view is measured here
 * and drawn by the view hierarchy itself, so {@link #draw} paints nothing; it sits {@link #pad} inside the card.
 */
public final class RemoteBody extends CardBody {
    private static final float MAX_CONTENT_HEIGHT_DP = 300.0f;
    private static final float MIN_CONTENT_HEIGHT_DP = 40.0f;

    public final float pad;
    public final View view;

    public RemoteBody(IslandView owner, IslandItem item, float w) {
        super(owner, item, w);
        pad = owner.dp(14.0f);
        int contentWidth = Math.max(1, Math.round(w - (pad * 2.0f)));
        view = owner.remoteViewFor(item);
        view.measure(
                View.MeasureSpec.makeMeasureSpec(contentWidth, View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(Math.round(owner.dp(MAX_CONTENT_HEIGHT_DP)), View.MeasureSpec.AT_MOST));
        int contentHeight = Math.max(Math.round(owner.dp(MIN_CONTENT_HEIGHT_DP)), view.getMeasuredHeight());
        ViewGroup.LayoutParams params = view.getLayoutParams();
        if (params == null || params.width != contentWidth || params.height != contentHeight) {
            view.setLayoutParams(new FrameLayout.LayoutParams(contentWidth, contentHeight));
        }
        h = contentHeight + (pad * 2.0f);
    }

    @Override
    public void draw(Canvas c, float x, float y, float alpha, long elapsed) {
    }
}
