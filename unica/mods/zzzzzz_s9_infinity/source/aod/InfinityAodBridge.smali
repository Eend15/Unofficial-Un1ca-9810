.class public final Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;
.super Ljava/lang/Object;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.field private static instance:Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;
.field private root:Landroid/view/View;
.field private scrim:Landroid/view/View;
.field private originalAlpha:F
.field private active:Z

.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->root:Landroid/view/View;
    iput-object p2, p0, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->scrim:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F
    move-result v0
    iput v0, p0, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->originalAlpha:F
    return-void
.end method

.method public static bind(Landroid/view/View;)V
    .locals 5
    const-string v0, "InfinityAodBridge"
    const-string v1, "Checking shared native Infinity wallpaper"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {}, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->unbind()V
    if-eqz p0, :exit
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v1
    const-string v2, "aod_show_lockscreen_wallpaper"
    const/4 v3, 0x0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    move-result v1
    if-eqz v1, :exit
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    move-result-object v1
    const/4 v2, 0x6
    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I
    move-result v3
    if-ltz v3, :shared_lock
    goto :selected_lock
    :shared_lock
    const/4 v2, 0x5
    :selected_lock
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I
    move-result v3
    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->semGetWallpaperComponent(II)Landroid/content/ComponentName;
    move-result-object v1
    if-eqz v1, :exit
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    move-result-object v1
    const-string v2, "com.samsung.android.wallpaper.live.infinity.InfinityWallpaper"
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :exit
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;
    move-result-object p0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    move-result-object v0
    const-string v1, "light_reveal_scrim"
    const-string v2, "id"
    const-string v3, "com.android.systemui"
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    move-result v0
    if-eqz v0, :exit
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v1
    if-eqz v1, :exit
    new-instance v2, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;
    invoke-direct {v2, p0, v1}, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;-><init>(Landroid/view/View;Landroid/view/View;)V
    sput-object v2, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->instance:Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v0
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    const-string v0, "InfinityAodBridge"
    const-string v1, "Bound native Infinity AOD scrim bridge"
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :exit
    return-void
.end method

.method public static amount(F)V
    .locals 2
    sget-object v0, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->instance:Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;
    if-eqz v0, :exit
    const/high16 v1, 0x3f800000
    cmpl-float v1, p0, v1
    if-ltz v1, :restore
    const/4 v1, 0x1
    iput-boolean v1, v0, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->active:Z
    invoke-virtual {v0}, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->onPreDraw()Z
    goto :exit
    :restore
    invoke-direct {v0}, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->restore()V
    :exit
    return-void
.end method

.method private restore()V
    .locals 2
    iget-boolean v0, p0, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->active:Z
    if-eqz v0, :exit
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->active:Z
    iget-object v0, p0, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->scrim:Landroid/view/View;
    iget v1, p0, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->originalAlpha:F
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V
    :exit
    return-void
.end method

.method public static unbind()V
    .locals 2
    sget-object v0, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->instance:Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;
    if-eqz v0, :exit
    invoke-direct {v0}, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->restore()V
    iget-object v1, v0, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->root:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v1
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z
    move-result v0
    if-eqz v0, :clear
    sget-object v0, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->instance:Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :clear
    const/4 v0, 0x0
    sput-object v0, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->instance:Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;
    :exit
    return-void
.end method

.method public onPreDraw()Z
    .locals 2
    iget-boolean v0, p0, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->active:Z
    if-eqz v0, :exit
    iget-object v0, p0, Lcom/samsung/android/app/aodservice/plugin/InfinityAodBridge;->scrim:Landroid/view/View;
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V
    :exit
    const/4 v0, 0x1
    return v0
.end method
