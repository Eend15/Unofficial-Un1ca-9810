# DS-ACK S9+ G965F EROFS boot integration

This module is applied **after** Exynos9810 finalization and Infinity
wallpapers (`build_order=50`) to `star2lte` **only**. It installs the exact
DS-ACK V1.12 30 September 2026 KernelSU Next v3.4.0 / SuSFS G965F kernel and
DTB, with the Samsung G965F original ramdisk, inside `kernel/boot.img`.

User-supplied archive:
`DS-ACK-V1.12-30.09.2026-Enforcing-KernelSU-Next-v3.4.0-SuSFS-erofs-dtb.zip`

- Source ZIP SHA256: `01556276576c33cd33e7c795b92fc0fd488e4b314f630e1d31b53040205eff36`
- `floyd/G965F-kernel` and `floyd/G965F-dtb` are **bspatch deltas**, applied
  against `floyd/G960F-kernel` and `floyd/G960F-dtb`, respectively.
- Reconstructed G965F kernel SHA256:
  `5f124e84df725c482db075a76b319d8f82b41aed849faf00cf5eade170e207e8`
- Reconstructed G965F DTB SHA256:
  `9cad71a18d6296335035143a3f55fec95c9915050874339a2d2e6e555d0f22ba`
- Verified `payload/boot.img` SHA256:
  `82978b09e838c8df365b17836ee3c77f75b4a86f1a747aa2c3f8ee57f762cd89`

The source ZIP contains an ARM32 `magiskboot` executable, not executable
natively on the x86_64 build host. We used official Magisk v30.7's x86_64
`libmagiskboot.so`, which is the same tool family, to unpack/repack the stock
G965F boot image. Both the resulting kernel and DTB were compared byte-for-byte
against the reconstructed archive members after a second unpack. The original
ramdisk hash was preserved; the Samsung boot header was changed from
`androidboot.selinux=permissive` to `androidboot.selinux=enforcing`. The
resulting boot image is 38,971,392 bytes, below the target boot partition
limit of 57,671,680 bytes.

This is a **G965F-family boot image**. Do not advertise support for G965N
without preparing and testing that model's separate DS-ACK delta and boot
baseline. This module does not flash a device.
