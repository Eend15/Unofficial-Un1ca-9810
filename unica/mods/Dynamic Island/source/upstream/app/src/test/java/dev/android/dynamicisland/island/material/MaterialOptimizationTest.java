package dev.android.dynamicisland.island.material;

import static org.junit.Assert.*;
import java.security.MessageDigest;
import java.util.Random;
import org.junit.Test;

/** Exact pixel fingerprints captured from b191bf3 before changing the filter or response workspace. */
public class MaterialOptimizationTest {
    private static int[] picture(int w,int h,int pattern) {
        int[] pixels=new int[w*h];Random random=new Random(1000L+w*31L+h);
        for(int y=0;y<h;y++)for(int x=0;x<w;x++) pixels[y*w+x]=switch(pattern) {
            case 1 -> 0xff000000;
            case 2 -> 0xffffffff;
            case 3 -> 0xff000000|((x*255/w)<<16)|((y*255/h)<<8)|((x*7+y*13)&255);
            default -> 0xff000000|random.nextInt(0x1000000);
        };
        return pixels;
    }
    private static void put(MessageDigest digest,int value) {
        digest.update((byte)(value>>>24));digest.update((byte)(value>>>16));
        digest.update((byte)(value>>>8));digest.update((byte)value);
    }
    private static String hash(float[] rgb,int[] argb) throws Exception {
        MessageDigest digest=MessageDigest.getInstance("SHA-256");
        if(rgb!=null)for(float v:rgb)put(digest,Float.floatToIntBits(v));
        for(int v:argb)put(digest,v);
        StringBuilder out=new StringBuilder();
        for(byte v:digest.digest())out.append(String.format(java.util.Locale.ROOT,"%02x",v&255));
        return out.toString();
    }
    @Test public void optimizedFilterMatchesOriginalFloatAndArgbFingerprints() throws Exception {
        String[][] cases={
            {"1","1","0","3ebd8f7918e6dadf884d5621a5094957d49c51b40576fd2f5fc782a5a411451e"},
            {"2","3","0","c99e517b3560d289916aacb0e028bd81b75204c83861e251a1c60cdd99439a55"},
            {"17","11","0","73ecd80ef8e86ac934d3f2300061325667fa4f9f8d23452825129dc2674c6199"},
            {"222","480","0","7141095872a1742e1eb63ccad27ce776aa975b97186d6f14cf135ea79ec0604b"},
            {"420","160","3","e13ac0a9426ab848eb3d184460a57e442135e7d4585a97da209f54cfec35be33"},
            {"420","480","0","ceaa9c53b628cab178b460c9681a7ec6f49586f478896169995724d842e8d953"},
            {"84","60","1","733a76079e92d7c772af59d83917ecf9dc98c56946c661724ba327f5e2bf3cc3"},
            {"84","60","2","21cfb7d39127fbb859c78f48397bb9fab8a1713611e32ab5d58ecf0377a2de94"}
        };
        MaterialPixels.Scratch scratch=new MaterialPixels.Scratch();
        for(String[] row:cases) {
            int w=Integer.parseInt(row[0]),h=Integer.parseInt(row[1]),pattern=Integer.parseInt(row[2]);
            MaterialPixels input=MaterialPixels.fromArgb(picture(w,h,pattern),w,h,scratch);
            MaterialPixels filtered=input.blur(scratch);input.release(scratch);
            assertEquals(w+"x"+h+" pattern="+pattern,row[3],hash(filtered.rgb,filtered.argb()));
        }
    }
    @Test public void sharedResponseWorkspaceMatchesOriginalAcrossPatternsAndGrowingOrShrinkingGrids() throws Exception {
        String[][] cases={
            {"0","8","9f6e401440bc8be1c6bc0febf580368c065b37eb32f94ed9df8dc7150bb30ee3"},
            {"0","16","4dc320ce41402185b830314757d3f85a3ab4f7964d108240086abcefc9683a81"},
            {"0","32","6cbbc4b2158723ea04fc08857086a90c3694932acd99d382107db04e8d011a78"},
            {"1","8","05501eda04ec22a1efb701166a20df060f56db4704ab706da16c19c512958c24"},
            {"1","16","9ee1235a6ff0b868690ddfc04a4eda5eefda4377f5c29ef25197b786b08370f9"},
            {"1","32","aee19170be52e60134c77aaee10c034b581a69e12a90548804ac023845dada18"},
            {"2","8","c3ccb347adc97109de4a15b51d4e2acfbc8971c7a7f81cab9cce06b4f8cd24fa"},
            {"2","16","3392077a76e819d3ee7bb0ceffe0a02c249a6378bd7df6eb41d95b68c9151783"},
            {"2","32","5d1fdcdfe9be5640acb78fe01d144436c7ee185f53704ac68f1d8fd499c4885f"},
            {"3","8","3e7de30b1d3fd850ac6dd902b963469504414aa3000b96e525b0dd139bd59146"},
            {"3","16","1bd91ec98167e8ca2a93d29a757208ee60d14b7bb07125052b76657fbe9db68c"},
            {"3","32","2358915c40f73ddfd29f0fc3790fec5dee7d9391487ed1e48e9463209778e297"}
        };
        MaterialPixels.ResponseScratch scratch=new MaterialPixels.ResponseScratch();
        // Repeat in reverse to catch stale values in arrays retained from a larger grid.
        for(int pass=0;pass<2;pass++)for(int step=0;step<cases.length;step++) {
            String[] row=cases[pass==0 ? step : cases.length-1-step];
            int pattern=Integer.parseInt(row[0]),h=Integer.parseInt(row[1]);
            MaterialPixels input=MaterialPixels.fromArgb(picture(84,60,pattern),84,60);
            int[] field=input.response(-7,-4,93,70,40,h,scratch);
            assertEquals(row[2],hash(null,field));
            assertArrayEquals(input.response(-7,-4,93,70,40,h),field);
        }
        scratch.clear();
        MaterialPixels white=MaterialPixels.fromArgb(picture(84,60,2),84,60);
        assertArrayEquals(white.response(0,0,84,60,40,8),white.response(0,0,84,60,40,8,scratch));
    }
}
