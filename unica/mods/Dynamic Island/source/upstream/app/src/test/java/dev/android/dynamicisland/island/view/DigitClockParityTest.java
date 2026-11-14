package dev.android.dynamicisland.island.view;

import static org.junit.Assert.assertEquals;

import android.graphics.Paint;
import android.graphics.Typeface;
import java.util.Random;
import java.util.regex.Pattern;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** The clock layout was made allocation-free; it must still decide and measure exactly as before. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class DigitClockParityTest {
    private static final Pattern ORIGINAL = Pattern.compile("-?\\d{1,2}(:\\d{2}){1,2}(\\.\\d{2})?");

    @Test
    public void theHandWrittenMatcherAgreesWithTheRegexOnEveryShortString() {
        String alphabet = "-0129:. a";
        int checked = 0;
        for (int length = 0; length <= 8; length++) {
            long total = (long) Math.pow(alphabet.length(), length);
            // all strings up to length 6, a large seeded sample of the longer ones
            Random random = new Random(length);
            long count = length <= 6 ? total : 200_000;
            for (long k = 0; k < count; k++) {
                StringBuilder text = new StringBuilder(length);
                long rest = k;
                for (int i = 0; i < length; i++) {
                    int pick = length <= 6 ? (int) (rest % alphabet.length()) : random.nextInt(alphabet.length());
                    rest /= alphabet.length();
                    text.append(alphabet.charAt(pick));
                }
                String candidate = text.toString();
                assertEquals("\"" + candidate + "\"", ORIGINAL.matcher(candidate).matches(), DigitClock.isClock(candidate));
                checked++;
            }
        }
        for (String real : new String[] {"0:00", "12:34", "1:02:03", "-0:05", "12:04:09", "1:05.37", "12:34:56.78", "00:01.50", "123:45", "1:2", "", "-", "1:23:45:67"}) {
            assertEquals(real, ORIGINAL.matcher(real).matches(), DigitClock.isClock(real));
        }
        assertEquals(true, checked > 500_000);
        assertEquals(false, DigitClock.isClock(null));
    }

    @Test
    public void widthsAreTheSumOfTheCellsAsBefore() {
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        for (float size : new float[] {12f, 17.5f, 30f}) {
            for (Typeface face : new Typeface[] {Typeface.DEFAULT, Typeface.DEFAULT_BOLD, Typeface.MONOSPACE}) {
                paint.setTextSize(size);
                paint.setTypeface(face);
                float widest = 0;
                for (char d = '0'; d <= '9'; d++) widest = Math.max(widest, paint.measureText(String.valueOf(d)));
                for (String text : new String[] {"12:34", "-0:05", "1:02:03", "12:34:56.78", "7:07.07", "hello", "Playing"}) {
                    float expected = 0;
                    if (!ORIGINAL.matcher(text).matches()) {
                        expected = paint.measureText(text);
                    } else {
                        for (int i = 0; i < text.length(); i++) {
                            char ch = text.charAt(i);
                            expected += (ch >= '0' && ch <= '9') ? widest : paint.measureText(String.valueOf(ch));
                        }
                    }
                    assertEquals(text + " @" + size, expected, DigitClock.width(paint, text), 0f);
                }
            }
        }
    }
}
