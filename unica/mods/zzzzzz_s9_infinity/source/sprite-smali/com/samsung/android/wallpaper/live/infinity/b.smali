.class public final Lcom/samsung/android/wallpaper/live/infinity/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/b;->a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/b;->a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;

    iget-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->b:Z

    const-string v0, "InfinityWallpaper"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "onReceive: not initialized"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->a:Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper;

    invoke-static {p1}, Lf2/h;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->o:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f(Z)V

    goto :goto_0

    :cond_1
    const-string v2, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "showing"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->o:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ACTION_KEYGUARD_STATE_UPDATE "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->o:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f(Z)V

    :cond_2
    :goto_0
    return-void
.end method
