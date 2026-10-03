.class public abstract LN1/j;
.super Lp1/b;
.source "SourceFile"


# instance fields
.field public final g:LA0/a;

.field public h:I

.field public i:J

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Landroid/os/Handler;

.field public n:LN1/i;

.field public o:LH1/a;

.field public final p:LN1/b;

.field public final q:LN1/c;

.field public final r:LN1/d;

.field public final s:LN1/e;

.field public final t:LN1/f;

.field public final synthetic u:LN1/k;


# direct methods
.method public constructor <init>(LN1/k;)V
    .locals 1

    iput-object p1, p0, LN1/j;->u:LN1/k;

    invoke-direct {p0, p1}, Lp1/b;-><init>(LN1/k;)V

    new-instance p1, LA0/a;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, LA0/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LN1/j;->g:LA0/a;

    sget-object p1, LH1/a;->d:LH1/a;

    iput-object p1, p0, LN1/j;->o:LH1/a;

    new-instance p1, LN1/b;

    invoke-direct {p1, p0}, LN1/b;-><init>(LN1/j;)V

    iput-object p1, p0, LN1/j;->p:LN1/b;

    new-instance p1, LN1/c;

    invoke-direct {p1, p0}, LN1/c;-><init>(LN1/j;)V

    iput-object p1, p0, LN1/j;->q:LN1/c;

    new-instance p1, LN1/d;

    invoke-direct {p1, p0}, LN1/d;-><init>(LN1/j;)V

    iput-object p1, p0, LN1/j;->r:LN1/d;

    new-instance p1, LN1/e;

    invoke-direct {p1, p0}, LN1/e;-><init>(LN1/j;)V

    iput-object p1, p0, LN1/j;->s:LN1/e;

    new-instance p1, LN1/f;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, LN1/f;-><init>(Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;I)V

    iput-object p1, p0, LN1/j;->t:LN1/f;

    return-void
.end method


# virtual methods
.method public abstract d()[I
.end method

.method public abstract e()I
.end method

.method public abstract f()[I
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public final h()V
    .locals 3

    invoke-virtual {p0}, LN1/j;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, LN1/j;->u:LN1/k;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Le0/a;->N(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, LN1/j;->m:Landroid/os/Handler;

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, LN1/j;->m:Landroid/os/Handler;

    :cond_0
    invoke-virtual {p0}, LN1/j;->e()I

    move-result v1

    iput v1, p0, LN1/j;->h:I

    iget-object v1, p0, Lp1/b;->d:Lcom/samsung/android/wallpaper/live/common/video/VideoController;

    iget-object v2, v1, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->b:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {v2, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->setMediaSource(Landroid/content/res/AssetFileDescriptor;)V

    iget-object v0, v1, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->b:Lcom/samsung/android/nexus/video/VideoLayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/nexus/video/VideoLayer;->setLooping(Z)V

    iget-object v0, v1, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->b:Lcom/samsung/android/nexus/video/VideoLayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/nexus/video/VideoLayer;->setLooping(Z)V

    iget-object v0, v1, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->b:Lcom/samsung/android/nexus/video/VideoLayer;

    iget-object v2, p0, LN1/j;->p:LN1/b;

    invoke-virtual {v0, v2}, Lcom/samsung/android/nexus/video/VideoLayer;->setPreparedListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V

    iget-object v0, v1, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->b:Lcom/samsung/android/nexus/video/VideoLayer;

    iget-object v2, p0, LN1/j;->q:LN1/c;

    invoke-virtual {v0, v2}, Lcom/samsung/android/nexus/video/VideoLayer;->setCompletionListener(Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;)V

    iget-object v0, v1, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->b:Lcom/samsung/android/nexus/video/VideoLayer;

    iget-object v2, p0, LN1/j;->r:LN1/d;

    invoke-virtual {v0, v2}, Lcom/samsung/android/nexus/video/VideoLayer;->setSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, v1, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->b:Lcom/samsung/android/nexus/video/VideoLayer;

    iget-object p0, p0, LN1/j;->s:LN1/e;

    invoke-virtual {v0, p0}, Lcom/samsung/android/nexus/video/VideoLayer;->setErrorListener(Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;)V

    const/high16 p0, 0x3f000000    # 0.5f

    iput p0, v1, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->e:F

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Video file descriptor is NOT valid"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Video file name is NOT valid"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoHueEffectEngine"

    const-string v2, "pauseMediaPlayer"

    invoke-static {v1, v2, v0}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lp1/b;->d:Lcom/samsung/android/wallpaper/live/common/video/VideoController;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->b:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoLayer;->pausePlayer()V

    return-void
.end method

.method public final j()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VideoHueEffectEngine"

    const-string v2, "startMediaPlayer"

    invoke-static {v1, v2, v0}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lp1/b;->d:Lcom/samsung/android/wallpaper/live/common/video/VideoController;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->e:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, LN1/j;->i:J

    iget-object v0, p0, Lp1/b;->d:Lcom/samsung/android/wallpaper/live/common/video/VideoController;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->b:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoLayer;->startPlayer()V

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->b()Lw0/i;

    move-result-object v0

    iget-object v1, p0, LN1/j;->t:LN1/f;

    invoke-virtual {v0, v1}, Lw0/i;->F(Ln1/c;)V

    iget-object v0, p0, Lp1/b;->d:Lcom/samsung/android/wallpaper/live/common/video/VideoController;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->a:Lcom/samsung/android/nexus/base/layer/LayerContainer;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    :cond_0
    iget-object v0, p0, LN1/j;->m:Landroid/os/Handler;

    iget-object p0, p0, LN1/j;->g:LA0/a;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "VideoHueEffectEngine"

    const-string v3, "stopMediaPlayer"

    invoke-static {v2, v3, v1}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lp1/b;->d:Lcom/samsung/android/wallpaper/live/common/video/VideoController;

    iget-object v1, v1, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->b:Lcom/samsung/android/nexus/video/VideoLayer;

    invoke-virtual {v1}, Lcom/samsung/android/nexus/video/VideoLayer;->pausePlayer()V

    iget-object v1, p0, Lp1/b;->d:Lcom/samsung/android/wallpaper/live/common/video/VideoController;

    iget-object v1, v1, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->b:Lcom/samsung/android/nexus/video/VideoLayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/samsung/android/nexus/video/VideoLayer;->seekToPlayer(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/common/BaseWallpaperService$BaseEngine;->b()Lw0/i;

    move-result-object v0

    iget-object v1, p0, LN1/j;->t:LN1/f;

    invoke-virtual {v0, v1}, Lw0/i;->J(Ln1/c;)V

    iget-object v0, p0, LN1/j;->m:Landroid/os/Handler;

    iget-object p0, p0, LN1/j;->g:LA0/a;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final l()V
    .locals 4

    iget-boolean v0, p0, LN1/j;->k:Z

    const/4 v1, 0x0

    const-string v2, "VideoHueEffectEngine"

    if-nez v0, :cond_0

    const-string p0, "updatePlayerState: not prepared"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "updatePlayerState: mIsVisible = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, LN1/j;->j:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mDisplayState = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LN1/j;->o:LH1/a;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mIsVideoPausedForcefully = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, LN1/j;->l:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, LN1/j;->j:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, LN1/j;->o:LH1/a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, LN1/j;->u:LN1/k;

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, LN1/j;->l:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LN1/j;->i()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LN1/j;->j()V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LL1/a;->getLidState(Landroid/content/Context;)I

    move-result v0

    sget v1, Lf2/g;->b:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, LN1/j;->j()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, LN1/j;->i()V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LL1/a;->getLidState(Landroid/content/Context;)I

    move-result v0

    sget v1, Lf2/g;->b:I

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, LN1/j;->j()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, LN1/j;->k()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, LN1/j;->k()V

    :goto_0
    return-void
.end method

.method public final onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 4

    const-string v0, "onCommand: "

    invoke-static {v0, p1}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "VideoHueEffectEngine"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "samsung.android.wallpaper.pause"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LN1/j;->l:Z

    invoke-virtual {p0}, LN1/j;->l()V

    goto :goto_0

    :cond_0
    const-string v0, "samsung.android.wallpaper.resume"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, LN1/j;->l:Z

    invoke-virtual {p0}, LN1/j;->l()V

    goto :goto_0

    :cond_1
    const-string v0, "android.wallpaper.wakingup"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LN1/j;->l()V

    goto :goto_0

    :cond_2
    const-string v0, "android.wallpaper.goingtosleep"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, LN1/j;->l()V

    :cond_3
    :goto_0
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-super {p0, p1}, Lp1/b;->onCreate(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0}, LN1/j;->h()V

    return-void
.end method

.method public final onDisplayStateChanged(LH1/a;LH1/a;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDisplayStateChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoHueEffectEngine"

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, LN1/j;->o:LH1/a;

    sget-object v0, LH1/a;->h:LH1/a;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lp1/b;->d:Lcom/samsung/android/wallpaper/live/common/video/VideoController;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->e:F

    :cond_0
    invoke-virtual {p0}, LN1/j;->l()V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->onDisplayStateChanged(LH1/a;LH1/a;)V

    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, LN1/j;->n:LN1/i;

    if-nez p1, :cond_0

    new-instance p1, LN1/i;

    invoke-direct {p1, p0}, LN1/i;-><init>(LN1/j;)V

    iput-object p1, p0, LN1/j;->n:LN1/i;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, LN1/j;->n:LN1/i;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quitSafely()V

    const/4 p1, 0x0

    iput-object p1, p0, LN1/j;->n:LN1/i;

    :cond_0
    return-void
.end method

.method public final onVisibilityChanged(Z)V
    .locals 3

    const-string v0, "onVisibilityChanged: "

    invoke-static {v0, p1}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VideoHueEffectEngine"

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, LN1/j;->j:Z

    invoke-virtual {p0}, LN1/j;->l()V

    return-void
.end method
