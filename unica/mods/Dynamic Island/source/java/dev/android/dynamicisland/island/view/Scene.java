package dev.android.dynamicisland.island.view;

import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.util.ArrayList;
import java.util.List;

/** What the island currently shows: the mode, the items, the layers inside pill and bubble and the open cards. */
final class Scene {
    /** Shade pull above which the shade counts as "pulled" at all. */
    static final float SHADE_PULLED_EPS = 0.001f;

    final Springs springs;
    Mode mode = Mode.HIDDEN;
    /** Shown items, most important first. */
    final List<IslandItem> items = new ArrayList<>();
    /** Minimized items that still show up (behind the live ones) when the stack is opened. */
    final List<IslandItem> minimized = new ArrayList<>();
    IslandItem primary;
    IslandItem secondary;
    Layer mainIn;
    Layer mainOut;
    Layer bubbleIn;
    Layer bubbleOut;
    final List<Card> cards = new ArrayList<>();
    BlurSink blur;

    boolean suppressed;
    /** The open card is a notification popup that goes away by itself; touches elsewhere (typing) do not close it. */
    boolean peekOpen;
    /** The user is typing a reply on the open card: nothing closes it by itself until that is over. */
    boolean held;
    /** How far the notification shade is pulled down, 0..1. */
    float shade;
    /** The host fades the whole window surface itself for the pulled shade. */
    boolean surfaceFade;
    /** The widest the pill has been since it appeared, kept when the user asked it not to shrink again. */
    float keptWidth;

    Scene(Springs springs) {
        this.springs = springs;
    }

    /** Smoothstep fade-out of the island while the notification shade is pulled down. */
    float shadeAlpha() {
        float x = IslandView.clamp01((shade - 0.05f) / 0.3f);
        return 1.0f - ((x * x) * (3.0f - (2.0f * x)));
    }

    float visibleAlpha() {
        return springs.visibility.value() * springs.suppress.value() * shadeAlpha();
    }

    boolean shadePulled() {
        return shade > SHADE_PULLED_EPS;
    }

    /** While the host fades the whole surface for the pulled shade there is nothing to animate. */
    boolean frozenByShade() {
        return surfaceFade && shadePulled() && springs.suppress.isAtRest() && springs.visibility.isAtRest();
    }

    Card findCard(String key) {
        for (Card c : cards) {
            if (c.item.key.equals(key)) {
                return c;
            }
        }
        return null;
    }

    /** The items an opened stack shows: the live ones, then the newest minimized ones, at most {@code max}. */
    List<IslandItem> stackItems(int max) {
        List<IslandItem> out = new ArrayList<>();
        for (int i = 0; i < items.size() && out.size() < max; i++) {
            out.add(items.get(i));
        }
        for (int j = minimized.size() - 1; j >= 0 && out.size() < max; j--) {
            out.add(minimized.get(j));
        }
        return out;
    }

    /**
     * The width the pill should have for {@code content}: its own, or the widest it has been since it appeared when the
     * user asked it to keep its width.
     */
    float pillWidthFor(Content content) {
        float width = content.desiredWidth();
        if (!ModuleSettings.keepPillWidth()) {
            keptWidth = 0.0f;
            return width;
        }
        keptWidth = Math.max(keptWidth, width);
        return keptWidth;
    }
}
