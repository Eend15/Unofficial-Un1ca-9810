# S9 Infinity port for Exynos9810

Applied after exynos9810_finalization to starlte (S9), star2lte (S9+) and crownlte (Note9), including debug builds. Normal make_rom builds pick this module up automatically. No external port workspace or KernelSU bind mounts are required for the ROM payload.

Five native color variants appear first: Blue, Gold, Pink, Purple, Gray. The five UN1CA S-shaped video variants follow. Samsung native model names differ from visible colors: Purple data is pink, Black data is purple, Orchid/grey data is gray. Preview customdata is handled by the active native engine and retained across scene rebuilds.

The thumbnail provider also registers the native InfinityWallpaper component.
For video_001 through video_005 it uses the corresponding stock lock/home
background resource instead of donor video frames; other filenames retain the
video thumbnail path. Startup repairs existing wallpaper_thumbs directories to
system:system mode 0700. S9+ overview validation on 2026-10-08 confirmed both
panels show the selected Blue background after previously showing black/purple.
These static overview backgrounds do not include the animated crystal meshes.
Use source/rebuild.py --sprite-only for Sprite smali changes without rebuilding
the unrelated AOD application's resources.

The original mesh/textures, transitions and interrupt gyro are retained. Each AOD engine schedules its own four-second timer followed by a 600 ms fade to black; the clock remains visible. The AOD plugin bridge affects only native Infinity. The two tested sensor libraries replace the earlier embedded sensor copies.

A boot-started policy checks the actual current-user lockscreen component and filename at startup and when wallpaper metadata changes. File observers watch all existing user directories and refresh when user metadata or directories change; there is no polling timer or wakelock. Samsung's Android 16 broadcast registry requires an application process, so this standalone init service observes the atomic metadata writes directly. A shared lockscreen follows the home wallpaper. Fullscreen AOD is enabled only for native Infinity video_001 through video_005 and disabled for all other wallpapers, including UN1CA videos. Merely opening a preview does not enable it. The setting changes only when the selected policy state or user changes. Startup preserves an existing home motion preference and supplies the default when absent.

Payload APKs are signed with the repository platform key. SHA256SUMS guards against partial or stale copies. Earlier apktool caches and old app oat folders are removed only for the three replaced apps.

Editable native smali, AOD bridge/hooks and policy smali live under source/. Run python3 source/rebuild.py from this directory to rebuild the APKs and policy using repository tools and update checksums. Samsung assets/resource tables and unchanged SDK are included in the payload APKs; the catalog and videos are in wallpaper-res.apk (res/raw/resources_info.json). No paths outside this repository are needed.

Validation: phone confirmed previews and selection; native stars present after two seconds and absent after seven; runtime policy checked static wallpaper=0 and restored native Gray=1. All three target module staging paths are checked separately. A complete ROM image build/flash for all three physical devices has not been performed.

October 13 screenshot/catalog audit: The first Wallpaper & Style carousel contains the five native Galaxy S9 Infinity colors (indices 0–4, `InfinityWallpaper`, native polygon/crystal animation). The next carousel contains five standard UN1CA interactive S-pattern gradient colors (indices 5–9, `InfinityVideoWallpaper`). All ten are registered in `res/raw/resources_info.json` of the signed 890 MB `wallpaper-res.apk`, and all ten indexed MP4s plus wallpaper carousel thumbnails exist in that APK. The paired `SpriteWallpaper.apk` manifest exports both `android.permission.BIND_WALLPAPER` engines and both Samsung wallpaper providers, and the payload has the AOD service and native sensor libraries.

`scripts/make_rom.sh` now invokes `source/verify_built_wallpapers.py` **after the normal Apktool rebuild** for starlte, star2lte and crownlte. It checks the final workdir's eight exact payload hashes against `SHA256SUMS` and validates the signed wallpaper-res catalog and assets; a stale generic APK or incomplete split package fails the ROM instead of silently dropping the S9 or UN1CA series. `source/test_wallpaper_delivery.py` covers positive final staging, both engines' real decoded manifest, missing video, missing/tampered files, and module/build ordering. The existing `source/verify.sh` runs it alongside the original three-target tests.

The previous `out/target/star2lte/work_dir` is an **unfinished/older** staging directory: it fails the new post-build check because the Infinity init script is not yet present. This is not evidence of a broken completed ROM; the new module is applied later in a fresh/resumed-from-before-mods build. No complete ROM was built or phone altered in the audit.
