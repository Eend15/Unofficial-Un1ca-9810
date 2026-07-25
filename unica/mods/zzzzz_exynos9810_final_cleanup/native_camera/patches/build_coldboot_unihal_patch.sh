#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 2 ]; then
    echo "usage: $0 <exact-v2-unihal> <output-unihal>" >&2
    exit 2
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
INPUT="$(readlink -f "$1")"
OUTPUT="$2"
TOOLS="${ARM_TOOLS:-$(readlink -f "$SCRIPT_DIR/../../../../../tools/arm-tools/usr/bin")}"
export LD_LIBRARY_PATH="${TOOLS%/bin}/lib/x86_64-linux-gnu${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"

EXPECTED_INPUT_SHA256="33bd98a20181fdd3e1204fd2e152420e8404534407b91e8d457da25acb165980"
ENTRY_FILE_OFFSET=$((0x132000))
TRAMPOLINE_FILE_OFFSET=$((0x132450))
TRAMPOLINE_LIMIT=$((0xb0))

actual="$(sha256sum "$INPUT" | cut -d ' ' -f 1)"
if [ "$actual" != "$EXPECTED_INPUT_SHA256" ]; then
    echo "refusing to patch unexpected UniHAL: $actual" >&2
    exit 1
fi

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

"$TOOLS/arm-linux-gnueabihf-as" -mthumb -o "$tmp/repair.o" \
    "$SCRIPT_DIR/coldboot_jpeg_repair.S"
"$TOOLS/arm-linux-gnueabihf-ld" -T "$SCRIPT_DIR/coldboot_jpeg_repair.ld" \
    -o "$tmp/repair.elf" "$tmp/repair.o"
"$TOOLS/arm-linux-gnueabihf-objcopy" -O binary -j .text \
    "$tmp/repair.elf" "$tmp/repair.bin"

"$TOOLS/arm-linux-gnueabihf-as" -mthumb -o "$tmp/hook.o" \
    "$SCRIPT_DIR/coldboot_entry_hook.S"
"$TOOLS/arm-linux-gnueabihf-ld" -T "$SCRIPT_DIR/coldboot_entry_hook.ld" \
    -o "$tmp/hook.elf" "$tmp/hook.o"
"$TOOLS/arm-linux-gnueabihf-objcopy" -O binary -j .text \
    "$tmp/hook.elf" "$tmp/hook.bin"

[ "$(stat -c %s "$tmp/hook.bin")" -eq 4 ] || {
    echo "entry hook is not exactly four bytes" >&2
    exit 1
}
[ "$(stat -c %s "$tmp/repair.bin")" -le "$TRAMPOLINE_LIMIT" ] || {
    echo "repair trampoline exceeds v2 padding region" >&2
    exit 1
}

cp -f "$INPUT" "$OUTPUT"
dd if="$tmp/hook.bin" of="$OUTPUT" bs=1 seek="$ENTRY_FILE_OFFSET" conv=notrunc status=none
dd if="$tmp/repair.bin" of="$OUTPUT" bs=1 seek="$TRAMPOLINE_FILE_OFFSET" conv=notrunc status=none

echo "input:  $actual"
echo "output: $(sha256sum "$OUTPUT" | cut -d ' ' -f 1)"
echo "hook:   $(xxd -p -c 0 "$tmp/hook.bin")"
echo "repair: $(stat -c %s "$tmp/repair.bin") bytes"
"$TOOLS/arm-linux-gnueabihf-objdump" -d "$tmp/repair.elf"
