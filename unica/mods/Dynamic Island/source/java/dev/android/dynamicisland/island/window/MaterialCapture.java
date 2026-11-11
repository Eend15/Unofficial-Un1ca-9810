package dev.android.dynamicisland.island.window;

import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.SurfaceControl;
import android.view.View;
import android.view.WindowManager;
import dev.android.dynamicisland.island.material.MaterialFrame;
import dev.android.dynamicisland.island.material.MaterialPixels;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.XLog;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.function.Consumer;

/** Cropped compositor backdrop excluding our entire window, processed off the SystemUI main thread. */
final class MaterialCapture {
    private static final int SAMPLE_WIDTH=420;
    /**
     * A full-display crop keeps its coverage but is sampled with at most this many rows: the blur radius follows the
     * image width, so the look is the same and the cost is about a quarter (110 MB and 1.1 s down to 27 MB and 0.3 s).
     */
    private static final int SAMPLE_MAX_HEIGHT=480;
    private static final long PERIOD_MS=100;
    private static final long PREWARM_PERIOD_MS=3000;
    private static final long COST_REPORT_MS=10_000;
    private long periodMs=PERIOD_MS;
    private final View host;
    private final Consumer<MaterialFrame> receiver;
    private final Handler main=new dev.android.dynamicisland.xposed.GuardedHandler(Looper.getMainLooper());
    private final ExecutorService worker=Executors.newSingleThreadExecutor(r -> {
        Thread t=new Thread(r,"Island material backdrop");t.setDaemon(true);return t;
    });
    private final Rect requested=new Rect();
    private final Point displaySize=new Point();
    private final Runnable tick=this::request;
    private boolean active,busy,destroyed,failed;
    private long epoch;
    private long lastPublishedAt;
    private long lastCostReport;
    private int captures;
    private long accessibilityCheckedAt;
    private boolean reduceTransparency;
    private Class<?> rootType;
    private Method getRoot,getSurface,isSame;
    private Constructor<SurfaceControl> copy;
    private DisplayCaptureApi api;
    // Worker-only cache: unchanged content needs neither filtering nor a new GPU texture.
    private int[] lastPixels;
    private Rect lastBounds;
    private MaterialFrame lastFrame;

    MaterialCapture(View host,Consumer<MaterialFrame> receiver) {
        this.host=host;this.receiver=receiver;
        host.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() {
            public void onViewAttachedToWindow(View v) { }
            public void onViewDetachedFromWindow(View v) { stop(); }
        });
    }
    void update(Rect bounds,boolean enabled) {
        update(bounds,enabled,false);
    }
    void update(Rect bounds,boolean enabled,boolean prewarming) {
        enabled=enabled&&!destroyed&&!failed&&bounds!=null&&!bounds.isEmpty()
                &&host.isAttachedToWindow()&&host.isShown()&&host.getWindowVisibility()==View.VISIBLE;
        if(!enabled) { stop();return; }
        if(host.getDisplay()==null||host.getDisplay().getDisplayId()!=0){stop();return;}
        long now=SystemClock.uptimeMillis();
        if(accessibilityCheckedAt==0||now-accessibilityCheckedAt>1000) {
            reduceTransparency=android.provider.Settings.System.getInt(host.getContext().getContentResolver(),
                    "accessibility_reduce_transparency",0)!=0;
            accessibilityCheckedAt=now;
        }
        if(reduceTransparency){stop();return;}
        int oldWidth=displaySize.x,oldHeight=displaySize.y;
        host.getDisplay().getRealSize(displaySize);
        if(active&&(oldWidth!=displaySize.x||oldHeight!=displaySize.y)){epoch++;requested.setEmpty();receiver.accept(null);}
        Rect safe=new Rect(bounds);
        if(!safe.intersect(0,0,displaySize.x,displaySize.y)) { stop();return; }
        long nextPeriod=prewarming?PREWARM_PERIOD_MS:PERIOD_MS;
        boolean changedMode=periodMs!=nextPeriod;periodMs=nextPeriod;
        if(!active) {epoch++;requested.set(safe);}
        else if(changedMode) {
            // Replace the full-display warm crop with the actual stack crop,
            // keeping its already-published pixels while the new capture runs.
            requested.set(safe);main.removeCallbacks(tick);main.post(tick);
        }
        else if(!requested.contains(safe)) {
            // Keep a growing envelope through spring overshoot. In-flight
            // pixels from the smaller crop are usable (CLAMP) while the next
            // request grows; a geometry change must not starve every capture.
            requested.union(safe);
        }
        if(!active) { active=true;main.post(tick); }
    }
    void refresh() {
        if(active&&!busy){main.removeCallbacks(tick);main.post(tick);}
    }
    void stop() {
        if(!active)return;
        active=false;epoch++;main.removeCallbacks(tick);receiver.accept(null);lastPublishedAt=0;
        // Drop caches on the worker after any in-flight readback. Never recycle a displayed bitmap.
        worker.execute(() -> {lastPixels=null;lastFrame=null;lastBounds=null;});
    }
    void destroy() { stop();destroyed=true;worker.shutdown(); }
    private SurfaceControl surface() throws Exception {
        if(getRoot==null) getRoot=View.class.getMethod("getViewRootImpl");
        Object root=getRoot.invoke(host);if(root==null)return null;
        if(rootType!=root.getClass()) {rootType=root.getClass();getSurface=rootType.getMethod("getSurfaceControl");}
        return (SurfaceControl)getSurface.invoke(root);
    }
    private void request() {
        if(!active||destroyed||failed)return;
        if(busy){main.postDelayed(tick,periodMs);return;}
        try {
            if(!host.isAttachedToWindow()||!host.isShown()||host.getWindowVisibility()!=View.VISIBLE) {stop();return;}
            SurfaceControl root=surface();
            if(root==null||!root.isValid()) {main.postDelayed(tick,periodMs);return;}
            if(copy==null) copy=SurfaceControl.class.getConstructor(SurfaceControl.class,String.class);
            if(isSame==null) isSame=SurfaceControl.class.getMethod("isSameSurface",SurfaceControl.class);
            SurfaceControl owned=copy.newInstance(root,"Island material capture exclusion");
            if(!owned.isValid()||!Boolean.TRUE.equals(isSame.invoke(root,owned))) {owned.release();throw new IllegalStateException("unverified material exclusion");}
            busy=true;
            long generation=epoch,start=SystemClock.uptimeMillis();
            Rect crop=new Rect(requested);int displayWidth=displaySize.x;
            float scale=sampleScale(crop.width(),crop.height());
            android.view.ViewGroup.LayoutParams params=host.getRootView().getLayoutParams();
            int windowType=params instanceof WindowManager.LayoutParams ? ((WindowManager.LayoutParams)params).type : 0;
            worker.execute(() -> capture(owned,crop,scale,displayWidth,generation,start,windowType));
        } catch(Throwable t) { fail(t); }
    }
    private void capture(SurfaceControl exclusion,Rect crop,float scale,int displayWidth,long generation,long start,int windowType) {
        MaterialFrame result=null;Throwable error=null;
        try {
            if(api==null)api=new DisplayCaptureApi(host.getContext());
            Bitmap raw=api.read(crop,scale,exclusion,windowType);
            if(raw!=null) {
                int w=raw.getWidth(),h=raw.getHeight();int[] pixels=new int[w*h];raw.getPixels(pixels,0,w,0,0,w,h);
                raw.recycle(); // This private CPU copy was never handed to a Canvas or RenderNode.
                if(lastFrame!=null&&crop.equals(lastBounds)&&Arrays.equals(lastPixels,pixels))result=lastFrame;
                else {
                    MaterialPixels filtered=MaterialPixels.fromArgb(pixels,w,h).blur();
                    Bitmap texture=Bitmap.createBitmap(filtered.argb(),w,h,Bitmap.Config.ARGB_8888);texture.setHasAlpha(false);
                    result=new MaterialFrame(texture,filtered,crop,displayWidth);
                    lastFrame=result;lastPixels=pixels;lastBounds=new Rect(crop);
                }
            }
        }catch(Throwable t){error=t;}
        MaterialFrame frame=result;Throwable fault=error;
        // The excluded layer copy survives until capture completes; never keep ViewRoot's borrowed handle.
        main.post(() -> {
            busy=false;
            try {
                if(!active||destroyed||generation!=epoch)return;
                SurfaceControl current=surface();
                if(current==null||!current.isValid()||!Boolean.TRUE.equals(isSame.invoke(current,exclusion))) {missing();return;}
                if(fault!=null){fail(fault);return;}
                if(frame!=null) {
                    receiver.accept(frame);lastPublishedAt=SystemClock.uptimeMillis();
                    Diagnostics.fact("card material backdrop",periodMs==PREWARM_PERIOD_MS ? "compositor prewarmed while compact; 1 Hz" : "compositor below island; cropped, 10 Hz maximum");
                }else missing();
            }catch(Throwable t){fail(t);}
            finally {
                exclusion.release();
                if(active&&!destroyed&&!failed) {
                    long cost=SystemClock.uptimeMillis()-start;
                    reportCost(cost);
                    main.removeCallbacks(tick);
                    // Rest at least as long as the work took: a slow phone must not filter back to back, the garbage
                    // of that (tens of MB per frame) keeps System UI in the collector.
                    main.postDelayed(tick,Math.max(16,Math.max(periodMs-cost,cost)));
                }
            }
        });
    }
    /** The capture scale for a crop: 420 px wide at most, and at most 480 rows so a full-display crop stays cheap. */
    static float sampleScale(int width,int height) {
        return Math.min(1f,Math.min(SAMPLE_WIDTH/(float)width,SAMPLE_MAX_HEIGHT/(float)height));
    }
    private void reportCost(long cost) {
        captures++;
        long now=SystemClock.uptimeMillis();
        if(now-lastCostReport<COST_REPORT_MS)return;
        lastCostReport=now;
        Diagnostics.fact("card material cost",cost+" ms for the last capture and filter, "+captures+" so far");
    }
    private void missing() {
        // A temporary null/changed root must not erase a valid texture for one
        // frame. A sustained loss still fades back to the local opaque material.
        if(lastPublishedAt>0&&SystemClock.uptimeMillis()-lastPublishedAt>=200) {
            receiver.accept(null);lastPublishedAt=0;
        }
    }
    private void fail(Throwable t) {
        failed=true;stop();receiver.accept(null);
        Diagnostics.fact("card material backdrop","unavailable; native/opaque fallback");
        XLog.once("material backdrop unavailable",t);
    }
}
