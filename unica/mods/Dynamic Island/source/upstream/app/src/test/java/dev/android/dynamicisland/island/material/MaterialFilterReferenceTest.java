package dev.android.dynamicisland.island.material;

import static org.junit.Assert.assertArrayEquals;

import java.util.Random;
import org.junit.Test;

/** The filter steps must give exactly the numbers of the plain, per-pixel version they were speeded up from. */
public class MaterialFilterReferenceTest {
    // ---- the original, unoptimised steps -------------------------------------------------------------------

    private static float[] resample(float[] in, int w, int h, int size, boolean horizontal) {
        int old = horizontal ? w : h, lines = horizontal ? h : w;
        float[] out = new float[(horizontal ? size * h : w * size) * 3];
        float scale = old / (float) size, support = Math.max(1, scale);
        for (int pos = 0; pos < size; pos++) {
            float centre = (pos + .5f) * scale;
            int from = Math.max(0, (int)Math.floor(centre - support + .5f));
            int to = Math.min(old, (int)Math.floor(centre + support + .5f));
            float sum = 0;
            for (int k = from; k < to; k++) sum += Math.max(0, 1 - Math.abs((k + .5f - centre) / support));
            for (int line = 0; line < lines; line++) for (int c = 0; c < 3; c++) {
                float v = 0;
                for (int k = from; k < to; k++) {
                    float weight = Math.max(0, 1 - Math.abs((k + .5f - centre) / support)) / sum;
                    v += in[((horizontal ? line * w + k : k * w + line) * 3) + c] * weight;
                }
                out[((horizontal ? line * size + pos : pos * w + line) * 3) + c] = v;
            }
        }
        return out;
    }

    private static float[] resize(float[] rgb, int w, int h, int nw, int nh) {
        return resample(resample(rgb, w, h, nw, true), nw, h, nh, false);
    }

    private static float at(float[] rgb, int w, int h, int x, int y, int c) {
        return rgb[(Math.max(0, Math.min(h - 1, y)) * w + Math.max(0, Math.min(w - 1, x))) * 3 + c];
    }

    private static float[] taps(float[] rgb, int w, int h, boolean up) {
        float[] out = new float[w * h * 3];
        for (int y = 0; y < h; y++) for (int x = 0; x < w; x++) for (int c = 0; c < 3; c++) {
            float diagonal = at(rgb, w, h, x - 1, y - 1, c) + at(rgb, w, h, x + 1, y - 1, c)
                    + at(rgb, w, h, x - 1, y + 1, c) + at(rgb, w, h, x + 1, y + 1, c);
            float axial = up ? at(rgb, w, h, x - 2, y, c) + at(rgb, w, h, x + 2, y, c)
                    + at(rgb, w, h, x, y - 2, c) + at(rgb, w, h, x, y + 2, c) : 4 * at(rgb, w, h, x, y, c);
            out[(y * w + x) * 3 + c] = (diagonal + axial) / 8;
        }
        return out;
    }

    private static float[] referenceBlur(float[] rgb, int width, int height) {
        float blurScale = .75f * width / 1164f;
        int levels = Math.max(1, Math.min(5, (int)Math.ceil(5 + Math.log(blurScale) / Math.log(2))));
        float relative = blurScale / (float)Math.pow(2, levels - 5);
        int w = Math.max(1, Math.round(width / relative)), h = Math.max(1, Math.round(height / relative));
        float[] a = resize(rgb, width, height, w, h);
        int[] ws = new int[levels], hs = new int[levels];
        for (int i = 0; i < levels; i++) {
            ws[i] = w; hs[i] = h;
            int sw = Math.max(1, w / 2), sh = Math.max(1, h / 2);
            a = taps(resize(a, w, h, sw, sh), sw, sh, false);
            w = sw; h = sh;
        }
        for (int i = levels - 1; i >= 0; i--) {
            a = taps(resize(a, w, h, ws[i], hs[i]), ws[i], hs[i], true);
            w = ws[i]; h = hs[i];
        }
        return resize(a, w, h, width, height);
    }

    // ---- the checks ----------------------------------------------------------------------------------------

    private static MaterialPixels random(int w, int h, long seed) {
        Random rnd = new Random(seed);
        float[] rgb = new float[w * h * 3];
        for (int i = 0; i < rgb.length; i++) rgb[i] = rnd.nextFloat();
        return new MaterialPixels(w, h, rgb);
    }

    @Test
    public void resizeGivesTheNumbersOfTheOriginalFilter() {
        int[][] sizes = {{37, 23, 19, 31}, {37, 23, 74, 46}, {64, 48, 64, 48}, {50, 80, 7, 80}, {50, 80, 50, 9}, {31, 17, 53, 5}, {5, 5, 1, 1}};
        for (int[] s : sizes) {
            MaterialPixels image = random(s[0], s[1], s[0] * 31 + s[1]);
            float[] expected = resize(image.rgb, s[0], s[1], s[2], s[3]);
            MaterialPixels got = image.resize(s[2], s[3]);
            assertArrayEquals(s[0] + "x" + s[1] + " -> " + s[2] + "x" + s[3], expected, java.util.Arrays.copyOf(got.rgb, expected.length), 0f);
        }
    }

    @Test
    public void blurGivesTheNumbersOfTheOriginalFilterWithAndWithoutAPool() {
        int[][] sizes = {{90, 120}, {131, 77}, {270, 48}};
        MaterialPixels.Scratch pool = new MaterialPixels.Scratch();
        for (int[] s : sizes) {
            MaterialPixels image = random(s[0], s[1], s[0] + s[1]);
            float[] expected = referenceBlur(image.rgb, s[0], s[1]);
            assertArrayEquals(s[0] + "x" + s[1], expected, java.util.Arrays.copyOf(image.blur().rgb, expected.length), 0f);
            for (int round = 0; round < 3; round++) { // the pool hands out used arrays: they must not leak into the result
                assertArrayEquals(s[0] + "x" + s[1] + " pooled " + round, expected,
                        java.util.Arrays.copyOf(image.blur(pool).rgb, expected.length), 0f);
            }
        }
    }
}
