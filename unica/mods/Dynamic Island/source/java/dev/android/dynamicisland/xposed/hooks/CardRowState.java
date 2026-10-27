package dev.android.dynamicisland.xposed.hooks;

import android.view.View;
import android.view.ViewGroup;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.XLog;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * What was done to one notification row: the stock children and flags that the {@link LiveCardView}
 * replaced (so they can be put back), and the reflective setters needed in both directions. Main
 * thread only.
 */
final class CardRowState {
    /** Height limits of the content view; all are set to the card height while it measures. */
    private static final int[] NO_LIMITS = new int[0];
    private static final String[] LIMITS = {"mSmallHeight", "mMinContractedHeight", "mHeadsUpHeight"};

    /** Content views whose stock children are temporarily back in place while System UI rebinds the row. */
    private static final Map<Object, CardRowState> EXPOSED = new WeakHashMap<>();

    final View row;
    final LiveCardView card;

    private final ViewGroup layout;
    private final LiveCardView headsUpCard;
    private final View contracted;
    private final View expanded;
    private final View headsUp;
    private final boolean layoutExpandable;
    private final boolean rowExpandable;
    private final Method setContracted;
    private final Method setExpanded;
    private final Method setHeadsUp;
    private final Method updateExpandButtons;
    private final Method selectLayout;
    /** Height limits saved by nested measures; the innermost measure is on top. */
    private final ArrayDeque<int[]> savedLimits = new ArrayDeque<>();
    private boolean restoreQueued;
    private final String key;
    private boolean restored;

    CardRowState(View row, ViewGroup layout, String key, IslandItem item) throws Throwable {
        this.row = row;
        this.key = key;
        this.layout = layout;
        contracted = (View) Refl.get(layout, "mContractedChild");
        expanded = (View) Refl.get(layout, "mExpandedChild");
        headsUp = (View) Refl.get(layout, "mHeadsUpChild");
        setContracted = requireMethod(layout, "setContractedChild", 1);
        setExpanded = requireMethod(layout, "setExpandedChild", 1);
        setHeadsUp = requireMethod(layout, "setHeadsUpChild", 1);
        updateExpandButtons = requireMethod(layout, "updateExpandButtons", 1);
        selectLayout = requireMethod(layout, "selectLayout", 2);
        for (String limit : LIMITS) {
            requireField(layout, limit);
        }
        layoutExpandable = Refl.getBool(layout, "mExpandable", false);
        requireField(row, "mExpandable");
        rowExpandable = Refl.getBool(row, "mExpandable", false);
        card = new LiveCardView(row.getContext(), this, key, item);
        headsUpCard = headsUp == null ? null : new LiveCardView(row.getContext(), this, key, item);
        int inner = layout.getWidth() - layout.getPaddingLeft() - layout.getPaddingRight();
        card.heightFor(Math.max(1, inner > 0 ? inner : row.getResources().getDisplayMetrics().widthPixels));
    }

    /** The state of the card installed in a content view, or null. */
    static CardRowState installedIn(Object layout) {
        Object child = Refl.get(layout, "mContractedChild");
        return child instanceof LiveCardView ? ((LiveCardView) child).owner() : null;
    }

    /** The state whose stock children are currently exposed in a content view, or null. */
    static CardRowState exposedIn(Object layout) {
        return layout == null ? null : EXPOSED.get(layout);
    }

    /** True when the content view holds a card or is in the middle of a rebind that will bring it back. */
    static boolean owns(Object layout) {
        return layout != null && (installedIn(layout) != null || EXPOSED.containsKey(layout));
    }

    /** Like {@link Refl#method} but throws, so a missing System UI method aborts the card binding. */
    static Method requireMethod(Object target, String name, int paramCount) throws NoSuchMethodException {
        Method m = Refl.method(target.getClass(), name, paramCount);
        if (m == null) {
            throw new NoSuchMethodException(name);
        }
        return m;
    }

    private static void requireField(Object target, String name) throws NoSuchFieldException {
        if (Refl.field(target.getClass(), name) == null) {
            throw new NoSuchFieldException(name);
        }
    }

    boolean isRestored() {
        return restored;
    }

    /** Swaps the card in for the stock children and lays the row out again. */
    void install() throws Throwable {
        setContracted.invoke(layout, card);
        setExpanded.invoke(layout, new Object[] {null});
        if (headsUpCard != null) {
            setHeadsUp.invoke(layout, headsUpCard);
        }
        updateExpandButtons.invoke(layout, false);
        if (!Refl.set(row, "mExpandable", false)) {
            throw new IllegalStateException("row mExpandable");
        }
        relayout("island live card");
        XLog.event("shade card installed " + key);
    }

    /** Puts the stock children back so System UI can rebind them; {@link #concealOriginals} undoes it. */
    void exposeOriginals() {
        if (restored) {
            return;
        }
        EXPOSED.put(layout, this);
        Refl.set(layout, "mContractedChild", contracted);
        Refl.set(layout, "mExpandedChild", expanded);
        if (headsUpCard != null) {
            Refl.set(layout, "mHeadsUpChild", headsUp);
        }
    }

    /**
     * Swaps the card back in after System UI rebound the stock children.
     *
     * @return false when System UI inflated new stock children instead of reusing the old ones: the card is then
     *         detached and given up, and the caller must bind a fresh card, or the new stock views would show
     *         next to the old card
     */
    boolean concealOriginals() {
        EXPOSED.remove(layout);
        if (restored) {
            return true;
        }
        boolean reused = Refl.get(layout, "mContractedChild") == contracted
                && Refl.get(layout, "mExpandedChild") == expanded
                && (headsUpCard == null || Refl.get(layout, "mHeadsUpChild") == headsUp);
        if (!reused) {
            XLog.event("shade card given up (stock children were replaced) " + key);
            abandon();
            return false;
        }
        Refl.set(layout, "mContractedChild", card);
        Refl.set(layout, "mExpandedChild", null);
        if (headsUpCard != null) {
            Refl.set(layout, "mHeadsUpChild", headsUpCard);
        }
        return true;
    }

    /** Drops the card without touching the layout's stock children, which System UI has just replaced. */
    private void abandon() {
        restored = true;
        while (!savedLimits.isEmpty()) {
            endMeasure();
        }
        detach(card);
        detach(headsUpCard);
    }

    private void detach(View child) {
        if (child != null && child.getParent() == layout) {
            layout.removeView(child);
        }
    }

    /** Raises the height limits to the card height for a measure at {@code width}; paired with {@link #endMeasure}. */
    void beginMeasure(int width) {
        boolean pushed = false;
        try {
            int inner = Math.max(1, width - layout.getPaddingLeft() - layout.getPaddingRight());
            int height = card.heightFor(inner);
            int[] saved = new int[LIMITS.length];
            for (int i = 0; i < LIMITS.length; i++) {
                saved[i] = Refl.getInt(layout, LIMITS[i], 0);
            }
            savedLimits.push(saved);
            pushed = true;
            for (String limit : LIMITS) {
                if (!Refl.set(layout, limit, height)) {
                    throw new IllegalStateException(limit);
                }
            }
        } catch (Throwable t) {
            fail(t);
        } finally {
            if (!pushed) {
                savedLimits.push(NO_LIMITS); // keeps this level paired with its endMeasure
            }
        }
    }

    void endMeasure() {
        int[] saved = savedLimits.poll();
        if (saved == null || saved.length == 0) {
            return;
        }
        for (int i = 0; i < LIMITS.length; i++) {
            Refl.set(layout, LIMITS[i], saved[i]);
        }
    }

    /** Gives up on the card for this row: logs once and restores the stock content on the next main-thread turn. */
    void fail(Throwable t) {
        if (restored || restoreQueued) {
            return;
        }
        XLog.e("shade live card failed " + key, t);
        restoreQueued = true;
        row.post(this::restore);
    }

    /** Puts the stock children and flags back; safe to call more than once. */
    void restore() {
        if (restored) {
            return;
        }
        restored = true;
        EXPOSED.remove(layout);
        XLog.event("shade card restored " + key);
        while (!savedLimits.isEmpty()) {
            endMeasure();
        }
        putBack(setContracted, "mContractedChild", card, contracted);
        putBack(setExpanded, "mExpandedChild", null, expanded);
        if (headsUpCard != null) {
            putBack(setHeadsUp, "mHeadsUpChild", headsUpCard, headsUp);
        }
        detach(card);
        detach(headsUpCard);
        if (!Refl.set(row, "mExpandable", rowExpandable)) {
            XLog.i("shade live card restore mExpandable failed");
        }
        try {
            updateExpandButtons.invoke(layout, layoutExpandable);
            relayout("island live card restore");
        } catch (Throwable t) {
            XLog.e("shade live card restore failed", t);
        }
    }

    private void relayout(String reason) throws Throwable {
        selectLayout.invoke(layout, false, true);
        layout.requestLayout();
        Refl.call(row, "notifyHeightChanged", reason, false);
        ShadeCardTheme.refresh(row);
    }

    /** Reinstates {@code original} when the slot still holds our card or an orphaned stock child. */
    private void putBack(Method setter, String field, View ours, View original) {
        try {
            Object now = Refl.get(layout, field);
            boolean orphaned = now == original && original != null && original.getParent() != layout;
            if (now == ours || orphaned) {
                setter.invoke(layout, original);
            }
        } catch (Throwable t) {
            XLog.e("shade live card restore " + field, t);
        }
    }
}
