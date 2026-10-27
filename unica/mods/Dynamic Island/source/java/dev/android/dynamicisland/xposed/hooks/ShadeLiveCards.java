package dev.android.dynamicisland.xposed.hooks;

import android.view.View;
import android.view.ViewGroup;
import de.robv.android.xposed.XC_MethodHook;
import dev.android.dynamicisland.island.IslandController;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;
import dev.android.dynamicisland.xposed.XLog;

/**
 * Replaces the content of a notification row in the shade with a {@link LiveCardView} that draws the
 * island's own card for the same live activity, so a live activity looks the same in the shade as in
 * the island. This class installs the System UI hooks; the per-row bookkeeping lives in
 * {@link CardRowState}. Everything is main-thread only. If anything about the System UI row layout is
 * not as expected, the stock content is restored ({@link CardRowState#restore}) and the stock
 * notification shows.
 */
public final class ShadeLiveCards {
    private static final String ROW_PACKAGE = "com.android.systemui.statusbar.notification.row.";
    private static final String CONTENT_BINDER = ROW_PACKAGE + "NotificationRowContentBinderImpl";
    private static final String CONTENT_VIEW = ROW_PACKAGE + "NotificationContentView";
    /** Position of the row argument in {@code NotificationRowContentBinderImpl.Companion.access$apply}. */
    private static final int APPLY_ROW_ARG = 8;

    private static final java.util.Map<View, Boolean> boundRows = new java.util.WeakHashMap<>();

    /** Reconcile already-bound rows when the overlay opens, closes or gives way to the shade. */
    public static void refreshVisibleCards() {
        for (View row : new java.util.ArrayList<>(boundRows.keySet())) bind(row);
    }

    private ShadeLiveCards() {
    }

    static void install(ClassLoader cl) {
        try {
            Class<?> rowClass = Refl.findClass(ROW_PACKAGE + "ExpandableNotificationRow", cl);
            if (rowClass == null) return;
            // Older builds without this Samsung hit test do not need the guard. When it
            // exists, install the guard before allowing any stock content to be replaced.
            if (Refl.method(rowClass, "isActionButtonLongClick", 2) != null
                    && Refl.hookAll(rowClass, "isActionButtonLongClick", new ActionButtonHitTestHook()) == 0) return;
            if (Refl.hookAll(cl, CONTENT_BINDER + "$Companion", "access$apply", new ReapplyHook()) == 0) {
                return;
            }
            int measure = Refl.hookAll(cl, CONTENT_VIEW, "onMeasure", new MeasureHook());
            int minHeight = Refl.hookAll(cl, CONTENT_VIEW, "getMinHeight",
                    SafeHook.after("shade card min height", ShadeLiveCards::reportCardHeightAsMinHeight));
            if (measure == 0 || minHeight == 0) {
                return;
            }
            Refl.hookAll(cl, ROW_PACKAGE + "wrapper.NotificationViewWrapper", "needsInversion",
                    SafeHook.before("shade card colors", ShadeLiveCards::neverInvertCard));
            Refl.hookAll(cl, CONTENT_BINDER + "$AsyncInflationTask", "onAsyncInflationFinished",
                    SafeHook.after("shade live card bind", ShadeLiveCards::replaceContentWithCard));
        } catch (Throwable t) {
            XLog.e("shade live card hooks failed", t);
        }
    }

    /** The island item currently shown for a notification key, or null. */
    public static IslandItem item(String key) {
        IslandController controller = IslandController.get();
        return controller == null ? null : controller.itemForKey(key);
    }

    /** True when the row's content view currently holds (or is just rebinding) one of our cards. */
    static boolean isCardRow(View row) {
        return CardRowState.owns(Refl.get(row, "mPrivateLayout"));
    }

    /** Covers both SwipeHelper's row long press and LiveCardView's forwarded long press. */
    private static final class ActionButtonHitTestHook extends SafeHook {
        private static final String SCOPE = "dynamicisland.actionButtonHitTest";

        ActionButtonHitTestHook() { super("shade card long-press hit test"); }

        @Override protected void before(XC_MethodHook.MethodHookParam p) {
            Object layout = Refl.get(p.thisObject, "mPrivateLayout");
            CardRowState state = CardRowState.installedIn(layout);
            if (state == null || state.isRestored()) return;
            ActionButtonHitTest scope = ActionButtonHitTest.begin(layout, state.card);
            if (scope != null) p.setObjectExtra(SCOPE, scope);
        }

        @Override protected void after(XC_MethodHook.MethodHookParam p) {
            Object scope = p.getObjectExtra(SCOPE);
            if (scope instanceof ActionButtonHitTest) ((ActionButtonHitTest) scope).close();
        }
    }

    /**
     * Wraps the binder's {@code apply}: while System UI re-applies the row content it expects its own
     * original child views in the layout, so they are put back before the call and swapped for the
     * card again after it.
     */
    private static final class ReapplyHook extends SafeHook {
        ReapplyHook() {
            super("shade card reapply");
        }

        @Override
        protected void before(XC_MethodHook.MethodHookParam p) {
            Object layout = privateLayout(p);
            CardRowState state = layout == null ? null : CardRowState.installedIn(layout);
            if (state != null) {
                state.exposeOriginals();
            }
        }

        @Override
        protected void after(XC_MethodHook.MethodHookParam p) {
            CardRowState state = CardRowState.exposedIn(privateLayout(p));
            if (state != null && !state.concealOriginals()) {
                bind(p.args[APPLY_ROW_ARG]); // System UI built new stock views: the row needs a fresh card
            }
        }

        private static Object privateLayout(XC_MethodHook.MethodHookParam p) {
            return p.args.length > APPLY_ROW_ARG ? Refl.get(p.args[APPLY_ROW_ARG], "mPrivateLayout") : null;
        }
    }

    /**
     * Wraps {@code NotificationContentView.onMeasure}: the stock height limits would clip the card, so
     * for a card row they are raised to the card height during the measure and restored after it.
     */
    private static final class MeasureHook extends SafeHook {
        MeasureHook() {
            super("shade card measure");
        }

        @Override
        protected void before(XC_MethodHook.MethodHookParam p) {
            CardRowState state = CardRowState.installedIn(p.thisObject);
            if (state != null) {
                state.beginMeasure(View.MeasureSpec.getSize((Integer) p.args[0]));
            }
        }

        @Override
        protected void after(XC_MethodHook.MethodHookParam p) {
            CardRowState state = CardRowState.installedIn(p.thisObject);
            if (state != null) {
                state.endMeasure();
            }
        }
    }

    /** After {@code NotificationContentView.getMinHeight}: a card row is exactly as tall as its card. */
    private static void reportCardHeightAsMinHeight(XC_MethodHook.MethodHookParam p) {
        CardRowState state = CardRowState.installedIn(p.thisObject);
        if (state == null || p.hasThrowable()) {
            return;
        }
        LiveCardView card = state.card;
        p.setResult(card.getHeight() > 0 ? card.getHeight() : card.desiredHeight());
    }

    /** Before {@code NotificationViewWrapper.needsInversion}: the card is already dark, never invert its colours. */
    private static void neverInvertCard(XC_MethodHook.MethodHookParam p) {
        if (Refl.get(p.thisObject, "mView") instanceof LiveCardView) {
            p.setResult(false);
        }
    }

    /** After {@code AsyncInflationTask.onAsyncInflationFinished}: the row content is fresh, so install the card in it. */
    private static void replaceContentWithCard(XC_MethodHook.MethodHookParam p) {
        if (!p.hasThrowable()) {
            bind(Refl.get(p.thisObject, "row"));
        }
    }

    /** Installs a card into {@code row} when the island has a live item for its notification. */
    private static void bind(Object row) {
        if (!(row instanceof View)) {
            return;
        }
        String key = (String) Refl.call(Refl.get(row, "mEntryAdapter|mEntry"), "getKey");
        boundRows.put((View) row, Boolean.TRUE);
        IslandItem item = item(key);
        Object layout = Refl.get(row, "mPrivateLayout");
        if (!(layout instanceof ViewGroup)) {
            return;
        }
        CardRowState previous = CardRowState.installedIn(layout);
        if (previous == null) previous = CardRowState.exposedIn(layout);
        if (previous != null) {
            previous.restore();
        }
        IslandController controller = IslandController.get();
        // Restore first: an earlier binding may already contain our duplicate card.
        if (item == null || controller != null && controller.isShownAsCard(item)) return;
        ViewGroup group = (ViewGroup) layout;
        for (int i = group.getChildCount() - 1; i >= 0; i--) {
            View child = group.getChildAt(i);
            if (child instanceof LiveCardView && ((LiveCardView) child).owner().isRestored()) {
                group.removeViewAt(i); // a card left behind by a state that was given up
            }
        }
        CardRowState state = null;
        try {
            state = new CardRowState((View) row, (ViewGroup) layout, key, item);
            state.install();
        } catch (Throwable t) {
            XLog.e("shade live card bind failed", t);
            if (state != null) {
                state.restore();
            }
        }
    }
}
