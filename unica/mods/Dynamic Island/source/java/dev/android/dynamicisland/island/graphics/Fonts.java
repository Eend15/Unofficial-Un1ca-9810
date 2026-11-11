package dev.android.dynamicisland.island.graphics;

import android.graphics.Typeface;
import dev.android.dynamicisland.xposed.Refl;
import java.util.Objects;

/**
 * Samsung UI uses the "sec" system family, which can differ from Typeface.DEFAULT (Roboto).
 * Keep flip-font selection ahead of that family; unsupported devices fall back through Android.
 */
public final class Fonts {
    /** From this weight up a flip font is drawn bold. */
    private static final int BOLD_FROM_WEIGHT = 600;
    private static volatile Family current;

    private Fonts() {
    }

    /** Cached identity of the actual UI family, including in-place changes to flip-font native handles. */
    public static Object key() {
        return family();
    }

    /** Default typeface at the given CSS-style weight (100..900); flip fonts only offer regular and bold. */
    public static Typeface of(int weight) {
        Family font = family();
        return font.flip ? (weight >= BOLD_FROM_WEIGHT ? font.bold : font.regular)
                : Typeface.create(font.regular, weight, false);
    }

    public static String source() { return family().source; }

    private static Family family() {
        boolean flip = usesFlipFont();
        Typeface regular = flip ? Typeface.DEFAULT : Typeface.create("sec", Typeface.NORMAL);
        Typeface bold = flip ? Typeface.DEFAULT_BOLD : null;
        Object regularKey = handle(regular), boldKey = bold == null ? null : handle(bold);
        Family known = current;
        if (known != null && known.matches(regular, bold, regularKey, boldKey, flip)) return known;
        synchronized (Fonts.class) {
            known = current;
            if (known == null || !known.matches(regular, bold, regularKey, boldKey, flip)) {
                current = known = new Family(regular, bold, regularKey, boldKey, flip);
            }
            return known;
        }
    }

    private static Object handle(Typeface font) {
        Object nativeHandle = Refl.get(font, "native_instance");
        return nativeHandle == null ? font : nativeHandle;
    }

    private static final class Family {
        final Typeface regular, bold;
        final Object regularKey, boldKey;
        final boolean flip;
        final String source;
        Family(Typeface regular, Typeface bold, Object regularKey, Object boldKey, boolean flip) {
            this.regular = regular; this.bold = bold;
            this.regularKey = regularKey; this.boldKey = boldKey; this.flip = flip;
            source = flip ? "user-selected system font" : regular.equals(Typeface.DEFAULT)
                    ? "system default (sec unavailable or identical)" : "Samsung sec";
        }
        boolean matches(Typeface regular, Typeface bold, Object regularKey, Object boldKey, boolean flip) {
            return this.regular == regular && this.bold == bold && this.flip == flip
                    && Objects.equals(this.regularKey, regularKey) && Objects.equals(this.boldKey, boldKey);
        }
    }

    private static boolean usesFlipFont() {
        return Boolean.TRUE.equals(Refl.getStatic(Typeface.class, "isFlipFontUsed"));
    }
}
