# UN1CA SELinux entries removal list
# - Append new type entries to the ENTRIES list
# - Add the EXACT type entry, DO NOT just add a common pattern (eg. "fabriccrypto", "fabriccrypto_exec" and NOT just "fabriccrypto")
# - DO NOT add the API version at the end of the entry (eg. "fabriccrypto" and NOT "fabriccrypto_30_0")
# - DO NOT add any parenthesis or statements (eg. "fabriccrypto" and NOT "expanttypeattribute ... (fabriccrypto)")
# - DO NOT add unnecessary types or remove the existing ones unless they aren't necessary anymore for all devices

# One UI 8.0 additions
ENTRIES+="
heatmap_default
heatmap_default_exec
"

DUPLICATES+="
init.svc.vendor.wvkprov_server_hal
"

# One UI 7.0 additions
ENTRIES+="
attiqi_app
attiqi_app_data_file
ker_app
kpp_app
kpp_data_file
"

# One UI 6.1.1 additions
ENTRIES+="
hal_dsms_default
hal_dsms_default_exec
proc_compaction_proactiveness
sbauth
sbauth_exec
"

# One UI 5.1.1 additions
ENTRIES+="
audiomirroring
audiomirroring_exec
audiomirroring_service
fabriccrypto
fabriccrypto_exec
fabriccrypto_data_file
hal_dsms_service
uwb_regulation_skip_prop
"

# [
GET_SYSTEM_EXT()
{
    if $TARGET_OS_BUILD_SYSTEM_EXT_PARTITION; then
        echo "system_ext"
    else
        echo "system/system/system_ext"
    fi
}

CIL_NAME="$(head -n 1 "$WORK_DIR/vendor/etc/selinux/plat_sepolicy_vers.txt")"
PATCHED=false
VENDOR_API_LIST="$(find "$WORK_DIR/$(GET_SYSTEM_EXT)/etc/selinux/mapping" -type f -printf "%f\n" | \
                    sed '/.compat./d' | sed 's/.cil//' | sed 's/\./_/' | sort)"
# ]

for e in $ENTRIES; do
    if grep -q -F "($e)" "$WORK_DIR/$(GET_SYSTEM_EXT)/etc/selinux/mapping/$CIL_NAME.cil" || \
         grep -q -F "${e}_${CIL_NAME//./_}" "$WORK_DIR/$(GET_SYSTEM_EXT)/etc/selinux/mapping/$CIL_NAME.cil"; then
        # the problematic entry is currently present in system_ext, check if we need to remove it
        if ! grep -q -F "(type $e)" "$WORK_DIR/vendor/etc/selinux/plat_pub_versioned.cil"; then
            PATCHED=true
            # the problematic entry is not supported by the target device
            LOG "- \"$e\" SELinux entry not supported. Removing"
            sed -i "/($e)/d" "$WORK_DIR/$(GET_SYSTEM_EXT)/etc/selinux/mapping/$CIL_NAME.cil"
            for a in $VENDOR_API_LIST; do
                sed -i "/${e}_${a}/d" "$WORK_DIR/$(GET_SYSTEM_EXT)/etc/selinux/mapping/$CIL_NAME.cil"
            done
            if grep -q "genfscon.*$e" "$WORK_DIR/$(GET_SYSTEM_EXT)/etc/selinux/system_ext_sepolicy.cil"; then
                sed -i "/genfscon.*$e/d" "$WORK_DIR/$(GET_SYSTEM_EXT)/etc/selinux/system_ext_sepolicy.cil"
            fi
            if grep -q "genfscon.*$e" "$WORK_DIR/system/system/etc/selinux/plat_sepolicy.cil"; then
                sed -i "/genfscon.*$e/d" "$WORK_DIR/system/system/etc/selinux/plat_sepolicy.cil"
            fi
        fi
    fi
done

for e in $DUPLICATES; do
    if grep -q "^$e.*" "$WORK_DIR/$(GET_SYSTEM_EXT)/etc/selinux/system_ext_property_contexts"; then
        # the problematic entry is currently present in system_ext, check if we need to remove it
        if grep -q "^$e.*" "$WORK_DIR/vendor/etc/selinux/vendor_property_contexts"; then
            PATCHED=true
            # the problematic entry is found in target vendor
            LOG "- \"$e\" SELinux duplicate entry found. Removing"
            sed -i "s/^$e/#SEC_DUPLICATE: $e/g" "$WORK_DIR/vendor/etc/selinux/vendor_property_contexts"
        fi
    fi
done

# Missing SELinux allow rules for this legacy exynos9810 vendor
# - Append new "(allow scontext tcontext (class (perm)))" CIL statements to
#   the SUPPLEMENTARY_RULES list, one per line
# - Found by booting under permissive and grepping dmesg/logcat for
#   "avc: denied" entries: the vendor_init ones are boot-critical (init.rc
#   scripts on this legacy vendor set properties like ro.crypto.state
#   directly from vendor_init, which the donor's platform/system_ext
#   sepolicy never expected and so never granted -- under real enforcing
#   this blocks whatever init.rc trigger depends on the property landing,
#   hard-hanging boot instead of just logging like permissive does). The
#   rest are later-boot service_manager lookups for optional Samsung
#   features (mobicore, power sound play, hermes, knox, media quality)
#   that only fail to look up their HAL/service under enforcing rather
#   than blocking boot, but are included for completeness.
# - Verified live: pushed the patched vendor_sepolicy.cil to a running
#   device and rebooted under Permissive -- boot completed successfully
#   (proving the CIL is syntactically valid; a malformed CIL would fail
#   to compile and the device wouldn't boot at all) and every one of
#   these denials was gone from a fresh kernel log afterwards.
SUPPLEMENTARY_RULES="
(allow vendor_init bootloader_prop (property_service (set)))
(allow vendor_init build_prop (property_service (set)))
(allow vendor_init config_prop (property_service (set)))
(allow vendor_init default_prop (property_service (set)))
(allow vendor_init net_dns_prop (property_service (set)))
(allow vendor_init shell_prop (property_service (set)))
(allow vendor_init userdebug_or_eng_prop (property_service (set)))
(allow vendor_init vold_prop (property_service (set)))
(allow vendor_init vold_status_prop (property_service (set)))
(allow vendor_init wifi_prop (property_service (set)))
(allow vendor_init mobicore_prop (file (read open getattr)))
(allow vendor_init radio_prop (file (read open getattr)))
(allow mobicore mobicore_prop (property_service (set)))
(allow priv_app log_tag_prop (property_service (set)))
(allow priv_app sqlite_log_prop (property_service (set)))
(allow samsungpowersoundplay audio_service (service_manager (find)))
(allow system_server default_android_service (service_manager (find)))
(allow system_server hal_graphics_composer_service (service_manager (find)))
(allow teed_app knoxzt_service (service_manager (find)))
(allow mediaserver media_quality_service (service_manager (find)))
"

while IFS= read -r RULE; do
    [ "$RULE" ] || continue
    if ! grep -q -F "$RULE" "$WORK_DIR/vendor/etc/selinux/vendor_sepolicy.cil"; then
        PATCHED=true
        LOG "- Adding missing SELinux rule: $RULE"
        echo "$RULE" >> "$WORK_DIR/vendor/etc/selinux/vendor_sepolicy.cil"
    fi
done <<< "$SUPPLEMENTARY_RULES"

if ! $PATCHED; then
    LOG "\033[0;33m! Nothing to do\033[0m"
fi

unset ENTRIES DUPLICATES CIL_NAME PATCHED VENDOR_API_LIST SUPPLEMENTARY_RULES RULE
unset -f GET_SYSTEM_EXT
