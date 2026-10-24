package dev.android.dynamicisland.island.window;

import android.graphics.RectF;
import android.text.Layout;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Space;
import android.widget.TextView;
import dev.android.dynamicisland.xposed.XLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/**
 * Fades the status-bar icons (clock, battery, notification and system icons, ...) that the island
 * would cover, so they do not show through or collide with it.
 *
 * <p>The fader watches SystemUI's status bar by view id name (ids are resolved at runtime because the
 * layout belongs to SystemUI). On every global layout and island move it compares each icon's screen
 * rectangle with the island's and fades it out or back in ({@link IconAlphaFade}). The clock that
 * shows a date after a double space is faded only from the date onward ({@link ClockDateEraser}).
 * Main thread only.
 */
public final class StatusBarIconFader {
    /** Gap (dp) between island and icon within which the icon already counts as covered. */
    private static final float COVER_MARGIN_DP = 6.0f;
    /** Extra gap (dp) that keeps an already hidden icon hidden, so it does not flicker at the edge. */
    private static final float HYSTERESIS_DP = 4.0f;
    private static final String SYSTEM_UI = "com.android.systemui";
    private static final String PUSHED_GROUP_ID = "notificationIcons";
    /** Containers that start to the right of the notification icons; they are where the pushed row has to stop. */
    private static final String[] LIMIT_IDS = {"system_icons", "statusIcons", "battery"};
    private static final long PUSH_MS = 220;

    /** Single status-bar views faded as a unit. */
    private static final String[] LEAF_IDS = {"clock", "battery", "networkSpeed", "knox_status_bar_custom_text_container", "user_switcher_container", "carrier_logo_container", "operator_name_frame"};
    /** Containers whose children are faded one by one. */
    private static final String[] GROUP_IDS = {"notificationIcons", "statusIcons", "system_icons"};
    /** View id name to resource id (0 = not present), cached across instances. */
    private static final Map<String, Integer> IDS = new HashMap<>();
    /** Resource id to id name (null = unnamed), cached across instances. */
    private static final Map<Integer, String> NAMES = new HashMap<>();

    private final float density;
    private final Map<View, IconAlphaFade> fades = new WeakHashMap<>();
    private final Map<View, ClockDateEraser> dateErasers = new WeakHashMap<>();
    /** Views that may be faded; rebuilt by {@link #collect()} when the layout changed. */
    private final List<View> candidates = new ArrayList<>();
    private final int[] screenPos = new int[2];
    /** Screen rectangle covered by the island (only meaningful while it is active). */
    private final RectF island = new RectF();
    private final RectF iconBounds = new RectF();
    private final ViewTreeObserver.OnGlobalLayoutListener layoutListener = this::onStatusBarLayout;

    private View statusBar;
    /** View whose layout passes drive the fader: the bar's contents container if there is one. */
    private View watched;
    private boolean islandActive;
    private boolean mobileLogged;
    /** The candidate list must be rebuilt before the next {@link #apply()}. */
    private boolean dirty = true;
    /** The notification icon row: pushed aside by the island instead of being faded under it. */
    private ViewGroup pushedRow;
    private float pushTarget;
    /** Screen x that a pushed icon must not reach; icons past it fade out instead of running into the system icons. */
    private float overflowLimit = Float.MAX_VALUE;

    public StatusBarIconFader(float density) {
        this.density = density;
    }

    /** Starts watching the given PhoneStatusBarView (detaches from the previous one). */
    public void attach(View phoneStatusBarView) {
        if (statusBar == phoneStatusBarView) {
            return;
        }
        detach();
        statusBar = phoneStatusBarView;
        mobileLogged = false;
        View contents = find(phoneStatusBarView, "status_bar_contents");
        watched = contents != null ? contents : phoneStatusBarView;
        watched.getViewTreeObserver().addOnGlobalLayoutListener(layoutListener);
        dirty = true;
    }

    public void detach() {
        if (watched != null) {
            try {
                watched.getViewTreeObserver().removeOnGlobalLayoutListener(layoutListener);
            } catch (Throwable ignored) {
                // observer already dead
            }
        }
        resetAll();
        statusBar = null;
        watched = null;
        candidates.clear();
    }

    /**
     * Updates which area the island covers.
     *
     * @param coverage screen rectangle of the island; only used when {@code active}
     * @param active   whether the island is currently shown (inactive = restore all icons)
     */
    public void update(RectF coverage, boolean active) {
        if (!active && !islandActive && !dirty) {
            return;
        }
        islandActive = active;
        if (active) {
            island.set(coverage);
        }
        apply();
    }

    /** Cancels every running fade and shows all icons again. */
    void resetAll() {
        restoreRow();
        for (Map.Entry<View, IconAlphaFade> entry : fades.entrySet()) {
            entry.getValue().cancel();
            entry.getKey().setTransitionAlpha(1.0f);
        }
        fades.clear();
        for (ClockDateEraser eraser : dateErasers.values()) {
            eraser.reset();
        }
        dateErasers.clear();
    }

    private void restoreRow() {
        if (pushedRow != null) {
            pushedRow.animate().cancel();
            pushedRow.setTranslationX(0.0f);
        }
        pushTarget = 0.0f;
        overflowLimit = Float.MAX_VALUE;
    }

    private void onStatusBarLayout() {
        dirty = true;
        apply();
    }

    private void apply() {
        try {
            if (statusBar == null) {
                return;
            }
            if (dirty) {
                collect();
            }
            updatePush();
            for (View candidate : candidates) {
                updateCandidate(candidate);
            }
        } catch (Throwable t) {
            // runs from a global layout listener: an exception here would take System UI down
            XLog.once("StatusBarIconFader.apply", t);
        }
    }

    // ---- pushing the notification icons aside ---------------------------------------------------

    /**
     * The island over the notification icons moves the whole row out of its way (it slides to the island's
     * far side) instead of hiding the icons; what no longer fits before the system icons fades.
     */
    private void updatePush() {
        ViewGroup row = pushedRow;
        if (row == null || !row.isAttachedToWindow() || row.getWidth() == 0) {
            overflowLimit = Float.MAX_VALUE;
            return;
        }
        row.getLocationOnScreen(screenPos);
        float margin = density * COVER_MARGIN_DP;
        float baseLeft = screenPos[0] - row.getTranslationX();
        float baseRight = baseLeft + contentWidth(row);
        float target = 0.0f;
        boolean sharesRows = islandActive && screenPos[1] < island.bottom && screenPos[1] + row.getHeight() > island.top;
        if (sharesRows && island.right + margin > baseLeft && island.left - margin < baseRight && baseRight > baseLeft) {
            target = island.right + margin - baseLeft;
        }
        if (target != pushTarget) {
            pushTarget = target;
            row.animate().cancel();
            row.animate().translationX(target).setDuration(PUSH_MS).start();
        }
        overflowLimit = target > 0.0f ? limitX() : Float.MAX_VALUE;
    }

    /** Right end of the visible icons, relative to the row. */
    private static float contentWidth(ViewGroup row) {
        float right = 0.0f;
        for (int i = 0; i < row.getChildCount(); i++) {
            View child = row.getChildAt(i);
            if (child.getVisibility() == View.VISIBLE) {
                right = Math.max(right, child.getLeft() + child.getWidth());
            }
        }
        return right;
    }

    private float limitX() {
        float limit = Float.MAX_VALUE;
        for (String id : LIMIT_IDS) {
            View view = find(statusBar, id);
            if (view != null && view.isAttachedToWindow() && view.getWidth() > 0) {
                view.getLocationOnScreen(screenPos);
                limit = Math.min(limit, screenPos[0] - density * COVER_MARGIN_DP);
            }
        }
        return limit;
    }

    // ---- per-icon decision ---------------------------------------------------------------------

    private void updateCandidate(View icon) {
        IconAlphaFade fade = fades.get(icon);
        boolean wasHidden = fade != null && fade.isHiding();
        float margin = density * COVER_MARGIN_DP;
        float stickyMargin = margin + density * HYSTERESIS_DP;

        boolean covered = false;
        boolean dateCovered = false;
        float dateX = -1.0f;
        if (islandActive && icon.isAttachedToWindow() && icon.getWidth() > 0 && icon.getVisibility() == View.VISIBLE) {
            icon.getLocationOnScreen(screenPos);
            iconBounds.set(screenPos[0], screenPos[1],
                    screenPos[0] + icon.getWidth() * icon.getScaleX(),
                    screenPos[1] + icon.getHeight() * icon.getScaleY());
            float wholeMargin = wasHidden ? stickyMargin : margin;
            boolean inPushedRow = icon.getParent() == pushedRow;
            boolean sharesRows = iconBounds.bottom > island.top && iconBounds.top < island.bottom;
            dateX = dateStart(icon);
            if (dateX > 0.0f) {
                // clock with a date: either the date part is covered, or the island sits over the time part
                float splitScreenX = iconBounds.left + icon.getScaleX() * dateX;
                ClockDateEraser eraser = dateErasers.get(icon);
                float dateMargin = (eraser != null && eraser.isHiding()) ? stickyMargin : margin;
                dateCovered = sharesRows && iconBounds.right > island.left - dateMargin && splitScreenX < island.right + dateMargin;
                covered = !sharesRows && splitScreenX > island.left - wholeMargin && iconBounds.left < island.right + wholeMargin;
            } else if (inPushedRow && pushTarget > 0.0f) {
                covered = iconBounds.right > overflowLimit; // pushed past the island: only what runs into the system icons goes
            } else {
                covered = sharesRows && iconBounds.right > island.left - wholeMargin && iconBounds.left < island.right + wholeMargin;
            }
        }

        if (dateX > 0.0f || dateErasers.containsKey(icon)) {
            ClockDateEraser eraser = dateErasers.get(icon);
            if (eraser == null) {
                eraser = new ClockDateEraser((TextView) icon);
                dateErasers.put(icon, eraser);
            }
            if (dateX > 0.0f) {
                eraser.setSplit(dateX);
            }
            eraser.animateTo(dateCovered && !covered ? 0.0f : 1.0f);
        }

        float targetAlpha = covered ? 0.0f : 1.0f;
        if (fade == null) {
            if (targetAlpha == 1.0f && icon.getTransitionAlpha() == 1.0f) {
                return; // never faded and nothing to fade
            }
            fade = new IconAlphaFade(icon);
            fades.put(icon, fade);
        }
        fade.animateTo(targetAlpha);
    }

    /**
     * X offset inside the clock where its date part starts (the text after a double space), or -1
     * when the clock shows no date or the layout is not usable.
     */
    private static float dateStart(View view) {
        if (!(view instanceof TextView) || !"clock".equals(idName(view))) {
            return -1.0f;
        }
        TextView clock = (TextView) view;
        CharSequence text = clock.getText();
        Layout layout = clock.getLayout();
        if (text == null || layout == null || clock.getLayoutDirection() == View.LAYOUT_DIRECTION_RTL) {
            return -1.0f;
        }
        String string = text.toString();
        int gap = string.indexOf("  ");
        if (gap <= 0 || string.trim().length() <= gap) {
            return -1.0f;
        }
        float x = layout.getPrimaryHorizontal(gap) + clock.getCompoundPaddingLeft() - clock.getScrollX();
        return (x > 0.0f && x < clock.getWidth()) ? x : -1.0f;
    }

    // ---- candidate discovery -------------------------------------------------------------------

    /** Rebuilds {@link #candidates} and restores icons that dropped out of the list. */
    private void collect() {
        dirty = false;
        Set<View> found = new LinkedHashSet<>();
        for (String id : LEAF_IDS) {
            View leaf = find(statusBar, id);
            if (leaf != null) {
                found.add(leaf);
            }
        }
        View row = find(statusBar, PUSHED_GROUP_ID);
        if (row != pushedRow) {
            restoreRow();
            pushedRow = row instanceof ViewGroup ? (ViewGroup) row : null;
        }
        for (String id : GROUP_IDS) {
            View group = find(statusBar, id);
            if (group instanceof ViewGroup) {
                collectGroupChildren(id, (ViewGroup) group, found);
            }
        }
        for (View previous : candidates) {
            if (!found.contains(previous)) {
                IconAlphaFade stale = fades.remove(previous);
                if (stale != null) {
                    stale.cancel();
                }
                previous.setTransitionAlpha(1.0f);
            }
        }
        candidates.clear();
        candidates.addAll(found);
    }

    private void collectGroupChildren(String groupId, ViewGroup group, Set<View> out) {
        for (int i = 0; i < group.getChildCount(); i++) {
            View child = group.getChildAt(i);
            String childName = idName(child);
            // statusIcons and battery are handled on their own (leaf ids or nested group)
            if ("statusIcons".equals(childName) || "battery".equals(childName)) {
                continue;
            }
            if (isMobileGroup(child)) {
                // fade each mobile signal/type/roaming glyph on its own instead of the whole combo
                List<View> glyphs = new ArrayList<>();
                collectGlyphs(child, glyphs);
                out.addAll(glyphs);
                logMobileGlyphsOnce(glyphs);
            } else if (!"system_icons".equals(groupId) || !(child instanceof ViewGroup) || childName == null) {
                out.add(child);
            }
        }
    }

    private void logMobileGlyphsOnce(List<View> glyphs) {
        if (mobileLogged) {
            return;
        }
        mobileLogged = true;
        StringBuilder names = new StringBuilder();
        for (View glyph : glyphs) {
            names.append(idName(glyph)).append(' ');
        }
        XLog.i("independent mobile icons: " + names);
    }

    private static boolean isMobileGroup(View view) {
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        String id = idName(view);
        return view.getClass().getSimpleName().contains("StatusBarMobileView")
                || "mobile_group".equals(id) || "mobile_combo".equals(id)
                || (find(view, "mobile_signal") != null && find(view, "mobile_type") != null);
    }

    private static void collectGlyphs(View view, List<View> out) {
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) {
                collectGlyphs(group.getChildAt(i), out);
            }
        } else if (!(view instanceof Space) && !out.contains(view)) {
            out.add(view);
        }
    }

    // ---- SystemUI id lookup --------------------------------------------------------------------

    /** Finds a SystemUI view by its id name; null when SystemUI has no such id. */
    private static View find(View root, String idName) {
        Integer id = IDS.get(idName);
        if (id == null) {
            id = root.getResources().getIdentifier(idName, "id", SYSTEM_UI);
            IDS.put(idName, id);
        }
        return id == 0 ? null : root.findViewById(id);
    }

    private static String idName(View view) {
        int id = view.getId();
        if (id == View.NO_ID) {
            return null;
        }
        if (NAMES.containsKey(id)) {
            return NAMES.get(id);
        }
        String name;
        try {
            name = view.getResources().getResourceEntryName(id);
        } catch (Throwable ignored) {
            name = null;
        }
        NAMES.put(id, name);
        return name;
    }
}
