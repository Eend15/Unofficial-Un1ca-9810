# S9 Infinity port for Exynos9810

Applied after zzzzz_exynos9810_final_cleanup to starlte (S9), star2lte (S9+) and crownlte (Note9), including debug builds. Normal make_rom builds pick this module up automatically. No external port workspace or KernelSU bind mounts are required for the ROM payload.

Five native color variants appear first: Blue, Gold, Pink, Purple, Gray. The five UN1CA S-shaped video variants follow. Samsung native model names differ from visible colors: Purple data is pink, Black data is purple, Orchid/grey data is gray. Preview customdata is handled by the active native engine and retained across scene rebuilds.

The original mesh/textures, transitions and interrupt gyro are retained. Each AOD engine schedules its own four-second timer followed by a 600 ms fade to black; the clock remains visible. The AOD plugin bridge affects only native Infinity. The two tested sensor libraries replace the earlier embedded sensor copies.

A boot-started policy checks the actual current-user lockscreen component and filename every two seconds, with no wakelock. A shared lockscreen follows the home wallpaper. Fullscreen AOD is enabled only for native Infinity video_001 through video_005 and disabled for all other wallpapers, including UN1CA videos. Merely opening a preview does not enable it. The setting changes only when the selected policy state or user changes. Startup preserves an existing home motion preference and supplies the default when absent.

Payload APKs are signed with the repository platform key. SHA256SUMS guards against partial or stale copies. Earlier apktool caches and old app oat folders are removed only for the three replaced apps.

Editable native smali, AOD bridge/hooks and policy smali live under source/. Run python3 source/rebuild.py from this directory to rebuild the APKs and policy using repository tools and update checksums. Samsung assets/resource tables and unchanged SDK are included in the payload APKs; the catalog and videos are in wallpaper-res.apk (res/raw/resources_info.json). No paths outside this repository are needed.

Validation: phone confirmed previews and selection; native stars present after two seconds and absent after seven; runtime policy checked static wallpaper=0 and restored native Gray=1. All three target module staging paths are checked separately. A complete ROM image build/flash for all three physical devices has not been performed.
