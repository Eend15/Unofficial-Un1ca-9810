.class Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$1;
.super Landroid/content/BroadcastReceiver;
.source "GalaxyWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;


# direct methods
.method constructor <init>(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$1;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 205
    invoke-static {}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->access$600()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$1;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->access$700(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;)Z

    move-result p1


    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$1;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mEngine:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;

    if-eqz p0, :cond_3

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->setAodBgOff()V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 210
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$1;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    const/4 p1, 0x0

    const-string v0, "plugged"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->access$702(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;Z)Z

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 212
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$1;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->mEngine:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;

    if-eqz p0, :cond_3

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->onConfigurationChanged()V

    :cond_3
    :goto_0
    return-void
.end method
