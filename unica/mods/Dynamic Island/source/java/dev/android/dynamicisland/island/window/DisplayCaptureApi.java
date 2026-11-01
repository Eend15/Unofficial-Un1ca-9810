package dev.android.dynamicisland.island.window;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.HardwareBuffer;
import android.view.SurfaceControl;
import dev.android.dynamicisland.xposed.Diagnostics;
import dev.android.dynamicisland.xposed.XLog;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/** Resolve capture types from the device's service signature, never the module's dex loader. */
final class DisplayCaptureApi {
    private final Object service;
    private Method capture,crop,scale,exclude,secure,build,factory;
    private Constructor<?> builder;
    private Class<?> argsType,listenerType;
    private final Method samsung;
    private boolean explicitFailed;

    DisplayCaptureApi(Context systemUiContext) throws Exception {
        this(service(systemUiContext.getClassLoader()));
    }
    // Service injection exercises a relocated, host-only API in tests.
    DisplayCaptureApi(Object service) throws Exception {
        this.service=service;
        Method vendor=null;
        try {
            vendor=accessible(service.getClass().getMethod("takeScreenshotToTargetWindow",int.class,int.class,
                    boolean.class,Rect.class,int.class,int.class,boolean.class,boolean.class));
        }catch(NoSuchMethodException absent) { /* Other vendors use the AOSP service signature below. */ }
        samsung=vendor;
        try {
            bindExplicitCapture();
        }catch(Exception|LinkageError unavailable) {
            capture=null;
            if(samsung==null)throw unavailable;
            Diagnostics.fact("material explicit capture",unavailable.getClass().getSimpleName()+": "+unavailable.getMessage());
            Diagnostics.fact("material capture API","Samsung target-window fallback; protection policies retained");
        }
    }
    private void bindExplicitCapture() throws Exception {
        Method found=null;
        for(Method method:service.getClass().getMethods()) {
            Class<?>[] p=method.getParameterTypes();
            if(method.getName().equals("captureDisplay")&&p.length==3&&p[0]==int.class
                    &&!p[1].isPrimitive()&&!p[2].isPrimitive()) { found=method;break; }
        }
        if(found==null)throw new NoSuchMethodException("device window service captureDisplay");
        capture=accessible(found);
        argsType=capture.getParameterTypes()[1];listenerType=capture.getParameterTypes()[2];
        Class<?> builderType=null;
        for(Class<?> type:argsType.getDeclaredClasses()) if(type.getSimpleName().equals("Builder")) {builderType=type;break;}
        if(builderType==null)throw new NoSuchMethodException(argsType.getName()+" builder");
        builder=builderType.getDeclaredConstructor();builder.setAccessible(true);
        crop=accessible(builderType.getMethod("setSourceCrop",Rect.class));
        scale=accessible(builderType.getMethod("setFrameScale",float.class));
        exclude=accessible(builderType.getMethod("setExcludeLayers",SurfaceControl[].class));
        secure=accessible(builderType.getMethod("setCaptureSecureLayers",boolean.class));
        build=accessible(builderType.getMethod("build"));
        factory=findFactory(listenerType,argsType);
        Diagnostics.fact("material capture API","explicit surface exclusion; "+argsType.getName()+" via "+String.valueOf(argsType.getClassLoader()));
    }
    private static Object service(ClassLoader hostLoader) throws Exception {
        Class<?> global=Class.forName("android.view.WindowManagerGlobal",false,hostLoader);
        return accessible(global.getMethod("getWindowManagerService")).invoke(null);
    }
    private static Method accessible(Method method) {method.setAccessible(true);return method;}
    private static Method findFactory(Class<?> listener,Class<?> args) throws Exception {
        Class<?>[] owners={listener.getEnclosingClass(),args.getEnclosingClass(),listener};
        for(Class<?> owner:owners) {
            if(owner==null)continue;
            for(Method method:owner.getDeclaredMethods()) {
                if(Modifier.isStatic(method.getModifiers())&&method.getParameterCount()==0
                        &&method.getName().equals("createSyncCaptureListener")
                        &&listener.isAssignableFrom(method.getReturnType()))return accessible(method);
            }
        }
        throw new NoSuchMethodException("device synchronous capture listener for "+listener.getName());
    }
    Bitmap read(Rect area,float amount,SurfaceControl excluded) throws Exception {
        return read(area,amount,excluded,0);
    }
    Bitmap read(Rect area,float amount,SurfaceControl excluded,int windowType) throws Exception {
        if(capture!=null&&!explicitFailed) {
            try {
                // Select the exact owned surface, not the first window with a
                // matching type. This also excludes its native blur children.
                return readExplicit(area,amount,excluded);
            }catch(Exception|LinkageError unavailable) {
                if(samsung==null)throw unavailable;
                explicitFailed=true;
                XLog.once("material explicit capture unavailable",unavailable);
                Diagnostics.fact("material capture API","Samsung target-window fallback; protection policies retained");
            }
        }
        if(samsung!=null) {
            if(windowType!=2017&&windowType!=2040&&windowType!=2000)
                throw new IllegalArgumentException("unsupported material host window type "+windowType);
            Object result=samsung.invoke(service,0,windowType,false,area,
                    Math.max(1,Math.round(area.width()*amount)),Math.max(1,Math.round(area.height()*amount)),false,false);
            if(result==null)return null;
            Bitmap bitmap=(Bitmap)accessible(result.getClass().getMethod("getCapturedBitmap")).invoke(result);
            if(bitmap==null)return null;
            Diagnostics.fact("material capture exclusion","below system window type "+windowType+"; target excluded");
            try{return bitmap.copy(Bitmap.Config.ARGB_8888,false);}finally{bitmap.recycle();}
        }
        throw new IllegalStateException("No material capture API available");
    }
    private Bitmap readExplicit(Rect area,float amount,SurfaceControl excluded) throws Exception {
        Object b=builder.newInstance();crop.invoke(b,area);scale.invoke(b,amount);
        // This exclusion and secure=false are required, not optional best-effort setters.
        exclude.invoke(b,(Object)new SurfaceControl[]{excluded});secure.invoke(b,false);
        Object args=build.invoke(b);
        if(!argsType.isInstance(args))throw new IllegalStateException("capture builder returned another API's arguments");
        Object listener=factory.invoke(null);
        if(!listenerType.isInstance(listener))throw new IllegalStateException("capture listener type mismatch");
        capture.invoke(service,0,args,listener);
        Diagnostics.fact("material capture exclusion","owned host SurfaceControl and children; secure=false");
        Object buffer=accessible(listener.getClass().getMethod("getBuffer")).invoke(listener);
        if(buffer==null)return null;
        Class<?> type=buffer.getClass();
        HardwareBuffer hardware=(HardwareBuffer)accessible(type.getMethod("getHardwareBuffer")).invoke(buffer);
        try {
            if(Boolean.TRUE.equals(accessible(type.getMethod("containsSecureLayers")).invoke(buffer)))return null;
            Bitmap bitmap=(Bitmap)accessible(type.getMethod("asBitmap")).invoke(buffer);
            if(bitmap==null)return null;
            try {return bitmap.copy(Bitmap.Config.ARGB_8888,false);}finally{bitmap.recycle();}
        }finally{if(hardware!=null)hardware.close();}
    }
}
