package dev.android.dynamicisland.island.material;

import static org.junit.Assert.*;

import java.util.Arrays;
import java.util.Random;
import org.junit.Test;

public class MaterialScratchTest {
    private static int[] picture(int w, int h, long seed) {
        Random random = new Random(seed);
        int[] pixels = new int[w * h];
        for (int i = 0; i < pixels.length; i++) pixels[i] = 0xff000000 | random.nextInt(0x1000000);
        return pixels;
    }

    @Test public void theFilterGivesTheSameResultWithOrWithoutTheBuffersAndKeepsItsInputIntact() {
        int w = 116, h = 160;
        int[] pixels = picture(w, h, 1);
        MaterialPixels plain = MaterialPixels.fromArgb(pixels, w, h).blur();
        MaterialPixels.Scratch scratch = new MaterialPixels.Scratch();
        for (int round = 0; round < 3; round++) {
            MaterialPixels source = MaterialPixels.fromArgb(pixels, w, h, scratch);
            float[] before = source.rgb.clone();
            MaterialPixels pooled = source.blur(scratch);
            assertArrayEquals("round " + round + ": the input is not touched", before, source.rgb, 0f);
            assertArrayEquals("round " + round + ": the same pixels", plain.rgb, pooled.rgb, 0f);
            source.release(scratch);
        }
        assertEquals(3, scratch.filters());
    }

    @Test public void theBuffersAreReusedAfterTheFirstFilterAndTheResultIsNeverGivenBack() {
        int w = 116, h = 160;
        MaterialPixels.Scratch scratch = new MaterialPixels.Scratch();
        MaterialPixels first = null;
        long freshAfterFirst = 0;
        for (int round = 0; round < 4; round++) {
            MaterialPixels source = MaterialPixels.fromArgb(picture(w, h, round), w, h, scratch);
            MaterialPixels result = source.blur(scratch);
            source.release(scratch);
            if (round == 0) { first = result; freshAfterFirst = scratch.freshBytes(); }
            else assertNotSame("every result is its own array", first.rgb, result.rgb);
        }
        long resultBytes = 4L * w * h * 3;
        assertEquals("later filters allocate only their result", freshAfterFirst + 3 * resultBytes, scratch.freshBytes());
        assertTrue("and take the rest from the pool", scratch.reusedBytes() > 10 * resultBytes);
        float[] kept = first.rgb.clone();
        MaterialPixels another = MaterialPixels.fromArgb(picture(w, h, 99), w, h, scratch);
        another.blur(scratch).release(null);
        another.release(scratch);
        assertArrayEquals("a result handed out earlier is not overwritten by later filters", kept, first.rgb, 0f);
    }

    @Test public void thePoolHoldsOnlyALimitedAmountAndCanBeEmptied() {
        MaterialPixels.Scratch scratch = new MaterialPixels.Scratch();
        java.util.List<MaterialPixels> outstanding = new java.util.ArrayList<>();
        for (int i = 0; i < 40; i++) { // 4.3 MB each, all at once, so each is a different array
            outstanding.add(MaterialPixels.fromArgb(new int[600 * 600], 600, 600, scratch));
        }
        for (MaterialPixels pixels : outstanding) pixels.release(scratch);
        assertTrue("never more than 32 MB waiting: " + scratch.heldBytes(), scratch.heldBytes() <= 32L << 20);
        scratch.clear();
        assertEquals(0, scratch.heldBytes());
    }

    @Test public void argbCanBeWrittenIntoAGivenArrayOfTheRightSizeOnly() {
        MaterialPixels pixels = MaterialPixels.fromArgb(picture(8, 4, 5), 8, 4);
        int[] out = new int[32];
        assertSame(out, pixels.argb(out));
        assertArrayEquals(pixels.argb(), out);
        try {
            pixels.argb(new int[31]);
            fail("a wrong size must be refused");
        } catch (IllegalArgumentException expected) {
            assertTrue(Arrays.stream(out).anyMatch(v -> v != 0));
        }
    }
}
