# About phone device image.
#
# The image at the top of Settings > About phone is fetched from Samsung's SCPM
# cloud, keyed by the model codes ScpmProduct.requestPki() sends. Those codes
# come from the ril.product_code system property. On the Exynos9810 port the
# real code is correct (e.g. SM-G965FZKDEUX for the S9+), but the ROM otherwise
# spoofs its identity to SM-S901B for One UI 8 / Play Integrity, and the old
# static-image hack this replaces fought that by force-drawing a bundled PNG.
#
# Instead, pin the model code the fetch uses to this device's real retail code,
# so SCPM returns the correct S9 / S9+ / Note9 illustration -- the same
# device-specific path used by the legacy port. This is the approach from the
# MonsterROM `device_image` mod, adapted per target.

MODEL_CODE=""
case "$TARGET_CODENAME" in
    starlte)  MODEL_CODE="SM-G960FZKDEUX" ;;  # Galaxy S9
    star2lte) MODEL_CODE="SM-G965FZKDEUX" ;;  # Galaxy S9+
    crownlte) MODEL_CODE="SM-N960FZKDEUX" ;;  # Galaxy Note9
    *)
        LOG "- device_image: no model code for $TARGET_CODENAME, skipping"
        return 0
        ;;
esac

APK="system/priv-app/SecSettings/SecSettings.apk"
APK_DIR="$APKTOOL_DIR/system/priv-app/SecSettings/SecSettings.apk"

[ -d "$APK_DIR" ] || DECODE_APK "system" "$APK" || return 1

SMALI="$(find "$APK_DIR" -name 'DeviceImageManager$1.smali' \
    -path '*deviceinfo/aboutphone*' | head -n 1)"
if [ -z "$SMALI" ] || [ ! -f "$SMALI" ]; then
    LOGW "DeviceImageManager\$1.smali not found; skipping device image fix"
    return 0
fi

LOG "- Pinning About phone device image model code to $MODEL_CODE"

python3 - "$SMALI" "$MODEL_CODE" <<'PY' || return 1
import re, sys
p, code = sys.argv[1], sys.argv[2]
s = open(p).read()

# Replace the "read ril.product_code into v0" sequence with a literal model
# code, matching however apktool numbered the local register.
old_re = re.compile(
    r'const-string/jumbo (v\d+), "ril\.product_code"\s*\n'
    r'\s*\n'
    r'\s*invoke-static \{\1\}, Landroid/os/SystemProperties;->get\('
    r'Ljava/lang/String;\)Ljava/lang/String;\s*\n'
    r'\s*\n'
    r'\s*move-result-object \1\s*\n'
)
def repl(m):
    reg = m.group(1)
    return f'    const-string/jumbo {reg}, "{code}"\n'

new, n = old_re.subn(repl, s, count=1)
if n != 1:
    if f'"{code}"' in s and 'ril.product_code' not in s:
        print("already patched")
        sys.exit(0)
    print("PATTERN_NOT_FOUND")
    sys.exit(1)
open(p, "w").write(new)
print("ok")
PY
