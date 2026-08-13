#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
WORK_DIR="${1:-}"

[ -n "$WORK_DIR" ] || {
    echo "usage: $0 <target-work-dir>" >&2
    exit 2
}

found_prop_file=false
while IFS= read -r -d '' prop_file; do
    found_prop_file=true
    if grep -Eq '^(ro\.(vendor\.)?multisim\.simslotcount|persist\.radio\.multisim\.config|ro\.telephony\.sim_slots\.count)=' "$prop_file"; then
        echo "static SIM topology found in $prop_file" >&2
        exit 1
    fi
done < <(find "$WORK_DIR" -type f \( -name 'build.prop' -o -name 'prop.default' -o -name 'default.prop' \) -print0)
[ "$found_prop_file" = true ]

ril_rc="$WORK_DIR/vendor/etc/init/init.vendor.rilcommon.rc"
baseband_rc="$WORK_DIR/vendor/etc/init/init.baseband.rc"
ril_svc="$WORK_DIR/vendor/bin/secril_config_svc"

grep -q 'exec_start sim_config' "$ril_rc"
grep -q '^on property:ro.vendor.multisim.simslotcount=\*$' "$baseband_rc"
grep -q '^on property:ro.vendor.multisim.simslotcount=1$' "$baseband_rc"
grep -q '^on property:ro.vendor.multisim.simslotcount=2$' "$baseband_rc"
strings "$ril_svc" | grep -qx '/mnt/vendor/efs/factory.prop'
strings "$ril_svc" | grep -qx 'ro.multisim.simslotcount'
strings "$ril_svc" | grep -qx 'ro.vendor.multisim.simslotcount'

skip_list="$ROOT_DIR/platform/exynos9810/apktool_skip_rebuild.list"
if grep -q 'telephony-common.jar' "$skip_list"; then
    echo "telephony-common.jar is still excluded from rebuild" >&2
    exit 1
fi

echo "Exynos9810 EFS SIM autodetection verified: $WORK_DIR"
