package dev.android.dynamicisland.island.window;

import static org.junit.Assert.*;
import dev.android.dynamicisland.island.material.MaterialPixels;
import org.junit.Test;

public class MaterialCaptureTest {
    @Test public void aFullDisplayCropIsSampledWithFewRows() {
        float scale=MaterialCapture.sampleScale(1080,2340);
        assertEquals(480,Math.round(2340*scale));
        assertTrue(Math.round(1080*scale)<=420);
    }

    @Test public void aCardCropKeepsTheUsualSampleWidth() {
        float scale=MaterialCapture.sampleScale(1080,700);
        assertEquals(420,Math.round(1080*scale));
        assertTrue(Math.round(700*scale)<=480);
    }

    @Test public void aSmallCropIsNeverEnlarged() {
        assertEquals(1f,MaterialCapture.sampleScale(300,200),0f);
    }

    /** The smaller sample must look the same once the GPU stretches it: the blur radius follows the image width. */
    @Test public void aSmallerSampleOfTheSameScreenBlursToTheSameLook() {
        MaterialPixels big=blurred(420,910),small=blurred(221,480);
        double worst=0;
        for(int y=0;y<910;y+=7) for(int x=0;x<420;x+=5) {
            for(int c=0;c<3;c++) worst=Math.max(worst,Math.abs(sample(big,x/420f,y/910f,c)-sample(small,x/420f,y/910f,c)));
        }
        assertTrue("largest difference "+worst,worst<.06);
    }

    private static MaterialPixels blurred(int w,int h) {
        float[] rgb=new float[w*h*3];
        for(int y=0;y<h;y++) for(int x=0;x<w;x++) {
            float fx=x/(float)w,fy=y/(float)h;
            float[] c={fx,fy,.5f+.5f*(float)Math.sin(fx*9+fy*5)};
            if(fx>.1f&&fx<.3f&&fy>.05f&&fy<.09f) c=new float[]{1,1,1};
            if(fx>.5f&&fx<.55f&&fy>.2f&&fy<.5f) c=new float[]{0,0,0};
            for(int k=0;k<3;k++) rgb[(y*w+x)*3+k]=c[k];
        }
        return new MaterialPixels(w,h,rgb).blur();
    }

    private static float sample(MaterialPixels p,float u,float v,int c) {
        return p.sample(u*p.width-.5f,v*p.height-.5f,c);
    }
}
