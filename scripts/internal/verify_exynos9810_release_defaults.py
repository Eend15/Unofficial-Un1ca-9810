#!/usr/bin/env python3
"""Fail closed if a fresh/cached release omits source-matched default fixes."""
from pathlib import Path
from hashlib import sha256
import argparse,json,sys,zipfile
ROOT=Path(__file__).resolve().parents[2]
sys.path.insert(0,str(ROOT/"scripts/internal/FaceunlockFix"))
from release_bridge import load_release_bridge

def verify(work: Path, target: str) -> None:
    if target not in ("starlte","star2lte","crownlte"): raise RuntimeError("Unsupported target")
    system=work/"system/system"
    with zipfile.ZipFile(system/"framework/services.jar") as z:
        if z.read("classes3.dex") != load_release_bridge():
            raise RuntimeError("Staged face bridge differs from verified source release")
    props=(system/"build.prop").read_text().splitlines()
    for prop in ["ro.un1ca.faceunlockfix.builtin=1","persist.sys.unica.pif=true","persist.sys.pif.version=20261011"]:
        if prop not in props: raise RuntimeError("Required release default absent: "+prop)
    base=ROOT/"unica/patches/exynos9810_device_stack/exynos9810_finalization/kernelsu"
    manifest=json.loads((base/"runtime_manifest.json").read_text())
    if manifest["schema"] != 1: raise RuntimeError("Unknown KernelSU manifest")
    for name,expected in {**manifest["sources"],**manifest["payloads"]}.items():
        if sha256((base/name).read_bytes()).hexdigest()!=expected:
            raise RuntimeError("KernelSU source/runtime manifest mismatch: "+name)
    entries={"ksu_crown":"bin/ksu_crown","unica_ksunext_installer.sh":"bin/unica_ksunext_installer.sh",
             "unica_ksunext_installer.rc":"etc/init/unica_ksunext_installer.rc",
             "KernelSUManagerVerifier.jar":"etc/unica/ksunext/KernelSUManagerVerifier.jar",
             "KernelSUNext.apk":"etc/unica/ksunext/KernelSUNext.apk"}
    for name,relative in entries.items():
        if (system/relative).read_bytes()!=(base/name).read_bytes():
            raise RuntimeError("Stale/missing permanent KernelSU runtime: "+relative)
    catalog=json.loads((ROOT/"unica/mods/s9_infinity_Wallpaper/source/resources_info.json").read_text())
    defaults=[entry for entry in catalog["phone"] if entry.get("isDefault")]
    if len(defaults)!=1 or defaults[0]["type_params"]["service_settings"]["filename"]!="video_001.mp4":
        raise RuntimeError("Blue native Infinity is not the single default")
    def contains(data,text): return text.encode() in data or text.encode("utf-16le") in data
    with zipfile.ZipFile(system/"framework/framework-res.apk") as z:
        if not contains(z.read("resources.arsc"),"com.samsung.android.wallpaper.live/com.samsung.android.wallpaper.live.infinity.InfinityWallpaper"):
            raise RuntimeError("Compiled native Infinity default component absent")
    # Apktool/aapt obfuscates compiled resource entry names, so source
    # res/xml/unica_extra_settings.xml is emitted under a generated res/*.xml
    # name. Verify the actual compiled XML payload instead of assuming the
    # source path survives packaging.
    with zipfile.ZipFile(system/"priv-app/SecSettings/SecSettings.apk") as z:
        compiled_xml = [z.read(name) for name in z.namelist()
                        if name.startswith("res/") and name.endswith(".xml")]
        if not any(contains(data,"unica_bixby_action") for data in compiled_xml):
            raise RuntimeError("Compiled Bixby button selector absent")
    import importlib.util
    checker=ROOT/"unica/mods/s9_infinity_Wallpaper/source/verify_factory_live_default.py"
    spec=importlib.util.spec_from_file_location("factory_live_default",checker)
    module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module)
    module.verify(system/"framework/services.jar")
    print("PASS "+target+": source-matched face removal/prompt bridge, permanent trusted KernelSU, Blue Infinity, Bixby and PIF defaults")
if __name__=="__main__":
    p=argparse.ArgumentParser(description=__doc__);p.add_argument("--work-dir",type=Path,required=True);p.add_argument("--target",required=True)
    a=p.parse_args();verify(a.work_dir,a.target)
