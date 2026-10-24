package dev.android.dynamicisland.xposed.hooks;

import dev.android.dynamicisland.island.IslandController;
import dev.android.dynamicisland.island.source.PromotedSource;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;
import de.robv.android.xposed.XC_MethodHook;
import java.lang.reflect.Constructor;

/**
 * System UI builds without Samsung's ongoing-activity classes (AOSP, Nothing OS) show calls, screen recording,
 * sharing and casting as status bar chips. The island shows the same things, so those chips are taken out of the
 * chip bundle before it is ranked, and the island is given the models instead.
 * <p>
 * Chips the island has no card for (promoted app notifications) stay where they are.
 */
final class AospChips {
    static final String VIEW_MODEL = "com.android.systemui.statusbar.chips.ui.viewmodel.OngoingActivityChipsViewModel";
    private static final String INACTIVE = "com.android.systemui.statusbar.chips.ui.model.OngoingActivityChipModel$Inactive";

    /** Bundle slots the island has a card for. */
    private static final String[] SLOTS = {"screenRecord", "shareToApp", "castToOtherDevice"};

    /** What the island reads: the live models of the covered slots (same field names as the stock bundle). */
    public static final class Feed {
        public volatile Object screenRecord;
        public volatile Object shareToApp;
        public volatile Object castToOtherDevice;
    }

    private static final Feed FEED = new Feed();
    /** Stands in for a covered chip; a bundle that holds it was already processed (ranking re-enters with copies). */
    private static Object hidden;

    private AospChips() {
    }

    static boolean present(ClassLoader cl) {
        return Refl.hasClass(VIEW_MODEL, cl);
    }

    static void install(ClassLoader cl, SystemUiHooks.CallCoverage calls) {
        Class<?> inactive = Refl.findClass(INACTIVE, cl);
        if (inactive == null) {
            return;
        }
        try {
            Constructor<?> ctor = inactive.getDeclaredConstructor();
            ctor.setAccessible(true);
            hidden = ctor.newInstance();
        } catch (Throwable t) {
            return; // no way to build an empty chip: leave the stock chips alone
        }
        PromotedSource.setEnabled(true); // the live notification chips go too, the island has cards for them
        XC_MethodHook hook = SafeHook.before("chip bundle", param -> cover(param, calls));
        Refl.hookAll(cl, VIEW_MODEL, "rankChips", hook);
        Refl.hookAll(cl, VIEW_MODEL, "pickMostImportantChip", hook);
    }

    private static void cover(XC_MethodHook.MethodHookParam param, SystemUiHooks.CallCoverage calls) {
        Object bundle = param.args.length > 0 ? param.args[0] : null;
        if (bundle != null && takeOut(bundle, calls.covered(), true)) {
            IslandController island = IslandController.get();
            if (island != null) {
                island.setCastBundle(FEED);
            }
        }
    }

    /** Swaps the covered chips of {@code bundle} for the empty one; true when the island's models changed. */
    static boolean takeOut(Object bundle, boolean callCovered, boolean notifsCovered) {
        boolean changed = false;
        for (String slot : SLOTS) {
            Object model = Refl.get(bundle, slot);
            if (model == hidden) {
                continue; // already taken out earlier in this pass; the island keeps the model it was given
            }
            Object live = isActive(model) ? model : null;
            changed |= setFeed(slot, live);
            if (live != null) {
                Refl.set(bundle, slot, hidden);
            }
        }
        if (callCovered && isActive(Refl.get(bundle, "call"))) {
            Refl.set(bundle, "call", hidden);
        }
        Object notifs = Refl.get(bundle, "notifs");
        if (notifsCovered && notifs instanceof java.util.List && !((java.util.List<?>) notifs).isEmpty()) {
            Refl.set(bundle, "notifs", java.util.Collections.emptyList());
        }
        return changed;
    }

    /** Test seam: the empty chip and a clean feed. */
    static void reset(Object emptyChip) {
        hidden = emptyChip;
        FEED.screenRecord = null;
        FEED.shareToApp = null;
        FEED.castToOtherDevice = null;
    }

    private static boolean setFeed(String slot, Object model) {
        Object old = Refl.get(FEED, slot);
        if (old == model) {
            return false;
        }
        Refl.set(FEED, slot, model);
        return true;
    }

    static Object feed() {
        return FEED;
    }

    private static boolean isActive(Object model) {
        return model != null && model.getClass().getName().contains("$Active");
    }
}
