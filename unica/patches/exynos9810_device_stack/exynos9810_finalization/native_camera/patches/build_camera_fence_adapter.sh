#!/bin/bash
set -euo pipefail
# Supply matching Android system library directories from the ROM work tree.
# Only libc/libdl ABI symbols are required; no host libc or Android libc payload
# is shipped with the adapter.
src=$(cd "$(dirname "$0")" && pwd)
lib32=${1:?32-bit Android system library directory required}
lib64=${2:?64-bit Android system library directory required}
dest=${3:?output directory required}
mkdir -p "$dest/lib" "$dest/lib64"
for arch in lib lib64; do
    if [ "$arch" = lib ]; then
        triple=armv7a-linux-androideabi28
        libs=$lib32
    else
        triple=aarch64-linux-android28
        libs=$lib64
    fi
    clang-18 --target="$triple" -fuse-ld=lld -fPIC -shared -nostdlib \
        -fno-stack-protector -O2 -fvisibility=hidden \
        -Wl,-soname,libexynos_camera_fence.so -Wl,--no-undefined \
        "$src/camera_acquire_fence.c" "$libs/libc.so" "$libs/libdl.so" \
        -o "$dest/$arch/libexynos_camera_fence.so"
done
sha256sum "$dest/lib/libexynos_camera_fence.so" "$dest/lib64/libexynos_camera_fence.so"
