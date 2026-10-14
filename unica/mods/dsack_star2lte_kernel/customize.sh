SKIPUNZIP=1

[ "${TARGET_PLATFORM:-}" = "exynos9810" ] || return 0
[ "${TARGET_CODENAME:-}" = "star2lte" ] || return 0

case "${TARGET_OS_FILE_SYSTEM_TYPE:-}" in
    erofs)
        local_boot="$MODPATH/payload/boot.img"
        expected_boot_hash="af42525ab064613ab7e1cf6bc78769cf229bd8ee0e78464a6c0561abe9558092"
        ;;
    ext4)
        # This is the separately reconstructed G965F boot/DTB from the user's
        # DS-ACK *ext4* archive. NEVER reuse the EROFS DTB with ext4 images.
        local_boot="$MODPATH/payload/boot-ext4.img"
        expected_boot_hash="b8daf1e09ccf1e2ed320ffbbb790d3713d53c0b152456c5d5377f601da095115"
        ;;
    *)
        LOGE "DS-ACK S9+ kernel requires exactly erofs or ext4 filesystem"
        return 1
        ;;
esac
[ -s "$local_boot" ] && [ "$(sha256sum "$local_boot" | cut -d ' ' -f 1)" = "$expected_boot_hash" ] || {
    LOGE "DS-ACK G965F boot.img missing, modified or incomplete"
    return 1
}

# Both boot variants were reconstructed with MagiskBoot for G965F and checked
# for the correct kernel, matched DTB, preserved source ramdisk, and enforcing
# cmdline. The EROFS payload and its hash remain unchanged.
mkdir -p "$WORK_DIR/kernel" || return 1
if [ -L "$WORK_DIR/kernel/boot.img" ]; then
    LOGE "Refusing to replace symlinked kernel/boot.img"
    return 1
fi
LOG "- Installing verified DS-ACK G965F enforcing ${TARGET_OS_FILE_SYSTEM_TYPE} boot image"
install -m 0644 "$local_boot" "$WORK_DIR/kernel/boot.img" || return 1
[ "$(sha256sum "$WORK_DIR/kernel/boot.img" | cut -d ' ' -f 1)" = "$expected_boot_hash" ] || {
    LOGE "DS-ACK boot image failed staging verification"
    return 1
}
unset local_boot expected_boot_hash
