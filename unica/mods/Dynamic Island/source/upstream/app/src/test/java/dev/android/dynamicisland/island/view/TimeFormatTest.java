package dev.android.dynamicisland.island.view;

import static org.junit.Assert.*;
import java.util.Locale;
import java.util.Random;
import org.junit.Test;

public class TimeFormatTest {
    private static String clock(long ms) {
        if(ms<0)return "0:00";
        long seconds=ms/1000,hours=seconds/3600,minutes=(seconds/60)%60;
        return hours>0 ? String.format(Locale.US,"%d:%02d:%02d",hours,minutes,seconds%60)
                : String.format(Locale.US,"%d:%02d",minutes,seconds%60);
    }
    private static void check(long ms) {
        assertEquals("clock "+ms,clock(ms),TimeFormat.clock(ms));
        long nonnegative=Math.max(0L,ms),seconds=nonnegative/1000;
        String padded=seconds>=3600 ? clock(ms) : String.format(Locale.US,"%02d:%02d",(seconds/60)%60,seconds%60);
        assertEquals("padded "+ms,padded,TimeFormat.padded(ms));
        assertEquals("hundredths "+ms,clock(nonnegative)+String.format(Locale.US,".%02d",(nonnegative%1000)/10),TimeFormat.withHundredths(ms));
    }
    @Test public void formattingKeepsBoundaryValuesAndLargeHourCounts() {
        for(long ms:new long[]{Long.MIN_VALUE,-1000,-1,0,9,10,99,999,1000,59_999,60_000,3_599_999,3_600_000,359_999_999,Long.MAX_VALUE})check(ms);
        Random random=new Random(54);
        for(int i=0;i<500;i++)check(random.nextLong());
    }
    @Test public void timeLabelsRemainAsciiUnderNonLatinDefaultLocales() {
        Locale previous=Locale.getDefault();
        try {
            for(String tag:new String[]{"ar-EG","tr-TR","ko-KR"}) {
                Locale.setDefault(Locale.forLanguageTag(tag));
                for(long ms:new long[]{-1,0,83_450,3_661_999,Long.MAX_VALUE})check(ms);
            }
        } finally {Locale.setDefault(previous);}
    }
}
