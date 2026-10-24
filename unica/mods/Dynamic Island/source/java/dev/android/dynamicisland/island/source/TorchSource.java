package dev.android.dynamicisland.island.source;

import android.content.Context;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.os.Handler;
import android.os.SystemClock;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.XLog;
import java.util.List;
import java.util.Locale;

/**
 * The flashlight as a card with a brightness slider, while the torch is on. The brightness steps come from the
 * camera ({@code FLASH_INFO_STRENGTH_MAXIMUM_LEVEL}, 5 on Galaxy phones); a phone whose torch has only one level
 * gets no card from here (the plain "flashlight on" popup of the event source remains). Levels are set through
 * Samsung's own flashlight controller when System UI has one, which also remembers the level for the quick
 * settings tile, and through {@code CameraManager.turnOnTorchWithStrengthLevel} otherwise.
 */
public final class TorchSource {
    private static final int YELLOW = 0xFFFFD60A;
    /** Beyond this many levels the slider is smooth instead of stepped. */
    private static final int MAX_STEPS = 10;
    private static volatile boolean handlesTorch;
    /** The ongoing notification System UI posts for the flashlight (id 4660, tag "Flashlight"); the card replaces it. */
    private static final String STOCK_NOTIFICATION = "|com.android.systemui|4660|Flashlight|";
    /** Told when the card appears or goes, so the shade list is built again without the stock notification. */
    public volatile Runnable onShownChanged;

    private final Context ctx;
    private final Handler main;
    private final Runnable onChange;
    private CameraManager cameras;
    private String cameraId;
    private int maxLevel = 1;
    private boolean on;
    private int level = 1;
    /** Samsung's {@code SecFlashlightControllerImpl}, or null. */
    private volatile Object samsungController;
    private long onSince;

    public TorchSource(Context ctx, Handler main, Runnable onChange) {
        this.ctx = ctx;
        this.main = main;
        this.onChange = onChange;
    }

    /** True when this source shows the flashlight, so the plain popup of the event source stays away. */
    public static boolean handlesTorch() {
        return handlesTorch;
    }

    /** True for the notification key of System UI's own flashlight notification. */
    public static boolean isStockNotification(String key) {
        return key != null && key.contains(STOCK_NOTIFICATION);
    }

    /** True while the card is up, so the stock notification (and its Now Bar copy) must not be shown as well. */
    public boolean replacesStockNotification() {
        return handlesTorch && on && ModuleSettings.eventToggles();
    }

    public void setSamsungController(Object controller) {
        samsungController = controller;
    }

    public void start() {
        cameras = ctx.getSystemService(CameraManager.class);
        try {
            findTorchCamera();
        } catch (Throwable t) {
            XLog.e("flashlight camera not found", t);
            return;
        }
        if (cameraId == null || maxLevel < 2) {
            XLog.i("flashlight brightness: not controllable (camera=" + cameraId + " levels=" + maxLevel + ")");
            return;
        }
        handlesTorch = true;
        XLog.i("flashlight brightness: camera " + cameraId + " levels " + maxLevel);
        cameras.registerTorchCallback(ctx.getMainExecutor(), new CameraManager.TorchCallback() {
            @Override
            public void onTorchModeChanged(String id, boolean enabled) {
                if (id.equals(cameraId)) {
                    onMode(enabled);
                }
            }

            @Override
            public void onTorchStrengthLevelChanged(String id, int newStrengthLevel) {
                if (id.equals(cameraId)) {
                    onLevel(newStrengthLevel);
                }
            }
        });
    }

    private void findTorchCamera() throws Exception {
        String best = null;
        int bestLevels = 1;
        boolean bestBack = false;
        for (String id : cameras.getCameraIdList()) {
            CameraCharacteristics c = cameras.getCameraCharacteristics(id);
            if (!Boolean.TRUE.equals(c.get(CameraCharacteristics.FLASH_INFO_AVAILABLE))) {
                continue;
            }
            Integer levels = c.get(CameraCharacteristics.FLASH_INFO_STRENGTH_MAXIMUM_LEVEL);
            boolean back = Integer.valueOf(CameraCharacteristics.LENS_FACING_BACK).equals(c.get(CameraCharacteristics.LENS_FACING));
            if (best == null || (back && !bestBack)) {
                best = id;
                bestLevels = levels == null ? 1 : levels;
                bestBack = back;
            }
        }
        cameraId = best;
        maxLevel = bestLevels;
    }

    private void onMode(boolean enabled) {
        if (enabled == on) {
            return;
        }
        on = enabled;
        Runnable shown = onShownChanged;
        if (shown != null) {
            shown.run();
        }
        if (enabled) {
            onSince = SystemClock.uptimeMillis();
            try {
                level = Math.max(1, Math.min(maxLevel, cameras.getTorchStrengthLevel(cameraId)));
            } catch (Throwable t) {
                level = maxLevel;
            }
        }
        onChange.run();
    }

    private void onLevel(int newLevel) {
        int clamped = Math.max(1, Math.min(maxLevel, newLevel));
        if (clamped != level) {
            level = clamped;
            if (on) {
                onChange.run();
            }
        }
    }

    /** Adds the flashlight card while the torch is on. */
    public void collect(List<IslandItem> out) {
        if (!handlesTorch || !on || !ModuleSettings.eventToggles()) {
            return;
        }
        out.add(card());
    }

    /** The card for the current level. */
    IslandItem card() {
        IslandItem it = new IslandItem("torch:brightness");
        it.kind = IslandItem.Kind.EVENT;
        it.iconIsImage = false;
        it.pillColor = 0;
        it.title = t("손전등", "Flashlight");
        it.icon = GlyphIcon.of(GlyphIcon.Kind.TORCH);
        it.accent = YELLOW;
        it.trailing = IslandItem.Trailing.TEXT;
        it.trailingText = Math.round(100.0f * level / maxLevel) + "%";
        it.sliderValue = (level - 1) / (float) (maxLevel - 1);
        it.sliderSteps = maxLevel <= MAX_STEPS ? maxLevel : 0;
        it.sliderChange = this::setFraction;
        it.sliderTrailing = v -> Math.round(100.0f * levelFor(v) / maxLevel) + "%";
        it.actions.add(new IslandItem.Action(t("끄기", "Turn off"), null, null, this::turnOff, false));
        it.postTime = onSince;
        return it;
    }

    /** For tests: pretends the torch of {@code id} with {@code levels} brightness levels is at {@code current}. */
    void configure(String id, int levels, int current, boolean torchOn) {
        cameraId = id;
        maxLevel = levels;
        level = current;
        on = torchOn;
        handlesTorch = true;
    }

    private int levelFor(float fraction) {
        return 1 + Math.round(Math.max(0.0f, Math.min(1.0f, fraction)) * (maxLevel - 1));
    }

    /** Sets the brightness from a slider position 0..1. */
    void setFraction(float fraction) {
        int wanted = levelFor(fraction);
        if (wanted == level && on) {
            return;
        }
        try {
            Object samsung = samsungController;
            if (samsung != null && Boolean.TRUE.equals(Refl.call(samsung, "isTorchStrengthControllable"))) {
                Refl.call(samsung, "setFlashlightLevel", wanted, Boolean.TRUE);
            } else {
                cameras.turnOnTorchWithStrengthLevel(cameraId, wanted);
            }
            level = wanted;
            onChange.run(); // the card's texts and the pill follow now, not when the camera reports the new level
        } catch (Throwable t) {
            XLog.e("flashlight level not set", t);
        }
    }

    void turnOff() {
        try {
            cameras.setTorchMode(cameraId, false);
        } catch (Throwable t) {
            XLog.e("flashlight not turned off", t);
        }
    }

    private String t(String ko, String en) {
        Locale locale = ctx.getResources().getConfiguration().getLocales().get(0);
        return "ko".equals(locale.getLanguage()) ? ko : en;
    }
}
