.class public Lcom/samsung/android/wallpaper/live/infinity/InfinityWallpaper;
.super Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;
.field private stockColor:I
.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;-><init>()V
    return-void
.end method
.method public refreshStockColor(I)V
    .locals 3
    const/4 v0, 0x0
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityWallpaper;->stockColor:I
    invoke-static {p0, p1}, Le0/a;->O(Landroid/content/Context;I)Landroid/os/Bundle;
    move-result-object v0
    if-eqz v0, :ready
    const-string v1, "filename"
    const-string v2, "video_001.mp4"
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const-string v1, "video_002.mp4"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :color_1
    const/16 v2, 1
    iput v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityWallpaper;->stockColor:I
    goto :ready
    :color_1
    const-string v1, "video_003.mp4"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :color_2
    const/16 v2, 2
    iput v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityWallpaper;->stockColor:I
    goto :ready
    :color_2
    const-string v1, "video_004.mp4"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :color_3
    const/16 v2, 3
    iput v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityWallpaper;->stockColor:I
    goto :ready
    :color_3
    const-string v1, "video_005.mp4"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :color_4
    const/16 v2, 4
    iput v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityWallpaper;->stockColor:I
    goto :ready
    :color_4
    :ready
    return-void
.end method
.method public refreshStockColor(ILandroid/os/Bundle;)V
    .locals 3
    const/4 v0, 0x0
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityWallpaper;->stockColor:I
    if-eqz p2, :read_stored_color
    move-object v0, p2
    goto :read_filename
    :read_stored_color
    invoke-static {p0, p1}, Le0/a;->O(Landroid/content/Context;I)Landroid/os/Bundle;
    move-result-object v0
    :read_filename
    if-eqz v0, :ready
    const-string v1, "filename"
    const-string v2, "video_001.mp4"
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const-string v1, "InfinityWallpaper"
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    const-string v1, "video_002.mp4"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :color_1
    const/16 v2, 1
    iput v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityWallpaper;->stockColor:I
    goto :ready
    :color_1
    const-string v1, "video_003.mp4"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :color_2
    const/16 v2, 2
    iput v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityWallpaper;->stockColor:I
    goto :ready
    :color_2
    const-string v1, "video_004.mp4"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :color_3
    const/16 v2, 3
    iput v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityWallpaper;->stockColor:I
    goto :ready
    :color_3
    const-string v1, "video_005.mp4"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :color_4
    const/16 v2, 4
    iput v2, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityWallpaper;->stockColor:I
    goto :ready
    :color_4
    :ready
    return-void
.end method

.method protected getGroupDataInner()[[I
    .locals 2
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityWallpaper;->stockColor:I
    const/16 v1, 1
    if-ne v0, v1, :group_1
    invoke-static {}, Lcom/samsung/android/wallpaper/live/infinity/stock/InfinityWallpaperGold;->getGroupData()[[I
    move-result-object v0
    return-object v0
    :group_1
    const/16 v1, 2
    if-ne v0, v1, :group_2
    invoke-static {}, Lcom/samsung/android/wallpaper/live/infinity/stock/InfinityWallpaperPurple;->getGroupData()[[I
    move-result-object v0
    return-object v0
    :group_2
    const/16 v1, 3
    if-ne v0, v1, :group_3
    invoke-static {}, Lcom/samsung/android/wallpaper/live/infinity/stock/InfinityWallpaperBlack;->getGroupData()[[I
    move-result-object v0
    return-object v0
    :group_3
    const/16 v1, 4
    if-ne v0, v1, :group_4
    invoke-static {}, Lcom/samsung/android/wallpaper/live/infinity/stock/InfinityWallpaperOrchid;->getGroupData()[[I
    move-result-object v0
    return-object v0
    :group_4
    invoke-static {}, Lcom/samsung/android/wallpaper/live/infinity/stock/InfinityWallpaperBlue;->getGroupData()[[I
    move-result-object v0
    return-object v0
.end method
.method protected getResIdInner(I)I
    .locals 4
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityWallpaper;->stockColor:I
    const-string v1, "blue"
    const/16 v2, 1
    if-ne v0, v2, :res_1
    const-string v1, "gold"
    :res_1
    const/16 v2, 2
    if-ne v0, v2, :res_2
    const-string v1, "purple"
    :res_2
    const/16 v2, 3
    if-ne v0, v2, :res_3
    const-string v1, "black"
    :res_3
    const/16 v2, 4
    if-ne v0, v2, :res_4
    const-string v1, "grey"
    :res_4
    if-nez p1, :background
    const-string v0, "vertex_data_"
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    const-string v2, "raw"
    goto :lookup
    :background
    const-string v0, "wallpaper_"
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    const/4 v0, 0x1
    if-ne p1, v0, :home
    const-string v0, "_lock"
    goto :suffix
    :home
    const-string v0, "_home"
    :suffix
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    const-string v2, "drawable"
    :lookup
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v0
    return v0
.end method

.method public onCreate()V
    .locals 0
    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->init(Landroid/content/Context;)V
    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->onCreate()V
    return-void
.end method
.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 2
    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/GalaxyWallpaperService;->onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    move-result-object v0
    check-cast v0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;
    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I
    move-result v1
    invoke-virtual {p0, v1}, Lcom/samsung/android/wallpaper/live/infinity/InfinityWallpaper;->refreshStockColor(I)V
    return-object v0
.end method
