if [ ! -f "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" ]; then
    LOG_STEP_IN "- Extracting libbluetooth_jni.so from com.android.bt.apex"

    BT_APEX="$WORK_DIR/system/system/apex/com.android.bt.apex"
    if [ ! -f "$BT_APEX" ]; then
        SOURCE_FIRMWARE_PATH="$(cut -d "/" -f 1 -s <<< "$SOURCE_FIRMWARE")_$(cut -d "/" -f 2 -s <<< "$SOURCE_FIRMWARE")"
        BT_APEX="$FW_DIR/$SOURCE_FIRMWARE_PATH/system/system/apex/com.android.bt.apex"
    fi
    if [ ! -f "$BT_APEX" ]; then
        ABORT "com.android.bt.apex not found"
    fi

    if [ -d "$TMP_DIR" ]; then
        EVAL "rm -rf \"$TMP_DIR\""
    fi
    mkdir -p "$TMP_DIR"

    EVAL "unzip -j \"$BT_APEX\" \"apex_payload.img\" -d \"$TMP_DIR\""

    EVAL "debugfs -R \"dump /lib64/libbluetooth_jni.so $WORK_DIR/system/system/lib64/libbluetooth_jni.so\" \"$TMP_DIR/apex_payload.img\""
    rm -rf "$TMP_DIR"

    SET_METADATA "system" "system/lib64/libbluetooth_jni.so" 0 0 644 "u:object_r:system_lib_file:s0"

    LOG_STEP_OUT
fi

# Disable VaultKeeper support
# Before: [tbnz w8, #0, #0xXXXXXX]
# After: [b #0xXXXXXX]
if xxd -p -c 0 "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" | grep -q "2897773948050037"; then
    HEX_PATCH "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" \
        "2897773948050037" "289777392a000014"
elif xxd -p -c 0 "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" | grep -q "2897663948050037"; then
    HEX_PATCH "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" \
        "2897663948050037" "289766392a000014"
else
    LOGW "No known VaultKeeper support branch found in libbluetooth_jni.so"
fi

# Android 16 Bluetooth aborts on Exynos9810 when the legacy kernel/cgroup setup
# cannot grant SCHED_FIFO to bt_main_thread. Report success from the shared
# EnableRealTimeScheduling helper so A2DP follows the normal success path
# without mixing in older One UI 7 Bluetooth binaries.
#
# This helper is inlined at every Bluetooth stack thread startup site (main
# thread, HCI thread, A2DP thread, etc.), so the exact same byte sequence
# appears multiple times in the library. HEX_PATCH only replaces the first
# occurrence per call (non-global sed on the single-line hex dump), so this
# must loop until every occurrence is patched -- otherwise whichever thread
# starts up via one of the remaining, still-unpatched copies still aborts.
_RT_SCHED_PATCH_COUNT=0
while xxd -p -c 0 "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" | grep -q \
    "5e8600f8ff4303d1fd7b0aa9f55b00f9f44f0ca9fd83029155d03bd5"; do
    HEX_PATCH "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" \
        "5e8600f8ff4303d1fd7b0aa9f55b00f9f44f0ca9fd83029155d03bd5" \
        "20008052c0035fd6fd7b0aa9f55b00f9f44f0ca9fd83029155d03bd5" || break
    _RT_SCHED_PATCH_COUNT=$((_RT_SCHED_PATCH_COUNT + 1))
done

if [ "$_RT_SCHED_PATCH_COUNT" -eq 0 ]; then
    LOGW "No Android 16 Bluetooth EnableRealTimeScheduling helper found"
fi

# Exynos9810 kernels used by the S9/Note9 ports reject the Android 16 btstack
# timer_create(CLOCK_BOOTTIME*) path, causing alarm_new_internal() to abort.
# Use CLOCK_MONOTONIC for Bluetooth alarm timers instead.
if xxd -p -c 0 "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" | grep -q \
    "2d0700941f00187228018052e9179f1a"; then
    HEX_PATCH "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" \
        "2d0700941f00187228018052e9179f1a" \
        "2d0700941f00187228008052e9179f1a"
else
    LOGW "No Android 16 Bluetooth CLOCK_BOOTTIME_ALARM selector found"
fi

if xxd -p -c 0 "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" | grep -q \
    "410c00f021401c91e00080526f03009420150036"; then
    HEX_PATCH "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" \
        "410c00f021401c91e00080526f03009420150036" \
        "410c00f021401c91200080526f03009420150036"
else
    LOGW "No Android 16 Bluetooth primary CLOCK_BOOTTIME timer found"
fi

if xxd -p -c 0 "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" | grep -q \
    "410c00f021201c91e000805265030094a0210036"; then
    HEX_PATCH "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" \
        "410c00f021201c91e000805265030094a0210036" \
        "410c00f021201c912000805265030094a0210036"
else
    LOGW "No Android 16 Bluetooth fallback CLOCK_BOOTTIME timer found"
fi

if xxd -p -c 0 "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" | grep -q \
    "fa0318aaf80317aaf70300aae0008052a4038052"; then
    HEX_PATCH "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" \
        "fa0318aaf80317aaf70300aae0008052a4038052" \
        "fa0318aaf80317aaf70300aa20008052a4038052"
else
    LOGW "No Android 16 Bluetooth alarm logging CLOCK_BOOTTIME timer found"
fi

# The same alarm path passes pthread attributes that request SCHED_FIFO for the
# timer helper thread. Bionic then rejects timer_create() with EPERM on this
# device. Store a null sigev_notify_attributes pointer so the helper uses the
# default scheduler.
if xxd -p -c 0 "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" | grep -q \
    "281f0010c85e01a951a40194"; then
    HEX_PATCH "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" \
        "281f0010c85e01a951a40194" \
        "281f0010c87e01a951a40194"
else
    LOGW "No Android 16 Bluetooth timer helper scheduler attributes found"
fi

# The 9810 controller reports DBFW+ in Samsung's vendor capability blob, but
# its firmware does not reliably handle the matching Android 16 0xFDF1 commands.
# Force the capability setter to store 0 and take the disabled path.
if xxd -p -c 0 "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" | grep -q \
    "80821f39800a0036"; then
    HEX_PATCH "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" \
        "80821f39800a0036" \
        "7f821f3954000014"
else
    LOGW "No Android 16 Bluetooth DBFW+ capability setter found"
fi

# S9/N9 Bluetooth firmware does not answer the One UI 8 DBFW+ SCO packet-type
# vendor command (0xFDF1, 0x32, 0x01). The Android 16 stack treats that HCI
# timeout as fatal and restarts com.android.bluetooth, so skip the send.
if xxd -p -c 0 "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" | grep -q \
    "20be9f5241008052e3031faa3e0e0a94"; then
    HEX_PATCH "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" \
        "20be9f5241008052e3031faa3e0e0a94" \
        "20be9f5241008052e3031faa1f2003d5"
else
    LOGW "No Android 16 Bluetooth DBFW+ SCO packet-type command found"
fi

_FDF1_PATCH_COUNT=0
for _FDF1_CALL in \
    "20be9f52c1008052e3031faa42b40b94" \
    "20be9f5241008052e3031faaf0e60a94" \
    "20be9f5241008052e3031faaf3c30039f4c70039b9e60a94" \
    "20be9f52c1008052e3031faaff2b0179e89300b9c57e0a94" \
    "20be9f5261008052e3031faab40d0a94" \
    "20be9f5261008052e3031faa820d0a94" \
    "20be9f5261008052e3031faa7d0d0a94" \
    "20be9f5281008052e3031faa2f0d0a94" \
    "20be9f5281008052e3031faa1b0d0a94" \
    "20be9f5281008052ffb30139f3ab0139133d4092e9af0139022d0194" \
    "20be9f5281008052e3031faae86300b95f9cff97" \
    "20be9f5281008052e3031faae86300b91581ff97"; do
    if xxd -p -c 0 "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" | grep -q "$_FDF1_CALL"; then
        HEX_PATCH "$WORK_DIR/system/system/lib64/libbluetooth_jni.so" \
            "$_FDF1_CALL" \
            "${_FDF1_CALL%????????}1f2003d5"
        _FDF1_PATCH_COUNT=$((_FDF1_PATCH_COUNT + 1))
    fi
done

if [ "$_FDF1_PATCH_COUNT" -eq 0 ]; then
    LOGW "No Android 16 Bluetooth DBFW/DBFW+ 0xFDF1 command call-sites found"
fi
