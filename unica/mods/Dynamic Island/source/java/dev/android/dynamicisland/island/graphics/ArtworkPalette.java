package dev.android.dynamicisland.island.graphics;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/** Immutable, opaque album colours. Pure Java so previews use exactly the runtime extractor. */
public final class ArtworkPalette {
    private static final int HUE_BUCKETS = 12;
    private static final int DETAIL_BUCKETS = 60;
    private static final float FAMILY_RADIUS = 42f;
    private static final ArtworkPalette NEUTRAL =
            new ArtworkPalette(0xFFFFFFFF, 0xFF858585, 0xFFBDBDBD, 0xFFF5F5F5);

    /** Dominant accent, also used by the expanded card's existing glow. */
    public final int primary;
    /** Gradient stops at positions 0, .5 and 1 respectively. */
    public final int first, middle, last;

    private ArtworkPalette(int primary, int first, int middle, int last) {
        this.primary = primary | 0xFF000000;
        this.first = first | 0xFF000000;
        this.middle = middle | 0xFF000000;
        this.last = last | 0xFF000000;
    }

    /** A single opaque colour, including when the supplied colour has an alpha channel. */
    public static ArtworkPalette solid(int color) {
        return new ArtworkPalette(color, color, color, color);
    }

    /**
     * Extracts a dominant hue and its real neighbouring artwork colours without modifying pixels.
     * Transparent/low-alpha, near-grey and dark pixels do not vote. The primary retains the old
     * 12-bin saturation * value vote, 15% saturation boost and .85 value floor. Detail colours
     * must be within 42 degrees of that hue and occupy a meaningful share of the family; a
     * contrasting logo or isolated highlight cannot turn the gradient into a rainbow.
     *
     * <p>Stops are ordered along the short hue arc (including across red's 360/0 seam). When
     * the artwork has only one usable colour, a bounded analogous hue/tonal expansion replaces
     * identical stops. Real hue anchors remain in the same dominant family, with stronger
     * saturation/lightness contrast for small waveforms. Muted artwork needs broad pixel
     * support to recover colour; true grayscale stays neutral with a white primary.
     */
    public static ArtworkPalette fromPixels(int[] pixels) {
        if (pixels == null || pixels.length == 0) {
            return NEUTRAL;
        }
        Bin[] dominant = bins(HUE_BUCKETS);
        float[] hsv = new float[3];
        for (int pixel : pixels) {
            if (!usable(pixel, hsv)) {
                continue;
            }
            dominant[Math.min(HUE_BUCKETS - 1, (int) (hsv[0] / 30f))]
                    .add(pixel, hsv[1] * hsv[2] * ((pixel >>> 24) / 255f));
        }
        int top = 0;
        for (int i = 1; i < dominant.length; i++) {
            if (dominant[i].weight > dominant[top].weight) {
                top = i;
            }
        }
        if (dominant[top].weight <= .5) {
            return muted(pixels);
        }
        int dominantColor = dominant[top].color();
        toHsv(dominantColor, hsv);
        float center = hsv[0];
        int primary = visible(dominantColor);

        Bin[] detail = bins(DETAIL_BUCKETS);
        double familyWeight = 0;
        for (int pixel : pixels) {
            if (!usable(pixel, hsv) || Math.abs(hueDelta(center, hsv[0])) > FAMILY_RADIUS) {
                continue;
            }
            float weight = hsv[1] * hsv[2] * ((pixel >>> 24) / 255f);
            detail[Math.min(DETAIL_BUCKETS - 1, (int) (hsv[0] / 6f))].add(pixel, weight);
            familyWeight += weight;
        }
        List<Bin> family = new ArrayList<>();
        for (Bin bin : detail) {
            // Require support, not merely a saturated outlier. Never include an enemy hue.
            if (bin.weight >= Math.max(.5, familyWeight * .04)) {
                toHsv(bin.color(), hsv);
                bin.offset = hueDelta(center, hsv[0]);
                family.add(bin);
            }
        }
        if (family.isEmpty()) {
            return tonal(primary);
        }
        family.sort(Comparator.comparingDouble(bin -> bin.offset));
        int first = visible(family.get(0).color());
        int last = visible(family.get(family.size() - 1).color());
        double total = 0;
        for (Bin bin : family) {
            total += bin.weight;
        }
        double cumulative = 0;
        int middle = first;
        for (Bin bin : family) {
            cumulative += bin.weight;
            if (cumulative >= total * .5) {
                middle = visible(bin.color());
                break;
            }
        }
        if (channelDistance(first, last) < 24) {
            return tonal(primary);
        }
        if (family.size() == 2) {
            // Two real colours need a midpoint, not a half-gradient plateau at the median.
            middle = first; // expressive() interpolates after styling both real anchors.
        }
        return expressive(primary, first, middle, last, false);
    }

    /** Clamped, per-channel interpolation through the three stops; NaN means position zero. */
    public int colorAt(float position) {
        if (Float.isNaN(position) || position <= 0f) {
            return first;
        }
        if (position >= 1f) {
            return last;
        }
        return position <= .5f ? mix(first, middle, position * 2f)
                : mix(middle, last, (position - .5f) * 2f);
    }

    @Override
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ArtworkPalette)) {
            return false;
        }
        ArtworkPalette palette = (ArtworkPalette) other;
        return primary == palette.primary && first == palette.first
                && middle == palette.middle && last == palette.last;
    }

    @Override
    public int hashCode() {
        int result = primary;
        result = 31 * result + first;
        result = 31 * result + middle;
        return 31 * result + last;
    }

    private static ArtworkPalette tonal(int primary) {
        return expressive(primary, primary, primary, primary, false);
    }

    /**
     * Preserve the sampled hue anchors but make a small waveform visibly graded. Narrow art
     * families get at most a 22-degree analogous extension on either side of their own hue;
     * there is no absolute/fixed colour choice. Existing broad families are not widened.
     */
    private static ArtworkPalette expressive(int primary, int first, int middle, int last, boolean muted) {
        float[] p = new float[3];
        float[] a = new float[3];
        float[] b = new float[3];
        float[] m = new float[3];
        toHsv(primary, p);
        toHsv(first, a);
        toHsv(last, b);
        toHsv(middle, m);
        float low = hueDelta(p[0], a[0]);
        float high = hueDelta(p[0], b[0]);
        if (high - low < 36f) {
            // Expand around the real arc's midpoint, not a biased dominant bucket edge.
            float midpoint = (low + high) * .5f;
            low = Math.max(-FAMILY_RADIUS, midpoint - 22f);
            high = Math.min(FAMILY_RADIUS, midpoint + 22f);
        }
        float saturation = Math.max(muted ? .40f : .54f, p[1]);
        int start = readable(fromHsv(wrapHue(p[0] + low),
                Math.min(muted ? .64f : .92f, Math.max(a[1], saturation * 1.25f)), .73f));
        int end = readable(fromHsv(wrapHue(p[0] + high),
                Math.max(.30f, Math.min(.46f, Math.max(b[1], saturation) * .55f)), 1f));
        int center = readable(fromHsv(m[0], Math.max(muted ? .30f : .43f, m[1]), .90f));
        // Two anchors (or one) use an actual midpoint, avoiding a flat first/second half.
        if (first == middle || middle == last || first == last) {
            center = readable(mix(start, end, .5f));
        }
        return new ArtworkPalette(primary, start, center, end);
    }

    /** Recover a substantial muted family, not a tiny coloured mark on grayscale artwork. */
    private static ArtworkPalette muted(int[] pixels) {
        Bin[] family = bins(HUE_BUCKETS);
        int[] counts = new int[HUE_BUCKETS];
        int eligible = 0;
        float[] hsv = new float[3];
        for (int pixel : pixels) {
            if ((pixel >>> 24) < 128) {
                continue;
            }
            eligible++;
            toHsv(pixel, hsv);
            if (hsv[1] < .08f || hsv[2] < .12f) {
                continue;
            }
            int bucket = Math.min(HUE_BUCKETS - 1, (int) (hsv[0] / 30f));
            family[bucket].add(pixel, hsv[1] * hsv[2]);
            counts[bucket]++;
        }
        int top = 0;
        for (int i = 1; i < HUE_BUCKETS; i++) {
            if (family[i].weight > family[top].weight) {
                top = i;
            }
        }
        if (counts[top] < Math.max(4, eligible * .12f) || family[top].weight <= .5) {
            return NEUTRAL;
        }
        int primary = visible(family[top].color());
        return expressive(primary, primary, primary, primary, true);
    }

    private static float wrapHue(float hue) {
        return (hue + 360f) % 360f;
    }

    private static boolean usable(int pixel, float[] hsv) {
        if ((pixel >>> 24) < 128) {
            return false;
        }
        toHsv(pixel, hsv);
        return hsv[1] >= .22f && hsv[2] >= .3f;
    }

    private static int visible(int color) {
        float[] hsv = new float[3];
        toHsv(color, hsv);
        return readable(fromHsv(hsv[0], Math.min(1f, hsv[1] * 1.15f), Math.max(.85f, hsv[2])));
    }

    /** Matches Colors.readableOnBlack without depending on Android's Color class. */
    private static int readable(int color) {
        for (int i = 0; i < 12 && luminance(color) < .22; i++) {
            color = mix(color, 0xFFFFFFFF, .12f);
        }
        return color;
    }

    private static double luminance(int color) {
        return .2126 * linear((color >>> 16) & 255)
                + .7152 * linear((color >>> 8) & 255) + .0722 * linear(color & 255);
    }

    private static double linear(int channel) {
        double value = channel / 255.0;
        return value <= .04045 ? value / 12.92 : Math.pow((value + .055) / 1.055, 2.4);
    }

    private static int channelDistance(int a, int b) {
        return Math.abs(((a >>> 16) & 255) - ((b >>> 16) & 255))
                + Math.abs(((a >>> 8) & 255) - ((b >>> 8) & 255))
                + Math.abs((a & 255) - (b & 255));
    }

    private static int mix(int a, int b, float amount) {
        float keep = 1f - amount;
        return rgb(Math.round(((a >>> 16) & 255) * keep + ((b >>> 16) & 255) * amount),
                Math.round(((a >>> 8) & 255) * keep + ((b >>> 8) & 255) * amount),
                Math.round((a & 255) * keep + (b & 255) * amount));
    }

    private static float hueDelta(float from, float to) {
        return (to - from + 540f) % 360f - 180f;
    }

    private static void toHsv(int color, float[] hsv) {
        float r = ((color >>> 16) & 255) / 255f;
        float g = ((color >>> 8) & 255) / 255f;
        float b = (color & 255) / 255f;
        float max = Math.max(r, Math.max(g, b));
        float min = Math.min(r, Math.min(g, b));
        float delta = max - min;
        float hue = delta == 0 ? 0 : max == r ? ((g - b) / delta) % 6f
                : max == g ? (b - r) / delta + 2f : (r - g) / delta + 4f;
        hsv[0] = (hue * 60f + 360f) % 360f;
        hsv[1] = max == 0 ? 0 : delta / max;
        hsv[2] = max;
    }

    private static int fromHsv(float hue, float saturation, float value) {
        float chroma = value * saturation;
        float x = chroma * (1f - Math.abs((hue / 60f) % 2f - 1f));
        float m = value - chroma;
        float r = 0, g = 0, b = 0;
        if (hue < 60) { r = chroma; g = x; }
        else if (hue < 120) { r = x; g = chroma; }
        else if (hue < 180) { g = chroma; b = x; }
        else if (hue < 240) { g = x; b = chroma; }
        else if (hue < 300) { r = x; b = chroma; }
        else { r = chroma; b = x; }
        return rgb(Math.round((r + m) * 255f), Math.round((g + m) * 255f), Math.round((b + m) * 255f));
    }

    private static int rgb(int r, int g, int b) {
        return 0xFF000000 | (r << 16) | (g << 8) | b;
    }

    private static Bin[] bins(int count) {
        Bin[] bins = new Bin[count];
        for (int i = 0; i < count; i++) {
            bins[i] = new Bin();
        }
        return bins;
    }

    private static final class Bin {
        double weight, red, green, blue;
        float offset;

        void add(int color, double amount) {
            weight += amount;
            red += ((color >>> 16) & 255) * amount;
            green += ((color >>> 8) & 255) * amount;
            blue += (color & 255) * amount;
        }

        int color() {
            return rgb((int) Math.round(red / weight), (int) Math.round(green / weight),
                    (int) Math.round(blue / weight));
        }
    }
}
