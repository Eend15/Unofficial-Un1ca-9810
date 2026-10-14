#!/usr/bin/env python3
"""Resolve paired factory live defaults through Samsung's native component path."""
from pathlib import Path
import sys
CLASS="com/samsung/android/server/wallpaper/SemWallpaperManagerService.smali"
OLD="""    :cond_a
    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperComponent(Landroid/content/ComponentName;)V

    return-void"""
NEW="""    :cond_a
    # Android16 requires a valid WallpaperDescription component. Resolve the
    # paired live default and its Samsung service settings instead of null.
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/wallpaper/SemWallpaperManagerService;->saveDefaultLiveWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void"""
def patch(tree):
 paths=list(Path(tree).glob("smali*/"+CLASS))
 if len(paths)!=1:raise ValueError("missing/ambiguous Samsung wallpaper service")
 p=paths[0];text=p.read_text();start=text.index(".method public final setFactoryDefaultWallpaper(IILcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;)V");end=text.index(".end method",start);body=text[start:end]
 if NEW in body:return
 if body.count(OLD)!=1:raise ValueError("unknown paired factory-live default branch")
 p.write_text(text[:start]+body.replace(OLD,NEW,1)+text[end:])
if __name__=="__main__":patch(sys.argv[1]);print("PASS factory paired live default resolves non-null native component")
