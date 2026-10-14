.class public final synthetic LC1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/samsung/android/wallpaper/live/infinity/a;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/wallpaper/live/infinity/a;I)V
    .locals 0

    iput p2, p0, LC1/c;->d:I

    iput-object p1, p0, LC1/c;->e:Lcom/samsung/android/wallpaper/live/infinity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, LC1/c;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LC1/c;->e:Lcom/samsung/android/wallpaper/live/infinity/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InfinityWallpaper"

    const-string v2, "onSeekReady"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/a;->a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;

    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->d:I

    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->e:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->e(I)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, LC1/c;->e:Lcom/samsung/android/wallpaper/live/infinity/a;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/a;->a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;

    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->b:Z

    if-nez v0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "InfinityWallpaper"

    const-string v1, "resurrection: not Initialized"

    invoke-static {v0, v1, p0}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->m:Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->b()Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->c(Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;)V

    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->b:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->d()V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
