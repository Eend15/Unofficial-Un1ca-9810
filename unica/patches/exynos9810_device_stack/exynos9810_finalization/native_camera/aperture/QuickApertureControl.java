package io.mesalabs.unica.camera;

import android.graphics.Color;
import android.graphics.drawable.InsetDrawable;
import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.TypedValue;
import android.view.*;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.*;

/** Hardware-backed aperture controller with a genuine Camera RecyclerView item. */
public final class QuickApertureControl {
    private static final String TAG="UnicaAperture";
    private static final Handler main=new Handler(Looper.getMainLooper());
    private static final WeakHashMap<View,Session> sessions=new WeakHashMap<>();
    private static volatile Session active;
    static View resolve(Object object) {
        if(object instanceof View)return (View)object;
        try {Object value=ApertureControl.field(object,"this$0");return value instanceof View?(View)value:null;}
        catch(Exception ignored){return null;}
    }
    public static void show(Object object){bind(resolve(object));}
    public static void settle(Object object){bind(resolve(object));}
    public static void prepare(Object presenter){
        try{bind((View)ApertureControl.field(presenter,"mView"));}catch(Exception e){Log.w(TAG,"Aperture prepare",e);}
    }
    static void bind(View root){
        if(root==null)return;
        root.post(()->{
            try{
                Object engine=ApertureControl.field(root.getContext(),"mEngine");
                Object holder=ApertureControl.field(engine,"mMakerHolder");
                Object maker=ApertureControl.field(ApertureControl.call(holder,"getMakerPublicSettings"),"mMaker");
                Session session=sessions.get(root);
                if(!ApertureControl.dualAperture(root.getContext(),maker)){
                    if(session!=null)session.close();
                    if(active==session)active=null;
                    return;
                }
                if(session==null){session=new Session(root);sessions.put(root,session);}
                session.open(engine,maker);active=session;
            }catch(Exception e){Log.w(TAG,"Aperture native item unavailable; stock controls retained",e);}
        });
    }
    /** The native list itself owns visibility, scrolling, clipping and item lifetime. */
    public static void hide(Object object){
        View root=resolve(object);Session session=root==null?null:sessions.get(root);
        if(session!=null)session.clearPressed();
    }
    public static void stop(Object presenter){
        try{View root=(View)ApertureControl.field(presenter,"mView");Session session=sessions.get(root);
            if(session!=null)session.close();if(active==session)active=null;
        }catch(Exception e){Log.w(TAG,"Aperture stop",e);}
    }
    public static void resetEngine(Object engine){
        if(Looper.myLooper()!=Looper.getMainLooper()){main.post(()->resetEngine(engine));return;}
        for(Session session:new ArrayList<>(sessions.values()))if(session.engine.get()==engine){session.close();if(active==session)active=null;}
    }
    public static void onEngineState(Object engine,Object state){
        if(!(state instanceof Enum) || !"PREVIEWING".equals(((Enum<?>)state).name()))return;
        main.post(()->{for(Session session:new ArrayList<>(sessions.values()))if(session.engine.get()==engine)bind(session.root.get());});
    }
    public static void onLensInfo(Object info,Object device){
        Session session=active;if(session==null || !session.bound)return;
        try{
            String id=(String)ApertureControl.call(device,"n");
            if(!id.equals(session.cameraId))return;
            Float value=(Float)ApertureControl.field(info,"a");
            if(value==null || (Math.abs(value-1.5f)>.01f && Math.abs(value-2.4f)>.01f))return;
            Float previous=session.reported;if(previous!=null && Math.abs(previous-value)<.001f)return;
            session.reported=value;
            main.post(()->{if(active==session){session.pending=false;main.removeCallbacks(session.timeout);session.update();}});
        }catch(Exception e){Log.w(TAG,"Lens result unavailable",e);}
    }
    static View named(View root,String name){return root.findViewById(root.getResources().getIdentifier(name,"id",root.getContext().getPackageName()));}
    private static void applyTypography(TextView text,int mode){
        int style=text.getResources().getIdentifier("SecNumFixedSemiBold","style",text.getContext().getPackageName());
        if(style!=0)text.setTextAppearance(style);
        int size=text.getResources().getIdentifier("quick_setting_indicator_ev_text_size","dimen",text.getContext().getPackageName());
        if(mode==ApertureMode.AUTO)text.setTextSize(TypedValue.COMPLEX_UNIT_DIP,11f);
        else if(size!=0)text.setTextSize(TypedValue.COMPLEX_UNIT_PX,text.getResources().getDimension(size));
        else text.setTextSize(TypedValue.COMPLEX_UNIT_DIP,11.7f);
    }
    private static void installStockFeedback(TextView text){
        int ripple=text.getResources().getIdentifier("default_ripple_effect","drawable",text.getContext().getPackageName());
        if(ripple==0)return;
        int size=Math.round(40*text.getResources().getDisplayMetrics().density);
        text.addOnLayoutChangeListener((v,l,t,r,b,ol,ot,or,ob)->{
            if(r-l<=0 || b-t<=0 || (r-l==or-ol && b-t==ob-ot))return;
            int diameter=Math.min(size,Math.min(r-l,b-t));
            text.setBackground(new InsetDrawable(text.getContext().getDrawable(ripple),(r-l-diameter)/2,(b-t-diameter)/2,(r-l-diameter)/2,(b-t-diameter)/2));
        });
    }
    private static final class Session implements ApertureAdapterItems.Controller {
        final WeakReference<View> root;
        final WeakReference<TextView> pin;
        final WeakReference<ViewGroup> indicators;
        WeakReference<Object> engine=new WeakReference<>(null),maker=new WeakReference<>(null),baselineMaker=new WeakReference<>(null);
        volatile String cameraId;
        volatile Float reported;
        boolean bound,pending,ownedCallback,autoBaselineSaved;
        int mode=ApertureMode.AUTO;
        Object autoBaseline;
        final Runnable timeout=()->{pending=false;update();};
        Session(View root)throws Exception{
            this.root=new WeakReference<>(root);
            ViewGroup area=(ViewGroup)named(root,"quick_setting_indicator_list_area");
            ViewGroup list=(ViewGroup)named(root,"quick_setting_indicator_list");
            if(area==null || list==null)throw new IllegalStateException("Missing Camera indicator area");
            indicators=new WeakReference<>(list);
            TextView badge=new TextView(root.getContext());badge.setGravity(Gravity.CENTER);badge.setVisibility(View.GONE);
            badge.setClickable(true);badge.setFocusable(true);badge.setOnClickListener(this);installStockFeedback(badge);
            Class<?> type=Class.forName("androidx.constraintlayout.widget.ConstraintLayout$LayoutParams",true,root.getClass().getClassLoader());
            ViewGroup.LayoutParams params=(ViewGroup.LayoutParams)type.getConstructor(int.class,int.class).newInstance(1,1);
            type.getField("leftToLeft").setInt(params,0);type.getField("topToTop").setInt(params,0);
            area.addView(badge,params);pin=new WeakReference<>(badge);
            root.getViewTreeObserver().addOnGlobalLayoutListener(this::positionPin);
        }
        void open(Object engine,Object maker)throws Exception{
            boolean newMaker=this.maker.get()!=maker;
            this.engine=new WeakReference<>(engine);this.maker=new WeakReference<>(maker);
            cameraId=(String)ApertureControl.call(ApertureControl.field(maker,"mCamDevice"),"n");
            Object manager=ApertureControl.call(engine,"getCallbackManager");
            Object callback=ApertureControl.field(manager,"mLensInfoCallback");
            if(!bound || newMaker){
                ownedCallback|=((List<?>)ApertureControl.field(callback,"mListenerList")).isEmpty();
                manager.getClass().getMethod("enableLensInfoCallback",boolean.class).invoke(manager,true);
            }
            reported=(Float)ApertureControl.field(callback,"mAperture");
            if(reported!=null && Math.abs(reported-1.5f)>.01f && Math.abs(reported-2.4f)>.01f)reported=null;
            if(!autoBaselineSaved || baselineMaker.get()!=maker){
                autoBaseline=maker.getClass().getMethod("getPublicSetting",CaptureRequest.Key.class).invoke(maker,CaptureRequest.LENS_APERTURE);
                autoBaselineSaved=true;baselineMaker=new WeakReference<>(maker);mode=ApertureMode.AUTO;
                Log.i(TAG,"Native automatic aperture baseline="+autoBaseline);
            }
            bound=true;
            View owner=root.get();if(owner!=null)ApertureAdapterItems.attach(owner,this);
            update();
        }
        public boolean available(){return bound;}
        public void paint(TextView text,View item){
            applyTypography(text,mode);text.setText(ApertureMode.label(mode,reported));
            boolean enabled=bound && reported!=null && !pending;
            int id=text.getResources().getIdentifier("quick_setting_indicator_ev_text_color","color",text.getContext().getPackageName());
            int color=mode!=ApertureMode.AUTO && id!=0?text.getContext().getColor(id):Color.WHITE;
            int alpha=text.getResources().getIdentifier(enabled?"default_enable_alpha":"default_disable_alpha","integer",text.getContext().getPackageName());
            if(alpha!=0)color=Color.argb(Color.alpha(color)*text.getResources().getInteger(alpha)/255,Color.red(color),Color.green(color),Color.blue(color));
            text.setTextColor(color);text.setEnabled(enabled);
            String description="Aperture "+text.getText()+". Tap for "+ApertureMode.name(ApertureMode.next(mode));
            item.setContentDescription(description);item.setEnabled(enabled);item.setSelected(mode!=ApertureMode.AUTO);
            if(item!=text){item.setTooltipText(description);text.setContentDescription(null);}
            if(!enabled)item.setPressed(false);
        }
        void update(){
            TextView badge=pin.get();if(badge!=null){paint(badge,badge);badge.setVisibility(bound && reported!=null?View.VISIBLE:View.GONE);positionPin();}
            ApertureAdapterItems.repaint(this);
        }
        void clearPressed(){TextView badge=pin.get();if(badge!=null)badge.setPressed(false);}
        void close(){
            bound=false;pending=false;main.removeCallbacks(timeout);clearPressed();
            View owner=root.get();if(owner!=null)ApertureAdapterItems.detach(owner);
            TextView badge=pin.get();if(badge!=null)badge.setVisibility(View.GONE);
            try{Object current=engine.get();if(ownedCallback && current!=null){
                Object manager=ApertureControl.call(current,"getCallbackManager");Object callback=ApertureControl.field(manager,"mLensInfoCallback");
                if(((List<?>)ApertureControl.field(callback,"mListenerList")).isEmpty())manager.getClass().getMethod("enableLensInfoCallback",boolean.class).invoke(manager,false);
            }}catch(Exception e){Log.w(TAG,"Aperture callback cleanup",e);}ownedCallback=false;
        }
        void positionPin(){
            TextView badge=pin.get();ViewGroup list=indicators.get();if(badge==null || list==null || badge.getVisibility()!=View.VISIBLE)return;
            View first=null;for(int i=0;i<list.getChildCount();i++){View child=list.getChildAt(i);if(child.getVisibility()==View.VISIBLE && (first==null || child.getLeft()<first.getLeft()))first=child;}
            if(first==null || first.getWidth()==0)return;
            int[] item=new int[2],parent=new int[2];first.getLocationOnScreen(item);((View)badge.getParent()).getLocationOnScreen(parent);
            int width=first.getWidth(),height=first.getHeight(),left=Math.max(0,item[0]-parent[0]-width),top=item[1]-parent[1];
            ViewGroup.MarginLayoutParams params=(ViewGroup.MarginLayoutParams)badge.getLayoutParams();
            if(params.width!=width || params.height!=height || params.leftMargin!=left || params.topMargin!=top){params.width=width;params.height=height;params.leftMargin=left;params.topMargin=top;badge.setLayoutParams(params);}
        }
        public void onClick(View clicked){
            View owner=root.get();Object current=maker.get();if(owner==null || current==null || reported==null || pending || !bound)return;
            try{
                for(String state:new String[]{"isCapturing","isCaptureRequested","isRecording","isRecordingProcessStarted"})if(Boolean.TRUE.equals(ApertureControl.call(owner.getContext(),state)))return;
                if(!ApertureControl.dualAperture(owner.getContext(),current) || !autoBaselineSaved || baselineMaker.get()!=current)return;
                int next=ApertureMode.next(mode);Method set=current.getClass().getMethod("setPublicSetting",CaptureRequest.Key.class,Object.class);
                set.invoke(current,CaptureRequest.LENS_APERTURE,ApertureMode.request(next,autoBaseline));
                try{ApertureControl.call(current,"restartPreviewRepeating");}
                catch(Exception failed){set.invoke(current,CaptureRequest.LENS_APERTURE,ApertureMode.request(mode,autoBaseline));ApertureControl.call(current,"restartPreviewRepeating");throw failed;}
                mode=next;pending=true;update();main.removeCallbacks(timeout);main.postDelayed(timeout,1500);
                Log.i(TAG,"Aperture mode="+ApertureMode.name(mode)+" request="+ApertureMode.request(mode,autoBaseline));
            }catch(Exception e){pending=false;update();Log.w(TAG,"Aperture request failed",e);}
        }
    }
}
