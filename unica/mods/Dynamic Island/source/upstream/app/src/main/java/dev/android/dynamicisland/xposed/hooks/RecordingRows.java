package dev.android.dynamicisland.xposed.hooks;

import android.view.View;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/** Restores rows we hid, even when a hidden player no longer gets draw callbacks or is rebound. */
final class RecordingRows {
    private final Map<View, Integer> hidden = new WeakHashMap<>();

    void sync(Set<View> wanted) {
        Iterator<Map.Entry<View, Integer>> it = hidden.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<View, Integer> entry = it.next();
            if (!wanted.contains(entry.getKey())) {
                if (entry.getKey().getVisibility() == View.GONE) {
                    entry.getKey().setVisibility(entry.getValue());
                }
                it.remove();
            }
        }
        for (View row : wanted) {
            if (!hidden.containsKey(row)) {
                hidden.put(row, row.getVisibility());
            }
            row.setVisibility(View.GONE);
        }
    }
}
