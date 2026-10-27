package dev.android.dynamicisland.island.source;

import android.content.Context;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.os.Handler;
import android.os.SystemClock;
import dev.android.dynamicisland.island.IslandText;
import dev.android.dynamicisland.island.graphics.GlyphIcon;
import dev.android.dynamicisland.island.model.IslandItem;
import dev.android.dynamicisland.settings.ModuleSettings;
import dev.android.dynamicisland.xposed.Refl;
import dev.android.dynamicisland.xposed.XLog;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/**
 * The flashlight as an island card while the torch is on.
 *
 * <p>A torch with several brightness levels ({@code FLASH_INFO_STRENGTH_MAXIMUM_LEVEL}, 5 on Galaxy phones) gets
 * the brightness slider; a torch with a single level gets the same card without the slider, so the flashlight is
 * on the island, with a button to switch it off, on every phone. Every camera with a flash is watched, and the card
 * follows whichever one is switched on. Levels are set through Samsung's own flashlight controller when System UI
 * has one, which also remembers the level for the quick settings tile, and through
 * {@code CameraManager.turnOnTorchWithStrengthLevel} otherwise.
 */
public final class TorchSource {
    private static final int YELLOW = 0xFFFFD60A;
    /** Beyond this many levels the slider is smooth instead of stepped. */
    private static final int MAX_STEPS = 10;
    /** True once a torch camera was found; the card is only offered when the option is on as well. */
    private static volatile boolean cameraFound;
    /** The ongoing notification System UI posts for the flashlight (id 4660, tag "Flashlight"); the card replaces it. */
    private static final String STOCK_NOTIFICATION = "|com.android.systemui|4660|Flashlight|";
    /** Told when the card appears or goes, so the shade list is built again without the stock notification. */
    public volatile Runnable onShownChanged;

    private final Context ctx;
    private final Handler main;
    private final Runnable onChange;
    private CameraManager cameras;
    /** The camera whose torch the card shows and controls: the one that was switched on last. */
    private String cameraId;
    private int maxLevel = 1;
    /** Brightness levels (1 when the camera reports none) of every camera with a flash, by camera id. */
    private final Map<String, Integer> flashLevels = new HashMap<>();
    /** The cameras whose torch is on right now (the flashlight is on while any of them is). */
    private final Set<String> enabled = new LinkedHashSet<>();
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

    /**
     * True when this source shows the flashlight, so the plain popup of the event source stays away.
     * Follows the "Flashlight card" option: with it off, the event source's popup is used instead.
     */
    public static boolean handlesTorch() {
        return cameraFound && ModuleSettings.torchPill();
    }

    /**
     * True for the notification key of System UI's own flashlight notification: Samsung's (id 4660, tag "Flashlight"),
     * or, on other builds of System UI, one of System UI's whose tag or id names the flashlight.
     */
    public static boolean isStockNotification(String key) {
        if (key == null) {
            return false;
        }
        if (key.contains(STOCK_NOTIFICATION)) {
            return true;
        }
        String lower = key.toLowerCase(Locale.ROOT);
        return lower.contains("|com.android.systemui|") && (lower.contains("flashlight") || lower.contains("torch"));
    }

    /** True for a card made from System UI's own flashlight notification (found by what it says, not by its key). */
    public static boolean isStockItem(IslandItem it) {
        if (isStockNotification(it.key) || isStockNotification(it.sourceKey)) {
            return true;
        }
        if (!"com.android.systemui".equals(it.packageName) || it.title == null) {
            return false;
        }
        String title = it.title.toString().toLowerCase(Locale.ROOT);
        return title.contains("flashlight") || title.contains("torch") || title.contains("손전등")
                || title.contains("el feneri");
    }

    /** True while the card is up, so the stock notification (and its Now Bar copy) must not be shown as well. */
    public boolean replacesStockNotification() {
        return handlesTorch() && on;
    }

    public void setSamsungController(Object controller) {
        samsungController = controller;
    }

    public void start() {
        cameras = ctx.getSystemService(CameraManager.class);
        try {
            findTorchCameras();
        } catch (Throwable t) {
            XLog.e("flashlight camera not found", t);
            return;
        }
        if (flashLevels.isEmpty()) {
            XLog.i("flashlight: no torch camera");
            return;
        }
        cameraFound = true;
        XLog.i("flashlight: cameras " + flashLevels);
        cameras.registerTorchCallback(ctx.getMainExecutor(), new CameraManager.TorchCallback() {
            @Override
            public void onTorchModeChanged(String id, boolean on) {
                onCamera(id, on);
            }

            @Override
            public void onTorchStrengthLevelChanged(String id, int newStrengthLevel) {
                if (id.equals(cameraId)) {
                    onLevel(newStrengthLevel);
                }
            }
        });
    }

    /** Every camera with a flash; one that cannot be read is skipped, not fatal. */
    private void findTorchCameras() throws Exception {
        String best = null;
        boolean bestBack = false;
        for (String id : cameras.getCameraIdList()) {
            try {
                CameraCharacteristics c = cameras.getCameraCharacteristics(id);
                if (!Boolean.TRUE.equals(c.get(CameraCharacteristics.FLASH_INFO_AVAILABLE))) {
                    continue;
                }
                Integer levels = c.get(CameraCharacteristics.FLASH_INFO_STRENGTH_MAXIMUM_LEVEL);
                flashLevels.put(id, levels == null ? 1 : Math.max(1, levels));
                boolean back = Integer.valueOf(CameraCharacteristics.LENS_FACING_BACK).equals(c.get(CameraCharacteristics.LENS_FACING));
                if (best == null || (back && !bestBack)) {
                    best = id;
                    bestBack = back;
                }
            } catch (Throwable t) {
                XLog.i("flashlight: camera " + id + " skipped: " + t);
            }
        }
        cameraId = best;
        Integer levels = best == null ? null : flashLevels.get(best);
        maxLevel = levels == null ? 1 : levels;
    }

    /** A torch of one camera switched on or off; the card follows whichever camera was switched on last. */
    private void onCamera(String id, boolean isOn) {
        Integer levels = flashLevels.get(id);
        if (levels == null) {
            return;
        }
        if (isOn) {
            enabled.add(id);
            cameraId = id;
            maxLevel = levels;
        } else {
            enabled.remove(id);
            if (id.equals(cameraId) && !enabled.isEmpty()) {
                cameraId = enabled.iterator().next();
                maxLevel = flashLevels.get(cameraId);
            }
        }
        onMode(!enabled.isEmpty());
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
            level = maxLevel;
            if (maxLevel > 1) {
                try {
                    level = Math.max(1, Math.min(maxLevel, cameras.getTorchStrengthLevel(cameraId)));
                } catch (Throwable t) {
                    level = maxLevel;
                }
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
        if (!on || !handlesTorch()) {
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
        it.title = IslandText.get(ctx, "island_flashlight");
        it.icon = GlyphIcon.of(GlyphIcon.Kind.TORCH);
        it.accent = YELLOW;
        it.trailing = IslandItem.Trailing.TEXT;
        if (maxLevel > 1) {
            it.trailingText = Math.round(100.0f * level / maxLevel) + "%";
            it.sliderValue = (level - 1) / (float) (maxLevel - 1);
            it.sliderSteps = maxLevel <= MAX_STEPS ? maxLevel : 0;
            it.sliderChange = this::setFraction;
            it.sliderTrailing = v -> Math.round(100.0f * levelFor(v) / maxLevel) + "%";
        } else {
            // one level only: nothing to drag, so the card carries the state and the off button
            it.trailingText = IslandText.get(ctx, "island_on");
            it.sliderValue = -1.0f;
            it.sliderSteps = 0;
            it.sliderChange = null;
            it.sliderTrailing = null;
        }
        it.actions.add(new IslandItem.Action(IslandText.get(ctx, "island_turn_off"), null, null, this::turnOff, false));
        it.postTime = onSince;
        return it;
    }

    /** For tests: pretends the torch of {@code id} with {@code levels} brightness levels is at {@code current}. */
    void configure(String id, int levels, int current, boolean torchOn) {
        cameraId = id;
        maxLevel = levels;
        level = current;
        on = torchOn;
        cameraFound = true;
        flashLevels.put(id, levels);
        if (torchOn) {
            enabled.add(id);
        }
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

}
