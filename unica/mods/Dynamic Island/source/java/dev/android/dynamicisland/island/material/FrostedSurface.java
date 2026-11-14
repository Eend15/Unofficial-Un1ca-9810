package dev.android.dynamicisland.island.material;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.RuntimeShader;
import android.graphics.Shader;
import dev.android.dynamicisland.island.view.media.MediaFx;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.XLog;

/** One stable GPU material per card; capture updates never select another renderer. */
public final class FrostedSurface {
    private static final long CAPTURE_BLEND_MS=90;
    private static final long MISSING_FRAME_GRACE_MS=200;
    private static final class EmptyBackdrop {
        static final Bitmap PIXEL=Bitmap.createBitmap(new int[]{0xff000000},1,1,Bitmap.Config.ARGB_8888);
    }
    private static boolean unavailable;
    private final Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG|Paint.FILTER_BITMAP_FLAG);
    private RuntimeShader shader;
    private Input previous,current;
    private boolean blending;
    private long blendStartedAt,missingSince=-1,lastTime,lastInputReport;
    private final RectF lastBounds=new RectF();
    private final MaterialPixels.ResponseScratch responseScratch=new MaterialPixels.ResponseScratch();
    private static final float LIGHT_DENSITY=3*.34f;
    private final float[] fades=new float[4];
    private float lastCorner=-1,lastCornerPower=-1,phase;
    private boolean primed;
    private final float[] common={0,0,0,0,0,0,0,0,0,0,0,1};
    private final float[] edge={1,1,1,2,4,2,4,.7f*.6f,.6f*.6f,0,0,0,0,0,4,.8f};
    private final float[] shadow={1,1,1,.6f*.3f,0,0,86*LIGHT_DENSITY,0,10*LIGHT_DENSITY,0,0,4,.7f,LIGHT_DENSITY,1,0};

    public static boolean requested() {
        return !unavailable&&ModuleSettings.frostedMaterial()&&!ModuleSettings.lowPerformance();
    }
    public static boolean canUse(MaterialFrame frame) {
        return requested()&&frame!=null&&!frame.bitmap.isRecycled();
    }
    public static boolean canUse(MaterialFrame frame,RectF bounds) {
        return canUse(frame)&&bounds.right>frame.screenBounds.left&&bounds.left<frame.screenBounds.right
                &&bounds.bottom>frame.screenBounds.top&&bounds.top<frame.screenBounds.bottom;
    }
    public boolean draw(Canvas canvas,MaterialFrame next,RectF bounds,float radius,float amount,MediaFx music,long now) {
        return draw(canvas,next,bounds,bounds,radius,amount,music,now);
    }
    public boolean draw(Canvas canvas,MaterialFrame next,RectF bounds,RectF screenBounds,float radius,
            float amount,MediaFx music,long now) {
        return draw(canvas,next,bounds,screenBounds,radius,amount,music,now,2.4f);
    }
    public boolean draw(Canvas canvas,MaterialFrame next,RectF bounds,RectF screenBounds,float radius,
            float amount,MediaFx music,long now,float cornerPower) {
        if(!requested()){clear();return false;}
        if(!canvas.isHardwareAccelerated()||!isFinite(bounds)||bounds.width()<1||bounds.height()<1)return false;
        if(!canUse(next,screenBounds))next=null;
        try {
            boolean bind=false;
            if(shader==null) {
                shader=new RuntimeShader(FrostedShaderSource.CODE);paint.setShader(shader);
                // A compact-mode prewarm is already a valid background. Use it
                // on the first morph frame instead of fading from artificial black.
                previous=current=new Input(next);bind=true;
            }
            if(blending&&now-blendStartedAt>=CAPTURE_BLEND_MS) {
                previous=current;blending=false;bind=true;
            }
            if(next!=null)missingSince=-1;
            else if(current.frame!=null) {
                if(missingSince<0)missingSince=now;
                if(now-missingSince<MISSING_FRAME_GRACE_MS)next=current.frame;
            }
            // Finish each blend before adopting the latest delivered frame.
            // An early next capture stays in Scene; it cannot reset a blend halfway.
            if(!blending&&next!=current.frame) {
                previous=current;current=new Input(next);blendStartedAt=now;blending=true;bind=true;
            }
            boolean beforeChanged=previous.update(bounds,screenBounds,responseScratch);
            boolean afterChanged=current==previous ? beforeChanged : current.update(bounds,screenBounds,responseScratch);
            if(bind||beforeChanged)previous.bind(shader,true);
            if(bind||afterChanged)current.bind(shader,false);
            float scale=bounds.width()/1072f,w=bounds.width()/scale,h=bounds.height()/scale,corner=radius/scale;
            cornerPower=Math.max(2,Math.min(2.4f,cornerPower));
            if(lastBounds.width()!=bounds.width()||lastBounds.height()!=bounds.height()||lastCorner!=radius||lastCornerPower!=cornerPower) {
                shader.setFloatUniform("designScale",scale);shader.setFloatUniform("cornerRadius",corner);
                configureLight(w,h,corner,cornerPower);lastBounds.set(bounds);lastCorner=radius;lastCornerPower=cornerPower;
            }
            if(current.frame!=null&&(lastInputReport==0||now-lastInputReport>=5000)) {
                Diagnostics.fact("card material inputs",String.format(java.util.Locale.US,
                        "screen=%s ref=%.0fx%.0f radius=%.1f texture=%dx%d response=%.3f [%.3f,%.3f]",
                        screenBounds.toShortString(),w,h,corner,current.frame.bitmap.getWidth(),current.frame.bitmap.getHeight(),
                        current.responseMean,current.responseMin,current.responseMax));lastInputReport=now;
            }
            float dt=lastTime==0 ? 0 : Math.max(0,Math.min(.05f,(now-lastTime)/1000f));lastTime=now;
            float live=music==null ? 0 : finite(music.liveness(now));
            lastLive=music==null ? -1 : live;
            float motion=Math.max(0,Math.min(2,ModuleSettings.glowMotion()/50f));
            if(!primed){phase=(now%10000)/10000f*(float)(Math.PI*2);primed=true;}
            phase=(phase+dt*(float)(Math.PI*2)/10*live)%(float)(Math.PI*2);phase=finite(phase);
            shader.setFloatUniform("phase",phase);shader.setFloatUniform("motionAmount",motion*live);
            shader.setFloatUniform("paletteAmount",music==null ? 0 : .18f+.82f*live);
            if(music!=null) {
                if(ModuleSettings.glowAlbum()) {
                    colour("tone0",music.waveformColorAt(0,now));colour("tone1",music.waveformColorAt(.5f,now));colour("tone2",music.waveformColorAt(1,now));
                }else{int color=ModuleSettings.glowColour();colour("tone0",color);colour("tone1",color);colour("tone2",color);}
            }else{colour("tone0",0);colour("tone1",0);colour("tone2",0);}
            float blend=blending ? Math.max(0,Math.min(1,(now-blendStartedAt)/(float)CAPTURE_BLEND_MS)) : 1;
            blend=blend*blend*(3-2*blend);
            shader.setFloatUniform("captureAmount",blend);
            shader.setFloatUniform("materialAmount",Math.max(0,Math.min(1,amount)));
            int save=canvas.save();canvas.translate(bounds.left,bounds.top);
            canvas.drawRect(0,0,bounds.width(),bounds.height(),paint);canvas.restoreToCount(save);
            Diagnostics.fact("card material",current.frame==null ? "frosted GPU; stable local backdrop" : "frosted GPU; interpolated captured backdrop; G2 curved lighting");
            return true;
        }catch(Throwable t) {
            unavailable=true;clear();XLog.once("frosted material unavailable",t);
            Diagnostics.fact("card material","GPU unavailable; classic fallback");return false;
        }
    }
    /** Texture, response map and coordinates travel together through a capture blend. */
    private static final class Input {
        final MaterialFrame frame;
        final BitmapShader backdrop;
        BitmapShader field;
        private int[] fieldPixels;
        private int fieldWidth,fieldHeight;
        final RectF lastScreen=new RectF();
        float localW=-1,localH=-1,offsetX,offsetY,scaleX,scaleY;
        int fw=1,fh=1;
        float responseMean,responseMin,responseMax;
        Input(MaterialFrame frame) {
            this.frame=frame;
            backdrop=new BitmapShader(frame==null ? EmptyBackdrop.PIXEL : frame.bitmap,Shader.TileMode.CLAMP,Shader.TileMode.CLAMP);
            backdrop.setFilterMode(BitmapShader.FILTER_MODE_LINEAR);
            field=new BitmapShader(EmptyBackdrop.PIXEL,Shader.TileMode.CLAMP,Shader.TileMode.CLAMP);
        }
        boolean update(RectF local,RectF screen,MaterialPixels.ResponseScratch scratch) {
            if(localW==local.width()&&localH==local.height()&&lastScreen.equals(screen))return false;
            if(!isFinite(local)||!isFinite(screen)||local.width()<=0||local.height()<=0) {
                reject("card "+local+" on screen "+screen);return false;
            }
            if(frame==null) {
                localW=local.width();localH=local.height();lastScreen.set(screen);return true;
            }
            float sx=frame.bitmap.getWidth()/(float)frame.screenBounds.width(),sy=frame.bitmap.getHeight()/(float)frame.screenBounds.height();
            float nextOffsetX=(screen.left-frame.screenBounds.left)*sx,nextOffsetY=(screen.top-frame.screenBounds.top)*sy;
            float nextScaleX=sx*screen.width()/local.width(),nextScaleY=sy*screen.height()/local.height();
            if(!isFinite(nextOffsetX)||!isFinite(nextOffsetY)||!isFinite(nextScaleX)||!isFinite(nextScaleY)) {
                reject("capture "+frame.screenBounds+" "+frame.bitmap.getWidth()+"x"+frame.bitmap.getHeight()+" card "+local+" on screen "+screen);return false;
            }
            localW=local.width();localH=local.height();lastScreen.set(screen);
            offsetX=nextOffsetX;offsetY=nextOffsetY;scaleX=nextScaleX;scaleY=nextScaleY;
            fw=40;fh=Math.max(8,Math.round(localH*40/localW));
            int[] response=frame.pixels.response(offsetX,offsetY,screen.width()*sx,screen.height()*sy,fw,fh,scratch);
            // Geometry still needs rebinding, but identical response pixels need no new GPU texture.
            // Keep an independent CPU copy: scratch is shared with the other capture-blend input.
            if(fieldWidth==fw&&fieldHeight==fh&&java.util.Arrays.equals(fieldPixels,response))return true;
            float total=0;responseMin=1;responseMax=0;
            for(int encoded:response) {
                float value=(((encoded>>16)&255)*256+(encoded>>8&255))/65535f;
                total+=value;responseMin=Math.min(responseMin,value);responseMax=Math.max(responseMax,value);
            }
            responseMean=total/response.length;
            Bitmap map=Bitmap.createBitmap(response,fw,fh,Bitmap.Config.ARGB_8888);
            field=new BitmapShader(map,Shader.TileMode.CLAMP,Shader.TileMode.CLAMP);
            if(fieldPixels==null||fieldPixels.length!=response.length)fieldPixels=new int[response.length];
            System.arraycopy(response,0,fieldPixels,0,response.length);fieldWidth=fw;fieldHeight=fh;
            field.setFilterMode(BitmapShader.FILTER_MODE_LINEAR);return true;
        }
        void bind(RuntimeShader shader,boolean old) {
            shader.setInputShader(old ? "previousBackground" : "background",backdrop);
            shader.setInputBuffer(old ? "previousResponseField" : "responseField",field);
            shader.setFloatUniform(old ? "previousSourceOffset" : "sourceOffset",offsetX,offsetY);
            shader.setFloatUniform(old ? "previousSourceScale" : "sourceScale",scaleX,scaleY);
            shader.setFloatUniform(old ? "previousFieldSize" : "fieldSize",fw,fh);
        }
    }
    private void colour(String name,int color) {
        shader.setFloatUniform(name,((color>>16)&255)/255f,((color>>8)&255)/255f,(color&255)/255f);
    }
    /** Approved COUI style-2 binding in reference units. */
    private void configureLight(float w,float h,float corner,float cornerPower) {
        float density=LIGHT_DENSITY,mw=w/density,mh=h/density;
        fade(.18f,.35f,600,200,mw,mh,fades,0);fade(.25f,.25f,600,200,mw,mh,fades,2);
        edge[9]=fades[0];edge[10]=fades[0]+fades[1];edge[11]=fades[2];edge[12]=fades[2]+fades[3];
        shadow[9]=1+.1f*600/mw;shadow[10]=1+.07f*600/mh;
        common[0]=common[4]=w;common[1]=common[5]=h;
        common[6]=common[7]=common[8]=common[9]=corner;common[10]=cornerPower;
        shader.setFloatUniform("u_commonArray",common);shader.setFloatUniform("u_edgeArray",edge);shader.setFloatUniform("u_shadowArray",shadow);
        shader.setFloatUniform("u_edge",1);shader.setFloatUniform("u_shadow",1);
    }
    private static void fade(float solid,float fade,float bw,float bh,float w,float h,float[] out,int offset) {
        float bp=2*(bw+bh),np=2*(w+h),total=solid+fade;
        if(total*bp>bw){out[offset]=((total*bp-bw+w)-fade*bp)/np;out[offset+1]=fade*bp/np;return;}
        if(total<=0){out[offset]=solid;out[offset+1]=fade;return;}
        float ratio=(w-(bw-total*bp))/np;out[offset]=solid*ratio/total;out[offset+1]=fade*ratio/total;
    }
    private float lastLive=-1;
    /** How alive the music glow was in the last draw (negative: not a music card), for the trace. */
    public float liveNow() { return lastLive; }
    private static int rejections;
    private static String lastRejection;
    static boolean isFinite(float value) { return !Float.isNaN(value)&&!Float.isInfinite(value); }
    static boolean isFinite(RectF r) { return isFinite(r.left)&&isFinite(r.top)&&isFinite(r.right)&&isFinite(r.bottom); }
    /** Geometry that is NaN or infinite is never sent to the GPU: it turns the whole card black and stays that way. */
    static void reject(String what) {
        if(rejections++==0) {
            lastRejection=what;
            Diagnostics.fact("card material rejected geometry","first: "+what);
            XLog.once("frosted material geometry rejected",new IllegalArgumentException(what));
        }
    }
    /** How many times geometry was refused so far (for the trace). */
    public static int rejectionsNow() { return rejections; }
    /** A shader uniform must never be NaN or infinite: one such value turns the whole card black on a GPU. */
    static float finite(float value) { return Float.isNaN(value)||Float.isInfinite(value) ? 0 : value; }
    /** Mean backdrop response of the frame in use, or a negative number while there is none (for the trace). */
    public float responseMean() {
        Input in=current;
        return in==null||in.frame==null ? -1f : in.responseMean;
    }
    /** Largest cell of the response field in use, 0..1, or a negative number while there is none (for the trace). */
    public float responseMaxNow() {
        Input in=current;
        return in==null||in.frame==null ? -1f : in.responseMax;
    }
    /** True while a new capture is blending in (for the trace). */
    public boolean blendingNow() { return blending; }
    public boolean animating(long now) {
        return requested()&&(blending||(missingSince>=0&&now-missingSince<MISSING_FRAME_GRACE_MS));
    }
    public void clear() {
        responseScratch.clear();previous=current=null;shader=null;paint.setShader(null);blending=false;missingSince=-1;
        lastBounds.setEmpty();lastCorner=lastCornerPower=-1;lastTime=lastInputReport=0;primed=false;
    }
}
