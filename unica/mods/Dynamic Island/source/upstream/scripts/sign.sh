#!/usr/bin/env bash
# Builds the release APK, aligns and signs it. Usage: scripts/sign.sh [keystore] [alias]
# The keystore is created on first use (self-signed) and is git-ignored; keep it to be able to update the module in place.
# The password comes from the environment: KEYSTORE_PASSWORD=... scripts/sign.sh
set -euo pipefail
cd "$(dirname "$0")/.."
SDK="${ANDROID_HOME:-/opt/android-sdk}"
BT="$(ls -d "$SDK"/build-tools/* | sort -V | tail -1)"
KS="${1:-release-keys/dynamicisland.jks}"
ALIAS="${2:-dynamicisland}"
PASS="${KEYSTORE_PASSWORD:?set KEYSTORE_PASSWORD to the keystore password (also used when the key is first created)}"

mkdir -p "$(dirname "$KS")" release
if [ ! -f "$KS" ]; then
  keytool -genkeypair -keystore "$KS" -alias "$ALIAS" -keyalg RSA -keysize 3072 -validity 36500 \
    -storepass "$PASS" -keypass "$PASS" -dname "CN=Dynamic Island, O=sampple-korea"
fi

./gradlew assembleRelease -q 2>/dev/null || gradle assembleRelease -q
UNSIGNED=app/build/outputs/apk/release/app-release-unsigned.apk
VERSION=$(grep -m1 versionName app/build.gradle | sed "s/.*'\(.*\)'.*/\1/")
OUT="release/DynamicIsland-$VERSION.apk"

"$BT/zipalign" -f -P 16 4 "$UNSIGNED" "$OUT.aligned"
"$BT/apksigner" sign --ks "$KS" --ks-key-alias "$ALIAS" --ks-pass "pass:$PASS" --key-pass "pass:$PASS" --out "$OUT" "$OUT.aligned"
rm -f "$OUT.aligned" "$OUT.idsig"
"$BT/apksigner" verify --verbose "$OUT" | head -5
echo "$OUT"
