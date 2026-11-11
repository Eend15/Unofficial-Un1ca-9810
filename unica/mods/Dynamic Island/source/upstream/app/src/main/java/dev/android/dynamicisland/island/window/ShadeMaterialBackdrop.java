package dev.android.dynamicisland.island.window;

import android.graphics.Point;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewParent;
import dev.android.dynamicisland.island.material.FrostedSurface;
import dev.android.dynamicisland.island.material.MaterialFrame;
import dev.android.dynamicisland.xposed.XLog;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/** One capture/filter worker per shade window, shared by all visible live and music rows. */
public final class ShadeMaterialBackdrop {
    private static final Map<View,Shared> WINDOWS=new WeakHashMap<>();
    private ShadeMaterialBackdrop() { }
    public static void screenBounds(View host,RectF local,RectF out) {
        Matrix matrix=new Matrix();host.transformMatrixToGlobal(matrix);
        float[] origin={0,0};matrix.mapPoints(origin);
        int[] location=new int[2];host.getLocationOnScreen(location);
        matrix.postTranslate(location[0]-origin[0],location[1]-origin[1]);
        out.set(local);matrix.mapRect(out);
    }
    public static MaterialFrame frame(View host) {
        if(!host.isHardwareAccelerated()||!host.isAttachedToWindow())return null;
        View root=host.getRootView();Shared shared=WINDOWS.get(root);
        if(!FrostedSurface.requested()) {
            if(shared!=null)shared.release(host);
            return null;
        }
        try {
            if(shared==null){shared=new Shared(root);WINDOWS.put(root,shared);}
            shared.clients.put(host,Boolean.TRUE);
            shared.start();return shared.frame;
        }catch(Throwable t){XLog.once("shade material capture",t);return null;}
    }
    public static void release(View host) {
        Shared shared=WINDOWS.get(host.getRootView());if(shared!=null)shared.release(host);
    }
    private static boolean visible(View view) {
        if(!view.isAttachedToWindow()||!view.isShown()||view.getWindowVisibility()!=View.VISIBLE)return false;
        for(View node=view;node!=null;) {
            if(node.getAlpha()<=.01f)return false;
            ViewParent parent=node.getParent();node=parent instanceof View ? (View)parent : null;
        }
        return view.getGlobalVisibleRect(new Rect());
    }
    private static final class Shared {
        final View root;
        final Handler main=new dev.android.dynamicisland.xposed.GuardedHandler(Looper.getMainLooper());
        final Map<View,Boolean> clients=new WeakHashMap<>();
        final MaterialCapture capture;
        final Point size=new Point();
        final Runnable prune=this::prune;
        MaterialFrame frame;
        boolean scheduled,destroyed;
        Shared(View root) {
            this.root=root;
            capture=new MaterialCapture(root,next -> {
                if(frame==next)return;
                frame=next;
                for(View view:clients.keySet())if(visible(view))view.invalidate();
            });
            root.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() {
                public void onViewAttachedToWindow(View v) { }
                public void onViewDetachedFromWindow(View v) {
                    destroyed=true;main.removeCallbacks(prune);capture.destroy();clients.clear();WINDOWS.remove(root);
                    v.removeOnAttachStateChangeListener(this);
                }
            });
        }
        void start() {
            if(destroyed||root.getDisplay()==null)return;
            root.getDisplay().getRealSize(size);
            capture.update(new Rect(0,0,size.x,size.y),!clients.isEmpty());
            if(!scheduled){scheduled=true;main.postDelayed(prune,400);}
        }
        void release(View view) {clients.remove(view);if(clients.isEmpty()){capture.stop();frame=null;}}
        void prune() {
            scheduled=false;
            for(Iterator<View> it=clients.keySet().iterator();it.hasNext();)if(!visible(it.next())||!FrostedSurface.requested())it.remove();
            if(clients.isEmpty()){capture.stop();frame=null;}else start();
        }
    }
}
