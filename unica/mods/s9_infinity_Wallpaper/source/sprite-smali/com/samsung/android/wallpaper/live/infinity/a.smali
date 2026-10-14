.class public final Lcom/samsung/android/wallpaper/live/infinity/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/c;


# instance fields
.field public final synthetic a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/a;->a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/a;->a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, LC1/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LC1/c;-><init>(Lcom/samsung/android/wallpaper/live/infinity/a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final onError()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/a;->a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, LC1/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LC1/c;-><init>(Lcom/samsung/android/wallpaper/live/infinity/a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
