.class public final Lu1/b;
.super Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/String;

.field public e:Lv1/d;

.field public f:Lv1/h;

.field public g:I

.field public h:I

.field public final i:Ls1/b;

.field public final j:LQ1/h;

.field public final synthetic k:Lcom/samsung/android/wallpaper/live/dailygradient/DailyGradientWallpaperService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/dailygradient/DailyGradientWallpaperService;)V
    .locals 1

    iput-object p1, p0, Lu1/b;->k:Lcom/samsung/android/wallpaper/live/dailygradient/DailyGradientWallpaperService;

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;-><init>(Lj1/a;)V

    const-string p1, "DailyGradientWallpaperEngine"

    iput-object p1, p0, Lu1/b;->d:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lu1/b;->g:I

    iput p1, p0, Lu1/b;->h:I

    new-instance p1, LQ1/h;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, LQ1/h;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lu1/b;->j:LQ1/h;

    sget-object p1, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;->d:Landroidx/recyclerview/widget/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/b;->I()Ls1/b;

    move-result-object p1

    invoke-static {p1}, Le0/a;->t(Ljava/lang/Object;)V

    iput-object p1, p0, Lu1/b;->i:Ls1/b;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 11

    iget-object v0, p0, Lu1/b;->f:Lv1/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lv1/h;->a(J)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_a

    iget v2, p0, Lu1/b;->g:I

    const/4 v3, 0x1

    aget v4, v0, v3

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    iget v2, p0, Lu1/b;->h:I

    aget v6, v0, v5

    if-eq v2, v6, :cond_a

    :cond_1
    iput v4, p0, Lu1/b;->g:I

    aget v0, v0, v5

    iput v0, p0, Lu1/b;->h:I

    iget-object p0, p0, Lu1/b;->e:Lv1/d;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v2

    iget-boolean v6, p0, Lv1/d;->o:Z

    iget v7, p0, Lv1/d;->m:I

    iget v8, p0, Lv1/d;->n:I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "setTimeIndex: index updated isInitIndexFirst isInitIndexFirst="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " currentTimeIdx="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " prevTimeIdx="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v2, v7, v8}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v4, p0, Lv1/d;->m:I

    iput v0, p0, Lv1/d;->n:I

    iget-boolean v0, p0, Lv1/d;->o:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lv1/d;->x:LH1/a;

    iget v4, p0, Lv1/d;->m:I

    iget v7, p0, Lv1/d;->n:I

    iget-boolean v8, p0, Lv1/d;->z:Z

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "handleTimeChange: currentDisplayState="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " currTimeIdx="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isVisible="

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lv1/d;->x:LH1/a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v3, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lv1/d;->x:LH1/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleTimeChange: display type not handled currentDisplayState="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lv1/d;->k()V

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lv1/d;->z:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v5, p0, Lv1/d;->F:Z

    invoke-virtual {p0}, Lv1/d;->u()V

    goto :goto_1

    :cond_3
    iput-boolean v3, p0, Lv1/d;->F:Z

    :goto_1
    invoke-virtual {p0}, Lv1/d;->k()V

    invoke-virtual {p0, v3}, Lv1/d;->m(Z)Lx1/a;

    move-result-object v0

    iput-object v0, p0, Lv1/d;->G:Lx1/a;

    invoke-virtual {p0}, Lv1/d;->v()V

    invoke-virtual {p0}, Lv1/d;->t()V

    goto :goto_2

    :cond_4
    const-string p0, "valueAnimator"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-virtual {p0}, Lv1/d;->u()V

    invoke-virtual {p0, v3}, Lv1/d;->n(Z)Lx1/b;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lv1/d;->w(Lx1/b;)V

    :cond_6
    invoke-virtual {p0}, Lv1/d;->l()V

    invoke-virtual {p0}, Lv1/d;->k()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lv1/d;->u()V

    invoke-virtual {p0, v5}, Lv1/d;->n(Z)Lx1/b;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lv1/d;->w(Lx1/b;)V

    :cond_8
    invoke-virtual {p0}, Lv1/d;->l()V

    invoke-virtual {p0}, Lv1/d;->k()V

    goto :goto_2

    :cond_9
    iput-boolean v5, p0, Lv1/d;->o:Z

    :cond_a
    :goto_2
    return-void
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lu1/b;->i:Ls1/b;

    if-eqz v0, :cond_1

    new-instance v1, Ls1/a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ls1/a;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Ls1/b;->a(Ls1/a;)Lq1/a;

    move-result-object v0

    iget-object v1, p0, Lu1/b;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "updateWeatherData: it="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lu1/b;->f:Lv1/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lv1/h;->d(Lq1/a;)V

    :cond_0
    invoke-virtual {p0}, Lu1/b;->d()V

    return-void

    :cond_1
    const-string p0, "getCurrentWeatherData"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 6

    iget-object v0, p0, Lu1/b;->e:Lv1/d;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getSourceWhich()I

    move-result v1

    invoke-virtual {v0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCommand: action="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " z="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " extras="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " resultRequested="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " sourceWhich="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4943dbf9

    if-eq v2, v3, :cond_3

    const v3, 0x45c01370

    if-eq v2, v3, :cond_1

    const v0, 0x69401ccd

    if-eq v2, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "android.wallpaper.goingtosleep"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v2, "android.wallpaper.reapply"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "reapply:"

    invoke-static {v2, v5, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v4, v0, Lv1/d;->M:Z

    invoke-virtual {v0, v1}, Lv1/d;->q(I)V

    iget-boolean v1, v0, Lv1/d;->f:Z

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lv1/d;->l()V

    goto :goto_1

    :cond_3
    const-string v0, "android.wallpaper.wakingup"

    goto :goto_0

    :cond_4
    :goto_1
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 9

    const-string v0, "surfaceHolder"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lu1/b;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_w"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu1/b;->d:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onCreate:"

    invoke-static {v0, v3, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    move v3, v1

    goto :goto_1

    :cond_1
    invoke-static {}, Lf2/g;->b()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    and-int/lit8 v0, v0, 0x3c

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_2
    invoke-static {}, Lf2/g;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    and-int/lit8 v0, v0, 0x3c

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_3
    invoke-static {}, Lf2/g;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->setFixedOrientation(ZZ)V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getWhich()I

    move-result v0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, LK/I;->O(I)I

    move-result v2

    if-nez v2, :cond_5

    move v7, v1

    goto :goto_2

    :cond_5
    move v7, v0

    :goto_2
    new-instance v0, Lv1/d;

    iget-object v1, p0, Lu1/b;->k:Lcom/samsung/android/wallpaper/live/dailygradient/DailyGradientWallpaperService;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v1, "getBaseContext(...)"

    invoke-static {v5, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lv1/d;-><init>(Landroid/view/SurfaceHolder;Landroid/content/Context;ZILandroid/os/Bundle;)V

    iput-object v0, p0, Lu1/b;->e:Lv1/d;

    invoke-static {}, Lf2/g;->b()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_6

    invoke-static {}, Lf2/g;->c()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    iget-object v1, p0, Lu1/b;->e:Lv1/d;

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    :cond_7
    new-instance p1, Lv1/h;

    invoke-direct {p1}, Lv1/h;-><init>()V

    iput-object p1, p0, Lu1/b;->f:Lv1/h;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-static {}, LW4/B;->a()Lkotlinx/coroutines/scheduling/c;

    move-result-object p1

    invoke-static {p1}, LW4/u;->a(Lu3/i;)Lkotlinx/coroutines/internal/c;

    move-result-object p1

    new-instance v1, Lu1/a;

    invoke-direct {v1, p0, v0}, Lu1/a;-><init>(Lu1/b;Lu3/d;)V

    invoke-static {p1, v1}, LW4/u;->h(LW4/t;LE3/c;)LW4/x;

    :cond_8
    invoke-virtual {p0}, Lu1/b;->e()V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->c()Lo1/b;

    move-result-object p1

    iget-object p0, p0, Lu1/b;->j:LQ1/h;

    invoke-virtual {p1, p0}, Lo1/b;->f(LQ1/h;)V

    :cond_9
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onDestroy()V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->c()Lo1/b;

    move-result-object v0

    iget-object v1, p0, Lu1/b;->j:LQ1/h;

    invoke-virtual {v0, v1}, Lo1/b;->h(LQ1/h;)V

    invoke-static {}, Lf2/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lu1/b;->e:Lv1/d;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/view/SemWindowManager;->unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V

    :cond_0
    iget-object v0, p0, Lu1/b;->e:Lv1/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lv1/d;->r()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lu1/b;->e:Lv1/d;

    return-void
.end method

.method public final onDisplayStateChanged(LH1/a;LH1/a;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onDisplayStateChanged(LH1/a;LH1/a;)V

    iget-object p0, p0, Lu1/b;->e:Lv1/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lv1/d;->s(LH1/a;LH1/a;)V

    :cond_0
    return-void
.end method

.method public final onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5

    iget-object v0, p0, Lu1/b;->d:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onSurfaceChanged:"

    invoke-static {v0, v3, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    iget-object p0, p0, Lu1/b;->e:Lv1/d;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onSurfaceChanged: width="

    const-string v3, " height="

    const-string v4, " holder="

    invoke-static {p3, v2, p4, v3, v4}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " format="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    iget-boolean p1, p0, Lv1/d;->f:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lv1/d;->R:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lv1/d;->g:I

    invoke-virtual {p0, p1}, Lv1/d;->q(I)V

    iget-object p1, p0, Lv1/d;->i:Lv1/g;

    if-eqz p1, :cond_1

    new-instance p2, Landroid/util/SizeF;

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-direct {p2, p3, p4}, Landroid/util/SizeF;-><init>(FF)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "onResize: surfaceSize="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v1, [Ljava/lang/Object;

    const-string v0, "DailyGradientEffect"

    invoke-static {v0, p3, p4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p1, Lv1/g;->p:Landroid/util/SizeF;

    :cond_1
    iget-boolean p1, p0, Lv1/d;->f:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lv1/d;->l()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lu1/b;->d:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onSurfaceCreated:"

    invoke-static {v0, v3, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    iget-object p0, p0, Lu1/b;->e:Lv1/d;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSurfaceCreated: holder="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onSurfaceCreated: surfaceWidth = "

    const-string v5, " surfaceHeight = "

    invoke-static {v4, v5, v0, v2}, LB/a;->m(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iput-object p1, p0, Lv1/d;->d:Landroid/view/SurfaceHolder;

    :cond_3
    :goto_2
    return-void
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    iget-object p0, p0, Lu1/b;->d:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onSurfaceDestroyed:"

    invoke-static {p0, v0, p1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 8

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    iget-object v0, p0, Lu1/b;->d:Ljava/lang/String;

    const-string v1, "onVisibilityChanged: visible="

    invoke-static {v1, p1}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lu1/b;->e:Lv1/d;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getDisplayState()LH1/a;

    move-result-object p0

    const-string v1, "getDisplayState(...)"

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p1, v0, Lv1/d;->z:Z

    invoke-virtual {v0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, v0, Lv1/d;->z:Z

    iget-boolean v4, v0, Lv1/d;->Q:Z

    iget-object v5, v0, Lv1/d;->x:LH1/a;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onVisibilityChanged: isVisible="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAnimationNeeded="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " currentDisplayState="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " displayState="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-boolean v1, v0, Lv1/d;->f:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lv1/d;->Q:Z

    sget-object v3, LH1/a;->f:LH1/a;

    if-nez v1, :cond_0

    if-ne p0, v3, :cond_1

    iget-object v1, v0, Lv1/d;->x:LH1/a;

    if-eq v1, p0, :cond_1

    :cond_0
    iget-object p0, v0, Lv1/d;->x:LH1/a;

    invoke-virtual {v0, v3, p0}, Lv1/d;->s(LH1/a;LH1/a;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    const-string v1, "valueAnimator"

    if-eqz p1, :cond_3

    iget-boolean v3, v0, Lv1/d;->f:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "resumeAnimation:"

    invoke-static {p1, v3, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, v0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_0

    :cond_2
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-nez p1, :cond_6

    iget-boolean p1, v0, Lv1/d;->f:Z

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "pauseAnimation"

    invoke-static {p1, v3, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, v0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, v0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->pause()V

    goto :goto_0

    :cond_4
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_0
    return-void
.end method
