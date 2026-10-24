package dev.android.dynamicisland.xposed.hooks;

import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.view.View;
import android.view.ViewParent;
import de.robv.android.xposed.XC_MethodHook;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.SafeHook;

/**
 * Keeps the shade cards that belong to the island (live cards, media player) dark when the system
 * theme is light. The island's cards are always dark, so the stock light background, tint and colour
 * curve would make their content unreadable. Rows of other apps are never touched. All hooks run on
 * the System UI main thread.
 */
public final class ShadeCardTheme {
    private static final String ROW_CLASS = "com.android.systemui.statusbar.notification.row.ActivatableNotificationView";
    private static final String BACKGROUND_CLASS = "com.android.systemui.statusbar.notification.row.NotificationBackgroundView";
    private static final String COLOR_PICKER_CLASS = "noticolorpicker.NotificationColorPicker";
    /** Row methods during which the row (re)builds its background and the colour picker is consulted. */
    private static final String[] BACKGROUND_BUILD_METHODS = {"initBlurBackground", "keepLandBlurClipInfo"};

    private static final int DARK_FILL = 0xF0202022;
    /** Samsung colour-curve coefficients that give a dark card; the preset's alpha goes in front of them. */
    private static final float[] DARK_COEFFICIENTS = {0.4f, -23.0f, 5.0f, 250.0f, 21.6f, 141.5f};
    private static final int PRESET_LENGTH = 1 + DARK_COEFFICIENTS.length;
    /** Index of the last coefficient; at or above {@link #LIGHT_THRESHOLD} the preset is the light one. */
    private static final int LAST_COEFFICIENT = 5;
    private static final float LIGHT_THRESHOLD = 100.0f;
    /** How many ancestors above a background view are searched for its notification row. */
    private static final int MAX_ANCESTORS = 3;

    private static Class<?> rowClass;
    /** The row whose background is being built right now, so the colour-curve hook knows whose it is. */
    private static final ThreadLocal<View> BUILDING = new ThreadLocal<>();

    private ShadeCardTheme() {
    }

    static void install(ClassLoader cl) {
        rowClass = Refl.findClass(ROW_CLASS, cl);
        if (rowClass == null) {
            return;
        }
        for (String method : BACKGROUND_BUILD_METHODS) {
            Refl.hookAll(cl, ROW_CLASS, method, new SafeHook("card theme " + method) {
                @Override
                protected void before(XC_MethodHook.MethodHookParam param) {
                    BUILDING.set((View) param.thisObject);
                }

                @Override
                protected void after(XC_MethodHook.MethodHookParam param) {
                    BUILDING.remove();
                }
            });
        }
        Refl.hookAll(cl, COLOR_PICKER_CLASS, "getColorCurvePreset", SafeHook.after("card theme curve", ShadeCardTheme::darkenCurve));
        Refl.hookAll(cl, BACKGROUND_CLASS, "setCustomBackground", SafeHook.after("card theme fill", param -> fill((View) param.thisObject)));
        Refl.hookAll(cl, BACKGROUND_CLASS, "setTint", SafeHook.before("card theme tint", ShadeCardTheme::dropTint));
    }

    /**
     * After {@code NotificationColorPicker.getColorCurvePreset}: while an island row builds its
     * background, a light preset is swapped for the dark coefficients (alpha kept), so the text and icon
     * colours derived for the card suit a dark surface.
     */
    private static void darkenCurve(XC_MethodHook.MethodHookParam p) {
        float[] preset = (float[]) p.getResult();
        View row = BUILDING.get();
        boolean light = preset != null && preset.length >= PRESET_LENGTH && preset[LAST_COEFFICIENT] >= LIGHT_THRESHOLD;
        if (!light || row == null || !isIslandRow(row)) {
            return;
        }
        float[] dark = new float[PRESET_LENGTH];
        dark[0] = preset[0];
        System.arraycopy(DARK_COEFFICIENTS, 0, dark, 1, DARK_COEFFICIENTS.length);
        p.setResult(dark);
    }

    /**
     * Before {@code NotificationBackgroundView.setTint}: an island row in light theme gets tint 0, since
     * the stock light tint would wash out the dark fill from {@link #fill}.
     */
    private static void dropTint(XC_MethodHook.MethodHookParam p) {
        View row = rowOf((View) p.thisObject);
        if (row != null && isLightTheme(row) && isIslandRow(row)) {
            p.args[0] = 0;
        }
    }

    /** Rebuilds the row's background on the next main-thread turn so the hooks above get to apply. */
    static void refresh(View row) {
        row.post(() -> {
            Refl.call(row, "initBackground", new Object[0]);
            Refl.call(row, "updateBackground", new Object[0]);
            row.invalidate();
        });
    }

    private static boolean isIslandRow(View row) {
        return ShadeLiveCards.isCardRow(row) || ShadeMediaPlayer.activeRow(row);
    }

    private static boolean isLightTheme(View v) {
        int nightMode = v.getResources().getConfiguration().uiMode & Configuration.UI_MODE_NIGHT_MASK;
        return nightMode != Configuration.UI_MODE_NIGHT_YES;
    }

    /** Paints the card background of an island row with {@link #DARK_FILL}, unless it is fully transparent. */
    public static void fill(View backgroundView) {
        View row = rowOf(backgroundView);
        if (row == null || !isLightTheme(row) || !isIslandRow(row)) {
            return;
        }
        Object background = Refl.get(backgroundView, "mBackground");
        if (!(background instanceof LayerDrawable) || ((LayerDrawable) background).getNumberOfLayers() == 0) {
            return;
        }
        Drawable base = ((LayerDrawable) background).getDrawable(0);
        if (!(base instanceof GradientDrawable)) {
            return;
        }
        GradientDrawable gradient = (GradientDrawable) base.mutate();
        int[] colors = gradient.getColors();
        if (colors == null || isInvisible(colors)) {
            return;
        }
        gradient.setColors(new int[]{DARK_FILL, DARK_FILL});
        backgroundView.invalidate();
    }

    private static boolean isInvisible(int[] argb) {
        for (int color : argb) {
            if (color >>> 24 != 0) {
                return false;
            }
        }
        return true;
    }

    /** The notification row that is {@code v} or one of its few nearest ancestors; null for other views. */
    private static View rowOf(View v) {
        if (rowClass.isInstance(v)) {
            return v;
        }
        ViewParent ancestor = v.getParent();
        for (int level = 0; level < MAX_ANCESTORS && ancestor instanceof View; level++) {
            if (rowClass.isInstance(ancestor)) {
                return (View) ancestor;
            }
            ancestor = ancestor.getParent();
        }
        return null;
    }
}
