.class public Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BaseEngine"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDisplayStateMonitor:LK1/d;

.field final synthetic this$0:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    const-string p1, "LiveWallpaperService"

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getDisplayState()LH1/a;
    .locals 0
    .annotation build Le/a;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->mDisplayStateMonitor:LK1/d;

    invoke-virtual {p0}, LK1/d;->b()LH1/a;

    move-result-object p0

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 3
    .annotation build Le/a;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v2, "semGetExtras"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, LK/I;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "semGetExtras : e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EngineReflector"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public getMyDisplayId()I
    .locals 3
    .annotation build Le/a;
    .end annotation

    :try_start_0
    const-class v0, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v1, "getDisplayId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, LK/I;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDisplayId : ee="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EngineReflector"

    invoke-static {v1, v0, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getSourceWhich()I
    .locals 1
    .annotation build Le/a;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result p0

    invoke-static {p0}, LK/I;->c0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 p0, p0, 0x3c

    or-int/lit8 p0, p0, 0x1

    :cond_0
    return p0
.end method

.method public getWhich()I
    .locals 4
    .annotation build Le/a;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v2, "semGetWallpaperFlags"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, LK/I;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "semGetWallpaperFlags : e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EngineReflector"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method public isKeyguardTouchEventRequired()Z
    .locals 0
    .annotation build Le/a;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 2
    .annotation build Le/a;
    .end annotation

    invoke-static {}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->b()Z

    move-result p6

    if-eqz p6, :cond_1

    const-string p6, "samsung.android.wallpaper.blocktoucharea"

    invoke-static {p1, p6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_1

    iget-object p6, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCommand: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", z="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", hasExtras="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p6, p3}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->mDisplayStateMonitor:LK1/d;

    invoke-virtual {p3, p2, p1}, LK1/d;->e(ILjava/lang/String;)V

    const-string p2, "android.wallpaper.reapply"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "android.wallpaper.keyguardgoingaway"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onKeyguardGoingAway()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onReapply()V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3
    .annotation build Le/a;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->TAG:Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->a(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;)Lcom/samsung/android/wallpaper/live/sdk/service/a;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/samsung/android/wallpaper/live/sdk/service/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p1, Lcom/samsung/android/wallpaper/live/sdk/service/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;

    if-eqz v1, :cond_0

    if-ne v1, p0, :cond_0

    const-string v0, "LiveWallpaperEngineManager"

    const-string v1, "registerEngine : already registered engine"

    invoke-static {v0, v1}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/samsung/android/wallpaper/live/sdk/service/a;->a:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v0

    and-int/lit8 v0, v0, 0x3c

    sget v1, LK1/e;->a:I

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v0, LK1/f;

    invoke-direct {v0, p1}, LK1/a;-><init>(Landroid/content/Context;)V

    iput-boolean v2, v0, LK1/f;->k:Z

    iput v1, v0, LK1/f;->j:I

    goto :goto_2

    :cond_2
    sget-boolean v0, LK1/e;->b:Z

    if-eqz v0, :cond_3

    new-instance v0, LK1/h;

    invoke-direct {v0, p1}, LK1/a;-><init>(Landroid/content/Context;)V

    sget-object p1, LH1/a;->h:LH1/a;

    iput-object p1, v0, LK1/h;->j:LH1/a;

    goto :goto_2

    :cond_3
    sget-boolean v0, LK1/e;->c:Z

    if-eqz v0, :cond_4

    new-instance v0, LK1/b;

    invoke-direct {v0, p1}, LK1/a;-><init>(Landroid/content/Context;)V

    iput-boolean v2, v0, LK1/b;->j:Z

    goto :goto_2

    :cond_4
    new-instance v0, LK1/g;

    invoke-direct {v0, p1}, LK1/d;-><init>(Landroid/content/Context;)V

    :goto_2
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->mDisplayStateMonitor:LK1/d;

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreate: display monitor = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->mDisplayStateMonitor:LK1/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->mDisplayStateMonitor:LK1/d;

    new-instance v0, Lcom/samsung/android/wallpaper/live/sdk/service/b;

    invoke-direct {v0, p0}, Lcom/samsung/android/wallpaper/live/sdk/service/b;-><init>(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;)V

    invoke-virtual {p1, v0}, LK1/d;->f(Lcom/samsung/android/wallpaper/live/sdk/service/b;)V

    return-void

    :goto_3
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onDestroy()V
    .locals 3
    .annotation build Le/a;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->this$0:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;

    invoke-static {v0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;->a(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService;)Lcom/samsung/android/wallpaper/live/sdk/service/a;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/sdk/service/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, v0, Lcom/samsung/android/wallpaper/live/sdk/service/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;

    if-eqz v2, :cond_0

    if-ne v2, p0, :cond_1

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/wallpaper/live/sdk/service/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->mDisplayStateMonitor:LK1/d;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, LK1/d;->g()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->mDisplayStateMonitor:LK1/d;

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onDisplayStateChanged(LH1/a;LH1/a;)V
    .locals 0
    .annotation build Le/a;
    .end annotation

    return-void
.end method

.method public onGetRunningState(LH1/b;)LH1/c;
    .locals 0
    .annotation build Le/a;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onGetScreenshot(LH1/d;)LH1/e;
    .locals 0
    .annotation build Le/a;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onKeyguardGoingAway()V
    .locals 0
    .annotation build Le/a;
    .end annotation

    return-void
.end method

.method public onReapply()V
    .locals 0
    .annotation build Le/a;
    .end annotation

    return-void
.end method

.method public onSwitchDisplayChanged(Z)V
    .locals 0
    .annotation build Le/a;
    .end annotation

    return-void
.end method

.method public setFixedOrientation(ZZ)V
    .locals 3
    .annotation build Le/a;
    .end annotation

    :try_start_0
    const-class v0, Landroid/service/wallpaper/WallpaperService$Engine;

    const-string v1, "semSetFixedOrientation"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, LK/I;->U(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "semSetFixedOrientation : e="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EngineReflector"

    invoke-static {p2, p1, p0}, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
