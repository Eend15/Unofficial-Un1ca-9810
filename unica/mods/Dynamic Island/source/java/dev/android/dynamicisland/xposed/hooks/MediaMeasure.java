package dev.android.dynamicisland.xposed.hooks;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import de.robv.android.xposed.XC_MethodHook;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;

/**
 * Sizing of the shade media player: while a notification content view that holds one of our players
 * measures, every height the stock code would consult (content view limits, child layout heights, the
 * resource picker's player height) answers with the card height instead.
 */
final class MediaMeasure {
    /** Card height the content view being measured must have, null outside such a measure. */
    private static final ThreadLocal<Integer> CARD_HEIGHT = new ThreadLocal<>();

    private MediaMeasure() {
    }

    /** After {@code SecQSPanelResourcePicker.getMediaPlayerExpandHeight}: reports the card height while a card row measures. */
    static void useCardHeight(XC_MethodHook.MethodHookParam p) {
        Integer height = CARD_HEIGHT.get();
        if (height != null) {
            p.setResult(height);
        }
    }

    /** Before the player view's {@code onMeasure}: replaces the height spec with the exact card height. */
    static void forcePlayerHeight(XC_MethodHook.MethodHookParam p) {
        MediaPlayerBinding binding = ShadeMediaPlayer.bindingOf(p.thisObject);
        if (binding == null) {
            return;
        }
        View view = (View) p.thisObject;
        IslandItem item = binding.item(view);
        if (item != null) {
            int height = binding.cardHeight(item, View.MeasureSpec.getSize((Integer) p.args[0]));
            p.args[1] = View.MeasureSpec.makeMeasureSpec(height, View.MeasureSpec.EXACTLY);
        }
    }

    private static boolean isInside(View view, View ancestor) {
        for (ViewParent p = view.getParent(); p != null; p = p.getParent()) {
            if (p == ancestor) {
                return true;
            }
        }
        return false;
    }

    /**
     * Wraps {@code NotificationContentView.onMeasure}: for a row that contains one of our players the
     * content view is measured with the card height instead of the stock player height.
     */
    static final class ContentMeasureHook extends SafeHook {
        private final ArrayDeque<ForcedHeight> active = new ArrayDeque<>();

        ContentMeasureHook() {
            super("notification media measure");
        }

        @Override
        protected void before(XC_MethodHook.MethodHookParam p) {
            ViewGroup layout = (ViewGroup) p.thisObject;
            ForcedHeight forced = new ForcedHeight(layout);
            active.push(forced);
            for (Map.Entry<View, MediaPlayerBinding> entry : ShadeMediaPlayer.players().entrySet()) {
                View player = entry.getKey();
                if (!isInside(player, layout)) {
                    continue;
                }
                MediaPlayerBinding binding = entry.getValue();
                IslandItem item = binding.item(player);
                binding.syncBackground(player, item != null);
                if (item != null) {
                    forced.apply(binding.cardHeight(item, View.MeasureSpec.getSize((Integer) p.args[0])));
                    return;
                }
            }
        }

        @Override
        protected void after(XC_MethodHook.MethodHookParam p) {
            ForcedHeight forced = active.poll();
            if (forced != null) {
                forced.undo();
            }
        }
    }

    /** One content view's heights forced to the card height for the duration of a measure. */
    private static final class ForcedHeight {
        private static final String[] LIMIT_FIELDS = {"mSmallHeight", "mMinContractedHeight", "mNotificationMaxHeight", "mHeadsUpHeight"};
        private static final String[] CHILD_FIELDS = {"mExpandedChild", "mContractedChild"};

        private final Object layout;
        private final Integer outerHeight = CARD_HEIGHT.get();
        private final int[] savedLimits = new int[LIMIT_FIELDS.length];
        private final Map<View, Integer> savedChildHeights = new HashMap<>();
        private boolean applied;

        ForcedHeight(Object layout) {
            this.layout = layout;
        }

        void apply(int height) {
            applied = true;
            CARD_HEIGHT.set(height);
            for (int i = 0; i < LIMIT_FIELDS.length; i++) {
                savedLimits[i] = Refl.getInt(layout, LIMIT_FIELDS[i], height);
                Refl.set(layout, LIMIT_FIELDS[i], height);
            }
            for (String field : CHILD_FIELDS) {
                Object child = Refl.get(layout, field);
                if (child instanceof View && ((View) child).getLayoutParams() != null) {
                    ViewGroup.LayoutParams lp = ((View) child).getLayoutParams();
                    savedChildHeights.put((View) child, lp.height);
                    lp.height = height;
                }
            }
        }

        void undo() {
            if (applied) {
                for (int i = 0; i < LIMIT_FIELDS.length; i++) {
                    Refl.set(layout, LIMIT_FIELDS[i], savedLimits[i]);
                }
                for (Map.Entry<View, Integer> e : savedChildHeights.entrySet()) {
                    e.getKey().getLayoutParams().height = e.getValue();
                }
            }
            if (outerHeight == null) {
                CARD_HEIGHT.remove();
            } else {
                CARD_HEIGHT.set(outerHeight);
            }
        }
    }
}
