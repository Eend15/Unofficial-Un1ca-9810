#!/usr/bin/env bash
# Fail before image creation when the Exynos9810 target identity or boot
# baseline was lost during module application. This prevents a flashable zip
# from being produced when it cannot be expected to boot.

set -euo pipefail

[ "${TARGET_PLATFORM:-}" = "exynos9810" ] || exit 0

WORK="${WORK_DIR:?WORK_DIR is not set}"
SYSTEM_PROP="$WORK/system/system/build.prop"
VENDOR_PROP="$WORK/vendor/build.prop"

case "${TARGET_CODENAME:-}" in
    starlte)
        EXPECTED_MODEL="SM-G960F"
        EXPECTED_NAME="starltexx"
        EXPECTED_FIRST_API="26"
        ;;
    star2lte)
        EXPECTED_MODEL="SM-G965F"
        EXPECTED_NAME="star2ltexx"
        EXPECTED_FIRST_API="26"
        ;;
    crownlte)
        EXPECTED_MODEL="SM-N960F"
        EXPECTED_NAME="crownltexx"
        EXPECTED_FIRST_API="27"
        ;;
    *)
        echo "Exynos9810 boot contract: unsupported target ${TARGET_CODENAME:-unset}" >&2
        exit 1
        ;;
esac

get_prop() {
    local file="$1"
    local key="$2"
    sed -n "s/^${key}=//p" "$file" | tr -d '\r' | tail -n 1
}

require_file() {
    if [ ! -f "$1" ]; then
        echo "Exynos9810 boot contract: missing $1" >&2
        exit 1
    fi
}

require_file "$SYSTEM_PROP"
require_file "$VENDOR_PROP"
require_file "$WORK/vendor/etc/fstab.samsungexynos9810"
require_file "$WORK/vendor/etc/init/init.samsungexynos9810.rc"
require_file "$WORK/vendor/bin/hw/android.hardware.keymaster@4.0-service"
require_file "$WORK/vendor/bin/hw/android.hardware.gatekeeper@1.0-service"
require_file "$WORK/vendor/bin/hw/vendor.trustonic.tee@1.1-service"
require_file "$WORK/vendor/etc/init/android.hardware.keymaster@4.0-service.rc"
require_file "$WORK/vendor/etc/init/android.hardware.gatekeeper@1.0-service.rc"
require_file "$WORK/vendor/etc/init/vendor.trustonic.tee@1.1-service.rc"
require_file "$WORK/vendor/etc/vintf/manifest.xml"
require_file "$WORK/vendor/apex/com.samsung.android.authfw.ta.preload.apex"
require_file "$WORK/vendor/apex/com.samsung.android.biometrics.face.signed.apex"
require_file "$WORK/vendor/apex/com.samsung.android.biometrics.fingerprint.signed.apex"
require_file "$WORK/vendor/apex/com.samsung.android.camera.unihal.signed.apex"
require_file "$WORK/vendor/app/mcRegistry/FFFFFFFF000000000000000000000001.drbin"
require_file "$WORK/vendor/bin/mcDriverDaemon"
require_file "$WORK/vendor/bin/hw/vendor.samsung.hardware.biometrics.face-service"
require_file "$WORK/vendor/etc/init/mobicore.rc"
require_file "$WORK/vendor/etc/init/pa_daemon_kinibi.rc"
require_file "$WORK/vendor/etc/init/face-default-sec.rc"
require_file "$WORK/vendor/etc/init/vendor.samsung.hardware.authfw@1.0-service.rc"
require_file "$WORK/vendor/etc/sysconfig/vendor-apex-allowlist.xml"
require_file "$WORK/vendor/etc/vintf/manifest/face-default-sec.xml"

require_file "$WORK/system/system/etc/permissions/authfw.xml"
require_file "$WORK/system/system/etc/permissions/cameraservice.xml"
require_file "$WORK/system/system/etc/permissions/privapp-permissions-com.samsung.android.authfw.xml"
require_file "$WORK/system/system/etc/permissions/sec_camerax_impl.xml"
require_file "$WORK/system/system/etc/permissions/sec_camerax_service.xml"
require_file "$WORK/odm/etc/permissions/sku_hcesimese/android.hardware.nfc.xml"
require_file "$WORK/odm/etc/vintf/manifest_hcesimese.xml"

if [ "$(get_prop "$SYSTEM_PROP" ro.product.device)" != "$TARGET_CODENAME" ] || \
        [ "$(get_prop "$SYSTEM_PROP" ro.product.model)" != "$EXPECTED_MODEL" ] || \
        [ "$(get_prop "$SYSTEM_PROP" ro.product.name)" != "$EXPECTED_NAME" ] || \
        [ "$(get_prop "$SYSTEM_PROP" ro.build.flavor)" != "$EXPECTED_NAME-user" ]; then
    echo "Exynos9810 boot contract: final system identity is not target-aware" >&2
    grep -E '^(ro.product.device|ro.product.model|ro.product.name|ro.build.flavor)=' "$SYSTEM_PROP" >&2 || true
    exit 1
fi

if [ "$(get_prop "$VENDOR_PROP" ro.product.vendor.device)" != "$TARGET_CODENAME" ] || \
        [ "$(get_prop "$VENDOR_PROP" ro.product.vendor.model)" != "$EXPECTED_MODEL" ] || \
        [ "$(get_prop "$VENDOR_PROP" ro.product.vendor.name)" != "$EXPECTED_NAME" ] || \
        [ "$(get_prop "$VENDOR_PROP" ro.product.board)" != "exynos9810" ] || \
        [ "$(get_prop "$VENDOR_PROP" ro.board.platform)" != "universal9810" ] || \
        [ "$(get_prop "$VENDOR_PROP" ro.vendor.build.version.sdk)" != "33" ] || \
        [ "$(get_prop "$VENDOR_PROP" ro.vendor.api_level)" != "33" ] || \
        [ "$(get_prop "$VENDOR_PROP" ro.board.api_level)" != "33" ] || \
        [ "$(get_prop "$VENDOR_PROP" ro.product.first_api_level)" != "$EXPECTED_FIRST_API" ] || \
        [ "$(get_prop "$VENDOR_PROP" ro.board.first_api_level)" != "$EXPECTED_FIRST_API" ]; then
    echo "Exynos9810 boot contract: final vendor identity is not target-aware" >&2
    grep -E '^(ro.product.vendor.device|ro.product.vendor.model|ro.product.vendor.name|ro.product.board|ro.board.platform|ro.vendor.build.version.sdk|ro.vendor.api_level|ro.board.api_level|ro.product.first_api_level|ro.board.first_api_level)=' "$VENDOR_PROP" >&2 || true
    exit 1
fi

case "${TARGET_OS_FILE_SYSTEM_TYPE:-}" in
    erofs|ext4) ;;
    *)
        echo "Exynos9810 boot contract: invalid filesystem ${TARGET_OS_FILE_SYSTEM_TYPE:-unset}" >&2
        exit 1
        ;;
esac

# SYSTEM/VENDOR/ODM are mounted by the device tree before this fstab is read.
# An active duplicate entry here can make first-stage init mount the same
# partition using the wrong filesystem and fail before logcat is available.
if awk '
    /^[[:space:]]*#/ { next }
    NF >= 3 && ($2 == "/system" || $2 == "/vendor" || $2 == "/odm") { bad = 1 }
    END { exit bad ? 0 : 1 }
' "$WORK/vendor/etc/fstab.samsungexynos9810"; then
    echo "Exynos9810 boot contract: active SYSTEM/VENDOR/ODM fstab entry conflicts with the DTB" >&2
    exit 1
fi

grep -Eq '[[:space:]]/data[[:space:]]+f2fs[[:space:]]' \
    "$WORK/vendor/etc/fstab.samsungexynos9810" || {
    echo "Exynos9810 boot contract: F2FS userdata fallback is missing" >&2
    exit 1
}
grep -Eq '[[:space:]]/mnt/vendor/cpefs[[:space:]]+ext4.*nofail' \
    "$WORK/vendor/etc/fstab.samsungexynos9810" || {
    echo "Exynos9810 boot contract: CPEFS must remain non-fatal" >&2
    exit 1
}

if [ "$(get_prop "$VENDOR_PROP" ro.hardware.keystore)" != "mdfpp" ] || \
        [ "$(get_prop "$VENDOR_PROP" ro.security.keystore.keytype)" != "sak" ]; then
    echo "Exynos9810 boot contract: keymaster properties do not match the tested stack" >&2
    exit 1
fi
for HAL in android.hardware.keymaster android.hardware.gatekeeper vendor.trustonic.tee; do
    grep -q "<name>${HAL}</name>" "$WORK/vendor/etc/vintf/manifest.xml" || {
        echo "Exynos9810 boot contract: missing VINTF HAL $HAL" >&2
        exit 1
    }
done

# SIM topology is read from EFS at boot. Baking a single value into an EROFS
# image causes the permanent Single SIM/Dual SIM reset dialog on the opposite
# hardware variant.
for PROP_FILE in "$SYSTEM_PROP" "$VENDOR_PROP"; do
    if grep -Eq '^(ro\.(vendor\.)?multisim\.simslotcount|persist\.radio\.multisim\.config|ro\.telephony\.sim_slots\.count)=' "$PROP_FILE"; then
        echo "Exynos9810 boot contract: static SIM topology found in $PROP_FILE" >&2
        exit 1
    fi
done
require_file "$WORK/vendor/bin/secril_config_svc"
grep -q 'exec_start sim_config' "$WORK/vendor/etc/init/init.vendor.rilcommon.rc" || {
    echo "Exynos9810 boot contract: EFS SIM topology service is not started" >&2
    exit 1
}

require_final_string() {
    local file="$1"
    local needle="$2"
    local description="$3"

    require_file "$file"
    if ! grep -a -q -F "$needle" "$file"; then
        echo "Exynos9810 boot contract: missing ${description} in ${file#$WORK/}" >&2
        exit 1
    fi
}

require_final_absent() {
    local file="$1"
    local needle="$2"
    local description="$3"

    require_file "$file"
    if grep -a -q -F "$needle" "$file"; then
        echo "Exynos9810 boot contract: stale ${description} remains in ${file#$WORK/}" >&2
        exit 1
    fi
}

SEC_SETTINGS="$WORK/system/system/priv-app/SecSettings/SecSettings.apk"
SEC_SETTINGS_INTELLIGENCE="$WORK/system/system/priv-app/SecSettingsIntelligence/SecSettingsIntelligence.apk"
SEC_SETUP="$WORK/system/system/priv-app/SecSetupWizard_Global/SecSetupWizard_Global.apk"
FRAMEWORK_JAR="$WORK/system/system/framework/framework.jar"
SERVICES_JAR="$WORK/system/system/framework/services.jar"

require_final_string "$SEC_SETTINGS" "io/mesalabs/unica/settings/UnicaSettingsFragment" "UN1CA Settings fragment"
require_final_string "$SEC_SETTINGS" "io/mesalabs/unica/settings/extra/ExtraSettingsFragment" "UN1CA Extra Settings fragment"
require_final_string "$SEC_SETTINGS" "io/mesalabs/unica/settings/ui/UISettingsFragment" "UN1CA UI Settings fragment"
require_final_string "$SEC_SETTINGS" "top_level_unica" "UN1CA top-level Settings entry"
require_final_string "$SEC_SETTINGS_INTELLIGENCE" "top_level_unica" "UN1CA Settings search key"
require_final_string "$FRAMEWORK_JAR" "io/mesalabs/unica/SamsungPropsHooks" "UN1CA SamsungProps hooks"
require_final_string "$FRAMEWORK_JAR" "io/mesalabs/unica/PlayIntegrityHooks" "UN1CA Play Integrity hooks"
require_final_string "$SERVICES_JAR" "com/android/server/policy/PhoneWindowManager\$UnicaBixbyRunnable" "UN1CA Bixby remapper"
require_final_string "$SERVICES_JAR" "io/mesalabs/unica/PlayIntegrityHooks" "UN1CA services Play Integrity hooks"
require_final_string "$SEC_SETUP" "this_string_does_not_exist" "UN1CA SetupWizard navigation-step patch"

for SDP_NEEDLE in \
    'SdpManagerImpl$SdpHandler' \
    'Native_Sdp_TestSdpIoctl' \
    'testSdpIoctl' \
    'SdpFileSystem'; do
    require_final_absent "$SERVICES_JAR" "$SDP_NEEDLE" "boot-crashing Knox SDP bootstrap ($SDP_NEEDLE)"
done

# Production images must not contain the old first-stage logger or the heavy
# opt-in userspace recorder. The latter is allowed only for an explicit debug
# build and never replaces /init.
[ ! -e "$WORK/system/system/bin/bootlogger-init" ] || {
    echo "Exynos9810 boot contract: unsafe first-stage bootlogger is present" >&2
    exit 1
}
if [ "${EXYNOS9810_ENABLE_SYSTEM_BOOT_DEBUG:-false}" != "true" ]; then
    for DEBUG_FILE in \
        "$WORK/system/system/bin/unica_exynos9810_bootlog.sh" \
        "$WORK/system/system/etc/init/unica_exynos9810_debug.rc"; do
        [ ! -e "$DEBUG_FILE" ] || {
            echo "Exynos9810 boot contract: diagnostic logger leaked into a production build" >&2
            exit 1
        }
    done
fi

echo "Verified Exynos9810 boot contract for ${TARGET_CODENAME}: ${EXPECTED_MODEL}/${EXPECTED_NAME}, ${TARGET_OS_FILE_SYSTEM_TYPE}"
