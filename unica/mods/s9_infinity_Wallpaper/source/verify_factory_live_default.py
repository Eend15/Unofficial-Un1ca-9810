#!/usr/bin/env python3
from pathlib import Path
import zipfile,tempfile,subprocess,re,sys
ROOT=Path(__file__).resolve().parents[4]
CLASS="com/samsung/android/server/wallpaper/SemWallpaperManagerService"
def verify(jar):
 with tempfile.TemporaryDirectory(prefix="factory-live-default-") as td:
  d=Path(td)
  with zipfile.ZipFile(jar) as z:
   for name in z.namelist():
    if not re.fullmatch(r"classes\d*\.dex",name):continue
    src=d/name;src.write_bytes(z.read(name));out=d/name.replace(".dex","")
    subprocess.run(["java","-cp",str(ROOT/"out/tools/bin/apktool.jar"),"com.android.tools.smali.baksmali.Main","disassemble","--jobs","1","--classes","L"+CLASS+";","--output",str(out),str(src)],check=True,stdout=subprocess.DEVNULL)
    p=out/(CLASS+".smali")
    if not p.exists():continue
    text=p.read_text();start=text.index(".method public final setFactoryDefaultWallpaper(IILcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;)V");body=text[start:text.index(".end method",start)]
    if re.search(r"const/4 p0, 0x0\s+invoke-virtual \{p3, p0\}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperComponent",body):raise RuntimeError("factory live default still passes null component: fresh-data bootloop")
    if body.count("->saveDefaultLiveWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V")<3:raise RuntimeError("missing paired lock native live default resolver")
    return
 raise RuntimeError("missing compiled Samsung wallpaper factory service")
if __name__=="__main__":verify(Path(sys.argv[1]));print("PASS compiled factory paired live default: non-null component")
