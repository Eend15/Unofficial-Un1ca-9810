package dev.android.dynamicisland.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.RippleDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Gravity;
import android.view.View;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import dev.android.dynamicisland.R;
import dev.android.dynamicisland.xposed.Diagnostics;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/** Transient feedback after a real saved change, without adding labels to every settings row. */
final class SettingChangeFeedback implements SharedPreferences.OnSharedPreferenceChangeListener {
    private final Context context;
    private final OneUi ui;
    private final SharedPreferences prefs;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final Map<String,Object> previous = new HashMap<>();
    private final LinearLayout bar;
    private final TextView message;
    private final TextView restart;
    private boolean listening;
    private String pendingKey;
    private long nonce;
    private long requestedAt;
    private final Runnable showPending = this::showPending;
    private final Runnable hide = this::hide;
    private final Runnable checkConnection = this::checkConnection;

    SettingChangeFeedback(Context context, OneUi ui, SharedPreferences prefs, FrameLayout host, Runnable restartAction) {
        this.context=context;this.ui=ui;this.prefs=prefs;
        bar=new LinearLayout(context);bar.setOrientation(LinearLayout.VERTICAL);
        bar.setPadding(ui.dp(16),ui.dp(12),ui.dp(12),ui.dp(12));
        bar.setBackground(ui.round(0xFF29292E,ui.dp(20)));bar.setElevation(ui.dp(10));
        bar.setVisibility(View.GONE);bar.setAccessibilityLiveRegion(View.ACCESSIBILITY_LIVE_REGION_POLITE);
        message=ui.text("",14,Color.WHITE);
        bar.addView(message,new LinearLayout.LayoutParams(-1,-2));
        restart=ui.text(context.getString(R.string.restart_systemui),14,0xFF91BDFF);
        restart.setGravity(Gravity.CENTER);restart.setMinHeight(ui.dp(48));
        restart.setPadding(ui.dp(10),0,ui.dp(10),0);restart.setVisibility(View.GONE);
        restart.setBackground(new RippleDrawable(ColorStateList.valueOf(0x338DBAFF), null,
                ui.round(Color.WHITE,ui.dp(12))));
        restart.setOnClickListener(v->restartAction.run());
        LinearLayout.LayoutParams actionParams=new LinearLayout.LayoutParams(-2,-2);
        actionParams.gravity=Gravity.END;bar.addView(restart,actionParams);
        FrameLayout.LayoutParams params=new FrameLayout.LayoutParams(-1,-2,Gravity.BOTTOM);
        params.setMargins(ui.dp(14),0,ui.dp(14),ui.dp(16));host.addView(bar,params);
        bar.setOnApplyWindowInsetsListener((v,insets)->{
            int bottom=insets.getInsets(WindowInsets.Type.systemBars()|WindowInsets.Type.ime()).bottom;
            FrameLayout.LayoutParams lp=(FrameLayout.LayoutParams)bar.getLayoutParams();
            if(lp.bottomMargin!=ui.dp(16)+bottom){lp.bottomMargin=ui.dp(16)+bottom;bar.setLayoutParams(lp);}
            return insets;
        });
    }

    void start() {
        if(listening)return;
        previous.clear();previous.putAll(prefs.getAll());
        listening=true;prefs.registerOnSharedPreferenceChangeListener(this);
    }

    void stop() {
        listening=false;prefs.unregisterOnSharedPreferenceChangeListener(this);
        handler.removeCallbacksAndMessages(null);nonce=0;
        bar.animate().cancel();bar.setVisibility(View.GONE);
    }

    @Override public void onSharedPreferenceChanged(SharedPreferences source,String key) {
        if(!listening)return;
        Map<String,?> current=source.getAll();
        if(key==null) {
            if(previous.equals(current))return;
            previous.clear();previous.putAll(current);
        } else {
            Object value=current.get(key);
            if(Objects.equals(previous.get(key),value))return;
            if(value==null)previous.remove(key);else previous.put(key,value);
            if(ModuleSettings.KEY_PILL_PREVIEW_UNTIL.equals(key))return;
        }
        // Save/Cancel dialogs, sliders and switches all use this one saved-value path.
        // Coalesce a mode change or a reset that writes several preference keys.
        pendingKey=key;handler.removeCallbacks(showPending);handler.postDelayed(showPending,180);
    }

    private void showPending() {
        if(!listening)return;
        handler.removeCallbacks(hide);handler.removeCallbacks(checkConnection);
        show(messageFor(pendingKey,pendingKey==null?null:prefs.getAll().get(pendingKey)),false);
        nonce=Diagnostics.requestStatus(context);requestedAt=SystemClock.uptimeMillis();
        handler.postDelayed(checkConnection,250);
    }

    /** These settings wait for an event, rather than requiring a SystemUI restart. */
    static int messageFor(String key,Object value) {
        if(ModuleSettings.KEY_STOCK_CHARGING_ANIMATION.equals(key))return R.string.setting_apply_next_charge;
        if(ModuleSettings.KEY_AUTO_COLLAPSE_S.equals(key)||ModuleSettings.KEY_PAUSED_TIMEOUT_S.equals(key)
                ||ModuleSettings.KEY_AUTO_OPEN_S.equals(key))return R.string.setting_apply_next_card;
        if(Boolean.TRUE.equals(value)) {
            if(ModuleSettings.KEY_EVENT_CHARGING.equals(key))return R.string.setting_apply_next_charge;
            if(ModuleSettings.KEY_EVENT_BLUETOOTH.equals(key)||ModuleSettings.KEY_EVENT_HEADSET.equals(key))
                return R.string.setting_apply_next_connection;
            if(ModuleSettings.KEY_EVENT_RINGER.equals(key)||ModuleSettings.KEY_EVENT_TOGGLES.equals(key))
                return R.string.setting_apply_next_state;
            if(ModuleSettings.KEY_AUTO_OPEN_CARDS.equals(key))return R.string.setting_apply_next_card;
        }
        return R.string.setting_apply_soon;
    }

    private void checkConnection() {
        if(!listening)return;
        // This only checks that SystemUI can respond, not that a setting was applied.
        if(Diagnostics.statusAcknowledgedSince(context,nonce))dismissAfter(3000,false);
        else if(SystemClock.uptimeMillis()-requestedAt>=5000) {
            show(R.string.setting_apply_unconfirmed,true);dismissAfter(7000,true);
        } else handler.postDelayed(checkConnection,500);
    }

    private void dismissAfter(int delay,boolean hasAction) {
        AccessibilityManager accessibility=context.getSystemService(AccessibilityManager.class);
        int flags=AccessibilityManager.FLAG_CONTENT_TEXT;
        if(hasAction)flags|=AccessibilityManager.FLAG_CONTENT_CONTROLS;
        handler.postDelayed(hide,accessibility==null?delay:accessibility.getRecommendedTimeoutMillis(delay,flags));
    }

    private void show(int text,boolean offerRestart) {
        boolean appearing=bar.getVisibility()!=View.VISIBLE;
        bar.animate().cancel();bar.animate().withEndAction(null);message.setText(text);
        restart.setVisibility(offerRestart?View.VISIBLE:View.GONE);
        bar.setVisibility(View.VISIBLE);bar.requestApplyInsets();
        if(appearing){bar.setAlpha(0);bar.setTranslationY(ui.dp(8));}
        bar.animate().alpha(1).translationY(0).setDuration(160).start();
    }

    private void hide() {
        bar.animate().cancel();
        bar.animate().alpha(0).translationY(ui.dp(6)).setDuration(140)
                .withEndAction(()->bar.setVisibility(View.GONE)).start();
    }
}
