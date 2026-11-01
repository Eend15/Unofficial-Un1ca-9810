package dev.android.dynamicisland.island.material;

/** Float RGB filtering shared by the live backdrop and material review. No Android dependencies. */
public final class MaterialPixels {
    public final int width, height;
    public final float[] rgb;
    public MaterialPixels(int width, int height, float[] rgb) {
        if (width < 1 || height < 1 || rgb.length != width * height * 3) throw new IllegalArgumentException("RGB size");
        this.width = width; this.height = height; this.rgb = rgb;
    }
    public static MaterialPixels fromArgb(int[] pixels, int width, int height) {
        float[] rgb = new float[pixels.length * 3];
        for (int i = 0; i < pixels.length; i++) for (int c = 0; c < 3; c++) rgb[3*i+c] = ((pixels[i] >> (16-8*c)) & 255) / 255f;
        return new MaterialPixels(width, height, rgb);
    }
    public int[] argb() {
        int[] out = new int[width * height];
        for (int i = 0; i < out.length; i++) {
            int p = 0xff000000;
            for (int c = 0; c < 3; c++) p |= Math.max(0, Math.min(255, (int)(rgb[i*3+c]*255))) << (16-8*c);
            out[i] = p;
        }
        return out;
    }
    /** Pillow's antialiased bilinear support, including its widened triangle on downsampling. */
    public MaterialPixels resize(int w, int h) {
        float[] tmp = new float[w*height*3], out = new float[w*h*3];
        resample(rgb, tmp, width, height, w, true);
        resample(tmp, out, w, height, h, false);
        return new MaterialPixels(w,h,out);
    }
    private static void resample(float[] in, float[] out, int w, int h, int size, boolean horizontal) {
        int old = horizontal ? w : h, lines = horizontal ? h : w;
        float scale = old / (float) size, support = Math.max(1,scale);
        for (int pos = 0; pos < size; pos++) {
            float centre = (pos+.5f)*scale;
            int from = Math.max(0,(int)Math.floor(centre-support+.5f));
            int to = Math.min(old,(int)Math.floor(centre+support+.5f));
            float sum = 0;
            for (int k=from;k<to;k++) sum += Math.max(0,1-Math.abs((k+.5f-centre)/support));
            for (int line=0;line<lines;line++) for(int c=0;c<3;c++) {
                float v=0;
                for(int k=from;k<to;k++) {
                    float weight=Math.max(0,1-Math.abs((k+.5f-centre)/support))/sum;
                    v += in[((horizontal ? line*w+k : k*w+line)*3)+c]*weight;
                }
                out[((horizontal ? line*size+pos : pos*w+line)*3)+c]=v;
            }
        }
    }
    private MaterialPixels taps(boolean up) {
        float[] out = new float[rgb.length];
        for(int y=0;y<height;y++) for(int x=0;x<width;x++) for(int c=0;c<3;c++) {
            float diagonal=at(x-1,y-1,c)+at(x+1,y-1,c)+at(x-1,y+1,c)+at(x+1,y+1,c);
            float axial=up ? at(x-2,y,c)+at(x+2,y,c)+at(x,y-2,c)+at(x,y+2,c) : 4*at(x,y,c);
            out[(y*width+x)*3+c]=(diagonal+axial)/8;
        }
        return new MaterialPixels(width,height,out);
    }
    private float at(int x,int y,int c) {
        return rgb[(Math.max(0,Math.min(height-1,y))*width+Math.max(0,Math.min(width-1,x)))*3+c];
    }
    public float sample(float x,float y,int c) {
        int ix=(int)Math.floor(x),iy=(int)Math.floor(y); float fx=x-ix,fy=y-iy;
        return (at(ix,iy,c)*(1-fx)+at(ix+1,iy,c)*fx)*(1-fy)+(at(ix,iy+1,c)*(1-fx)+at(ix+1,iy+1,c)*fx)*fy;
    }
    /** Approved .75 radius, normalized to the original review's 1164px screen width. */
    public MaterialPixels blur() {
        float blurScale=.75f*width/1164f;
        int levels=Math.max(1,Math.min(5,(int)Math.ceil(5+Math.log(blurScale)/Math.log(2))));
        float relative=blurScale/(float)Math.pow(2,levels-5);
        MaterialPixels a=resize(Math.max(1,Math.round(width/relative)),Math.max(1,Math.round(height/relative)));
        int[] ws=new int[levels],hs=new int[levels];
        for(int i=0;i<levels;i++) { ws[i]=a.width;hs[i]=a.height;a=a.resize(Math.max(1,a.width/2),Math.max(1,a.height/2)).taps(false); }
        for(int i=levels-1;i>=0;i--) a=a.resize(ws[i],hs[i]).taps(true);
        return a.resize(width,height);
    }
    static float linear(float c) { return c<=.04045f ? c/12.92f : (float)Math.pow((c+.055f)/1.055f,2.4); }
    /** Response field for exactly one card, using the review's local float mean/variance equations. */
    public int[] response(float left,float top,float w,float h,int fw,int fh) {
        float[] luma=new float[fw*fh];
        float total=0;
        for(int y=0;y<fh;y++) for(int x=0;x<fw;x++) {
            float sx=left+(x+.5f)*w/fw-.5f,sy=top+(y+.5f)*h/fh-.5f;
            float lum=.2126f*linear(sample(sx,sy,0))+.7152f*linear(sample(sx,sy,1))+.0722f*linear(sample(sx,sy,2));
            luma[y*fw+x]=lum;total+=lum;
        }
        float average=total/luma.length;
        float[] square=luma.clone();for(int i=0;i<square.length;i++) square[i]*=square[i];
        float[] mean=gaussian(luma,fw,fh),second=gaussian(square,fw,fh);
        int[] field=new int[luma.length];
        for(int i=0;i<field.length;i++) {
            float variance=Math.max(0,second[i]-mean[i]*mean[i]);
            // Broad card exposure drives the material. A colourful launcher
            // icon must not turn one side into a different transparency preset.
            float uniformity=1/(1+variance/.012f),exposure=.20f*mean[i]+.80f*average;
            // Continuous shoulder: responsive on ordinary bright wallpaper,
            // while a near-black app remains effectively unchanged.
            float energy=exposure*exposure;
            float response=(1+.22f*.22f)*energy/(energy+.22f*.22f)*(.85f+.15f*uniformity);
            int value=Math.max(0,Math.min(65535,Math.round(response*65535)));
            field[i]=0xff000000|((value>>8)<<16)|((value&255)<<8);
        }
        return field;
    }
    private static float[] gaussian(float[] source,int w,int h) {
        int r=9;float[] k=new float[2*r+1];float sum=0;
        for(int i=-r;i<=r;i++){k[i+r]=(float)Math.exp(-.5*i*i/(2.2*2.2));sum+=k[i+r];}
        for(int i=0;i<k.length;i++) k[i]/=sum;
        float[] a=new float[source.length],b=new float[source.length];
        for(int y=0;y<h;y++) for(int x=0;x<w;x++) for(int j=-r;j<=r;j++) a[y*w+x]+=source[y*w+Math.max(0,Math.min(w-1,x+j))]*k[j+r];
        for(int y=0;y<h;y++) for(int x=0;x<w;x++) for(int j=-r;j<=r;j++) b[y*w+x]+=a[Math.max(0,Math.min(h-1,y+j))*w+x]*k[j+r];
        return b;
    }
}
