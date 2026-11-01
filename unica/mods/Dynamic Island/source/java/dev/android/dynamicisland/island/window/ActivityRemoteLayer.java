package dev.android.dynamicisland.island.window;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import dev.android.dynamicisland.island.view.IslandView;

/** Lets iMode own activity switching without replacing a notification's native buttons or sliders. */
final class ActivityRemoteLayer extends FrameLayout {
    private final IslandView island;
    private MotionEvent down;
    private boolean forwarding, childOwnsDrag;

    ActivityRemoteLayer(Context context,IslandView island) { super(context); this.island=island; }

    @Override public void requestDisallowInterceptTouchEvent(boolean disallow) {
        childOwnsDrag=disallow;
        super.requestDisallowInterceptTouchEvent(disallow);
    }

    @Override public boolean dispatchTouchEvent(MotionEvent event) {
        int action=event.getActionMasked();
        // A restoring drag owns its UP too, while the newly revealed island is still transparent.
        if(!(forwarding ? island.iModeGestureEnabled() : island.iModeTouchEnabled())) {
            clear();return super.dispatchTouchEvent(event);
        }
        if(action==MotionEvent.ACTION_DOWN) {
            clear();down=MotionEvent.obtain(event);
            // Moving RemoteViews must not intercept top-row taps or execute a button halfway through a morph.
            forwarding=island.iModeOwnsTouch(event.getX(),event.getY());
        }
        if(!forwarding && down!=null && !childOwnsDrag && action==MotionEvent.ACTION_MOVE) {
            float dx=event.getX()-down.getX(),dy=event.getY()-down.getY();
            float density=getResources().getDisplayMetrics().density;
            boolean horizontal=Math.abs(dx)>density*26 && Math.abs(dx)>Math.abs(dy)*1.2f;
            boolean hide=dy < -density*30 && -dy>Math.abs(dx)*1.2f;
            if(horizontal || hide) {
                MotionEvent cancel=MotionEvent.obtain(event);cancel.setAction(MotionEvent.ACTION_CANCEL);
                try { super.dispatchTouchEvent(cancel); } finally { cancel.recycle(); }
                island.onTouchEvent(down);forwarding=true;
            }
        }
        boolean handled=forwarding ? island.onTouchEvent(event) : super.dispatchTouchEvent(event);
        if(action==MotionEvent.ACTION_UP || action==MotionEvent.ACTION_CANCEL) clear();
        return handled;
    }
    private void clear() {
        if(down!=null) down.recycle();down=null;forwarding=false;childOwnsDrag=false;
    }
    @Override protected void onDetachedFromWindow() { clear();super.onDetachedFromWindow(); }
}
