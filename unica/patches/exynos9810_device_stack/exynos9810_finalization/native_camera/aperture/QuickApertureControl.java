package io.mesalabs.unica.camera;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.WeakHashMap;

/** A native-sized aperture slot inside Samsung's expandable quick-control bar. */
public final class QuickApertureControl {
    private static final String TAG = "UnicaAperture";
    private static final Handler main = new Handler(Looper.getMainLooper());
    private static final WeakHashMap<View, Session> sessions = new WeakHashMap<>();
    private static volatile Session active;

    public static void show(Object object) { bind(object, true); }

    public static void prepare(Object presenter) {
        try { bind(ApertureControl.field(presenter, "mView"), false); }
        catch (Exception e) { Log.w(TAG, "Aperture indicator preparation", e); }
    }

    private static void bind(Object object, boolean requireBar) {
        if (!(object instanceof View)) {
            try { object = ApertureControl.field(object, "this$0"); }
            catch (Exception e) { return; }
        }
        if (!(object instanceof View)) return;
        View root = (View) object;
        root.post(() -> {
            try {
                boolean mainVisible = Boolean.TRUE.equals(ApertureControl.call(root, "isMainListVisible"));
                if (requireBar && !mainVisible) return;
                Object engine = ApertureControl.field(root.getContext(), "mEngine");
                Object holder = ApertureControl.field(engine, "mMakerHolder");
                Object maker = ApertureControl.field(ApertureControl.call(holder, "getMakerPublicSettings"), "mMaker");
                if (!ApertureControl.dualAperture(root.getContext(), maker)) { hide(root); return; }
                Session session = sessions.get(root);
                if (session == null) {
                    session = new Session(root);
                    sessions.put(root, session);
                }
                session.open(engine, maker, mainVisible);
                active = session;
            } catch (Exception e) { Log.w(TAG, "Quick aperture unavailable; stock controls retained", e); }
        });
    }

    public static void hide(Object object) {
        if (!(object instanceof View)) return;
        Session session = sessions.get((View) object);
        if (session != null) session.close();
        if (active == session && (session == null || !session.bound)) active = null;
    }

    public static void stop(Object presenter) {
        try {
            Object object = ApertureControl.field(presenter, "mView");
            if (!(object instanceof View)) return;
            Session session = sessions.get((View) object);
            if (session != null) { session.bound = false; session.close(); }
            if (active == session) active = null;
        } catch (Exception e) { Log.w(TAG, "Aperture lifecycle cleanup", e); }
    }

    /** Drop manual UI state before the engine switches lens, mode or stops. */
    public static void resetEngine(Object engine) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            main.post(() -> resetEngine(engine));
            return;
        }
        for (Session session : new java.util.ArrayList<>(sessions.values())) {
            if (session.engine.get() != engine) continue;
            session.bound = false;
            session.close();
            if (active == session) active = null;
        }
    }

    /** Runs on Samsung's lens callback thread; UI work only when value changes. */
    public static void onLensInfo(Object info, Object device) {
        Session session = active;
        if (session == null || session.root.get() == null) return;
        try {
            Float value = (Float) ApertureControl.field(info, "a");
            String id = (String) ApertureControl.call(device, "n");
            if (!id.equals(session.cameraId)) {
                main.post(() -> {
                    if (active == session) { session.bound = false; session.close(); active = null; }
                });
                return;
            }
            if (value == null ||
                    (Math.abs(value - 1.5f) > 0.01f && Math.abs(value - 2.4f) > 0.01f)) return;
            Float previous = session.reported;
            if (previous != null && Math.abs(previous - value) < 0.001f) return;
            session.reported = value;
            main.post(() -> {
                if (active == session) {
                    session.pending = false;
                    TextView text = session.text.get();
                    if (text != null) text.removeCallbacks(session.timeout);
                    TextView pin = session.pin.get();
                    if (pin != null) pin.removeCallbacks(session.timeout);
                    session.update();
                }
            });
        } catch (Exception e) { Log.w(TAG, "Lens result unavailable", e); }
    }

    private static View named(View root, String name) {
        return root.findViewById(root.getResources().getIdentifier(name, "id", root.getContext().getPackageName()));
    }

    /** Same drawable and 40dp content bounds as quick_setting_button_image. */
    private static void installStockFeedback(TextView button) {
        int ripple = button.getResources().getIdentifier("default_ripple_effect", "drawable", button.getContext().getPackageName());
        int size = button.getResources().getIdentifier("quick_setting_button_image_size", "dimen", button.getContext().getPackageName());
        if (ripple == 0 || size == 0) throw new IllegalStateException("Missing stock Camera press feedback");
        int diameter = button.getResources().getDimensionPixelSize(size);
        final int[] applied = {-1, -1};
        Runnable apply = () -> {
            int width = button.getWidth(), height = button.getHeight();
            if (width <= 0 || height <= 0 || (applied[0] == width && applied[1] == height)) return;
            int circle = Math.min(diameter, Math.min(width, height));
            int horizontal = (width - circle) / 2, vertical = (height - circle) / 2;
            Drawable stock = button.getContext().getDrawable(ripple).mutate();
            button.setBackground(new InsetDrawable(stock, horizontal, vertical, horizontal, vertical));
            button.setPadding(0, 0, 0, 0);
            applied[0] = width; applied[1] = height;
        };
        button.addOnLayoutChangeListener((view, left, top, right, bottom, oldLeft, oldTop, oldRight, oldBottom) -> apply.run());
        button.post(apply);
    }

    /** Use the Camera indicator's own numeric font sizing; AUTO is slightly smaller. */
    private static void applyTypography(TextView button, int mode) {
        int numericSize = button.getResources().getIdentifier("quick_setting_indicator_ev_text_size", "dimen", button.getContext().getPackageName());
        if (mode == ApertureMode.AUTO) {
            button.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 11f);
        } else if (numericSize != 0) {
            button.setTextSize(TypedValue.COMPLEX_UNIT_PX, button.getResources().getDimension(numericSize));
        } else {
            button.setTextSize(TypedValue.COMPLEX_UNIT_DIP, 11.7f);
        }
    }

    private static final class Session implements View.OnClickListener {
        final WeakReference<View> root;
        final WeakReference<TextView> text;
        final WeakReference<View> list;
        final WeakReference<TextView> pin;
        final WeakReference<ViewGroup> indicatorList;
        final int slot;
        int originalMargin;
        WeakReference<Object> engine = new WeakReference<>(null);
        WeakReference<Object> maker = new WeakReference<>(null);
        volatile String cameraId;
        volatile Float reported;
        boolean pending, ownedCallback, selected, bound, autoBaselineSaved;
        int mode = ApertureMode.AUTO;
        Object autoBaseline;
        WeakReference<Object> baselineMaker = new WeakReference<>(null);
        final Runnable timeout;

        Session(View root) throws Exception {
            this.root = new WeakReference<>(root);
            View mainList = named(root, "quick_setting_main_list");
            View close = named(root, "quick_setting_close_button");
            ViewGroup wrapper = (ViewGroup) named(root, "quick_setting_list_wrapper");
            if (mainList == null || close == null || wrapper == null) throw new IllegalStateException("Missing quick bar");
            list = new WeakReference<>(mainList);
            slot = Math.round(56 * root.getResources().getDisplayMetrics().density);
            TextView button = new TextView(root.getContext());
            int style = root.getResources().getIdentifier("SecNumFixedSemiBold", "style", root.getContext().getPackageName());
            if (style != 0) button.setTextAppearance(style);
            applyTypography(button, ApertureMode.AUTO);
            button.setTextColor(Color.WHITE);
            button.setGravity(Gravity.CENTER);
            button.setClickable(true);
            button.setFocusable(true);
            button.setVisibility(View.GONE);
            button.setOnClickListener(this);
            installStockFeedback(button);
            Class<?> paramsType = Class.forName("androidx.constraintlayout.widget.ConstraintLayout$LayoutParams", true, root.getClass().getClassLoader());
            ViewGroup.LayoutParams params = (ViewGroup.LayoutParams) paramsType.getConstructor(int.class, int.class).newInstance(slot, 0);
            paramsType.getField("endToStart").setInt(params, close.getId());
            paramsType.getField("topToTop").setInt(params, 0);
            paramsType.getField("bottomToBottom").setInt(params, 0);
            wrapper.addView(button, params);
            text = new WeakReference<>(button);
            ViewGroup indicators = (ViewGroup) named(root, "quick_setting_indicator_list");
            ViewGroup area = (ViewGroup) named(root, "quick_setting_indicator_list_area");
            if (indicators == null || area == null) throw new IllegalStateException("Missing indicator area");
            indicatorList = new WeakReference<>(indicators);
            TextView badge = new TextView(root.getContext());
            if (style != 0) badge.setTextAppearance(style);
            applyTypography(badge, ApertureMode.AUTO);
            badge.setGravity(Gravity.CENTER); badge.setVisibility(View.GONE);
            badge.setClickable(true); badge.setFocusable(true); badge.setOnClickListener(this);
            installStockFeedback(badge);
            ViewGroup.LayoutParams badgeParams = (ViewGroup.LayoutParams) paramsType.getConstructor(int.class, int.class).newInstance(1, 1);
            paramsType.getField("leftToLeft").setInt(badgeParams, 0);
            paramsType.getField("topToTop").setInt(badgeParams, 0);
            area.addView(badge, badgeParams);
            pin = new WeakReference<>(badge);
            root.getViewTreeObserver().addOnGlobalLayoutListener(this::positionPin);
            timeout = () -> { pending = false; update(); };
        }

        void open(Object engine, Object maker, boolean mainVisible) throws Exception {
            View mainList = list.get(); TextView button = text.get();
            if (mainList == null || button == null) return;
            boolean alreadyOpen = button.getVisibility() == View.VISIBLE;
            this.engine = new WeakReference<>(engine); this.maker = new WeakReference<>(maker);
            cameraId = (String) ApertureControl.call(ApertureControl.field(maker, "mCamDevice"), "n");
            Object manager = ApertureControl.call(engine, "getCallbackManager");
            Object callback = ApertureControl.field(manager, "mLensInfoCallback");
            reported = (Float) ApertureControl.field(callback, "mAperture");
            if (reported != null && Math.abs(reported - 1.5f) > 0.01f && Math.abs(reported - 2.4f) > 0.01f) reported = null;
            // Preserve Pro's registered listener. Photo normally has none.
            if (!bound) {
                ownedCallback |= ((java.util.List<?>) ApertureControl.field(callback, "mListenerList")).isEmpty();
                Method enable = manager.getClass().getMethod("enableLensInfoCallback", boolean.class);
                enable.invoke(manager, true);
            }
            if (mainVisible && !alreadyOpen) {
                ViewGroup.MarginLayoutParams params = (ViewGroup.MarginLayoutParams) mainList.getLayoutParams();
                originalMargin = params.rightMargin;
                params.rightMargin = originalMargin + slot;
                params.setMarginEnd(originalMargin + slot);
                mainList.setLayoutParams(params);
            }
            if (!autoBaselineSaved || baselineMaker.get() != maker) {
                // Preserve the donor/HAL template's real default, including null.
                // AUTO restores this exact value rather than inventing an f-number.
                Method get = maker.getClass().getMethod("getPublicSetting", CaptureRequest.Key.class);
                autoBaseline = get.invoke(maker, CaptureRequest.LENS_APERTURE);
                autoBaselineSaved = true; baselineMaker = new WeakReference<>(maker);
                mode = ApertureMode.AUTO; selected = false;
                Log.i(TAG, "Native automatic aperture baseline=" + autoBaseline);
            }
            bound = true;
            pending = false; if (mainVisible) button.setVisibility(View.VISIBLE); update();
        }

        void close() {
            TextView button = text.get(); View mainList = list.get();
            if (button != null && button.getVisibility() == View.VISIBLE) {
                button.setPressed(false);
                button.setVisibility(View.GONE); button.removeCallbacks(timeout);
                if (mainList != null) {
                    ViewGroup.MarginLayoutParams params = (ViewGroup.MarginLayoutParams) mainList.getLayoutParams();
                    params.rightMargin = originalMargin; params.setMarginEnd(originalMargin);
                    mainList.setLayoutParams(params);
                }
            }
            try {
                Object current = engine.get();
                if (!bound && ownedCallback && current != null) {
                    Object manager = ApertureControl.call(current, "getCallbackManager");
                    Object callback = ApertureControl.field(manager, "mLensInfoCallback");
                    if (((java.util.List<?>) ApertureControl.field(callback, "mListenerList")).isEmpty())
                        manager.getClass().getMethod("enableLensInfoCallback", boolean.class).invoke(manager, false);
                    ownedCallback = false;
                }
            } catch (Exception e) { Log.w(TAG, "Quick aperture cleanup", e); }
            pending = false;
            if (!bound) {
                reported = null;
                TextView badge = pin.get();
                if (badge != null) { badge.setPressed(false); badge.setVisibility(View.GONE); badge.removeCallbacks(timeout); }
            }
        }

        void update() {
            TextView button = text.get(); if (button == null) return;
            Float value = reported;
            button.setText(ApertureMode.label(mode, value));
            applyTypography(button, mode);
            button.setEnabled(value != null && !pending);
            button.setSelected(selected);
            button.setContentDescription("Aperture " + button.getText() + ". Tap for " + ApertureMode.name(ApertureMode.next(mode)));
            int colorId = button.getResources().getIdentifier("quick_setting_indicator_ev_text_color", "color", button.getContext().getPackageName());
            int color = selected && colorId != 0 ? button.getContext().getColor(colorId) : Color.WHITE;
            int alphaId = button.getResources().getIdentifier(value != null && !pending ? "default_enable_alpha" : "default_disable_alpha", "integer", button.getContext().getPackageName());
            if (alphaId != 0) {
                int alpha = button.getResources().getInteger(alphaId);
                color = Color.argb(Color.alpha(color) * alpha / 255, Color.red(color), Color.green(color), Color.blue(color));
            }
            if (value == null || pending) button.setPressed(false);
            button.setTextColor(color);
            TextView badge = pin.get();
            if (badge != null) {
                applyTypography(badge, mode);
                badge.setText(button.getText()); badge.setTextColor(color);
                badge.setEnabled(value != null && !pending);
                if (value == null || pending) badge.setPressed(false);
                badge.setSelected(selected);
                badge.setContentDescription(button.getContentDescription());
                badge.setVisibility(bound && value != null ? View.VISIBLE : View.GONE);
                positionPin();
            }
        }

        void positionPin() {
            TextView badge = pin.get(); ViewGroup indicators = indicatorList.get();
            if (badge == null || indicators == null || !bound || badge.getVisibility() != View.VISIBLE) return;
            View first = null;
            for (int i = 0; i < indicators.getChildCount(); i++) {
                View child = indicators.getChildAt(i);
                if (child.getVisibility() == View.VISIBLE && (first == null || child.getLeft() < first.getLeft())) first = child;
            }
            if (first == null || first.getWidth() == 0) return;
            int[] item = new int[2], parent = new int[2];
            first.getLocationOnScreen(item); ((View) badge.getParent()).getLocationOnScreen(parent);
            int width = first.getWidth(), height = first.getHeight();
            int left = Math.max(0, item[0] - parent[0] - width), top = item[1] - parent[1];
            ViewGroup.MarginLayoutParams params = (ViewGroup.MarginLayoutParams) badge.getLayoutParams();
            if (params.width != width || params.height != height || params.leftMargin != left || params.topMargin != top) {
                params.width = width; params.height = height; params.leftMargin = left; params.topMargin = top;
                badge.setLayoutParams(params);
            }
        }

        @Override public void onClick(View clicked) {
            View owner = root.get(); Object currentMaker = maker.get(); Float value = reported;
            if (owner == null || currentMaker == null || value == null || pending) return;
            try {
                Object context = owner.getContext();
                for (String state : new String[]{"isCapturing", "isCaptureRequested", "isRecording", "isRecordingProcessStarted"})
                    if (Boolean.TRUE.equals(ApertureControl.call(context, state))) return;
                if (!ApertureControl.dualAperture(owner.getContext(), currentMaker)) return;
                Method set = currentMaker.getClass().getMethod("setPublicSetting", CaptureRequest.Key.class, Object.class);
                if (!autoBaselineSaved || baselineMaker.get() != currentMaker) return;
                int nextMode = ApertureMode.next(mode);
                Object requested = ApertureMode.request(nextMode, autoBaseline);
                set.invoke(currentMaker, CaptureRequest.LENS_APERTURE, requested);
                try {
                    ApertureControl.call(currentMaker, "restartPreviewRepeating");
                } catch (Exception failed) {
                    set.invoke(currentMaker, CaptureRequest.LENS_APERTURE, ApertureMode.request(mode, autoBaseline));
                    ApertureControl.call(currentMaker, "restartPreviewRepeating");
                    throw failed;
                }
                mode = nextMode; selected = mode != ApertureMode.AUTO;
                Log.i(TAG, "Aperture mode=" + ApertureMode.name(mode) + " request=" + requested);
                pending = true; update(); clicked.removeCallbacks(timeout); clicked.postDelayed(timeout, 1500);
            } catch (Exception e) { pending = false; update(); Log.w(TAG, "Quick aperture request failed", e); }
        }
    }
}
