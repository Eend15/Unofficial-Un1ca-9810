package dev.android.dynamicisland.xposed.hooks;

import android.content.res.Configuration;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RemoteViews;

/**
 * The inflated {@link RemoteViews} of a live activity with custom content, hosted inside a
 * {@link LiveCardView}. It is updated in place while the layout id stays the same and inflated again
 * when the layout changes.
 */
final class RemoteCardContent {
    private static final float PADDING_DP = 14.0f;
    private static final float MAX_HEIGHT_DP = 300.0f;

    private final ViewGroup host;
    private final int pad;
    private final int maxHeight;
    private View view;
    private RemoteViews source;

    RemoteCardContent(ViewGroup host) {
        this.host = host;
        float density = host.getResources().getDisplayMetrics().density;
        pad = Math.round(density * PADDING_DP);
        maxHeight = Math.round(density * MAX_HEIGHT_DP);
    }

    boolean isShown() {
        return view != null;
    }

    /** Binds {@code rv}, measures it for a card {@code width} wide and returns the card height it needs. */
    int heightFor(RemoteViews rv, int width) {
        View content = bind(rv);
        content.measure(
                View.MeasureSpec.makeMeasureSpec(Math.max(1, width - 2 * pad), View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(maxHeight, View.MeasureSpec.AT_MOST));
        return Math.max(2 * pad + 1, content.getMeasuredHeight() + 2 * pad);
    }

    /** Gives the content its final size inside a card of {@code width} x {@code height}. */
    void measureInside(int width, int height) {
        if (view != null) {
            view.measure(
                    View.MeasureSpec.makeMeasureSpec(Math.max(1, width - 2 * pad), View.MeasureSpec.EXACTLY),
                    View.MeasureSpec.makeMeasureSpec(Math.max(1, height - 2 * pad), View.MeasureSpec.EXACTLY));
        }
    }

    /** Drops the inflated content, if any. */
    void clear() {
        if (view != null) {
            host.removeView(view);
            view = null;
            source = null;
        }
    }

    /** The card is dark in every theme; in the light theme the app's dark text would vanish on it. */
    private void lightenForCard() {
        boolean night = (host.getResources().getConfiguration().uiMode & Configuration.UI_MODE_NIGHT_MASK) == Configuration.UI_MODE_NIGHT_YES;
        if (!night && view != null) {
            DarkRemote.lighten(view);
        }
    }

    private View bind(RemoteViews rv) {
        if (view != null && source == rv) {
            return view;
        }
        if (view != null && source != null && source.getLayoutId() == rv.getLayoutId()) {
            try {
                rv.reapply(host.getContext(), view);
                source = rv;
                lightenForCard();
                return view;
            } catch (Throwable ignored) {
                // the stale view cannot take the update: inflate a fresh one below
            }
        }
        if (view != null) {
            host.removeView(view);
        }
        view = rv.apply(host.getContext(), host);
        source = rv;
        lightenForCard();
        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.setMargins(pad, pad, pad, pad);
        host.addView(view, lp);
        return view;
    }
}
