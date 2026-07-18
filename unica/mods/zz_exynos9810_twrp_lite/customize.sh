SKIPUNZIP=1

if [[ "$TARGET_PLATFORM" != "exynos9810" ]]; then
    return 0
fi

ENABLE_EXYNOS9810_TWRP_LITE="${ENABLE_EXYNOS9810_TWRP_LITE:-false}"
if ! $ENABLE_EXYNOS9810_TWRP_LITE; then
    LOGW "Exynos9810 late TWRP-lite removals disabled. Flashable zip may exceed old TWRP/FAT32 limits."
    return 0
fi

LOG "- Removing re-added non-critical packages for old TWRP/FAT32 compatibility"

_EXYNOS9810_TWRP_LITE_PATHS=(
    "system/preload/SBrowser"
    "system/priv-app/SamsungSmartSuggestions"
    "system/priv-app/SpriteWallpaper"

    # Large optional Samsung/AI packages. Keep boot, setup, launcher, camera,
    # camera-side photo processing, phone, settings, keyboard, and Google core
    # services intact.
    "system/app/OCRDataProvider"
    "system/app/SamsungTTS"
    "system/app/SamsungWeather"
    "system/app/SketchBook"
    "system/app/SmartCapture"
    "system/app/StickerCenter"
    "system/app/VideoEditorLite_Dream_N"
    "system/app/VisionIntelligence3.7"
    "system/priv-app/AREmoji"
    "system/priv-app/AutoDoodle"
    "system/priv-app/BixbyVisionFramework3.5"
    "system/priv-app/DressRoom"
    "system/priv-app/HashTagService"
    "system/priv-app/Routines"
    "system/priv-app/SamsungCloudClient"
    "system/priv-app/SemanticSearchCore"
    "system/priv-app/ShareLive"
    "system/priv-app/StickerFaceARAvatar"
    "system/priv-app/TalkbackSE"

    # Keep camera/photo model packs; One UI 8 Camera and Gallery call into them.
)

for _path in "${_EXYNOS9810_TWRP_LITE_PATHS[@]}"; do
    DELETE_FROM_WORK_DIR "system" "$_path"
    rm -rf "$APKTOOL_DIR/$_path"
done

unset _path _EXYNOS9810_TWRP_LITE_PATHS
