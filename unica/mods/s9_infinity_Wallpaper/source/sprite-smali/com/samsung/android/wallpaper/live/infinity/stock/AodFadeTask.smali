.class public final Lcom/samsung/android/wallpaper/live/infinity/stock/AodFadeTask;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private service:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/AodFadeTask;->service:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;
    return-void
.end method
.method public run()V
    .locals 2
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/AodFadeTask;->service:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;
    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mEngine:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;
    if-eqz v0, :exit
    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->setAodBgOff()V
    :exit
    return-void
.end method
