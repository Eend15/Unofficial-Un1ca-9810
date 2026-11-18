#!/usr/bin/env bash
# Offline, repeatable Noble 2C BioFaceService APK build for research only.
# Source and output are confined to out/target/star2lte/face-audit.
set -euo pipefail

source_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
rom="$(cd "$source_dir/../../.." && pwd)"
audit="$rom/out/target/star2lte/face-audit"
tool="$rom/out/tools/bin"

original="$audit/noble2c_face/system/priv-app/BioFaceService/BioFaceService.apk"
donor_framework="$audit/noble2c_face/system/framework/framework.jar"
framework_dex5="$audit/noble_framework_classes5.jar"
framework_tree="$audit/noble_framework_classes5"
apk_tree="$audit/noble_bioface_apktool"
unsigned="$audit/Noble2C_BioFaceService_unsigned.apk"
aligned="$audit/Noble2C_BioFaceService_aligned.apk"
signed="$audit/Noble2C_BioFaceService_platform_signed.apk"
cert="$rom/security/aosp_platform.x509.pem"
key="$rom/security/aosp_platform.pk8"

for file in "$original" "$donor_framework" "$cert" "$key" \
    "$tool/apktool.jar" "$tool/signapk.jar" "$tool/zipalign"; do
    test -s "$file" || { echo "Required offline input missing: $file" >&2; exit 1; }
done

# Retain only original Noble classes5.dex as classes.dex in a scratch JAR:
# avoid importing or overriding unrelated Android framework implementation.
python3 - "$donor_framework" "$framework_dex5" <<'PY'
from pathlib import Path
import sys
import zipfile
source, dest = map(Path, sys.argv[1:])
with zipfile.ZipFile(source) as archive:
    data = archive.read("classes5.dex")
with zipfile.ZipFile(dest, "w", compression=zipfile.ZIP_DEFLATED) as archive:
    archive.writestr("classes.dex", data)
print(f"Repacked original Noble classes5.dex ({len(data)} bytes)")
PY

# APK is decoded with raw resources and manifest; our adapter only changes DEX.
java -Xmx2g -jar "$tool/apktool.jar" d --no-res --force \
    "$framework_dex5" --output "$framework_tree"
java -Xmx2g -jar "$tool/apktool.jar" d --no-res --force \
    "$original" --output "$apk_tree"

python3 "$source_dir/prepare_faceunlockfix_stock_bioface.py" \
    --framework-smali "$framework_tree/smali" --apk-smali "$apk_tree/smali"
java -Xmx2g -jar "$tool/apktool.jar" b "$apk_tree" --output "$unsigned"

"$tool/zipalign" -f 4 "$unsigned" "$aligned"
java -Xmx1g -jar "$tool/signapk.jar" --min-sdk-version 31 \
    "$cert" "$key" "$aligned" "$signed"
"$tool/zipalign" -c 4 "$signed"

python3 "$source_dir/verify_faceunlockfix_stock_bioface_offline.py" \
    --original "$original" --signed "$signed" --platform-cert "$cert"

# The signapk tool bundle includes the Android libapksig verifier.
javac -cp "$tool/signapk.jar" -d "$audit" "$source_dir/OfflineApkVerify.java"
java -cp "$audit:$tool/signapk.jar" OfflineApkVerify "$signed"

echo "Offline signed output: $signed"
echo "No device installation or ROM activation was performed."
