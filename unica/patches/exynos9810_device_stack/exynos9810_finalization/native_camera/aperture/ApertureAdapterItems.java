package io.mesalabs.unica.camera;

import android.view.*;
import android.widget.*;
import android.graphics.Color;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.*;
import android.util.Log;

/** A genuine Camera quick-setting model/holder, owned and scrolled by RecyclerView. */
public final class ApertureAdapterItems {
    static final String MARKER = "UN1CA_NATIVE_APERTURE_ITEM";
    static final int ITEM_ID = -21838;
    public interface Controller extends View.OnClickListener {
        boolean available();
        void paint(TextView text, View item);
    }
    private static final WeakHashMap<Object, WeakReference<Controller>> owners = new WeakHashMap<>();
    private static final WeakHashMap<View, Saved> customized = new WeakHashMap<>();
    private static final class Saved {
        final WeakReference<Object> holder;
        final FrameLayout.LayoutParams textParams;
        Saved(Object holder, TextView text) {
            this.holder = new WeakReference<>(holder);
            textParams = new FrameLayout.LayoutParams((FrameLayout.LayoutParams) text.getLayoutParams());
        }
    }
    static void set(Object object, String name, Object value) throws Exception {
        for (Class<?> c=object.getClass(); c!=null; c=c.getSuperclass()) {
            try { Field f=c.getDeclaredField(name); f.setAccessible(true); f.set(object,value); return; }
            catch (NoSuchFieldException ignored) { }
        }
        throw new NoSuchFieldException(name);
    }
    static boolean marker(Object item) {
        try { return MARKER.equals(ApertureControl.field(item,"f")); }
        catch (Exception ignored) { return false; }
    }
    static Controller owner(Object adapter) {
        WeakReference<Controller> ref=owners.get(adapter);
        Controller result=ref==null?null:ref.get();
        return result!=null && result.available()?result:null;
    }
    public static void attach(View root, Controller controller) throws Exception {
        Object adapter=ApertureControl.field(root,"mMainAdapter");
        if (adapter==null) return;
        owners.put(adapter,new WeakReference<>(controller));
        if (refresh(adapter)) notifyLater(root,adapter);
    }
    public static void detach(View root) {
        try {
            Object adapter=ApertureControl.field(root,"mMainAdapter");
            if(adapter==null)return;
            owners.remove(adapter);
            if(refresh(adapter))notifyLater(root,adapter);
        } catch(Exception e) {Log.w("UnicaAperture","Native item detach",e);}
    }
    static void notifyLater(View root,Object adapter) {
        root.post(() -> {
            try { ApertureControl.call(adapter,"notifyDataSetChanged"); }
            catch(Exception e) { Log.w("UnicaAperture","Native adapter refresh",e); }
        });
    }
    /** Called after Camera assigns a refreshed model list, before its own notify. */
    public static boolean refresh(Object adapter) {
        try {
            if(!"MAIN".equals(((Enum<?>)ApertureControl.field(adapter,"mItemType")).name()))return false;
            List<?> original=(List<?>)ApertureControl.field(adapter,"mItemList");
            ArrayList<Object> list=new ArrayList<>(); Object custom=null, motion=null;
            for(Object item:original) {
                if(marker(item)) {custom=item;continue;}
                list.add(item);
                if("MOTION_PHOTO_MENU".equals(((Enum<?>)ApertureControl.field(item,"a")).name()))motion=item;
            }
            Controller controller=owner(adapter);
            if(controller!=null && motion!=null) {
                if(custom==null) {
                    custom=ApertureControl.call(motion,"clone");
                    if(custom==motion)throw new IllegalStateException("Camera item clone failed");
                    Object command=ApertureControl.field(motion,"a");
                    Object sentinel=command.getClass().getField("QUICK_SETTING_INDICATOR_DIVIDER").get(null);
                    set(custom,"a",sentinel);set(custom,"b",null);
                    set(custom,"c",ITEM_ID);set(custom,"d",ITEM_ID);set(custom,"f",MARKER);
                    set(custom,"g",false);set(custom,"h",true);set(custom,"i",false);
                }
                list.add(list.indexOf(motion)+1,custom);
            }
            boolean same=list.size()==original.size();
            if(same)for(int i=0;i<list.size();i++)if(list.get(i)!=original.get(i)){same=false;break;}
            if(same)return false;
            set(adapter,"mItemList",list);
            Log.i("UnicaAperture","Native adapter aperture item="+(controller!=null && motion!=null)+" count="+list.size());
            return true;
        } catch(Exception e) {Log.w("UnicaAperture","Native model insertion rejected",e);return false;}
    }
    /** Intercept only the dedicated native model; normal items use Camera's original binder. */
    public static boolean bind(Object adapter,Object holder,int position) {
        try {
            List<?> list=(List<?>)ApertureControl.field(adapter,"mItemList");
            if(position<0 || position>=list.size())return false;
            Object model=list.get(position);
            View item=(View)ApertureControl.field(holder,"mContainer");
            TextView text=(TextView)ApertureControl.field(holder,"mButtonText");
            ImageView image=(ImageView)ApertureControl.field(holder,"mButtonImage");
            Controller controller=owner(adapter);
            if(marker(model) && controller==null) { item.setVisibility(View.GONE);return true; }
            if(!marker(model)) {
                Saved saved=customized.remove(item);
                if(saved!=null) {
                    item.setOnClickListener((View.OnClickListener)holder); item.setOnKeyListener((View.OnKeyListener)holder);
                    item.setOnTouchListener(null); item.setTooltipText(null); item.setStateDescription(null);
                    item.setVisibility(View.VISIBLE);item.setEnabled(true); item.setSelected(false);item.setPressed(false);
                    text.setLayoutParams(saved.textParams);text.setContentDescription(null);text.setVisibility(View.INVISIBLE);
                    image.setPressed(false);image.setDuplicateParentStateEnabled(false);image.setVisibility(View.VISIBLE);
                }
                return false;
            }
            if(!customized.containsKey(item))customized.put(item,new Saved(holder,text));
            set(holder,"mItem",model);
            int size=item.getResources().getDimensionPixelSize(item.getResources().getIdentifier("quick_setting_item_size","dimen",item.getContext().getPackageName()));
            FrameLayout.LayoutParams params=new FrameLayout.LayoutParams(size,size,Gravity.CENTER);
            text.setLayoutParams(params);text.setGravity(Gravity.CENTER);text.setVisibility(View.VISIBLE);
            text.setClickable(false);text.setFocusable(false);text.setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO);
            image.setImageDrawable(null);image.setAlpha(1f);image.setDuplicateParentStateEnabled(false);image.setFocusable(false);image.setPressed(false);
            int ripple=item.getResources().getIdentifier("default_ripple_effect","drawable",item.getContext().getPackageName());
            image.setBackground(item.getContext().getDrawable(ripple));
            ((View)ApertureControl.field(holder,"mBadge")).setVisibility(View.INVISIBLE);
            text.bringToFront();item.setVisibility(View.VISIBLE);item.setClickable(true);item.setFocusable(true);item.setOnClickListener(controller);
            item.setOnTouchListener((view,event)->{
                int action=event.getActionMasked();
                if(action==MotionEvent.ACTION_DOWN)image.setPressed(true);
                else if(action==MotionEvent.ACTION_UP || action==MotionEvent.ACTION_CANCEL)image.setPressed(false);
                else if(action==MotionEvent.ACTION_MOVE)image.setPressed(event.getX()>=0 && event.getX()<view.getWidth() && event.getY()>=0 && event.getY()<view.getHeight());
                return false;
            });
            controller.paint(text,item);
            int orientation=(Integer)ApertureControl.field(adapter,"mListOrientation");
            holder.getClass().getMethod("onOrientationChanged",int.class).invoke(holder,orientation);
            return true;
        }catch(Exception e){Log.e("UnicaAperture","Native aperture binder",e);return false;}
    }
    public static boolean rotate(Object holder,int orientation) {
        try {
            if(!marker(ApertureControl.field(holder,"mItem")))return false;
            View item=(View)ApertureControl.field(holder,"mContainer");
            Class<?> animation=Class.forName("com.sec.android.app.camera.util.AnimationUtil",true,item.getContext().getClassLoader());
            animation.getMethod("rotationAnimation",View.class,float.class).invoke(null,item,(float)orientation);
            return true;
        } catch(Exception e) {Log.w("UnicaAperture","Native item rotation",e);return false;}
    }
    public static void repaint(Controller controller) {
        for(Map.Entry<View,Saved> entry:new ArrayList<>(customized.entrySet())) {
            Object holder=entry.getValue().holder.get();
            try {
                if(holder==null)continue;
                Object adapter=ApertureControl.field(holder,"this$0");
                if(owner(adapter)==controller && marker(ApertureControl.field(holder,"mItem")))
                    controller.paint((TextView)ApertureControl.field(holder,"mButtonText"),entry.getKey());
            }catch(Exception e){Log.w("UnicaAperture","Native aperture paint",e);}
        }
    }
}
