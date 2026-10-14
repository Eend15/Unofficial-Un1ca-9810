.class public final Lv1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/IDailyGradientEditor;
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field public final A:[J

.field public final B:[F

.field public C:F

.field public D:F

.field public E:F

.field public F:Z

.field public G:Lx1/a;

.field public H:F

.field public I:J

.field public J:J

.field public K:J

.field public L:J

.field public M:Z

.field public N:Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/callback/IDailyGradientCallback;

.field public final O:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;

.field public final P:Landroid/os/Handler;

.field public Q:Z

.field public R:Z

.field public final S:Lv1/a;

.field public d:Landroid/view/SurfaceHolder;

.field public final e:Landroid/content/Context;

.field public final f:Z

.field public g:I

.field public final h:Landroid/os/Bundle;

.field public i:Lv1/g;

.field public j:Lw1/c;

.field public final k:Ls1/b;

.field public final l:Lw1/e;

.field public m:I

.field public n:I

.field public o:Z

.field public p:[[J

.field public q:[[F

.field public r:[F

.field public s:[F

.field public t:[F

.field public u:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

.field public final v:Lv1/e;

.field public final w:Landroid/animation/ValueAnimator;

.field public x:LH1/a;

.field public y:LH1/a;

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/view/SurfaceHolder;Landroid/content/Context;ZILandroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x2

    const-string v1, "surfaceHolder"

    invoke-static {p1, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/d;->d:Landroid/view/SurfaceHolder;

    iput-object p2, p0, Lv1/d;->e:Landroid/content/Context;

    iput-boolean p3, p0, Lv1/d;->f:Z

    iput p4, p0, Lv1/d;->g:I

    iput-object p5, p0, Lv1/d;->h:Landroid/os/Bundle;

    const/4 p1, -0x1

    iput p1, p0, Lv1/d;->m:I

    iput p1, p0, Lv1/d;->n:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv1/d;->o:Z

    sget-object p2, Lv1/e;->e:Lv1/e;

    iput-object p2, p0, Lv1/d;->v:Lv1/e;

    sget-object p2, LH1/a;->d:LH1/a;

    iput-object p2, p0, Lv1/d;->x:LH1/a;

    iput-object p2, p0, Lv1/d;->y:LH1/a;

    const/4 p2, 0x4

    new-array p4, p2, [J

    iput-object p4, p0, Lv1/d;->A:[J

    new-array p2, p2, [F

    iput-object p2, p0, Lv1/d;->B:[F

    iput-boolean p1, p0, Lv1/d;->F:Z

    const-wide/16 v1, 0x87a

    iput-wide v1, p0, Lv1/d;->I:J

    const-wide/16 v3, 0x686

    iput-wide v3, p0, Lv1/d;->J:J

    const-wide/16 v3, 0x726

    iput-wide v3, p0, Lv1/d;->K:J

    const-wide/16 v3, 0x532

    iput-wide v3, p0, Lv1/d;->L:J

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lv1/d;->P:Landroid/os/Handler;

    iput-boolean p1, p0, Lv1/d;->R:Z

    new-instance p2, Lv1/a;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lv1/a;-><init>(Lv1/d;I)V

    iput-object p2, p0, Lv1/d;->S:Lv1/a;

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object p2

    const-string v3, "init: isPreview="

    invoke-static {v3, p3}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-array v4, p4, [Ljava/lang/Object;

    invoke-static {p2, v3, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p2, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;->d:Landroidx/recyclerview/widget/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p2, Landroidx/recyclerview/widget/b;->h:Ljava/lang/Object;

    check-cast v3, Lh3/b;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LW4/t;

    invoke-static {v3}, Le0/a;->t(Ljava/lang/Object;)V

    iget-object v3, p2, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    check-cast v3, Lh3/b;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LW4/t;

    invoke-static {v3}, Le0/a;->t(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/b;->I()Ls1/b;

    move-result-object p2

    invoke-static {p2}, Le0/a;->t(Ljava/lang/Object;)V

    iput-object p2, p0, Lv1/d;->k:Ls1/b;

    new-instance p2, Lw1/e;

    invoke-direct {p2}, Lw1/e;-><init>()V

    iput-object p2, p0, Lv1/d;->l:Lw1/e;

    new-instance p2, Lw1/c;

    invoke-direct {p2}, Lw1/c;-><init>()V

    iput-object p2, p0, Lv1/d;->j:Lw1/c;

    new-array p2, v0, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    const-string v4, "valueAnimator"

    if-eqz p2, :cond_4

    invoke-virtual {p2, p4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object p2, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_3

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput-boolean p1, p0, Lv1/d;->R:Z

    iget-object p1, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    new-instance p2, Lv1/c;

    invoke-direct {p2, p0}, Lv1/c;-><init>(Lv1/d;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    new-instance p2, LA1/a;

    invoke-direct {p2, v0, p0}, LA1/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "init: extras="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, p4, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    if-eqz p5, :cond_0

    const-string p1, "editorBinder"

    invoke-virtual {p5, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "init : editorBinder="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, p4, [Ljava/lang/Object;

    const-string p5, "DailyGradientController"

    invoke-static {p5, p2, p3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-string p2, "onCreate: editorBinder present"

    new-array p3, p4, [Ljava/lang/Object;

    invoke-static {p5, p2, p3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class p2, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/callback/IDailyGradientCallback;

    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;->createProxyFromBinder(Landroid/os/IBinder;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.samsung.android.wallpaper.live.editor.sdk.interfaces.dailygradient.callback.IDailyGradientCallback"

    invoke-static {p1, p2}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/callback/IDailyGradientCallback;

    iput-object p1, p0, Lv1/d;->N:Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/callback/IDailyGradientCallback;

    new-instance p1, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;

    invoke-direct {p1, p0}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;-><init>(Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BundleBasedRemoteInterface;)V

    iput-object p1, p0, Lv1/d;->O:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;

    iget-object p0, p0, Lv1/d;->N:Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/callback/IDailyGradientCallback;

    if-eqz p0, :cond_0

    new-instance p2, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/callback/OnEditorInterfaceReady$Params;

    invoke-direct {p2, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/callback/OnEditorInterfaceReady$Params;-><init>(Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;)V

    invoke-interface {p0, p2}, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/callback/IDailyGradientCallback;->onEditorInterfaceReady(Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/callback/OnEditorInterfaceReady$Params;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {v4}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {v4}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-static {v4}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-static {v4}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final j(Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;Z)V
    .locals 14

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v8, p2

    move/from16 v4, p3

    const/4 v9, 0x0

    if-eqz v2, :cond_17

    if-nez v8, :cond_0

    goto/16 :goto_d

    :cond_0
    new-instance v1, Landroid/util/SizeF;

    iget-object v3, v0, Lv1/d;->d:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v0, Lv1/d;->d:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v3, v5}, Landroid/util/SizeF;-><init>(FF)V

    new-instance v3, Lv1/g;

    iget-object v5, v0, Lv1/d;->e:Landroid/content/Context;

    invoke-direct {v3, v1, v5}, Lv1/g;-><init>(Landroid/util/SizeF;Landroid/content/Context;)V

    iput-object v3, v0, Lv1/d;->i:Lv1/g;

    iget-object v3, v0, Lv1/d;->l:Lw1/e;

    const/4 v10, 0x0

    if-eqz v3, :cond_16

    iget v3, v0, Lv1/d;->g:I

    invoke-static {v3}, Lw1/e;->a(I)F

    move-result v3

    iget-object v5, v0, Lv1/d;->i:Lv1/g;

    if-eqz v5, :cond_1

    iput v3, v5, Lv1/g;->o:F

    :cond_1
    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "createGradientEffect: gradientTheme="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " gradientStyle="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " isCover="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " CircularOrbitRatio="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v3, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setGradientType: style="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " theme="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v8, v0, Lv1/d;->u:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lv1/d;->j:Lw1/c;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "setGradientType: dailyGradientDataProvider="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lv1/d;->j:Lw1/c;

    const/4 v11, 0x1

    if-eqz v3, :cond_3

    iget v5, v0, Lv1/d;->g:I

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v6

    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    cmpl-float v1, v6, v1

    if-lez v1, :cond_2

    move v1, v11

    goto :goto_0

    :cond_2
    move v1, v9

    :goto_0
    xor-int/lit8 v6, v1, 0x1

    iget-object v7, v0, Lv1/d;->e:Landroid/content/Context;

    move-object v1, v3

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lw1/c;->a(Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;ZIZLandroid/content/Context;)Lw1/a;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v10

    :goto_1
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setGradientType: invalid theme or style"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_4
    iget-object v2, v1, Lw1/a;->a:[[J

    array-length v3, v2

    new-array v4, v3, [[J

    move v5, v9

    :goto_2
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    array-length v6, v6

    new-array v6, v6, [J

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    iput-object v4, v0, Lv1/d;->p:[[J

    array-length v3, v2

    move v4, v9

    :goto_3
    if-ge v4, v3, :cond_7

    iget-object v5, v0, Lv1/d;->p:[[J

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    aget-object v5, v5, v4

    array-length v5, v5

    move v6, v9

    :goto_4
    if-ge v6, v5, :cond_6

    iget-object v7, v0, Lv1/d;->p:[[J

    invoke-static {v7}, LF3/k;->c(Ljava/lang/Object;)V

    aget-object v7, v7, v4

    aget-object v12, v2, v4

    aget-wide v12, v12, v6

    aput-wide v12, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    iget-object v2, v1, Lw1/a;->b:[[F

    array-length v3, v2

    new-array v4, v3, [[F

    move v5, v9

    :goto_5
    if-ge v5, v3, :cond_8

    aget-object v6, v2, v5

    array-length v6, v6

    new-array v6, v6, [F

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    iput-object v4, v0, Lv1/d;->q:[[F

    array-length v3, v2

    move v4, v9

    :goto_6
    if-ge v4, v3, :cond_b

    aget-object v5, v2, v4

    array-length v5, v5

    move v6, v9

    :goto_7
    if-ge v6, v5, :cond_a

    iget-object v7, v0, Lv1/d;->q:[[F

    if-eqz v7, :cond_9

    aget-object v12, v2, v4

    aput-object v12, v7, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_9
    const-string v0, "gradientColorTransitionPosArray"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v10

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    sget-object v2, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;->CIRCULAR:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    if-ne v8, v2, :cond_11

    iget-object v2, v1, Lw1/a;->c:[F

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    array-length v3, v2

    new-array v3, v3, [F

    iput-object v3, v0, Lv1/d;->r:[F

    array-length v3, v2

    move v4, v9

    :goto_8
    if-ge v4, v3, :cond_d

    iget-object v5, v0, Lv1/d;->r:[F

    if-eqz v5, :cond_c

    aget v6, v2, v4

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_c
    const-string v0, "circularRotationAnimationValueArray"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v10

    :cond_d
    iget-object v2, v1, Lw1/a;->d:[F

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    array-length v3, v2

    new-array v3, v3, [F

    iput-object v3, v0, Lv1/d;->s:[F

    array-length v3, v2

    move v4, v9

    :goto_9
    if-ge v4, v3, :cond_f

    iget-object v5, v0, Lv1/d;->s:[F

    if-eqz v5, :cond_e

    aget v6, v2, v4

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_e
    const-string v0, "circularBiasArray"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v10

    :cond_f
    iget-object v1, v1, Lw1/a;->e:[F

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    array-length v2, v1

    new-array v2, v2, [F

    iput-object v2, v0, Lv1/d;->t:[F

    array-length v2, v1

    move v3, v9

    :goto_a
    if-ge v3, v2, :cond_11

    iget-object v4, v0, Lv1/d;->t:[F

    if-eqz v4, :cond_10

    aget v5, v1, v3

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_10
    const-string v0, "circularScaleArray"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v10

    :cond_11
    iget-object v1, v0, Lv1/d;->i:Lv1/g;

    if-eqz v1, :cond_12

    iput-object v8, v1, Lv1/g;->d:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    iget-object v1, v1, Lv1/g;->a:Landroid/graphics/RuntimeShader;

    const-string v2, "iGradientType"

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    :cond_12
    :goto_b
    iget-boolean v1, v0, Lv1/d;->f:Z

    if-eqz v1, :cond_13

    sget-object v1, LH1/a;->f:LH1/a;

    iput-object v1, v0, Lv1/d;->x:LH1/a;

    invoke-virtual {p0, v9}, Lv1/d;->m(Z)Lx1/a;

    move-result-object v1

    iput-object v1, v0, Lv1/d;->G:Lx1/a;

    invoke-virtual {p0}, Lv1/d;->t()V

    goto :goto_c

    :cond_13
    invoke-virtual {p0, v11}, Lv1/d;->n(Z)Lx1/b;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p0, v1}, Lv1/d;->w(Lx1/b;)V

    :cond_14
    invoke-virtual {p0}, Lv1/d;->l()V

    iput-boolean v11, v0, Lv1/d;->M:Z

    :goto_c
    iget-boolean v1, v0, Lv1/d;->f:Z

    if-nez v1, :cond_15

    invoke-virtual {p0}, Lv1/d;->k()V

    :cond_15
    return-void

    :cond_16
    const-string v0, "deviceGradientRatio"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v10

    :cond_17
    :goto_d
    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createGradientEffect: null values"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final k()V
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lv1/d;->n(Z)Lx1/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lv1/d;->w(Lx1/b;)V

    :cond_0
    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lv1/d;->M:Z

    const-string v2, "getCurrentThumbnail: isGradientStyleInitialized="

    invoke-static {v2, v1}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lv1/d;->M:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getCurrentThumbnail:"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    iget-object v3, p0, Lv1/d;->d:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lv1/d;->d:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v3

    const-string v4, "beginRecording(...)"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getCurrentThumbnail: canvas="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lv1/d;->i:Lv1/g;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Lv1/g;->a(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCurrentThumbnail: thumbnail="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "createThumbnail: thumbnail="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v3, p0, Lv1/d;->g:I

    const-string v4, "saveThumbnail: failed to compress bitmap. e = "

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object p0

    const-string v0, "saveThumbnail: bitmap is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "saveThumbnail: which="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bitmap="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lv1/d;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_4
    :goto_1
    const-string v5, "/thumbnail.jpg"

    invoke-static {v3, v5}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v3, v6, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v5, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createThumbnail: saved thumbnail"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lv1/d;->e:Landroid/content/Context;

    iget v1, p0, Lv1/d;->g:I

    invoke-static {v0, v1}, LL1/a;->semClearWallpaperThumbnailCache(Landroid/content/Context;I)V

    iget-object v0, p0, Lv1/d;->e:Landroid/content/Context;

    iget p0, p0, Lv1/d;->g:I

    invoke-static {v0, p0}, LL1/a;->semRequestWallpaperColorsAnalysis(Landroid/content/Context;I)V

    goto :goto_6

    :catchall_0
    move-exception p0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v5, p0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_2
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {v5, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_3
    move-exception p0

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v5, p0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :goto_3
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    invoke-static {v5, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p0

    :catchall_5
    move-exception p0

    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception v0

    invoke-static {v5, p0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :goto_4
    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveThumbnail: failed to delete file. e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :goto_5
    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveThumbnail: failed to make directory. e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lv1/d;->d:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lv1/d;->d:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lv1/d;->i:Lv1/g;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lv1/g;->a(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object p0, p0, Lv1/d;->d:Landroid/view/SurfaceHolder;

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public final m(Z)Lx1/a;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x4

    invoke-virtual/range {p0 .. p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lv1/d;->x:LH1/a;

    iget-boolean v5, v0, Lv1/d;->F:Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getAnimationData: currentDisplayState="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " animationCompleted="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " forTimeChange="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lv1/d;->p:[[J

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    iget-object v6, v0, Lv1/d;->u:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    sget-object v7, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;->CIRCULAR:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    const-string v7, "circularRotationAnimationValueArray"

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    iget v9, v0, Lv1/d;->m:I

    if-nez v9, :cond_2

    const/high16 v9, -0x3cf40000    # -140.0f

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_4

    iget-object v9, v0, Lv1/d;->r:[F

    if-eqz v9, :cond_3

    iget v10, v0, Lv1/d;->n:I

    aget v9, v9, v10

    goto :goto_1

    :cond_3
    invoke-static {v7}, LF3/k;->m(Ljava/lang/String;)V

    throw v4

    :cond_4
    move v9, v8

    :goto_1
    if-eqz v6, :cond_6

    iget-object v10, v0, Lv1/d;->r:[F

    if-eqz v10, :cond_5

    iget v7, v0, Lv1/d;->m:I

    aget v7, v10, v7

    goto :goto_2

    :cond_5
    invoke-static {v7}, LF3/k;->m(Ljava/lang/String;)V

    throw v4

    :cond_6
    move v7, v8

    :goto_2
    const-string v10, "circularBiasArray"

    if-eqz v6, :cond_8

    iget-object v11, v0, Lv1/d;->s:[F

    if-eqz v11, :cond_7

    iget v12, v0, Lv1/d;->n:I

    aget v11, v11, v12

    move/from16 v21, v11

    goto :goto_3

    :cond_7
    invoke-static {v10}, LF3/k;->m(Ljava/lang/String;)V

    throw v4

    :cond_8
    move/from16 v21, v8

    :goto_3
    if-eqz v6, :cond_a

    iget-object v11, v0, Lv1/d;->s:[F

    if-eqz v11, :cond_9

    iget v10, v0, Lv1/d;->m:I

    aget v10, v11, v10

    move/from16 v22, v10

    goto :goto_4

    :cond_9
    invoke-static {v10}, LF3/k;->m(Ljava/lang/String;)V

    throw v4

    :cond_a
    move/from16 v22, v8

    :goto_4
    const-string v10, "circularScaleArray"

    if-eqz v6, :cond_c

    iget-object v11, v0, Lv1/d;->t:[F

    if-eqz v11, :cond_b

    iget v12, v0, Lv1/d;->n:I

    aget v11, v11, v12

    move/from16 v23, v11

    goto :goto_5

    :cond_b
    invoke-static {v10}, LF3/k;->m(Ljava/lang/String;)V

    throw v4

    :cond_c
    move/from16 v23, v8

    :goto_5
    if-eqz v6, :cond_e

    iget-object v6, v0, Lv1/d;->t:[F

    if-eqz v6, :cond_d

    iget v8, v0, Lv1/d;->m:I

    aget v8, v6, v8

    goto :goto_6

    :cond_d
    invoke-static {v10}, LF3/k;->m(Ljava/lang/String;)V

    throw v4

    :cond_e
    :goto_6
    new-instance v6, Lx1/a;

    iget v10, v0, Lv1/d;->n:I

    aget-object v3, v3, v10

    array-length v10, v3

    invoke-static {v3, v10}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v11

    const-string v3, "copyOf(...)"

    invoke-static {v11, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v0, Lv1/d;->p:[[J

    invoke-static {v10}, LF3/k;->c(Ljava/lang/Object;)V

    iget v12, v0, Lv1/d;->m:I

    aget-object v10, v10, v12

    array-length v12, v10

    invoke-static {v10, v12}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v12

    invoke-static {v12, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v0, Lv1/d;->q:[[F

    const-string v24, "gradientColorTransitionPosArray"

    if-eqz v10, :cond_18

    iget v13, v0, Lv1/d;->n:I

    aget-object v10, v10, v13

    array-length v13, v10

    invoke-static {v10, v13}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v13

    invoke-static {v13, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v0, Lv1/d;->q:[[F

    if-eqz v10, :cond_17

    iget v14, v0, Lv1/d;->m:I

    aget-object v10, v10, v14

    array-length v14, v10

    invoke-static {v10, v14}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v14

    invoke-static {v14, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v6

    move v15, v9

    move/from16 v16, v7

    move/from16 v17, v21

    move/from16 v18, v22

    move/from16 v19, v23

    move/from16 v20, v8

    invoke-direct/range {v10 .. v20}, Lx1/a;-><init>([J[J[F[FFFFFFF)V

    iget-object v10, v0, Lv1/d;->x:LH1/a;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_12

    const/4 v1, 0x3

    if-eq v10, v1, :cond_f

    if-eq v10, v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lv1/d;->x:LH1/a;

    iget v3, v0, Lv1/d;->m:I

    iget v4, v0, Lv1/d;->n:I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getAnimationData: default data returned currentDisplayState="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " currentTimeIdx="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " prevTimeIdx="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_f
    iget-boolean v1, v0, Lv1/d;->F:Z

    if-nez v1, :cond_10

    new-instance v6, Lx1/a;

    iget-object v1, v0, Lv1/d;->A:[J

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v11

    invoke-static {v11, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lv1/d;->p:[[J

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    iget v4, v0, Lv1/d;->n:I

    aget-object v1, v1, v4

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v12

    invoke-static {v12, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lv1/d;->B:[F

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v13

    invoke-static {v13, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v14, v2, [F

    fill-array-data v14, :array_0

    iget v15, v0, Lv1/d;->C:F

    iget v1, v0, Lv1/d;->D:F

    iget v2, v0, Lv1/d;->E:F

    move-object v10, v6

    move/from16 v16, v9

    move/from16 v17, v1

    move/from16 v18, v21

    move/from16 v19, v2

    move/from16 v20, v23

    invoke-direct/range {v10 .. v20}, Lx1/a;-><init>([J[J[F[FFFFFFF)V

    goto/16 :goto_7

    :cond_10
    new-instance v6, Lx1/a;

    iget-object v1, v0, Lv1/d;->p:[[J

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    iget v10, v0, Lv1/d;->m:I

    aget-object v1, v1, v10

    array-length v10, v1

    invoke-static {v1, v10}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v11

    invoke-static {v11, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lv1/d;->p:[[J

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    iget v10, v0, Lv1/d;->n:I

    aget-object v1, v1, v10

    array-length v10, v1

    invoke-static {v1, v10}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v12

    invoke-static {v12, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lv1/d;->q:[[F

    if-eqz v1, :cond_11

    iget v4, v0, Lv1/d;->m:I

    aget-object v1, v1, v4

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v13

    invoke-static {v13, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v14, v2, [F

    fill-array-data v14, :array_1

    move-object v10, v6

    move v15, v7

    move/from16 v16, v9

    move/from16 v17, v22

    move/from16 v18, v21

    move/from16 v19, v8

    move/from16 v20, v23

    invoke-direct/range {v10 .. v20}, Lx1/a;-><init>([J[J[F[FFFFFFF)V

    goto/16 :goto_7

    :cond_11
    invoke-static/range {v24 .. v24}, LF3/k;->m(Ljava/lang/String;)V

    throw v4

    :cond_12
    if-eqz v1, :cond_13

    iget-boolean v1, v0, Lv1/d;->F:Z

    if-eqz v1, :cond_13

    goto/16 :goto_7

    :cond_13
    iget-boolean v1, v0, Lv1/d;->F:Z

    if-nez v1, :cond_15

    new-instance v6, Lx1/a;

    iget-object v1, v0, Lv1/d;->A:[J

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v11

    invoke-static {v11, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lv1/d;->p:[[J

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    iget v2, v0, Lv1/d;->m:I

    aget-object v1, v1, v2

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v12

    invoke-static {v12, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lv1/d;->B:[F

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v13

    invoke-static {v13, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lv1/d;->q:[[F

    if-eqz v1, :cond_14

    iget v2, v0, Lv1/d;->m:I

    aget-object v1, v1, v2

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v14

    invoke-static {v14, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v15, v0, Lv1/d;->C:F

    iget v1, v0, Lv1/d;->D:F

    iget v2, v0, Lv1/d;->E:F

    move-object v10, v6

    move/from16 v16, v7

    move/from16 v17, v1

    move/from16 v18, v22

    move/from16 v19, v2

    move/from16 v20, v8

    invoke-direct/range {v10 .. v20}, Lx1/a;-><init>([J[J[F[FFFFFFF)V

    goto :goto_7

    :cond_14
    invoke-static/range {v24 .. v24}, LF3/k;->m(Ljava/lang/String;)V

    throw v4

    :cond_15
    new-instance v6, Lx1/a;

    iget-object v1, v0, Lv1/d;->p:[[J

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    iget v10, v0, Lv1/d;->n:I

    aget-object v1, v1, v10

    array-length v10, v1

    invoke-static {v1, v10}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v11

    invoke-static {v11, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lv1/d;->p:[[J

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    iget v10, v0, Lv1/d;->m:I

    aget-object v1, v1, v10

    array-length v10, v1

    invoke-static {v1, v10}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v12

    invoke-static {v12, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v13, v2, [F

    fill-array-data v13, :array_2

    iget-object v1, v0, Lv1/d;->q:[[F

    if-eqz v1, :cond_16

    iget v2, v0, Lv1/d;->m:I

    aget-object v1, v1, v2

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v14

    invoke-static {v14, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v6

    move v15, v9

    move/from16 v16, v7

    move/from16 v17, v21

    move/from16 v18, v22

    move/from16 v19, v23

    move/from16 v20, v8

    invoke-direct/range {v10 .. v20}, Lx1/a;-><init>([J[J[F[FFFFFFF)V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAnimationData: animationData="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :cond_16
    invoke-static/range {v24 .. v24}, LF3/k;->m(Ljava/lang/String;)V

    throw v4

    :cond_17
    invoke-static/range {v24 .. v24}, LF3/k;->m(Ljava/lang/String;)V

    throw v4

    :cond_18
    invoke-static/range {v24 .. v24}, LF3/k;->m(Ljava/lang/String;)V

    throw v4

    nop

    :array_0
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final n(Z)Lx1/b;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lv1/d;->x:LH1/a;

    iget v4, v0, Lv1/d;->m:I

    iget v5, v0, Lv1/d;->n:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getDrawingData: currentDisplayState="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " currentTimeIdx="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " prevTimeIdx="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " getInitDrawData="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lv1/d;->p:[[J

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    iget-object v5, v0, Lv1/d;->x:LH1/a;

    sget-object v6, LH1/a;->g:LH1/a;

    const-string v7, "circularScaleArray"

    const-string v8, "circularBiasArray"

    const-string v9, "circularRotationAnimationValueArray"

    const/4 v10, 0x0

    if-eq v5, v6, :cond_1

    sget-object v6, LH1/a;->h:LH1/a;

    if-eq v5, v6, :cond_1

    sget-object v6, LH1/a;->e:LH1/a;

    if-ne v5, v6, :cond_8

    :cond_1
    if-nez v1, :cond_8

    new-instance v1, Lx1/b;

    iget v5, v0, Lv1/d;->n:I

    aget-object v12, v2, v5

    const/4 v2, 0x4

    new-array v13, v2, [F

    fill-array-data v13, :array_0

    iget-object v2, v0, Lv1/d;->u:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    sget-object v6, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;->CIRCULAR:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    if-ne v2, v6, :cond_3

    iget-object v11, v0, Lv1/d;->r:[F

    if-eqz v11, :cond_2

    aget v9, v11, v5

    move v14, v9

    goto :goto_0

    :cond_2
    invoke-static {v9}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_3
    move v14, v10

    :goto_0
    if-ne v2, v6, :cond_5

    iget-object v9, v0, Lv1/d;->s:[F

    if-eqz v9, :cond_4

    aget v8, v9, v5

    move v15, v8

    goto :goto_1

    :cond_4
    invoke-static {v8}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_5
    move v15, v10

    :goto_1
    if-ne v2, v6, :cond_6

    iget-object v2, v0, Lv1/d;->t:[F

    if-eqz v2, :cond_7

    aget v10, v2, v5

    :cond_6
    move/from16 v16, v10

    goto :goto_2

    :cond_7
    invoke-static {v7}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :goto_2
    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lx1/b;-><init>([J[FFFF)V

    goto :goto_6

    :cond_8
    new-instance v1, Lx1/b;

    iget v5, v0, Lv1/d;->m:I

    aget-object v6, v2, v5

    iget-object v2, v0, Lv1/d;->q:[[F

    if-eqz v2, :cond_f

    aget-object v2, v2, v5

    iget-object v11, v0, Lv1/d;->u:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    sget-object v12, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;->CIRCULAR:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    if-ne v11, v12, :cond_a

    iget-object v13, v0, Lv1/d;->r:[F

    if-eqz v13, :cond_9

    aget v9, v13, v5

    goto :goto_3

    :cond_9
    invoke-static {v9}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_a
    move v9, v10

    :goto_3
    if-ne v11, v12, :cond_c

    iget-object v13, v0, Lv1/d;->s:[F

    if-eqz v13, :cond_b

    aget v8, v13, v5

    move v13, v8

    goto :goto_4

    :cond_b
    invoke-static {v8}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_c
    move v13, v10

    :goto_4
    if-ne v11, v12, :cond_e

    iget-object v8, v0, Lv1/d;->t:[F

    if-eqz v8, :cond_d

    aget v10, v8, v5

    goto :goto_5

    :cond_d
    invoke-static {v7}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_e
    :goto_5
    move-object v5, v1

    move-object v7, v2

    move v8, v9

    move v9, v13

    invoke-direct/range {v5 .. v10}, Lx1/b;-><init>([J[FFFF)V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDrawingData: drawingData="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_f
    const-string v0, "gradientColorTransitionPosArray"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :array_0
    .array-data 4
        0x0
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lv1/d;->g:I

    const-string v0, "DailyGradientController_w"

    invoke-static {p0, v0}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onFoldStateChanged(Z)V
    .locals 3

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onFoldStateChanged: isFolded="

    invoke-static {v1, p1}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget v0, p0, Lv1/d;->g:I

    invoke-static {v0}, LK/I;->b0(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget v0, p0, Lv1/d;->g:I

    invoke-static {v0}, LK/I;->b0(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object p1, LH1/a;->e:LH1/a;

    iget-object v0, p0, Lv1/d;->x:LH1/a;

    invoke-virtual {p0, p1, v0}, Lv1/d;->s(LH1/a;LH1/a;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget p1, p0, Lv1/d;->g:I

    invoke-static {p1}, LK/I;->b0(I)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv1/d;->Q:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public final p(Z)V
    .locals 9

    iget-object v0, p0, Lv1/d;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_tap_to_show_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lv1/d;->x:LH1/a;

    sget-object v3, LH1/a;->e:LH1/a;

    if-eq v0, v3, :cond_1

    sget-object v4, LH1/a;->d:LH1/a;

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lv1/d;->y:LH1/a;

    if-eq v0, v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lv1/d;->x:LH1/a;

    iget v5, p0, Lv1/d;->m:I

    iget v6, p0, Lv1/d;->n:I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "handleAODState: withWallpaper="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " needEffect="

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " currentDisplayState="

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " currentTimeIdx="

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " prevTImeIdx="

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lv1/d;->P:Landroid/os/Handler;

    iget-object v3, p0, Lv1/d;->S:Lv1/a;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lv1/d;->P:Landroid/os/Handler;

    iget-object v3, p0, Lv1/d;->S:Lv1/a;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    if-eqz v0, :cond_4

    iget-object p1, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lv1/d;->F:Z

    invoke-virtual {p0, v1}, Lv1/d;->m(Z)Lx1/a;

    move-result-object p1

    iput-object p1, p0, Lv1/d;->G:Lx1/a;

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lv1/d;->G:Lx1/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleAODState: animationData="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lv1/d;->v()V

    invoke-virtual {p0}, Lv1/d;->t()V

    goto :goto_2

    :cond_3
    const-string p0, "valueAnimator"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    invoke-virtual {p0}, Lv1/d;->u()V

    invoke-virtual {p0, v1}, Lv1/d;->n(Z)Lx1/b;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lv1/d;->w(Lx1/b;)V

    :cond_5
    invoke-virtual {p0}, Lv1/d;->l()V

    :goto_2
    return-void
.end method

.method public final q(I)V
    .locals 7

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadWallpaper: sourceWhich="

    invoke-static {p1, v1}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lv1/d;->g:I

    iget-boolean v0, p0, Lv1/d;->f:Z

    const-string v1, "is_cover"

    const-string v3, "gradient_style"

    const-string v4, "gradient_theme"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lv1/d;->h:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v6

    :goto_0
    iget-object v0, p0, Lv1/d;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_1
    iget-object v0, p0, Lv1/d;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_2

    goto :goto_3

    :cond_2
    move v5, v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lv1/d;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/wallpaper/live/util/WallpaperManagerHelper;->getWallpaperExtras(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v0, "serviceSettings"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v6

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v5, :cond_6

    goto :goto_2

    :cond_6
    move v5, v2

    :goto_2
    move-object p1, v0

    goto :goto_3

    :cond_7
    move v5, v2

    move-object p1, v6

    :goto_3
    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lv1/d;->g:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Load wallpaper result which = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gradientStyle = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gradientTheme = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isCover = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;->Companion:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme$Companion;

    invoke-virtual {v0, p1}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme$Companion;->fromStringValue(Ljava/lang/String;)Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;->Companion:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle$Companion;

    invoke-virtual {v0, v6}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle$Companion;->fromStringValue(Ljava/lang/String;)Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v5}, Lv1/d;->j(Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;Z)V

    return-void
.end method

.method public final r()V
    .locals 3

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onDestroy:"

    invoke-static {v0, v2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lv1/d;->i:Lv1/g;

    iput-object v0, p0, Lv1/d;->j:Lw1/c;

    iput-object v0, p0, Lv1/d;->N:Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/callback/IDailyGradientCallback;

    iput-object v0, p0, Lv1/d;->G:Lx1/a;

    iget-object v1, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    const-string v2, "valueAnimator"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_0
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lv1/d;->f:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lv1/d;->O:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;->destroy()V

    :cond_2
    return-void

    :cond_3
    invoke-static {v2}, LF3/k;->m(Ljava/lang/String;)V

    throw v0
.end method

.method public final s(LH1/a;LH1/a;)V
    .locals 5

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lv1/d;->x:LH1/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDisplayStateChanged: state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " prevState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " currentDisplayState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lv1/d;->x:LH1/a;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iput-object v0, p0, Lv1/d;->y:LH1/a;

    iput-object p1, p0, Lv1/d;->x:LH1/a;

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lv1/b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_8

    const/4 v3, 0x3

    const-string v4, " prevTImeIdx="

    if-eq v0, v3, :cond_6

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDisplayStateChanged: None display state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    iput-boolean v2, p0, Lv1/d;->Q:Z

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lv1/d;->m:I

    iget v0, p0, Lv1/d;->n:I

    const-string v3, "handleONState: currentTimeIdx="

    invoke-static {v3, v4, p2, v0}, LB/a;->m(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lv1/d;->F:Z

    iget-object p1, p0, Lv1/d;->P:Landroid/os/Handler;

    iget-object p2, p0, Lv1/d;->S:Lv1/a;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lv1/d;->P:Landroid/os/Handler;

    iget-object p2, p0, Lv1/d;->S:Lv1/a;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    invoke-virtual {p0, v2}, Lv1/d;->m(Z)Lx1/a;

    move-result-object p1

    iput-object p1, p0, Lv1/d;->G:Lx1/a;

    invoke-virtual {p0}, Lv1/d;->v()V

    invoke-virtual {p0}, Lv1/d;->t()V

    goto :goto_1

    :cond_5
    const-string p0, "valueAnimator"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_6
    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lv1/d;->m:I

    iget v0, p0, Lv1/d;->n:I

    const-string v1, "handleOFFState: currentTimeIdx="

    invoke-static {v1, v4, p2, v0}, LB/a;->m(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lv1/d;->u()V

    iget-object p1, p0, Lv1/d;->P:Landroid/os/Handler;

    iget-object p2, p0, Lv1/d;->S:Lv1/a;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lv1/d;->P:Landroid/os/Handler;

    iget-object p2, p0, Lv1/d;->S:Lv1/a;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_7
    iget-object p1, p0, Lv1/d;->P:Landroid/os/Handler;

    iget-object p0, p0, Lv1/d;->S:Lv1/a;

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v2}, Lv1/d;->p(Z)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v1}, Lv1/d;->p(Z)V

    :goto_1
    return-void
.end method

.method public final setProperties(Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetProperties$Params;)V
    .locals 6

    const-string v0, "params"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetProperties$Params;->themeId:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetProperties$Params;->styleId:Ljava/lang/String;

    const-string v3, "setProperties: themeId="

    const-string v4, " styleId="

    const-string v5, " isCover="

    invoke-static {v3, v1, v4, v2, v5}, LB/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".isCover"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;->Companion:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme$Companion;

    iget-object v1, p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetProperties$Params;->themeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme$Companion;->fromStringValue(Ljava/lang/String;)Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;->Companion:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle$Companion;

    iget-object v2, p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetProperties$Params;->styleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle$Companion;->fromStringValue(Ljava/lang/String;)Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    move-result-object v1

    iget-boolean p1, p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetProperties$Params;->isCover:Z

    invoke-virtual {p0, v0, v1, p1}, Lv1/d;->j(Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientTheme;Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;Z)V

    return-void
.end method

.method public final setTimeForTest(Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetTimeForTest$Params;)V
    .locals 7

    const-string v0, "params"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetTimeForTest$Params;->time:Ljava/lang/Long;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setTimeForTest: time="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetTimeForTest$Params;->time:Ljava/lang/Long;

    new-instance v0, Lv1/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lv1/d;->k:Ls1/b;

    if-eqz v1, :cond_0

    new-instance v3, Ls1/a;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Ls1/a;-><init>(ZZ)V

    invoke-virtual {v1, v3}, Ls1/b;->a(Ls1/a;)Lq1/a;

    move-result-object v1

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setTimeForTest: CurrentWeatherData="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lv1/h;->d(Lq1/a;)V

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lv1/h;->a(J)[I

    move-result-object p1

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "setTimeForTest: previousIndex="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "[0] currentIndex="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "[1]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aget v0, p1, v2

    aget p1, p1, v4

    iput v0, p0, Lv1/d;->n:I

    iput p1, p0, Lv1/d;->m:I

    sget-object p1, LH1/a;->f:LH1/a;

    iput-object p1, p0, Lv1/d;->x:LH1/a;

    invoke-virtual {p0, v2}, Lv1/d;->m(Z)Lx1/a;

    move-result-object p1

    iput-object p1, p0, Lv1/d;->G:Lx1/a;

    invoke-virtual {p0}, Lv1/d;->t()V

    return-void

    :cond_0
    const-string p0, "getCurrentWeatherData"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final t()V
    .locals 3

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    const-string v2, "startAnimation valueAnimator.isRunning="

    invoke-static {v2, v1}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lv1/d;->P:Landroid/os/Handler;

    new-instance v1, Lv1/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lv1/a;-><init>(Lv1/d;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-string p0, "valueAnimator"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final u()V
    .locals 3

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    const-string v2, "stopAnimation valueAnimator.isRunning="

    invoke-static {v2, v1}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lv1/d;->P:Landroid/os/Handler;

    new-instance v1, Lv1/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lv1/a;-><init>(Lv1/d;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const-string p0, "valueAnimator"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final v()V
    .locals 11

    iget-boolean v0, p0, Lv1/d;->F:Z

    const/4 v1, 0x0

    const-wide/16 v2, 0x532

    const-wide/16 v4, 0x726

    const-wide/16 v6, 0x686

    const-string v8, "valueAnimator"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const-wide/16 v8, 0x87a

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput-wide v8, p0, Lv1/d;->I:J

    iput-wide v6, p0, Lv1/d;->J:J

    iput-wide v4, p0, Lv1/d;->K:J

    iput-wide v2, p0, Lv1/d;->L:J

    goto :goto_3

    :cond_0
    invoke-static {v8}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lv1/d;->w:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    iget v1, p0, Lv1/d;->H:F

    float-to-long v8, v1

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget v0, p0, Lv1/d;->H:F

    float-to-long v8, v0

    iput-wide v8, p0, Lv1/d;->I:J

    const v1, 0x44d0c000    # 1670.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v6, v8

    :goto_0
    iput-wide v6, p0, Lv1/d;->J:J

    const v1, 0x44e4c000    # 1830.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    goto :goto_1

    :cond_3
    move-wide v4, v8

    :goto_1
    iput-wide v4, p0, Lv1/d;->K:J

    const v1, 0x44a64000    # 1330.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    goto :goto_2

    :cond_4
    move-wide v2, v8

    :goto_2
    iput-wide v2, p0, Lv1/d;->L:J

    :goto_3
    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lv1/d;->H:F

    iget-wide v2, p0, Lv1/d;->I:J

    iget-wide v4, p0, Lv1/d;->J:J

    iget-wide v6, p0, Lv1/d;->K:J

    iget-wide v8, p0, Lv1/d;->L:J

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v10, "updateAnimationDuration: animationDurationCompleted="

    invoke-direct {p0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " defaultAnimationDuration="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " animationDurationForPos3="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " animationDurationForCircularRotation="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " animationDurationForAngularRotation="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    invoke-static {v8}, LF3/k;->m(Ljava/lang/String;)V

    throw v1
.end method

.method public final w(Lx1/b;)V
    .locals 5

    invoke-virtual {p0}, Lv1/d;->o()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lv1/d;->m:I

    iget v2, p0, Lv1/d;->n:I

    const-string v3, "updateForDrawing: currentTimeIdx="

    const-string v4, " prevTimeIdx="

    invoke-static {v3, v4, v1, v2}, LB/a;->m(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x4

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lv1/d;->i:Lv1/g;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lx1/b;->a:[J

    aget-wide v3, v1, v2

    long-to-int v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lv1/g;->b(ILjava/lang/Integer;)V

    :cond_0
    iget-object v0, p0, Lv1/d;->i:Lv1/g;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lx1/b;->b:[F

    aget v1, v1, v2

    iget-object v3, v0, Lv1/g;->f:[F

    aput v1, v3, v2

    iget-object v0, v0, Lv1/g;->a:Landroid/graphics/RuntimeShader;

    const-string v1, "colorPointPos"

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lv1/d;->u:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    sget-object v1, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;->CIRCULAR:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    if-ne v0, v1, :cond_5

    iget-object p0, p0, Lv1/d;->i:Lv1/g;

    if-eqz p0, :cond_3

    iget v0, p1, Lx1/b;->c:F

    iput v0, p0, Lv1/g;->l:F

    :cond_3
    if-eqz p0, :cond_4

    iget v0, p1, Lx1/b;->d:F

    iput v0, p0, Lv1/g;->i:F

    :cond_4
    if-eqz p0, :cond_5

    iget p1, p1, Lx1/b;->e:F

    iput p1, p0, Lv1/g;->j:F

    :cond_5
    return-void
.end method
