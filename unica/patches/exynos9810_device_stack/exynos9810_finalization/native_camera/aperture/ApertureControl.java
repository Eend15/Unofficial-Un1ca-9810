package io.mesalabs.unica.camera;

import android.content.Context;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.WeakHashMap;

/** Restores the physical two-position aperture control in Samsung Camera Pro. */
public final class ApertureControl {
    private static final String TAG = "UnicaAperture";
    private static final WeakHashMap<View, Control> controls = new WeakHashMap<>();

    static Object field(Object object, String name) throws Exception {
        for (Class<?> c = object.getClass(); c != null; c = c.getSuperclass()) {
            try {
                Field f = c.getDeclaredField(name);
                f.setAccessible(true);
                return f.get(object);
            } catch (NoSuchFieldException ignored) { }
        }
        throw new NoSuchFieldException(name);
    }

    static Object call(Object object, String name) throws Exception {
        Method method = object.getClass().getMethod(name);
        method.setAccessible(true);
        return method.invoke(object);
    }

    private static Object maker(Object presenter) throws Exception {
        Object engine = field(presenter, "mEngine");
        Object holder = field(engine, "mMakerHolder");
        return field(call(holder, "getMakerPublicSettings"), "mMaker");
    }

    static boolean dualAperture(Context context, Object maker) throws Exception {
        String id = (String) call(field(maker, "mCamDevice"), "n");
        CameraManager manager = (CameraManager) context.getSystemService(Context.CAMERA_SERVICE);
        CameraCharacteristics c = manager.getCameraCharacteristics(id);
        Integer facing = c.get(CameraCharacteristics.LENS_FACING);
        float[] apertures = c.get(CameraCharacteristics.LENS_INFO_AVAILABLE_APERTURES);
        boolean wide = false, narrow = false;
        if (apertures != null) for (float f : apertures) {
            wide |= Math.abs(f - 1.5f) < 0.01f;
            narrow |= Math.abs(f - 2.4f) < 0.01f;
        }
        return facing != null && facing == CameraCharacteristics.LENS_FACING_BACK && wide && narrow;
    }

    /** Called only from the existing Pro/Pro Video lens-result indicator path. */
    public static boolean bind(Object presenter, Object indicator, float reported) {
        try {
            if (!(indicator instanceof View)) return false;
            View root = (View) indicator;
            int id = root.getResources().getIdentifier("aperture_indicator", "id", root.getContext().getPackageName());
            View view = root.findViewById(id);
            if (!(view instanceof TextView)) return false;
            Control control = controls.get(view);
            if (!dualAperture(root.getContext(), maker(presenter))) {
                if (control != null) {
                    view.removeCallbacks(control.timeout);
                    view.setOnClickListener(null);
                    view.setClickable(false);
                    view.setFocusable(false);
                    view.setContentDescription(null);
                    view.setEnabled(true);
                    controls.remove(view);
                }
                return false;
            }
            if (control == null || control.presenter.get() != presenter) {
                control = new Control(presenter, (TextView) view);
                controls.put(view, control);
                view.setOnClickListener(control);
                view.setClickable(true);
                view.setFocusable(true);
                int target = Math.round(48 * view.getResources().getDisplayMetrics().density);
                view.setMinimumWidth(target);
                view.setMinimumHeight(target);
            }
            // The visible value is supplied by Samsung's actual lens result,
            // never changed optimistically to the value that was requested.
            control.reported = reported;
            control.pending = false;
            view.removeCallbacks(control.timeout);
            view.setEnabled(true);
            view.setContentDescription(String.format(Locale.getDefault(),
                    "Aperture f/%.1f. Tap to switch to f/%.1f", reported, reported < 2f ? 2.4f : 1.5f));
            Handler handler = (Handler) field(presenter, "mHandler");
            handler.removeCallbacks((Runnable) field(presenter, "mHideApertureIndicatorRunnable"));
            return true;
        } catch (Exception e) {
            Log.w(TAG, "Aperture control unavailable; retaining stock indicator", e);
            return false;
        }
    }

    private static final class Control implements View.OnClickListener {
        final WeakReference<Object> presenter;
        final WeakReference<TextView> view;
        float reported;
        boolean pending;
        final Runnable timeout;
        Control(Object presenter, TextView view) {
            this.presenter = new WeakReference<>(presenter);
            this.view = new WeakReference<>(view);
            this.timeout = () -> {
                pending = false;
                TextView text = this.view.get();
                if (text != null) text.setEnabled(true);
            };
        }
        @Override public void onClick(View clicked) {
            Object owner = presenter.get();
            if (owner == null || pending) return;
            try {
                Object context = field(owner, "mCameraContext");
                for (String state : new String[]{"isCapturing", "isCaptureRequested", "isRecording", "isRecordingProcessStarted"}) {
                    if (Boolean.TRUE.equals(call(context, state))) return;
                }
                Object active = maker(owner);
                if (!dualAperture(clicked.getContext(), active)) return;
                float requested = reported < 2f ? 2.4f : 1.5f;
                Method set = active.getClass().getMethod("setPublicSetting", CaptureRequest.Key.class, Object.class);
                set.setAccessible(true);
                set.invoke(active, CaptureRequest.LENS_APERTURE, Float.valueOf(requested));
                call(active, "restartPreviewRepeating");
                pending = true;
                clicked.setEnabled(false);
                clicked.removeCallbacks(timeout);
                clicked.postDelayed(timeout, 1500);
                Log.i(TAG, "Requested physical aperture f/" + requested);
            } catch (Exception e) {
                pending = false;
                clicked.setEnabled(true);
                Log.w(TAG, "Aperture request failed; keeping reported value", e);
            }
        }
    }
}
