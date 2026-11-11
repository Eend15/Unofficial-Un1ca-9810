package dev.android.dynamicisland.island.view;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.view.View;
import dev.android.dynamicisland.xposed.XLog;
import dev.android.dynamicisland.settings.ModuleSettings;
import java.util.Arrays;

/** GPU-only foreground blur. One instance per card/layer: sharing a recorded node would repeat the last card. */
final class ContentBlur {
    static final float RADIUS_DP = 10;
    private static final int STEPS = 20;
    private final RenderEffect[] effects = new RenderEffect[STEPS + 1];
    private float effectRadius;
    private RenderNode node;
    private int nodeStep = -1;
    private View effectView;
    private int viewStep = -1;
    private boolean failed;

    /** The transition blur runs unless it is switched off, or, in automatic mode, the governor has paused it. */
    static boolean enabled(int mode, BlurGovernor governor, long nowMs) {
        if (mode == ModuleSettings.TRANSITION_BLUR_OFF) return false;
        if (mode == ModuleSettings.TRANSITION_BLUR_ALWAYS) return true;
        return governor.allowed(nowMs);
    }

    private int step(float amount) {
        return Math.round(IslandView.clamp01(amount) * STEPS);
    }

    private RenderEffect effect(int step, float radius) {
        if (radius != effectRadius) {
            Arrays.fill(effects, null);
            effectRadius = radius;
            nodeStep = viewStep = -1;
        }
        if (step == 0) return null;
        if (effects[step] == null) {
            float px = radius * step / STEPS;
            effects[step] = RenderEffect.createBlurEffect(px, px, Shader.TileMode.DECAL);
        }
        return effects[step];
    }

    /** Record just the foreground at its existing coordinates; the caller's clip still bounds the result. */
    Canvas begin(Canvas target, RectF bounds, float amount, float radius) {
        int level = ModuleSettings.lowPerformance() || !enabled(ModuleSettings.transitionBlurMode(), BlurGovernor.INSTANCE, android.os.SystemClock.uptimeMillis()) ? 0 : step(amount);
        if (failed || level == 0 || !target.isHardwareAccelerated() || bounds.isEmpty()) {
            if (node != null) {
                if (node.hasDisplayList()) node.discardDisplayList();
                if (nodeStep != 0) { node.setRenderEffect(null); nodeStep = 0; }
            }
            return target;
        }
        try {
            if (node == null) {
                node = new RenderNode("Island content transition");
                node.setClipToBounds(true);
            }
            RenderEffect filter = effect(level, radius);
            if (nodeStep != level) {
                node.setRenderEffect(filter);
                nodeStep = level;
            }
            int left = (int)Math.floor(bounds.left), top = (int)Math.floor(bounds.top);
            int right = (int)Math.ceil(bounds.right), bottom = (int)Math.ceil(bounds.bottom);
            node.setPosition(left, top, right, bottom);
            Canvas recording = node.beginRecording(right - left, bottom - top);
            recording.translate(-left, -top);
            BlurGovernor.INSTANCE.blurDrawn();
            return recording;
        } catch (RuntimeException | LinkageError error) {
            failed = true;
            XLog.once("content blur unavailable", error);
            return target; // Software/unsupported renderers keep the existing content and fade.
        }
    }

    void end(Canvas target, Canvas recording) {
        if (recording == target) return;
        node.endRecording();
        target.drawRenderNode(node);
    }

    /** RemoteViews already own a RenderNode; apply the same curve without blurring the card behind them. */
    void apply(View view, float amount, float radius) {
        int level = failed || ModuleSettings.lowPerformance() || !enabled(ModuleSettings.transitionBlurMode(), BlurGovernor.INSTANCE, android.os.SystemClock.uptimeMillis()) ? 0 : step(amount);
        if (level > 0) BlurGovernor.INSTANCE.blurDrawn();
        if (effectView == view && viewStep == level && effectRadius == radius) return;
        try {
            view.setRenderEffect(effect(level, radius));
            effectView = view;
            viewStep = level;
        } catch (RuntimeException | LinkageError error) {
            failed = true;
            view.setRenderEffect(null);
            XLog.once("remote content blur unavailable", error);
        }
    }

    void clear() {
        clearView();
        if(node!=null) { node.discardDisplayList(); node.setRenderEffect(null); node=null; }
        Arrays.fill(effects,null);nodeStep=-1;
    }

    void clearView() {
        if (effectView != null) effectView.setRenderEffect(null);
        effectView = null;
        viewStep = -1;
    }
}
