.class Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;
.super Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;
.source "GalaxyWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InfinityWallpaperEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;
    }
.end annotation


# instance fields
.field private aodFadeHandler:Landroid/os/Handler;

.field private mCandidateSettings:Landroid/os/Bundle;

.field private mContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;

.field private mGLSurfaceView:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;

.field protected mRendererHasBeenSet:Z

.field final synthetic this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;


# direct methods
.method constructor <init>(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;-><init>(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;)V

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 7

    const-string v0, "samsung.android.wallpaper.customdata"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :not_candidate_color
    if-eqz p5, :not_candidate_color
    const-string v0, "filename"
    invoke-virtual {p5, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :not_candidate_color
    iput-object p5, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mCandidateSettings:Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->reloadScene()V
    const/4 v0, 0x0
    return-object v0
    :not_candidate_color

    const-string v0, "android.wallpaper.reapply"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :not_reapply
    const/4 v0, 0x0
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mCandidateSettings:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;
    check-cast v0, Lcom/samsung/android/wallpaper/live/infinity/InfinityWallpaper;
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I
    move-result v1
    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaper/live/infinity/InfinityWallpaper;->refreshStockColor(I)V
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->reloadScene()V
    const/4 v0, 0x0
    return-object v0
    :not_reapply

    const-string v0, "android.wallpaper.goingtosleep"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :native_cmd_0
    const-string p1, "AOD_START"
    goto :native_cmd_ready
    :native_cmd_0

    const-string v0, "samsung.android.wallpaper.goingtosleep"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :native_cmd_1
    const-string p1, "AOD_START"
    goto :native_cmd_ready
    :native_cmd_1

    const-string v0, "android.wallpaper.wakingup"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :native_cmd_2
    const-string p1, "WAKE_LOCK"
    goto :native_cmd_ready
    :native_cmd_2

    const-string v0, "samsung.android.wallpaper.wakingup"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :native_cmd_3
    const-string p1, "WAKE_LOCK"
    goto :native_cmd_ready
    :native_cmd_3

    const-string v0, "android.wallpaper.keyguardgoingaway"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :native_cmd_4
    const-string p1, "ACTION_UNLOCK"
    goto :native_cmd_ready
    :native_cmd_4

    const-string v0, "android.wallpaper.keyguardlocked"
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :native_cmd_5
    const-string p1, "WAKE_LOCK"
    goto :native_cmd_ready
    :native_cmd_5
    :native_cmd_ready

    if-nez p1, :cond_0

    .line 142
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 144
    :cond_0
    invoke-static {}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCommand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPrevCommand = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    invoke-static {v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->access$100(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->access$100(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    invoke-static {v0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->access$102(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "AOD_START"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v6

    goto :goto_0

    :sswitch_1
    const-string v1, "WAKE_AOD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v5

    goto :goto_0

    :sswitch_2
    const-string v1, "SLEEP_LOCK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    goto :goto_0

    :sswitch_3
    const-string v1, "WAKE_LOCK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v4

    goto :goto_0

    :sswitch_4
    const-string v1, "ACTION_UNLOCK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    :cond_2
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_1

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;

    invoke-virtual {v0, v4}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->changeMode(I)V

    goto :goto_1

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;

    invoke-virtual {v0, v5}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->changeMode(I)V

    goto :goto_1

    .line 164
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->wakeAod()V

    goto :goto_1

    .line 157
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->access$300(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0


    .line 158
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    const-wide/16 v1, 0x834

    invoke-static {v0, v1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->access$200(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;J)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;

    invoke-virtual {v0, v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->changeMode(I)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    invoke-static {}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->access$400()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->scheduleAodFade()V

    goto :goto_1

    .line 153
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    const-wide/16 v3, 0x1f4

    invoke-static {v0, v3, v4}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->access$200(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;J)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->changeMode(I)V

    .line 174
    :cond_8
    :goto_1
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4a9c6a93 -> :sswitch_4
        -0x4201ad1a -> :sswitch_3
        0x7c1d9b3 -> :sswitch_2
        0x3fef44bb -> :sswitch_1
        0x67d9f499 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I
    move-result v0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;
    check-cast v1, Lcom/samsung/android/wallpaper/live/infinity/InfinityWallpaper;
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mCandidateSettings:Landroid/os/Bundle;
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/wallpaper/live/infinity/InfinityWallpaper;->refreshStockColor(ILandroid/os/Bundle;)V

    .line 87
    invoke-super {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 88
    new-instance p1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->getResIdInner(I)I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->getGroupDataInner()[[I

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->getResIdInner(I)I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->getResIdInner(I)I

    move-result v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;-><init>(Landroid/content/Context;I[[III)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;

    .line 89
    new-instance p1, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->this$0:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;

    invoke-direct {p1, p0, v0, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;-><init>(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;Landroid/content/Context;Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/IWbglContainer;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mGLSurfaceView:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;

    .line 90
    iput-boolean v6, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mRendererHasBeenSet:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onDestroy()V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mGLSurfaceView:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;->onDestroy()V

    .line 122
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->clear()V

    :cond_0
    return-void
.end method

 .method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mGLSurfaceView:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;
    if-eqz v0, :changed_exit
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
    :changed_exit
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mGLSurfaceView:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;
    if-eqz v0, :created_exit
    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :created_exit
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onVisibilityChanged(Z)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->onVisibilityChanged(Z)V

    .line 109
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mRendererHasBeenSet:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 111
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mGLSurfaceView:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    goto :goto_0

    .line 113
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mGLSurfaceView:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAodBgOff()V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->setAodBgOff()V

    :cond_0
    return-void
.end method

.method private reloadScene()V
    .locals 5
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mGLSurfaceView:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;
    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;->onDestroy()V
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mContainer:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;
    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/InfinityMainContainer;->clear()V
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;
    move-result-object v1
    invoke-virtual {p0, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->onCreate(Landroid/view/SurfaceHolder;)V
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->mGLSurfaceView:Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine$WallpaperGLSurfaceView;
    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;
    move-result-object v2
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I
    move-result v3
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I
    move-result v4
    const/4 v2, 0x1
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z
    move-result v0
    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->onVisibilityChanged(Z)V
    return-void
.end method

.method private scheduleAodFade()V
    .locals 4
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->aodFadeHandler:Landroid/os/Handler;
    if-nez v0, :ready
    new-instance v0, Landroid/os/Handler;
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;->aodFadeHandler:Landroid/os/Handler;
    :ready
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    new-instance v1, Lcom/samsung/android/wallpaper/live/infinity/stock/EngineAodFadeTask;
    invoke-direct {v1, p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/EngineAodFadeTask;-><init>(Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService$InfinityWallpaperEngine;)V
    const-wide/16 v2, 0xfa0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    return-void
.end method
