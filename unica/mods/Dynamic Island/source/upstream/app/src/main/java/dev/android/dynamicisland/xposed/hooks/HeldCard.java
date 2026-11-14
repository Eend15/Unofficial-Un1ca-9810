package dev.android.dynamicisland.xposed.hooks;

import dev.android.dynamicisland.island.model.IslandItem;

/**
 * Keeps the last card of a media player on screen for a moment when the island briefly has none for it.
 *
 * <p>A player whose card is missing for a frame falls back to the stock player: System UI's own background,
 * gradient and wave come back for that frame and are gone again the next, which shows as black patches with a
 * ragged edge flashing on the card. The island's media list can be empty for a moment (a session that is
 * rebuilt, a track change that has no title yet), so a miss of that kind is bridged with the card shown last.
 * A miss that has a plain reason (the setting is off, touch exploration is on, the options are open) is not.
 */
final class HeldCard {
    /** How long a card is kept while the island has none. */
    static final long HOLD_MS = 3_000L;
    /** Why a player had no card: the reasons that are not bridged come first. */
    static final int SETTING_OFF = 0, TOUCH_EXPLORATION = 1, OPTIONS_OPEN = 2, NO_SOURCE = 3, NO_CARD = 4;
    private static final String[] NAMES = {"setting off", "touch exploration", "options open", "no source", "no card"};

    private static final int[] MISSES = new int[NAMES.length];
    private static int bridged;

    private IslandItem last;
    private long lastAt;
    private boolean holding;

    /** Whether the card {@link #pick} returned last was the held one. */
    boolean holding() {
        return holding;
    }

    /**
     * The card to draw: {@code live} when there is one, else the card shown last while it is recent and the miss
     * is of a kind to bridge.
     *
     * @param reason why {@code live} is null, one of the constants above (ignored when it is not null)
     */
    IslandItem pick(IslandItem live, int reason, long now) {
        holding = false;
        if (live != null) {
            last = live;
            lastAt = now;
            return live;
        }
        MISSES[reason]++;
        boolean bridge = reason >= NO_SOURCE && last != null && now - lastAt < HOLD_MS;
        if (bridge) {
            holding = true;
            bridged++;
            return last;
        }
        if (reason < NO_SOURCE) {
            last = null; // a plain reason ends the card: it must not come back later
        }
        return null;
    }

    /** One line for the diagnostics report: how often the island had no card for a player, and how often the last one was kept. */
    static String summary() {
        StringBuilder out = new StringBuilder("checks without a card:");
        for (int i = 0; i < NAMES.length; i++) {
            out.append(i == 0 ? " " : ", ").append(NAMES[i]).append(' ').append(MISSES[i]);
        }
        return out.append("; card kept for up to ").append(HOLD_MS / 1000).append(" s: ").append(bridged).toString();
    }
}
