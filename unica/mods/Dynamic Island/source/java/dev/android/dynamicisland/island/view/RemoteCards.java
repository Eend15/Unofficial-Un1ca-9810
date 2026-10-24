package dev.android.dynamicisland.island.view;

import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RemoteViews;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.card.RemoteBody;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/**
 * Keeps the inflated {@link RemoteViews} of notifications that bring their own card layout. The views live
 * in a hidden layer of the window and are moved over their card each frame; this class inflates, reuses
 * and disposes them.
 */
final class RemoteCards {
    private final IslandView view;
    private final Shapes shapes;
    private final Scene scene;
    private final RectF slot = new RectF();
    private final Set<View> visible = new HashSet<>();
    private final Map<String, View> inflated = new HashMap<>();
    private final Map<String, RemoteViews> sources = new HashMap<>();
    private ViewGroup layer;

    RemoteCards(IslandView view, Shapes shapes, Scene scene) {
        this.view = view;
        this.shapes = shapes;
        this.scene = scene;
    }

    void setLayer(ViewGroup layer) {
        this.layer = layer;
    }

    boolean available() {
        return layer != null;
    }

    /** The view for {@code item}'s RemoteViews: reapplied in place when only the content changed, else inflated anew. */
    View viewFor(IslandItem item) {
        View existing = inflated.get(item.key);
        RemoteViews previous = sources.get(item.key);
        if (existing != null && previous == item.remoteView) {
            return existing;
        }
        if (existing != null && previous != null && previous.getLayoutId() == item.remoteView.getLayoutId()) {
            try {
                item.remoteView.reapply(view.getContext(), existing);
                sources.put(item.key, item.remoteView);
                return existing;
            } catch (Throwable ignored) {
                // the app's views changed in a way reapply cannot handle: inflate them anew below
            }
        }
        if (existing != null) {
            layer.removeView(existing);
        }
        View fresh = item.remoteView.apply(view.getContext(), new FrameLayout(view.getContext()));
        fresh.setVisibility(View.GONE);
        layer.addView(fresh, new FrameLayout.LayoutParams(1, 1));
        inflated.put(item.key, fresh);
        sources.put(item.key, item.remoteView);
        return fresh;
    }

    /** Moves the views of the open remote cards onto their cards and drops those whose item is gone. */
    void sync() {
        if (layer == null || inflated.isEmpty()) {
            return;
        }
        visible.clear();
        long t = IslandView.now();
        float alpha = scene.visibleAlpha();
        for (Card c : scene.cards) {
            if (!(c.body instanceof RemoteBody)) {
                continue;
            }
            RemoteBody body = (RemoteBody) c.body;
            shapes.card(c, slot);
            float a = StackPainter.contentAlpha(c, t, shapes.expansion(c)) * alpha;
            if (a > 0.01f) {
                body.view.setTranslationX(shapes.contentLeft(c) + body.pad);
                body.view.setTranslationY(slot.top + body.pad);
                body.view.setAlpha(a);
                if (body.view.getVisibility() != View.VISIBLE) {
                    body.view.setVisibility(View.VISIBLE);
                }
                visible.add(body.view);
            }
        }
        Set<String> alive = new HashSet<>();
        for (IslandItem item : scene.items) {
            alive.add(item.key);
        }
        for (IslandItem item : scene.minimized) {
            alive.add(item.key);
        }
        for (Card c : scene.cards) {
            alive.add(c.item.key);
        }
        for (Iterator<Map.Entry<String, View>> it = inflated.entrySet().iterator(); it.hasNext(); ) {
            Map.Entry<String, View> entry = it.next();
            View v = entry.getValue();
            if (!alive.contains(entry.getKey())) {
                layer.removeView(v);
                sources.remove(entry.getKey());
                it.remove();
            } else if (!visible.contains(v) && v.getVisibility() != View.GONE) {
                v.setVisibility(View.GONE);
            }
        }
    }
}
