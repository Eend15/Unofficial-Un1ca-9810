#!/usr/bin/env bash
# Developer tool: recompile the Java helpers and refresh the prebuilt smali.
# Needs javac, an Android 36 android.jar and R8/D8. The build never runs this; it
# only copies the checked-in smali. Usage:
#   ANDROID_JAR=.../android.jar R8_JAR=.../r8.jar tools/regen_smali.sh
set -euo pipefail
FIX="$(cd "$(dirname "$0")/.." && pwd)"
ROOT="$(cd "$FIX/../../../../.." && pwd)"
: "${ANDROID_JAR:?set ANDROID_JAR to an API 36 android.jar}"
: "${R8_JAR:?set R8_JAR to an R8/D8 jar}"
APKTOOL_JAR="${APKTOOL_JAR:-$ROOT/out/tools/bin/apktool.jar}"
TMP="$(mktemp -d)"; trap 'rm -rf "$TMP"' EXIT

build() { # <name> <stub dir or -> <out smali dir> <java files...>
    local name="$1" stubs="$2" out="$3"; shift 3
    local cp="$ANDROID_JAR" d8cp=()
    mkdir -p "$TMP/$name/stubs" "$TMP/$name/cls" "$TMP/$name/dex"
    if [ "$stubs" != "-" ]; then
        javac -source 11 -target 11 -Xlint:-options -nowarn -cp "$ANDROID_JAR" \
            -d "$TMP/$name/stubs" $(find "$stubs" -name '*.java')
        cp="$cp:$TMP/$name/stubs"
        d8cp=(--classpath "$TMP/$name/stubs")
    fi
    javac -source 11 -target 11 -Xlint:-options -nowarn -cp "$cp" -d "$TMP/$name/cls" "$@"
    java -cp "$R8_JAR" com.android.tools.r8.D8 --min-api 34 --lib "$ANDROID_JAR" "${d8cp[@]}" \
        --output "$TMP/$name/dex" $(find "$TMP/$name/cls" -name '*.class')
    rm -rf "$out"
    java -cp "$APKTOOL_JAR" com.android.tools.smali.baksmali.Main d "$TMP/$name/dex/classes.dex" -o "$out"
}

build secirisservice - "$FIX/secirisservice/smali" "$FIX/secirisservice/Un1caIrisGrace.java"
build systemui "$FIX/systemui/stubs" "$FIX/systemui/smali" "$FIX/systemui/Un1caIrisKeyguard.java"
build settings "$FIX/settings/stubs" "$FIX/settings/smali" \
    "$FIX/settings/IrisLockMenu.java" "$FIX/settings/IrisSettingsFragment.java"
echo "prebuilt smali refreshed"
