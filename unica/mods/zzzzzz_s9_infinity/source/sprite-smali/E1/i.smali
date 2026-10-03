.class public final LE1/i;
.super Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;
.source "SourceFile"


# instance fields
.field public d:Lcom/samsung/android/wallpaper/live/layered/LayeredController;

.field public e:LE1/h;

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;)V
    .locals 0

    iput-object p1, p0, LE1/i;->h:Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;-><init>(Lj1/a;)V

    const/4 p1, 0x0

    iput p1, p0, LE1/i;->f:I

    iput p1, p0, LE1/i;->g:I

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initLayeredController : which = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "LayeredWallpaperServiceEngine"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    iget-object v2, p0, LE1/i;->h:Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/wallpaper/live/layered/LayeredController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, LE1/i;->d:Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    new-instance v0, LE1/h;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, LE1/i;->d:Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    iget-object v4, v3, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    if-eqz v4, :cond_0

    iget-boolean v1, v4, LE1/d;->m:Z

    :cond_0
    invoke-direct {v0, p0, v2, v3, v1}, LE1/h;-><init>(LE1/i;Landroid/content/Context;Lcom/samsung/android/nexus/egl/core/SurfaceCallback;Z)V

    iput-object v0, p0, LE1/i;->e:LE1/h;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final e()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LayeredWallpaperServiceEngine"

    const-string v2, "removeLayeredController"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LE1/i;->e:LE1/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LE1/h;->a()V

    iput-object v1, p0, LE1/i;->e:LE1/h;

    :cond_0
    iget-object v0, p0, LE1/i;->d:Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v2, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->l:LE1/f;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v2, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {v2}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onDestroy()V

    iput-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->d:Landroid/opengl/GLSurfaceView;

    iput-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    iput-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    iput-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->b:Landroid/content/Context;

    iput-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->f:Landroid/graphics/Point;

    iput-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->g:Landroid/animation/ValueAnimator;

    iput-object v1, p0, LE1/i;->d:Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    :cond_2
    return-void
.end method

.method public final onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, LK/I;->Y(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v0

    invoke-static {v0, p1}, Le0/a;->R(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "android.wallpaper.reapply"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, LE1/d;

    iget-object v3, p0, LE1/i;->h:Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v4

    invoke-direct {v2, v3, v4, v1}, LE1/d;-><init>(Landroid/content/Context;IZ)V

    iget-object v1, p0, LE1/i;->d:Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    iget-object v1, v1, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, LE1/d;->m:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, v2, LE1/d;->m:Z

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, LE1/i;->e()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, LA0/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, LA0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, LE1/i;->d:Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->d:Landroid/opengl/GLSurfaceView;

    new-instance v2, LA0/b;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3, p5}, LA0/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0}, LE1/i;->d()V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result p1

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;

    const-string v2, "setFixedSizeAllowed"

    invoke-static {v1, v2, v0}, Le0/a;->G(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Le0/a;->Q(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->setFixedOrientation(ZZ)V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getMyDisplayId()I

    move-result v1

    iput v1, p0, LE1/i;->f:I

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getSourceWhich()I

    move-result v1

    iput v1, p0, LE1/i;->g:I

    iget-object v2, p0, LE1/i;->h:Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;

    iget-object v3, v2, Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;->d:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onCreate: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , sourceWhich = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, LE1/i;->g:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , engine = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " , active engines = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v2, Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "LayeredWallpaperServiceEngine"

    invoke-static {v0, p0, p1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onDesiredSizeChanged(II)V
    .locals 5

    const-string v0, "onDesiredSizeChanged: "

    const-string v1, " , "

    invoke-static {p1, v0, p2, v1, v1}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "LayeredWallpaperServiceEngine"

    invoke-static {v4, v0, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, LE1/i;->f:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget-object p0, p0, LE1/i;->d:Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    const-string v3, "onDesiredSizeChanged : "

    invoke-static {p1, v3, p2, v1, v1}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->e:LF1/b;

    invoke-virtual {v3}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->d:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onDestroy()V

    invoke-virtual {p0}, LE1/i;->e()V

    iget-object v0, p0, LE1/i;->h:Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;

    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;->d:Ljava/util/HashMap;

    iget v2, p0, LE1/i;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDestroy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , sourceWhich = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LE1/i;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , engine = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " , active engines = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LayeredWallpaperServiceEngine"

    invoke-static {v1, p0, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onDisplayStateChanged(LH1/a;LH1/a;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onDisplayStateChanged(LH1/a;LH1/a;)V

    iget-object p0, p0, LE1/i;->d:Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    if-eqz p0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDisplayStateChanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    iget p2, p2, LE1/d;->i:I

    const/4 v0, 0x2

    invoke-static {p2, v0}, LK/I;->Y(II)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->d:Landroid/opengl/GLSurfaceView;

    new-instance v0, LA0/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, LA0/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onVisibilityChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "LayeredWallpaperServiceEngine"

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, LE1/i;->d:Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a(Z)V

    :cond_0
    return-void
.end method

.method public final onWallpaperFlagsChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onWallpaperFlagsChanged(I)V

    const-string v0, "onWallpaperFlagsChanged: "

    const-string v1, " , prev sourceWhich = "

    invoke-static {p1, v0, v1}, LB/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, LE1/i;->g:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , sourceWhich ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getSourceWhich()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , engine = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " , active engines = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LE1/i;->h:Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;

    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "LayeredWallpaperServiceEngine"

    invoke-static {v2, p1, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/samsung/android/wallpaper/live/layered/LayeredWallpaperService;->d:Ljava/util/HashMap;

    iget v0, p0, LE1/i;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getSourceWhich()I

    move-result v0

    iput v0, p0, LE1/i;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getMyDisplayId()I

    move-result p1

    iput p1, p0, LE1/i;->f:I

    iget-object p1, p0, LE1/i;->d:Lcom/samsung/android/wallpaper/live/layered/LayeredController;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result p0

    iget-object v0, p1, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v0, p0}, LE1/d;->j(I)V

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11

    if-ne p0, v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->d:Landroid/opengl/GLSurfaceView;

    new-instance v1, LB/k;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p1}, LB/k;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "LayeredController"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->c:LE1/d;

    invoke-virtual {v0}, LE1/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/wallpaper/live/layered/LayeredController;->a:Ljava/lang/String;

    :cond_2
    return-void
.end method
