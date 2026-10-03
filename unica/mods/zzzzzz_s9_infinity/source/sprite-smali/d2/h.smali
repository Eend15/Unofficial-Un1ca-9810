.class public final Ld2/h;
.super Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;
.source "SourceFile"


# instance fields
.field public d:Landroid/content/Context;

.field public e:Ld2/g;

.field public f:Ld2/c;

.field public g:I

.field public h:La0/b;

.field public volatile i:Landroid/view/SurfaceHolder;

.field public volatile j:Z

.field public k:LH1/a;

.field public l:Z

.field public m:LM1/d;

.field public final n:Ld2/f;

.field public final o:LN1/f;

.field public final p:LQ1/h;

.field public final synthetic q:Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;)V
    .locals 1

    iput-object p1, p0, Ld2/h;->q:Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;-><init>(Lj1/a;)V

    const/4 p1, -0x1

    iput p1, p0, Ld2/h;->g:I

    sget-object p1, LH1/a;->f:LH1/a;

    iput-object p1, p0, Ld2/h;->k:LH1/a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld2/h;->l:Z

    new-instance p1, Ld2/f;

    invoke-direct {p1, p0}, Ld2/f;-><init>(Ld2/h;)V

    iput-object p1, p0, Ld2/h;->n:Ld2/f;

    new-instance p1, LN1/f;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, LN1/f;-><init>(Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;I)V

    iput-object p1, p0, Ld2/h;->o:LN1/f;

    new-instance p1, LQ1/h;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, LQ1/h;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Ld2/h;->p:LQ1/h;

    return-void
.end method


# virtual methods
.method public final d(Z)V
    .locals 4

    iget-boolean v0, p0, Ld2/h;->j:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ld2/h;->q:Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    const-string v1, "onResolvedVisibilityChanged "

    invoke-static {v1, p1}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Ld2/h;->j:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Ld2/h;->f:Ld2/c;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p1, Ld2/c;->c:Z

    iget-object v0, p1, Ld2/c;->h:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {v0}, Lf2/b;->a(Landroid/animation/ValueAnimator;)V

    sget-object v1, Ld2/c;->s:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Ld2/a;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Ld2/a;-><init>(Ld2/c;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p1, Ld2/c;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Ld2/h;->f:Ld2/c;

    if-eqz p1, :cond_3

    iput-boolean v2, p1, Ld2/c;->c:Z

    invoke-virtual {p1}, Ld2/c;->b()V

    :cond_3
    :goto_0
    iget-object p0, p0, Ld2/h;->e:Ld2/g;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ld2/g;->b()V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final e(ZZ)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Ld2/h;->l:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld2/h;->k:LH1/a;

    sget-object p2, LH1/a;->f:LH1/a;

    if-ne p1, p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move p2, p1

    :cond_1
    :goto_0
    iget-object p1, p0, Ld2/h;->p:LQ1/h;

    iget-object v1, p0, Ld2/h;->o:LN1/f;

    if-eqz p2, :cond_3

    iget-object p2, p0, Ld2/h;->f:Ld2/c;

    if-eqz p2, :cond_2

    iput-boolean v0, p2, Ld2/c;->o:Z

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->b()Lw0/i;

    move-result-object p2

    invoke-virtual {p2, v1}, Lw0/i;->F(Ln1/c;)V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->c()Lo1/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lo1/b;->f(LQ1/h;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->b()Lw0/i;

    move-result-object p2

    invoke-virtual {p2, v1}, Lw0/i;->J(Ln1/c;)V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->c()Lo1/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lo1/b;->h(LQ1/h;)V

    :goto_1
    return-void
.end method

.method public final onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 9

    const-string v0, "onCommand color = "

    iget-object v1, p0, Ld2/h;->q:Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;

    iget-object v2, v1, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    const-string v3, "onCommand "

    invoke-static {v3, p1}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "samsung.android.wallpaper.customdata"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string v2, "bg_color"

    invoke-virtual {p5, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v5, -0x1000000

    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_0
    iget-object v6, v1, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    const-string v7, "onCommand : KEY_BG_COLOR is NULL or EMPTY"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v6, v1, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v0, v1, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    const-string v1, "wrong color "

    invoke-static {v1, v2}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Ld2/h;->e:Ld2/g;

    if-eqz v0, :cond_6

    iget-object v1, v0, Ld2/g;->e:Ld2/h;

    iget-object v1, v1, Ld2/h;->h:La0/b;

    if-eqz v1, :cond_1

    iput v5, v1, La0/b;->c:I

    iput-boolean v3, v1, La0/b;->d:Z

    :cond_1
    invoke-virtual {v0}, Ld2/g;->b()V

    goto :goto_2

    :cond_2
    const-string v0, "android.wallpaper.reapply"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ld2/h;->d:Landroid/content/Context;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Le0/a;->O(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/app/N;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/N;-><init>(Landroid/os/Bundle;)V

    iget v0, v1, Landroidx/appcompat/app/N;->a:I

    iget-object v1, p0, Ld2/h;->e:Ld2/g;

    if-eqz v1, :cond_6

    iget-object v2, v1, Ld2/g;->e:Ld2/h;

    iget-object v2, v2, Ld2/h;->h:La0/b;

    if-eqz v2, :cond_3

    iput v0, v2, La0/b;->c:I

    iput-boolean v3, v2, La0/b;->d:Z

    :cond_3
    invoke-virtual {v1}, Ld2/g;->b()V

    goto :goto_2

    :cond_4
    const-string v0, "samsung.android.wallpaper.doze_time_tick"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->c()Lo1/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo1/b;->d(Ljava/util/Calendar;)Lo1/a;

    move-result-object v0

    iget-object v1, p0, Ld2/h;->e:Ld2/g;

    if-eqz v1, :cond_6

    iget-object v2, v1, Ld2/g;->e:Ld2/h;

    iget-object v2, v2, Ld2/h;->h:La0/b;

    if-eqz v2, :cond_5

    iput-object v0, v2, La0/b;->n:Ljava/lang/Object;

    iput-boolean v3, v2, La0/b;->b:Z

    :cond_5
    invoke-virtual {v1}, Ld2/g;->b()V

    :cond_6
    :goto_2
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 4

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    iget-object v1, p0, Ld2/h;->q:Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    const-string v3, "_PREVIEW"

    invoke-static {v0, v2, v3}, LB/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ld2/h;->d:Landroid/content/Context;

    new-instance v0, LM1/d;

    invoke-direct {v0, p1}, LM1/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ld2/h;->m:LM1/d;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setTouchEventsEnabled(Z)V

    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->setFixedOrientation(ZZ)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ld2/h;->m:LM1/d;

    iget-object v1, p0, Ld2/h;->n:Ld2/f;

    invoke-virtual {v0, v1}, LM1/d;->c(LM1/c;)V

    :cond_1
    iget-object v0, p0, Ld2/h;->e:Ld2/g;

    if-nez v0, :cond_2

    new-instance v0, Ld2/g;

    invoke-direct {v0, p0}, Ld2/g;-><init>(Ld2/h;)V

    iput-object v0, p0, Ld2/h;->e:Ld2/g;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    new-instance v0, Ld2/c;

    iget-object v1, p0, Ld2/h;->d:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v2

    xor-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Ld2/c;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Ld2/h;->f:Ld2/c;

    new-instance v1, LA1/h;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0}, LA1/h;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Ld2/c;->f:LA1/h;

    new-instance v0, La0/b;

    iget-object v1, p0, Ld2/h;->d:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v2

    invoke-direct {v0, v1, v2}, La0/b;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Ld2/h;->h:La0/b;

    iget-object v0, p0, Ld2/h;->d:Landroid/content/Context;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Le0/a;->O(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/app/N;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/N;-><init>(Landroid/os/Bundle;)V

    iget v0, v1, Landroidx/appcompat/app/N;->a:I

    iget-object p0, p0, Ld2/h;->e:Ld2/g;

    if-eqz p0, :cond_4

    iget-object v1, p0, Ld2/g;->e:Ld2/h;

    iget-object v1, v1, Ld2/h;->h:La0/b;

    if-eqz v1, :cond_3

    iput v0, v1, La0/b;->c:I

    iput-boolean p1, v1, La0/b;->d:Z

    :cond_3
    invoke-virtual {p0}, Ld2/g;->b()V

    :cond_4
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onDestroy()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ld2/h;->e(ZZ)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld2/h;->m:LM1/d;

    iget-object v1, p0, Ld2/h;->n:Ld2/f;

    invoke-virtual {v0, v1}, LM1/d;->d(LM1/c;)V

    :cond_0
    iget-object v0, p0, Ld2/h;->e:Ld2/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld2/h;->e:Ld2/g;

    :cond_1
    return-void
.end method

.method public final onDisplayStateChanged(LH1/a;LH1/a;)V
    .locals 9

    iget-object p2, p0, Ld2/h;->q:Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;

    iget-object v0, p2, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDisplayStateChanged : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ld2/h;->k:LH1/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Ld2/h;->k:LH1/a;

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Ld2/h;->e(ZZ)V

    iget-object v1, p0, Ld2/h;->e:Ld2/g;

    sget-object v3, LH1/a;->h:LH1/a;

    sget-object v4, LH1/a;->g:LH1/a;

    if-eqz v1, :cond_5

    if-eq p1, v4, :cond_1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    iget-object v5, v1, Ld2/g;->e:Ld2/h;

    iget-object v5, v5, Ld2/h;->h:La0/b;

    if-eqz v5, :cond_4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onAodModeChanged : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "Render"

    invoke-static {v8, v6, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v5, La0/b;->f:Ljava/lang/Object;

    check-cast v6, Landroid/view/ViewGroup;

    iget v7, v5, La0/b;->c:I

    invoke-static {v7}, La4/x;->x(I)Landroid/graphics/drawable/PaintDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x4

    if-eqz p1, :cond_3

    iget-object p1, v5, La0/b;->i:Ljava/lang/Object;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v5, La0/b;->j:Ljava/lang/Object;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, v5, La0/b;->j:Ljava/lang/Object;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, v5, La0/b;->l:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_3
    iget-object p1, v5, La0/b;->i:Ljava/lang/Object;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v5, La0/b;->j:Ljava/lang/Object;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v6, :cond_4

    iget-object p1, v5, La0/b;->j:Ljava/lang/Object;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    invoke-virtual {v1}, Ld2/g;->b()V

    :cond_5
    iget-boolean p1, p0, Ld2/h;->l:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Ld2/h;->k:LH1/a;

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_7

    sget-object v1, LH1/a;->f:LH1/a;

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    move v0, v2

    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result p1

    if-nez p1, :cond_8

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    iget-object p1, p2, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "resolveVisibilityAsDisplay "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld2/h;->k:LH1/a;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ld2/h;->d(Z)V

    :goto_4
    return-void
.end method

.method public final onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    iget-object v0, p0, Ld2/h;->q:Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    const-string v1, "onSurfaceChanged "

    const-string v2, " "

    invoke-static {v1, v2, p3, p4}, LB/a;->m(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    iget-object p0, p0, Ld2/h;->f:Ld2/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ld2/c;->b()V

    :cond_0
    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Ld2/h;->q:Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSurfaceCreated "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    iput-object p1, p0, Ld2/h;->i:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Ld2/h;->q:Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSurfaceDestroyed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ld2/h;->i:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v2

    :goto_2
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    return-void

    :cond_3
    iget-object v4, p0, Ld2/h;->h:La0/b;

    if-nez v4, :cond_4

    return-void

    :cond_4
    const/4 v5, -0x1

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v7, v4, La0/b;->g:Ljava/lang/Object;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    iget-object v8, v4, La0/b;->h:Ljava/lang/Object;

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/View;->getX()F

    move-result v8

    add-float/2addr v8, v7

    iget-object v7, v4, La0/b;->g:Ljava/lang/Object;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    iget-object v9, v4, La0/b;->h:Ljava/lang/Object;

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v9

    add-float/2addr v9, v7

    iget-object v7, v4, La0/b;->g:Ljava/lang/Object;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v10, v1

    :goto_3
    if-ge v10, v7, :cond_6

    iget-object v11, v4, La0/b;->g:Ljava/lang/Object;

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v12

    add-float/2addr v12, v8

    cmpl-float v12, v6, v12

    if-lez v12, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v12

    add-float/2addr v12, v8

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    cmpg-float v12, v6, v12

    if-gez v12, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v12

    add-float/2addr v12, v9

    cmpl-float v12, p1, v12

    if-lez v12, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v12

    add-float/2addr v12, v9

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v12, v11

    cmpg-float v11, p1, v12

    if-gez v11, :cond_5

    goto :goto_4

    :cond_5
    add-int/2addr v10, v2

    goto :goto_3

    :cond_6
    move v10, v5

    :goto_4
    iput v10, p0, Ld2/h;->g:I

    :cond_7
    iget p1, p0, Ld2/h;->g:I

    if-eq p1, v5, :cond_d

    iget-object p1, p0, Ld2/h;->q:Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;

    iget-object p1, p1, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "onTouchEvent "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Ld2/h;->g:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1, v4, v6}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Ld2/h;->f:Ld2/c;

    if-eqz p1, :cond_d

    iget v4, p0, Ld2/h;->g:I

    iget-object v6, p1, Ld2/c;->g:[Landroid/animation/ValueAnimator;

    aget-object v7, v6, v4

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aget-object v9, v6, v4

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_9

    aget-object v9, v6, v4

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_5

    :cond_8
    move v7, v8

    :cond_9
    :goto_5
    if-eqz v0, :cond_a

    const v8, 0x3f4ccccd    # 0.8f

    :cond_a
    const/4 v9, 0x2

    new-array v9, v9, [F

    aput v7, v9, v1

    aput v8, v9, v2

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-static {v2}, Lf2/b;->a(Landroid/animation/ValueAnimator;)V

    aget-object v2, v6, v4

    if-eqz v0, :cond_b

    sget-object v7, Ld2/c;->x:Landroid/view/animation/PathInterpolator;

    goto :goto_6

    :cond_b
    sget-object v7, Ld2/c;->y:Landroid/view/animation/PathInterpolator;

    :goto_6
    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aget-object v2, v6, v4

    if-eqz v0, :cond_c

    const-wide/16 v7, 0x190

    goto :goto_7

    :cond_c
    const-wide/16 v7, 0x258

    :goto_7
    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    aget-object v0, v6, v4

    new-instance v2, Ld2/a;

    invoke-direct {v2, p1, v1}, Ld2/a;-><init>(Ld2/c;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    aget-object p1, v6, v4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_d
    if-eqz v3, :cond_e

    iput v5, p0, Ld2/h;->g:I

    :cond_e
    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    iget-object v0, p0, Ld2/h;->q:Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;

    iget-object v1, v0, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    const-string v2, "onVisibilityChanged "

    invoke-static {v2, p1}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1}, Ld2/h;->e(ZZ)V

    iget-boolean v1, p0, Ld2/h;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ld2/h;->k:LH1/a;

    sget-object v3, LH1/a;->g:LH1/a;

    if-eq v1, v3, :cond_1

    sget-object v3, LH1/a;->h:LH1/a;

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "resolveVisibilityAsSuper "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ld2/h;->k:LH1/a;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ld2/h;->d(Z)V

    return-void
.end method
