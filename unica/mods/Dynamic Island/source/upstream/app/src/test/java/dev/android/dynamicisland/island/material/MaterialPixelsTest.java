package dev.android.dynamicisland.island.material;

import static org.junit.Assert.*;
import java.util.Arrays;
import org.junit.Test;

public class MaterialPixelsTest {
    @Test public void filteringPreservesFlatColoursAndKeepsBrightEdgeResponseContinuous() {
        int w=84,h=60;float[] rgb=new float[w*h*3];
        float previous=0;
        for(int level=0;level<=32;level++) {
            float v=level/32f;Arrays.fill(rgb,v);
            MaterialPixels image=new MaterialPixels(w,h,rgb).blur();
            for(float c:image.rgb)assertEquals(v,c,2e-6);
            int encoded=image.response(0,0,w,h,40,28)[0];
            float response=((((encoded>>16)&255)*256)+(encoded>>8&255))/65535f;
            assertTrue(response>=previous);assertTrue(response-previous<.11f);previous=response;
        }
        assertEquals(1,previous,1e-5);
    }
    @Test public void filteringSpreadsImpulseWithoutIntroducingUnblurredSamples() {
        float[] rgb=new float[116*90*3];
        rgb[(45*116+58)*3]=1;
        MaterialPixels out=new MaterialPixels(116,90,rgb).blur();
        assertTrue(out.rgb[(45*116+58)*3]>0);
        assertTrue(out.rgb[(45*116+58)*3]<.1f);
        assertTrue(out.rgb[(45*116+63)*3]>0);
        for(int i=0;i<out.rgb.length;i++) {
            assertTrue(Float.isFinite(out.rgb[i]));assertTrue(out.rgb[i]>=0&&out.rgb[i]<=1);
            if(i%3!=0)assertEquals(0,out.rgb[i],0);
        }
    }
}
