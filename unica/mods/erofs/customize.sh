if [ "$TARGET_PRODUCT_SHIPPING_API_LEVEL" -ge "33" ]; then
    LOG "\033[0;33m! Nothing to do\033[0m"
    return 0
fi

# [
_LOG() { if $DEBUG; then LOGW "$1"; else ABORT "$1"; fi }

PATCH_FSTAB()
{
    local f

    while IFS= read -r f; do
        if [[ "$f" == *"emmc" ]] || [[ "$f" == *"ramplus" ]]; then
            continue
        fi
        sed -E -i \
            '/^(system|vendor|product|system_ext|odm|vendor_dlkm|odm_dlkm|system_dlkm)\s+/ s/(\s+\S+\s+)\S+/\1erofs/' \
            "$f" && LOG "- Patching $(sed -e "s|$WORK_DIR||g" -e "s|$TMP_DIR/out/ramdisk_extracted|$BOOT_FILE|g" <<< "$f")" \
            || true
        EVAL "uniq \"$f\" \"$TMP_DIR/tmp\" && mv -f \"$TMP_DIR/tmp\" \"$f\""
    done < <(find "$1" -type f -name "fstab.*")
}
# ]

if [[ "$TARGET_OS_FILE_SYSTEM_TYPE" != "erofs" ]]; then
    LOG "\033[0;33m! TARGET_OS_FILE_SYSTEM_TYPE is not set to erofs. Skipping\033[0m"
    unset -f _LOG
    return 0
fi

BOOT_FILE="boot.img"
if [ -f "$WORK_DIR/kernel/vendor_boot.img" ]; then
    BOOT_FILE="vendor_boot.img"
fi
if [ ! -f "$WORK_DIR/kernel/$BOOT_FILE" ]; then
    ABORT "File not found: ${WORK_DIR//$SRC_DIR\//}/kernel/$BOOT_FILE"
fi

LOG "- Extracting $BOOT_FILE"

if [ -d "$TMP_DIR" ]; then
    EVAL "rm -rf \"$TMP_DIR\""
fi
EVAL "mkdir -p \"$TMP_DIR\""
EVAL "cp -a \"$WORK_DIR/kernel/$BOOT_FILE\" \"$TMP_DIR/$BOOT_FILE\""

MKBOOTIMG_ARGS="$(unpack_bootimg --boot_img "$TMP_DIR/$BOOT_FILE" --out "$TMP_DIR/out" --format mkbootimg 2>&1 || true)"

BOOT_IMAGE_SKIPPED=false
if ! find "$TMP_DIR/out" -type f -name "*ramdisk*" 2>/dev/null | grep -q .; then
    LOG "\033[0;33m! Could not unpack $BOOT_FILE (non-standard boot image header); boot image fstab patch skipped. Vendor fstab patch still applies.\033[0m"
    BOOT_IMAGE_SKIPPED=true
fi

if ! $BOOT_IMAGE_SKIPPED; then
    while IFS= read -r f; do
        LOG "- Extracting $BOOT_FILE/$(basename "$f")"

        RAMDISK_FORMAT=""
        if [[ "$(READ_BYTES_AT "$f" "0" "2")" == "8b1f" ]]; then
            RAMDISK_FORMAT="gz"
        fi
        if [[ "$(READ_BYTES_AT "$f" "0" "4")" == "184c2102" ]]; then
            RAMDISK_FORMAT="lz4"
        fi
        if [ ! "$RAMDISK_FORMAT" ]; then
            ABORT "Ramdisk format not valid\n\n$(LC_ALL=C file -b "$f")"
        fi

        EVAL "mkdir -p \"$TMP_DIR/out/ramdisk_extracted\""
        if [[ "$RAMDISK_FORMAT" == "gz" ]]; then
            EVAL "cat \"$f\" | gzip -d | cpio --quiet -i -D \"$TMP_DIR/out/ramdisk_extracted\""
        elif [[ "$RAMDISK_FORMAT" == "lz4" ]]; then
            EVAL "cat \"$f\" | lz4 -d | cpio --quiet -i -D \"$TMP_DIR/out/ramdisk_extracted\""
        fi

        PATCH_FSTAB "$TMP_DIR/out/ramdisk_extracted"

        LOG "- Repacking $BOOT_FILE/$(basename "$f")"

        if [[ "$RAMDISK_FORMAT" == "gz" ]]; then
            EVAL "mkbootfs \"$TMP_DIR/out/ramdisk_extracted\" | gzip > \"$f\""
        elif [[ "$RAMDISK_FORMAT" == "lz4" ]]; then
            EVAL "mkbootfs \"$TMP_DIR/out/ramdisk_extracted\" | lz4 -l -12 --favor-decSpeed > \"$f\""
        fi

        EVAL "rm -rf \"$TMP_DIR/out/ramdisk_extracted\""
    done < <(find "$TMP_DIR/out" -type f -name "*ramdisk*" | LC_ALL=C sort)
fi

PATCH_FSTAB "$WORK_DIR/vendor/etc"

# The flash-time vendor bootfix (platform/exynos9810/installer/repartition/
# vendor_bootfix.sh) patches the vendor partition after flashing. Erofs is
# read-only, so bake it here; vendor_bootfix.sh skips erofs at install time.
# Its other changes (keystore/radio props, health interfaces,
# etc/init/hw/init.samsungexynos9810.rc) are already baked by the ROM build.
PANEL_WAKE_RC="$WORK_DIR/vendor/etc/init/exynos9810-panel-wake.rc"
cat > "$PANEL_WAKE_RC" <<'EOF'
on property:sys.boot_completed=1
    write /sys/class/lcd/panel/alpm 0

on property:debug.tracing.screen_state=2
    write /sys/class/lcd/panel/alpm 0
EOF
chmod 0644 "$PANEL_WAKE_RC"
LOG "- Baking vendor bootfix: created etc/init/exynos9810-panel-wake.rc"

if ! grep -q 'exynos9810-panel-wake\.rc' "$WORK_DIR/configs/file_context-vendor"; then
    echo '/vendor/etc/init/exynos9810-panel-wake.rc u:object_r:vendor_configs_file:s0' >> "$WORK_DIR/configs/file_context-vendor"
    LOG "- Adding exynos9810-panel-wake.rc SELinux context to file_context-vendor"
fi

if ! $BOOT_IMAGE_SKIPPED; then
    LOG "- Repacking $BOOT_FILE"

    if [[ "$BOOT_FILE" == "vendor_boot.img" ]]; then
        EVAL "mkbootimg $MKBOOTIMG_ARGS --vendor_boot \"$WORK_DIR/kernel/vendor_boot.img\""
    else
        EVAL "mkbootimg $MKBOOTIMG_ARGS -o \"$TMP_DIR/new-boot.img\""
        echo -n "SEANDROIDENFORCE" >> "$TMP_DIR/new-boot.img"
        EVAL "mv -f \"$TMP_DIR/new-boot.img\" \"$WORK_DIR/kernel/boot.img\""
    fi
fi

EVAL "rm -rf \"$TMP_DIR\""

unset BOOT_FILE MKBOOTIMG_ARGS RAMDISK_FILE RAMDISK_FORMAT BOOT_IMAGE_SKIPPED
unset -f _LOG PATCH_FSTAB
