package dev.android.dynamicisland.island.material;

/** Float RGB filtering shared by the live backdrop and material review. No Android dependencies. */
public final class MaterialPixels {
    /**
     * Float arrays kept for the next filter. Filtering a backdrop makes dozens of multi-megabyte arrays that are
     * dead a moment later; allocating them anew every second keeps System UI in the collector. A request is met by
     * the smallest waiting array that is long enough (up to twice as long): the arrays of one filter shrink and
     * grow again, so a handful of them serve all its steps. An array taken this way may be longer than its image
     * needs; only the first {@code width * height * 3} entries mean anything. Not thread safe: one owner thread.
     */
    public static final class Scratch {
        private static final long LIMIT_BYTES = 32L << 20;
        private final java.util.TreeMap<Integer, java.util.ArrayDeque<float[]>> free = new java.util.TreeMap<>();
        private long heldBytes;
        private long freshBytes, reusedBytes;
        private int filters;

        float[] take(int length) {
            java.util.Map.Entry<Integer, java.util.ArrayDeque<float[]>> fit = free.ceilingEntry(length);
            if (fit != null && fit.getKey() <= 2L * length) {
                float[] array = fit.getValue().pollFirst();
                if (fit.getValue().isEmpty()) free.remove(fit.getKey());
                heldBytes -= 4L * array.length;
                reusedBytes += 4L * length;
                return array;
            }
            freshBytes += 4L * length;
            return new float[length];
        }

        void give(float[] array) {
            if (array == null || heldBytes + 4L * array.length > LIMIT_BYTES) return;
            free.computeIfAbsent(array.length, k -> new java.util.ArrayDeque<>()).addFirst(array);
            heldBytes += 4L * array.length;
        }

        /** Bytes of float arrays allocated anew by the filters so far. */
        public long freshBytes() { return freshBytes; }

        /** Bytes of float arrays the filters took from the pool instead of allocating. */
        public long reusedBytes() { return reusedBytes; }

        /** Bytes of arrays waiting for the next filter. */
        public long heldBytes() { return heldBytes; }

        public int filters() { return filters; }

        /** Gives up everything held (the backdrop is no longer drawn). */
        public void clear() { free.clear(); heldBytes = 0; }
    }

    private static float[] take(Scratch scratch, int length) {
        return scratch == null ? new float[length] : scratch.take(length);
    }

    private static void give(Scratch scratch, float[] array) {
        if (scratch != null) scratch.give(array);
    }

    public final int width, height;
    public final float[] rgb;
    public MaterialPixels(int width, int height, float[] rgb) {
        if (width < 1 || height < 1 || rgb.length < width * height * 3) throw new IllegalArgumentException("RGB size");
        this.width = width; this.height = height; this.rgb = rgb;
    }
    public static MaterialPixels fromArgb(int[] pixels, int width, int height) {
        return fromArgb(pixels, width, height, null);
    }
    /** Same, with the float array taken from {@code scratch}; the caller gives it back with {@link #release}. */
    public static MaterialPixels fromArgb(int[] pixels, int width, int height, Scratch scratch) {
        float[] rgb = take(scratch, pixels.length * 3);
        for (int i = 0; i < pixels.length; i++) for (int c = 0; c < 3; c++) rgb[3*i+c] = ((pixels[i] >> (16-8*c)) & 255) / 255f;
        return new MaterialPixels(width, height, rgb);
    }
    public int[] argb() {
        return argb(new int[width * height]);
    }
    /** The pixels written into {@code out}, which must be exactly {@code width * height} long. */
    public int[] argb(int[] out) {
        if (out.length != width * height) throw new IllegalArgumentException("size");
        for (int i = 0; i < out.length; i++) {
            int p = 0xff000000;
            for (int c = 0; c < 3; c++) p |= Math.max(0, Math.min(255, (int)(rgb[i*3+c]*255))) << (16-8*c);
            out[i] = p;
        }
        return out;
    }
    /** Pillow's antialiased bilinear support, including its widened triangle on downsampling. */
    public MaterialPixels resize(int w, int h) {
        return resize(w, h, null, false);
    }
    private MaterialPixels resize(int w, int h, Scratch scratch, boolean keepResult) {
        if (keepResult && scratch != null) scratch.freshBytes += 4L * w * h * 3; // the result is always a new array
        float[] tmp = take(scratch, w*height*3), out = keepResult ? new float[w*h*3] : take(scratch, w*h*3);
        resample(rgb, tmp, width, height, w, true, scratch);
        resample(tmp, out, w, height, h, false, scratch);
        give(scratch, tmp);
        return new MaterialPixels(w,h,out);
    }
    /** Hands the float array back to {@code scratch} once nothing reads this any more. */
    public void release(Scratch scratch) {
        give(scratch, rgb);
    }
    /**
     * One pass of the triangle filter. The taps of each output position are worked out once; the sums run over the
     * source positions in the same order as ever, so the result does not change by a single bit, but the memory
     * is read along its rows (the vertical pass used to jump a whole row for every tap).
     */
    private static void resample(float[] in, float[] out, int w, int h, int size, boolean horizontal, Scratch scratch) {
        int old = horizontal ? w : h;
        float scale = old / (float) size, support = Math.max(1, scale);
        int stride = (int)Math.ceil(support * 2) + 2;
        float[] weights = take(scratch, size * stride);
        int[] from = new int[size], to = new int[size];
        for (int pos = 0; pos < size; pos++) {
            float centre = (pos + .5f) * scale;
            from[pos] = Math.max(0, (int)Math.floor(centre - support + .5f));
            to[pos] = Math.min(old, (int)Math.floor(centre + support + .5f));
            float sum = 0;
            for (int k = from[pos]; k < to[pos]; k++) sum += Math.max(0, 1 - Math.abs((k + .5f - centre) / support));
            for (int k = from[pos]; k < to[pos]; k++) {
                weights[pos * stride + k - from[pos]] = Math.max(0, 1 - Math.abs((k + .5f - centre) / support)) / sum;
            }
        }
        if (horizontal) {
            for (int line = 0; line < h; line++) {
                int source = line * w * 3, target = line * size * 3;
                for (int pos = 0; pos < size; pos++) {
                    float r = 0, g = 0, b = 0;
                    int tap = pos * stride - from[pos];
                    for (int k = from[pos]; k < to[pos]; k++) {
                        float weight = weights[tap + k];
                        int at = source + k * 3;
                        r += in[at] * weight;
                        g += in[at + 1] * weight;
                        b += in[at + 2] * weight;
                    }
                    int at = target + pos * 3;
                    out[at] = r;
                    out[at + 1] = g;
                    out[at + 2] = b;
                }
            }
        } else {
            int row = w * 3;
            for (int pos = 0; pos < size; pos++) {
                int target = pos * row;
                java.util.Arrays.fill(out, target, target + row, 0f);
                int tap = pos * stride - from[pos];
                for (int k = from[pos]; k < to[pos]; k++) {
                    float weight = weights[tap + k];
                    int source = k * row;
                    for (int i = 0; i < row; i++) out[target + i] += in[source + i] * weight;
                }
            }
        }
        give(scratch, weights);
    }
    private MaterialPixels taps(boolean up, Scratch scratch) {
        float[] out = take(scratch, width * height * 3);
        // the edge clamps of each column, worked out once instead of for every pixel of every row
        int[] xm1 = new int[width], xp1 = new int[width], xm2 = new int[width], xp2 = new int[width];
        for (int x = 0; x < width; x++) {
            xm1[x] = Math.max(0, x - 1) * 3;
            xp1[x] = Math.min(width - 1, x + 1) * 3;
            xm2[x] = Math.max(0, x - 2) * 3;
            xp2[x] = Math.min(width - 1, x + 2) * 3;
        }
        float[] rgb = this.rgb;
        for (int y = 0; y < height; y++) {
            int ym1 = Math.max(0, y - 1) * width * 3, yp1 = Math.min(height - 1, y + 1) * width * 3;
            int ym2 = Math.max(0, y - 2) * width * 3, yp2 = Math.min(height - 1, y + 2) * width * 3;
            int row = y * width * 3;
            if (up) {
                for (int x = 0; x < width; x++) {
                    int a = xm1[x], b = xp1[x], c2 = xm2[x], d = xp2[x], x3 = x * 3;
                    for (int c = 0; c < 3; c++) {
                        float diagonal = rgb[ym1 + a + c] + rgb[ym1 + b + c] + rgb[yp1 + a + c] + rgb[yp1 + b + c];
                        float axial = rgb[row + c2 + c] + rgb[row + d + c] + rgb[ym2 + x3 + c] + rgb[yp2 + x3 + c];
                        out[row + x3 + c] = (diagonal + axial) / 8;
                    }
                }
            } else {
                for (int x = 0; x < width; x++) {
                    int a = xm1[x], b = xp1[x], x3 = x * 3;
                    for (int c = 0; c < 3; c++) {
                        float diagonal = rgb[ym1 + a + c] + rgb[ym1 + b + c] + rgb[yp1 + a + c] + rgb[yp1 + b + c];
                        out[row + x3 + c] = (diagonal + 4 * rgb[row + x3 + c]) / 8;
                    }
                }
            }
        }
        return new MaterialPixels(width, height, out);
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
        return blur(null);
    }
    /**
     * The same filter with its intermediate arrays taken from and given back to {@code scratch}. Only the result,
     * which the caller keeps, is a new array; this image is left as it was.
     */
    public MaterialPixels blur(Scratch scratch) {
        float blurScale=.75f*width/1164f;
        int levels=Math.max(1,Math.min(5,(int)Math.ceil(5+Math.log(blurScale)/Math.log(2))));
        float relative=blurScale/(float)Math.pow(2,levels-5);
        if(scratch!=null) scratch.filters++;
        MaterialPixels a=resize(Math.max(1,Math.round(width/relative)),Math.max(1,Math.round(height/relative)),scratch,false);
        int[] ws=new int[levels],hs=new int[levels];
        for(int i=0;i<levels;i++) {
            ws[i]=a.width;hs[i]=a.height;
            MaterialPixels smaller=a.resize(Math.max(1,a.width/2),Math.max(1,a.height/2),scratch,false);
            MaterialPixels next=smaller.taps(false,scratch);
            smaller.release(scratch);a.release(scratch);a=next;
        }
        for(int i=levels-1;i>=0;i--) {
            MaterialPixels larger=a.resize(ws[i],hs[i],scratch,false);
            MaterialPixels next=larger.taps(true,scratch);
            larger.release(scratch);a.release(scratch);a=next;
        }
        MaterialPixels result=a.resize(width,height,scratch,true);
        a.release(scratch);
        return result;
    }
    static float linear(float c) { return c<=.04045f ? c/12.92f : (float)Math.pow((c+.055f)/1.055f,2.4); }
    /** Reused on the drawing thread; no array here is ever handed to a GPU bitmap without copying. */
    public static final class ResponseScratch {
        private static final float[] KERNEL = gaussianKernel();
        private float[] luma, square, horizontal, mean, second;
        private int[] field;

        private void ensure(int size) {
            if (luma == null || luma.length < size) {
                int capacity = luma == null ? size : Math.max(size, luma.length * 2);
                luma = new float[capacity];square = new float[capacity];horizontal = new float[capacity];
                mean = new float[capacity];second = new float[capacity];
            }
            if (field == null || field.length != size) field = new int[size];
        }

        public void clear() {
            luma = square = horizontal = mean = second = null;
            field = null;
        }
    }

    /** Response field for exactly one card, using the review's local float mean/variance equations. */
    public int[] response(float left,float top,float w,float h,int fw,int fh) {
        return response(left,top,w,h,fw,fh,new ResponseScratch());
    }

    /** The returned array belongs to scratch and is overwritten by its next call; copy before retaining. */
    public int[] response(float left,float top,float w,float h,int fw,int fh,ResponseScratch scratch) {
        int size=fw*fh;scratch.ensure(size);
        float[] luma=scratch.luma;
        float total=0;
        for(int y=0;y<fh;y++) for(int x=0;x<fw;x++) {
            float sx=left+(x+.5f)*w/fw-.5f,sy=top+(y+.5f)*h/fh-.5f;
            float lum=.2126f*linear(sample(sx,sy,0))+.7152f*linear(sample(sx,sy,1))+.0722f*linear(sample(sx,sy,2));
            luma[y*fw+x]=lum;total+=lum;
        }
        float average=total/size;
        float[] square=scratch.square;
        for(int i=0;i<size;i++)square[i]=luma[i]*luma[i];
        gaussian(luma,fw,fh,scratch.horizontal,scratch.mean);
        gaussian(square,fw,fh,scratch.horizontal,scratch.second);
        float[] mean=scratch.mean,second=scratch.second;
        int[] field=scratch.field;
        for(int i=0;i<size;i++) {
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
    private static float[] gaussianKernel() {
        int r=9;float[] k=new float[2*r+1];float sum=0;
        for(int i=-r;i<=r;i++){k[i+r]=(float)Math.exp(-.5*i*i/(2.2*2.2));sum+=k[i+r];}
        for(int i=0;i<k.length;i++)k[i]/=sum;
        return k;
    }
    private static void gaussian(float[] source,int w,int h,float[] a,float[] b) {
        int r=9;float[] k=ResponseScratch.KERNEL;
        java.util.Arrays.fill(a,0,w*h,0f);java.util.Arrays.fill(b,0,w*h,0f);
        for(int y=0;y<h;y++) for(int x=0;x<w;x++) for(int j=-r;j<=r;j++) a[y*w+x]+=source[y*w+Math.max(0,Math.min(w-1,x+j))]*k[j+r];
        for(int y=0;y<h;y++) for(int x=0;x<w;x++) for(int j=-r;j<=r;j++) b[y*w+x]+=a[Math.max(0,Math.min(h-1,y+j))*w+x]*k[j+r];
    }
}
