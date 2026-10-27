package dev.android.dynamicisland.xposed.hooks;

import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/**
 * An app's own RemoteViews are coloured for the system theme: in the light theme their text is dark. The island's cards
 * stay dark in every theme, so text that would not stand out on the card is lifted, by lightness only (hue and
 * transparency kept), until it reaches a readable contrast against the card. Text that is readable already is left
 * alone, whatever its colour.
 */
public final class DarkRemote {
    /** What the card looks like behind its content: the glass over a dark wallpaper is a little lighter than the fill. */
    public static final int CARD_BACKGROUND = 0xFF202024;
    /** Below this contrast ratio against the card (WCAG's AA for normal text) the text is lifted. */
    public static final float MIN_CONTRAST = 4.5f;
    /** The lifted text aims a bit higher, so that it does not sit right at the limit. */
    private static final float TARGET_CONTRAST = 7.0f;
    private static final float MAX_SATURATION = 0.7f;
    private static final float LIGHTNESS_STEP = 0.01f;

    private DarkRemote() {
    }

    /** Lifts every text colour under {@code root} that is hard to read on the card. */
    public static void lighten(View root) {
        if (root instanceof TextView) {
            TextView text = (TextView) root;
            int lifted = lift(text.getCurrentTextColor());
            if (lifted != text.getCurrentTextColor()) {
                text.setTextColor(lifted);
            }
        }
        if (root instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) root;
            for (int i = 0; i < group.getChildCount(); i++) {
                lighten(group.getChildAt(i));
            }
        }
    }

    /** The colour as it should be on the card; the same colour when it is readable already. */
    public static int lift(int argb) {
        return lift(argb, CARD_BACKGROUND);
    }

    /** The colour as it should be on {@code background}: the same colour when it is readable already. */
    public static int lift(int argb, int background) {
        if (Color.alpha(argb) == 0 || contrast(argb, background) >= MIN_CONTRAST) {
            return argb;
        }
        float[] hsl = new float[3];
        toHsl(argb, hsl);
        hsl[1] = Math.min(hsl[1], MAX_SATURATION);
        int lifted = argb;
        for (float l = hsl[2]; l <= 1.0f; l += LIGHTNESS_STEP) {
            hsl[2] = l;
            lifted = fromHsl(hsl, Color.alpha(argb));
            if (contrast(lifted, background) >= TARGET_CONTRAST) {
                return lifted;
            }
        }
        hsl[2] = 1.0f;
        return fromHsl(hsl, Color.alpha(argb));
    }

    /** WCAG contrast ratio of {@code foreground} (its transparency laid over {@code background}) to the background. */
    public static float contrast(int foreground, int background) {
        float a = Color.alpha(foreground) / 255.0f;
        int shown = Color.rgb(
                Math.round((Color.red(foreground) * a) + (Color.red(background) * (1.0f - a))),
                Math.round((Color.green(foreground) * a) + (Color.green(background) * (1.0f - a))),
                Math.round((Color.blue(foreground) * a) + (Color.blue(background) * (1.0f - a))));
        float l1 = luminance(shown);
        float l2 = luminance(background);
        return (Math.max(l1, l2) + 0.05f) / (Math.min(l1, l2) + 0.05f);
    }

    private static float luminance(int rgb) {
        return (0.2126f * linear(Color.red(rgb))) + (0.7152f * linear(Color.green(rgb))) + (0.0722f * linear(Color.blue(rgb)));
    }

    private static float linear(int channel) {
        float c = channel / 255.0f;
        return c <= 0.03928f ? c / 12.92f : (float) Math.pow((c + 0.055f) / 1.055f, 2.4f);
    }

    private static void toHsl(int argb, float[] out) {
        float r = Color.red(argb) / 255.0f;
        float g = Color.green(argb) / 255.0f;
        float b = Color.blue(argb) / 255.0f;
        float max = Math.max(r, Math.max(g, b));
        float min = Math.min(r, Math.min(g, b));
        float l = (max + min) / 2.0f;
        float h = 0.0f;
        float s = 0.0f;
        float d = max - min;
        if (d > 0.0f) {
            s = d / (1.0f - Math.abs((2.0f * l) - 1.0f));
            if (max == r) {
                h = ((g - b) / d) % 6.0f;
            } else if (max == g) {
                h = ((b - r) / d) + 2.0f;
            } else {
                h = ((r - g) / d) + 4.0f;
            }
            h = (h * 60.0f + 360.0f) % 360.0f;
        }
        out[0] = h;
        out[1] = s;
        out[2] = l;
    }

    private static int fromHsl(float[] hsl, int alpha) {
        float c = (1.0f - Math.abs((2.0f * hsl[2]) - 1.0f)) * hsl[1];
        float x = c * (1.0f - Math.abs(((hsl[0] / 60.0f) % 2.0f) - 1.0f));
        float m = hsl[2] - (c / 2.0f);
        float r;
        float g;
        float b;
        int sector = (int) (hsl[0] / 60.0f) % 6;
        switch (sector) {
            case 0:
                r = c; g = x; b = 0.0f;
                break;
            case 1:
                r = x; g = c; b = 0.0f;
                break;
            case 2:
                r = 0.0f; g = c; b = x;
                break;
            case 3:
                r = 0.0f; g = x; b = c;
                break;
            case 4:
                r = x; g = 0.0f; b = c;
                break;
            default:
                r = c; g = 0.0f; b = x;
                break;
        }
        return Color.argb(alpha, Math.round((r + m) * 255.0f), Math.round((g + m) * 255.0f), Math.round((b + m) * 255.0f));
    }
}
