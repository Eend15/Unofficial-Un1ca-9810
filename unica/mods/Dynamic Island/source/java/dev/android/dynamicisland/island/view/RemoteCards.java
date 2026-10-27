package dev.android.dynamicisland.island.view;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.RectF;
import android.graphics.Rect;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RemoteViews;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.island.view.card.RemoteBody;
import dev.android.dynamicisland.xposed.hooks.DarkRemote;
import dev.android.dynamicisland.settings.ModuleSettings;
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
    private final Rect contentClip = new Rect();
    private final Set<View> visible = new HashSet<>();
    private final Map<String, View> inflated = new HashMap<>();
    private final Map<View, ContentBlur> effects = new HashMap<>();
    private final Map<String, RemoteViews> sources = new HashMap<>();
    private ViewGroup layer;
    private Context dark;

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
                item.remoteView.reapply(inflationContext(), existing);
                DarkRemote.lighten(existing);
                sources.put(item.key, item.remoteView);
                return existing;
            } catch (Throwable ignored) {
                // the app's views changed in a way reapply cannot handle: inflate them anew below
            }
        }
        if (existing != null) {
            layer.removeView(existing);
            clearEffect(existing, true);
        }
        Context context = inflationContext();
        View fresh = item.remoteView.apply(context, new FrameLayout(context));
        // island cards are dark in every theme: an app's dark text (a light-theme layout) would vanish on them
        DarkRemote.lighten(fresh);
        fresh.setVisibility(View.GONE);
        layer.addView(fresh, new FrameLayout.LayoutParams(1, 1));
        inflated.put(item.key, fresh);
        sources.put(item.key, item.remoteView);
        return fresh;
    }

    /**
     * The context an app's layout is inflated with. The island window's own context has the plain default theme (a
     * light one), so an app's "primary text" colour came out dark on the always-dark card, where System UI's shade
     * (dark theme) gives it white. A dark theme and the night flag give the layout the same colours as there.
     */
    private Context inflationContext() {
        if (dark == null) {
            Context base = view.getContext();
            try {
                Configuration night = new Configuration(base.getResources().getConfiguration());
                night.uiMode = (night.uiMode & ~Configuration.UI_MODE_NIGHT_MASK) | Configuration.UI_MODE_NIGHT_YES;
                base = base.createConfigurationContext(night);
            } catch (Throwable ignored) {
                // keep the plain context: the dark theme alone is still better than none
            }
            dark = new ContextThemeWrapper(base, android.R.style.Theme_DeviceDefault);
        }
        return dark;
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
                boolean naturalSize = c.leaving && !ModuleSettings.legacyAnimation();
                float scaleX = naturalSize ? 1 : Math.max(.001f, slot.width() / body.w);
                float scaleY = naturalSize ? 1 : Math.max(.001f, slot.height() / body.h);
                float left = naturalSize ? shapes.contentLeft(c) + body.pad : slot.left + body.pad * scaleX;
                float top = slot.top + body.pad * scaleY;
                body.view.setPivotX(0);
                body.view.setPivotY(0);
                body.view.setScaleX(scaleX);
                body.view.setScaleY(scaleY);
                body.view.setTranslationX(left);
                body.view.setTranslationY(top);
                contentClip.set(Math.max(0, (int)Math.ceil((slot.left - left) / scaleX)), Math.max(0, (int)Math.ceil((slot.top - top) / scaleY)),
                        Math.max(0, (int)Math.floor(Math.min(body.view.getMeasuredWidth(), (slot.right - left) / scaleX))),
                        Math.max(0, (int)Math.floor(Math.min(body.view.getMeasuredHeight(), (slot.bottom - top) / scaleY))));
                body.view.setClipBounds(contentClip);
                body.view.setAlpha(a);
                effects.computeIfAbsent(body.view, ignored -> new ContentBlur()).apply(body.view,
                        StackPainter.contentBlurAmount(c, t, shapes.expansion(c)), view.dp(ContentBlur.RADIUS_DP));
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
                clearEffect(v, true);
                sources.remove(entry.getKey());
                it.remove();
            } else if (!visible.contains(v) && v.getVisibility() != View.GONE) {
                v.setVisibility(View.GONE);
                clearEffect(v, false);
            }
        }
    }

    private void clearEffect(View view, boolean remove) {
        ContentBlur blur = remove ? effects.remove(view) : effects.get(view);
        if (blur != null) blur.clearView();
    }
}
