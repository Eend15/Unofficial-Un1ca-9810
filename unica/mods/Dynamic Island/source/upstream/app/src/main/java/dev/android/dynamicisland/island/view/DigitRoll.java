package dev.android.dynamicisland.island.view;

/**
 * Per-digit roll state for "12:34" style text so only the digits that change animate. Used by
 * {@code IslandView.drawTime}; main thread only.
 */
public final class DigitRoll {
    /** Character each position is rolling away from. */
    char[] from = new char[0];
    /** Last time the text was drawn; used to drop rolls that are no longer used. */
    long seen;
    /** Start time of the roll of each position. */
    long[] start = new long[0];
    String text = "";

    /** Only digits left of the last colon roll, so the fractional part stays still. */
    private static boolean rolls(String text, int index) {
        return Character.isDigit(text.charAt(index)) && index < text.lastIndexOf(':');
    }

    /** Registers the new text and returns the time at which every roll is finished. */
    long update(String newText, long now) {
        long until = 0;
        if (newText.equals(text)) {
            for (long rollStart : start) {
                until = Math.max(until, rollStart + IslandView.ROLL_MS);
            }
            return until;
        }
        int length = newText.length();
        int shift = length - text.length();
        char[] newFrom = new char[length];
        long[] newStart = new long[length];
        for (int i = 0; i < length; i++) {
            // positions are matched from the right, so a digit appearing on the left does not shift the others
            int oldIndex = i - shift;
            boolean hadOld = oldIndex >= 0 && oldIndex < text.length();
            char old = hadOld ? text.charAt(oldIndex) : ' ';
            if (old != newText.charAt(i) && rolls(newText, i)) {
                newFrom[i] = old;
                newStart[i] = now;
            } else if (hadOld && now - start[oldIndex] < IslandView.ROLL_MS && text.charAt(oldIndex) == newText.charAt(i)) {
                newFrom[i] = from[oldIndex];
                newStart[i] = start[oldIndex];
            } else {
                newFrom[i] = newText.charAt(i);
                newStart[i] = now - IslandView.ROLL_MS;
            }
            until = Math.max(until, newStart[i] + IslandView.ROLL_MS);
        }
        text = newText;
        from = newFrom;
        start = newStart;
        return until;
    }
}
