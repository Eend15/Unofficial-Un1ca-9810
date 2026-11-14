package dev.android.dynamicisland.island.graphics;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.RectF;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.LinkedHashMap;
import java.util.Map;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** Pixel fingerprints of every embedded animation: speeding the player up must not change a single pixel. */
@RunWith(RobolectricTestRunner.class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = 35)
public class LottieGoldenTest {
    private static final String[] NAMES = {"battery", "battery_charging", "power_save", "bell", "bell_off", "vibrate", "headphones", "camera",
        "mic", "location", "moon", "plane", "torch", "hotspot", "rotate_lock", "download", "speaker", "fingerprint"};
    private static final int FRAMES = 16, CELL = 96;

    static String fingerprint(String name) throws Exception {
        LottiePlayer p = LottiePlayer.parse(LottieData.get(name));
        assertNotNull(name, p);
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        for (float level : new float[] {-1f, 0.45f}) {
            p.setLevel(name.startsWith("battery") || name.equals("power_save") ? level : -1f);
            Bitmap strip = Bitmap.createBitmap(CELL * FRAMES, CELL, Bitmap.Config.ARGB_8888);
            Canvas c = new Canvas(strip);
            c.drawColor(0xFF1B1B1F);
            for (int i = 0; i < FRAMES; i++) {
                float t = (i / (float) (FRAMES - 1)) * (p.durationMillis() - 1f);
                p.draw(c, new RectF(i * CELL, 0, (i + 1) * CELL, CELL), t, i % 3 == 0 ? 0xFFFFFFFF : 0xCC30D158);
            }
            ByteBuffer pixels = ByteBuffer.allocate(strip.getByteCount());
            strip.copyPixelsToBuffer(pixels);
            digest.update(pixels.array());
        }
        StringBuilder out = new StringBuilder();
        for (byte b : digest.digest()) out.append(String.format("%02x", b & 255));
        return out.toString();
    }

    @Test
    public void everyAnimationDrawsExactlyAsBefore() throws Exception {
        Map<String, String> actual = new LinkedHashMap<>();
        for (String name : NAMES) actual.put(name, fingerprint(name));
        if (System.getProperty("printGolden") != null || EXPECTED.isEmpty()) {
            for (Map.Entry<String, String> e : actual.entrySet()) System.out.println("GOLDEN " + e.getKey() + " " + e.getValue());
            return;
        }
        for (String name : NAMES) assertEquals(name, EXPECTED.get(name), actual.get(name));
    }

    private static final Map<String, String> EXPECTED = new LinkedHashMap<>();
    static { EXPECTED.put("battery", "0dfc8af0df1d286027a1b62338dab8c31b6e2354014b5b16eb4f603fe7107a8f"); }
    static { EXPECTED.put("battery_charging", "01d813e9eebfc1c1e210fab4b77e279774edaf80d3d566d24beff29a933878ce"); }
    static { EXPECTED.put("power_save", "880341aeaebf69a7e27fcde69d5a93fdb66657bff8fa6fd06cb3b5e8419341b3"); }
    static { EXPECTED.put("bell", "55671e91d20bb9e330dc8b0c3c3f6113cec599ffb3e712beceb745bb54134c02"); }
    static { EXPECTED.put("bell_off", "0bfb16246b67ec604f71f5396c72e81ce8b99668b9e694894705fc540ca9d056"); }
    static { EXPECTED.put("vibrate", "c0638de25f96649a242f22472c544e138e0f40f27249c3b3979f837b6dfabd54"); }
    static { EXPECTED.put("headphones", "212d6fdb0d327069d74f3d0485fb4cab081fe357ef8d460c9be1167309912d8f"); }
    static { EXPECTED.put("camera", "2ce98e0ac4e74d9b3b5ff4a3034accb5f1f5928bd0e5a8385dacce869b1f5d99"); }
    static { EXPECTED.put("mic", "c61698c7cf6d2330a40b91a72e90c1ef8d85411ca66d0645ada66c1f89a334cf"); }
    static { EXPECTED.put("location", "1357d1efe08cc33074b690a50556565b77943cf173de01395e896d4e0f8b20ef"); }
    static { EXPECTED.put("moon", "33939ccdc3e384587f8b68e24e817f300c04a232a11c237790a6745fbb39dde0"); }
    static { EXPECTED.put("plane", "872ded7945fafa210c380e3d5f8923505c9ec82b6994b3d235ee90d1298e97a9"); }
    static { EXPECTED.put("torch", "cac38552f07d56c1323222ba8c650cc185e9373cdbf8ac352f721e454685be04"); }
    static { EXPECTED.put("hotspot", "3e51e5b4fdfec0063a4a968d451669b13ff5791c007da0bd6b99c063cbcacc95"); }
    static { EXPECTED.put("rotate_lock", "f487edd17d24d718ff6fae7724487f7f263305a98afd169c292600403ba5f2d2"); }
    static { EXPECTED.put("download", "c2c864cf581d24cab0be71ae4171e9392023c8c654c493ec198c621bd26fcfc0"); }
    static { EXPECTED.put("speaker", "f998fd7163e630613dd89135bf75ea854ab874d031d90ae3462b208e2d9e0db3"); }
    static { EXPECTED.put("fingerprint", "0edec40354ac950c3794c942701917c130e62ea23c8ee20c11a9e1bb53be0442"); }
}
