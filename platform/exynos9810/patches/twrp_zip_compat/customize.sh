ENABLE_EXYNOS9810_TWRP_LITE="${ENABLE_EXYNOS9810_TWRP_LITE:-false}"

if ! $ENABLE_EXYNOS9810_TWRP_LITE; then
    LOGW "Exynos9810 TWRP-lite removals disabled. Flashable zip may exceed old TWRP/FAT32 limits."
    return 0
fi

LOG "- Removing large non-critical packages to keep the flashable zip below old TWRP/FAT32 limits"
DELETE_FROM_WORK_DIR "system" "system/preload/SBrowser"
DELETE_FROM_WORK_DIR "system" "system/priv-app/SamsungSmartSuggestions"
