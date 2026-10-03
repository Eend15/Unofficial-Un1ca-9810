.class public final Lcom/samsung/android/wallpaper/live/infinity/stock/EngineAodFadeTask;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private engine:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/EngineAodFadeTask;->engine:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;
    return-void
.end method
.method public run()V
    .locals 1
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/EngineAodFadeTask;->engine:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;
    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->setAodBgOff()V
    return-void
.end method
