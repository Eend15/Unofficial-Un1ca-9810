package dev.android.dynamicisland.xposed.hooks;

import android.view.View;
import dev.android.dynamicisland.xposed.Refl;

/** A temporary content reference for Samsung's synchronous long-press hit test. */
final class ActionButtonHitTest implements AutoCloseable {
    private final Object layout;
    private final View card;

    private ActionButtonHitTest(Object layout, View card) {
        this.layout = layout;
        this.card = card;
    }

    /** Called only for an installed island card, never for a stock notification row. */
    static ActionButtonHitTest begin(Object layout, View card) {
        if (card == null || Refl.get(layout, "mContractedChild") != card
                || Refl.get(layout, "mExpandedChild") != null) return null;
        ActionButtonHitTest scope = new ActionButtonHitTest(layout, card);
        // Samsung unconditionally searches mExpandedChild for ongoing-activity buttons.
        // Our card has replaced those widgets: search the displayed content instead.
        // Do not attach it twice or change any layout/expansion state.
        return Refl.set(layout, "mExpandedChild", card) ? scope : null;
    }

    @Override public void close() {
        // A nested hit test or a stock rebind must not undo somebody else's new view.
        if (Refl.get(layout, "mExpandedChild") == card) Refl.set(layout, "mExpandedChild", null);
    }
}
