#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
OUT="${1:-$ROOT_DIR/early-init-logger}"
SRC="${2:-$ROOT_DIR/early_init_logger_v4.c}"

clang \
    --target=aarch64-linux-gnu \
    -Oz \
    -ffreestanding \
    -fno-builtin \
    -fno-stack-protector \
    -fno-pic \
    -fno-unwind-tables \
    -fno-asynchronous-unwind-tables \
    -nostdlib \
    -static \
    -fuse-ld=lld \
    -Wl,-e,_start \
    -Wl,--build-id=none \
    -Wl,--no-rosegment \
    -o "$OUT" \
    "$SRC"

chmod 0755 "$OUT"
file "$OUT"
ls -la "$OUT"
