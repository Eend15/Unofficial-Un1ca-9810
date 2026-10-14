SOURCE_FIRMWARE_PATH="$(cut -d "/" -f 1 -s <<< "$SOURCE_FIRMWARE")_$(cut -d "/" -f 2 -s <<< "$SOURCE_FIRMWARE")"
TARGET_FIRMWARE_PATH="$(cut -d "/" -f 1 -s <<< "$TARGET_FIRMWARE")_$(cut -d "/" -f 2 -s <<< "$TARGET_FIRMWARE")"

SOURCE_HAS_SPEN="$(test -n "$(find "$FW_DIR/$SOURCE_FIRMWARE_PATH/system/system/etc/permissions" -type f -name "com.sec.feature.spen_usp*.xml")" && echo "true" || echo "false")"
TARGET_HAS_SPEN="$(test -n "$(find "$FW_DIR/$TARGET_FIRMWARE_PATH/system/system/etc/permissions" -type f -name "com.sec.feature.spen_usp*.xml")" && echo "true" || echo "false")"

# Exynos9810 Note9 has the original Wacom digitizer and BLE S Pen even when
# Samsung's firmware server cannot deliver the target firmware during an
# incremental build. Its target profile and the canonical Exynos9810 S Pen
# feature declaration are repository-owned, so do not infer "no pen" simply
# because the unpacked target firmware tree is unavailable. Later Note9
# finalization validates the AirCommand APK, controller smali and native path.
if [ "${TARGET_PLATFORM:-}" = "exynos9810" ] && \
        [ "${TARGET_CODENAME:-}" = "crownlte" ]; then
    SPEN_TARGET_FEATURE="$SRC_DIR/unica/patches/exynos9810_device_stack/exynos9810_finalization/spen/com.sec.feature.spen_usp_level40.xml"
    if [ ! -s "$SPEN_TARGET_FEATURE" ]; then
        ABORT "Missing canonical Note9 S Pen feature declaration"
    fi
    TARGET_HAS_SPEN=true
    unset SPEN_TARGET_FEATURE
fi

if ! $SOURCE_HAS_SPEN; then
    if $TARGET_HAS_SPEN; then
        ADD_TO_WORK_DIR "b0qxxx" "system" "system/app/AirGlance/AirGlance.apk" 0 0 644 "u:object_r:system_file:s0"
        ADD_TO_WORK_DIR "b0qxxx" "system" "system/app/LiveDrawing/LiveDrawing.apk" 0 0 644 "u:object_r:system_file:s0"
        ADD_TO_WORK_DIR "b0qxxx" "system" "system/etc/default-permissions/default-permissions-com.samsung.android.service.aircommand.xml" 0 0 644 "u:object_r:system_file:s0"
        ADD_TO_WORK_DIR "b0qxxx" "system" "system/etc/permissions/privapp-permissions-com.samsung.android.app.readingglass.xml" 0 0 644 "u:object_r:system_file:s0"
        ADD_TO_WORK_DIR "b0qxxx" "system" "system/etc/permissions/privapp-permissions-com.samsung.android.service.aircommand.xml" 0 0 644 "u:object_r:system_file:s0"
        ADD_TO_WORK_DIR "b0qxxx" "system" "system/etc/permissions/privapp-permissions-com.samsung.android.service.airviewdictionary.xml" 0 0 644 "u:object_r:system_file:s0"
        ADD_TO_WORK_DIR "b0qxxx" "system" "system/etc/sysconfig/airviewdictionaryservice.xml" 0 0 644 "u:object_r:system_file:s0"
        ADD_TO_WORK_DIR "b0qxxx" "system" "system/etc/public.libraries-smps.samsung.txt" 0 0 644 "u:object_r:system_file:s0"
        ADD_TO_WORK_DIR "$([[ "$TARGET_OS_SINGLE_SYSTEM_IMAGE" == "qssi" ]] && echo "b0qxxx" || echo "b0sxxx")" \
            "system" "system/lib/libandroid_runtime.so" 0 0 644 "u:object_r:system_lib_file:s0"
        ADD_TO_WORK_DIR "$([[ "$TARGET_OS_SINGLE_SYSTEM_IMAGE" == "qssi" ]] && echo "b0qxxx" || echo "b0sxxx")" \
            "system" "system/lib/libsmpsft.smps.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
        ADD_TO_WORK_DIR "$([[ "$TARGET_OS_SINGLE_SYSTEM_IMAGE" == "qssi" ]] && echo "b0qxxx" || echo "b0sxxx")" \
            "system" "system/lib64/libandroid_runtime.so" 0 0 644 "u:object_r:system_lib_file:s0"
        ADD_TO_WORK_DIR "$([[ "$TARGET_OS_SINGLE_SYSTEM_IMAGE" == "qssi" ]] && echo "b0qxxx" || echo "b0sxxx")" \
            "system" "system/lib64/libsmpsft.smps.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
        ADD_TO_WORK_DIR "b0qxxx" "system" "system/media/audio/pensounds" 0 0 755 "u:object_r:system_file:s0"
        ADD_TO_WORK_DIR "b0qxxx" "system" "system/priv-app/AirCommand/AirCommand.apk" 0 0 644 "u:object_r:system_file:s0"
        ADD_TO_WORK_DIR "b0qxxx" "system" "system/priv-app/AirReadingGlass/AirReadingGlass.apk" 0 0 644 "u:object_r:system_file:s0"
        ADD_TO_WORK_DIR "b0qxxx" "system" "system/priv-app/SmartEye/SmartEye.apk" 0 0 644 "u:object_r:system_file:s0"
    else
        LOG "\033[0;33m! Nothing to do\033[0m"
    fi
else
    if ! $TARGET_HAS_SPEN; then
        ABORT "Missing patch for condition (SOURCE_HAS_SPEN: [$SOURCE_HAS_SPEN], TARGET_HAS_SPEN: [$TARGET_HAS_SPEN]). Aborting"
    fi
fi

unset SOURCE_FIRMWARE_PATH TARGET_FIRMWARE_PATH SOURCE_HAS_SPEN TARGET_HAS_SPEN
