.class Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;
.super Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglSurfaceView;
.source "GalaxyWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperGLSurfaceView"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;


# direct methods
.method constructor <init>(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;Landroid/content/Context;Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;->this$1:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;

    .line 127
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglSurfaceView;-><init>(Landroid/content/Context;Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;)V

    return-void
.end method


# virtual methods
.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;->this$1:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 136
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method
