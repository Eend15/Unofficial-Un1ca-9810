package dev.android.dynamicisland.island.material;

import android.graphics.Path;
import android.graphics.RectF;

/** Content clipping for the same lp/G2 perimeter evaluated analytically by frosted.agsl. */
public final class MaterialShape {
    private static final int STEPS=48;
    private static final int POWERS=16;
    private static final float[][] SINE=new float[POWERS+1][STEPS+1],COSINE=new float[POWERS+1][STEPS+1];
    static {
        for(int n=0;n<=POWERS;n++) {
            double power=2+.4*n/POWERS;
            for(int i=0;i<=STEPS;i++) {
                double a=Math.PI*.5*i/STEPS;
                SINE[n][i]=(float)Math.pow(Math.sin(a),2/power);
                COSINE[n][i]=(float)Math.pow(Math.cos(a),2/power);
            }
            SINE[n][0]=0;COSINE[n][STEPS]=0;
        }
    }
    private MaterialShape() { }
    public static void path(Path path,RectF bounds,float radius) {
        path(path,bounds,radius,2.4f);
    }
    /** Continuous circle-to-G2 perimeter; precomputed samples avoid per-frame powers/trigonometry. */
    public static void path(Path path,RectF bounds,float radius,float power) {
        path.reset();
        float r=Math.max(0,Math.min(radius,Math.min(bounds.width(),bounds.height())/2));
        if(r==0){path.addRect(bounds,Path.Direction.CW);return;}
        if(power<=2) { path.addRoundRect(bounds,r,r,Path.Direction.CW);return; }
        float index=Math.max(0,Math.min(POWERS,(power-2)/.4f*POWERS));
        int low=(int)index,high=Math.min(POWERS,low+1);float blend=index-low;
        path.moveTo(bounds.left+r,bounds.top);
        for(int q=0;q<4;q++) {
            float cx=q<2 ? bounds.right-r : bounds.left+r;
            float cy=q==0||q==3 ? bounds.top+r : bounds.bottom-r;
            if(q==0)path.lineTo(cx,bounds.top);
            else if(q==1)path.lineTo(bounds.right,cy);
            else if(q==2)path.lineTo(cx,bounds.bottom);
            else path.lineTo(bounds.left,cy);
            for(int i=1;i<=STEPS;i++) {
                float sin=SINE[low][i]+(SINE[high][i]-SINE[low][i])*blend;
                float cos=COSINE[low][i]+(COSINE[high][i]-COSINE[low][i])*blend;
                float x=q==0 ? sin : q==1 ? cos : q==2 ? -sin : -cos;
                float y=q==0 ? -cos : q==1 ? sin : q==2 ? cos : -sin;
                path.lineTo(cx+r*x,cy+r*y);
            }
        }
        path.close();
    }
}
