.class public final LW1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/modular/editor/IModularEditor;
.implements LQ1/b;
.implements LO1/a;


# instance fields
.field public final A:Landroid/graphics/Point;

.field public final B:Landroid/graphics/PointF;

.field public C:Ljava/util/ArrayList;

.field public D:Z

.field public E:F

.field public F:J

.field public final G:Landroid/graphics/PointF;

.field public final H:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;

.field public final I:Landroid/os/Handler;

.field public final J:LA0/a;

.field public final K:Ljava/util/EnumMap;

.field public final L:Landroid/util/ArrayMap;

.field public M:LO1/c;

.field public final N:Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/modular/callback/IModularCallback;

.field public final d:Landroid/content/Context;

.field public final e:Ln1/a;

.field public final f:I

.field public final g:Z

.field public final h:Landroid/os/Bundle;

.field public i:Ljava/lang/String;

.field public j:Landroid/view/SurfaceHolder;

.field public final k:Landroid/view/Choreographer;

.field public l:La2/q;

.field public m:LX1/i;

.field public n:LQ1/i;

.field public o:LS2/b;

.field public p:Z

.field public q:Lw0/c;

.field public r:Z

.field public s:LH1/a;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln1/a;IZLandroid/os/Bundle;)V
    .locals 1

    const-string v0, "dataManager"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW1/c;->d:Landroid/content/Context;

    iput-object p2, p0, LW1/c;->e:Ln1/a;

    iput p3, p0, LW1/c;->f:I

    iput-boolean p4, p0, LW1/c;->g:Z

    iput-object p5, p0, LW1/c;->h:Landroid/os/Bundle;

    const-string p1, "ModularClockController"

    iput-object p1, p0, LW1/c;->i:Ljava/lang/String;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, LW1/c;->k:Landroid/view/Choreographer;

    iget-object p1, p2, Ln1/a;->b:Ljava/lang/Object;

    check-cast p1, La2/q;

    iput-object p1, p0, LW1/c;->l:La2/q;

    sget-object p1, LH1/a;->f:LH1/a;

    iput-object p1, p0, LW1/c;->s:LH1/a;

    const/4 p1, 0x1

    iput-boolean p1, p0, LW1/c;->u:Z

    iput-boolean p1, p0, LW1/c;->w:Z

    new-instance p2, Landroid/graphics/Point;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, LW1/c;->A:Landroid/graphics/Point;

    new-instance p2, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, LW1/c;->B:Landroid/graphics/PointF;

    iput-boolean p1, p0, LW1/c;->D:Z

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, LW1/c;->G:Landroid/graphics/PointF;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, LW1/c;->I:Landroid/os/Handler;

    new-instance p1, LA0/a;

    const/4 p2, 0x5

    invoke-direct {p1, p2, p0}, LA0/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LW1/c;->J:LA0/a;

    new-instance p1, Ljava/util/EnumMap;

    const-class p2, La2/i;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, LW1/c;->K:Ljava/util/EnumMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, LW1/c;->L:Landroid/util/ArrayMap;

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    const-string p1, "editorBinder"

    invoke-virtual {p5, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, LW1/c;->i:Ljava/lang/String;

    const-string p4, "onCreate: editorBinder present"

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p4, p3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class p2, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/modular/callback/IModularCallback;

    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;->createProxyFromBinder(Landroid/os/IBinder;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.samsung.android.wallpaper.live.editor.sdk.interfaces.modular.callback.IModularCallback"

    invoke-static {p1, p2}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/modular/callback/IModularCallback;

    iput-object p1, p0, LW1/c;->N:Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/modular/callback/IModularCallback;

    new-instance p2, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;

    invoke-direct {p2, p0}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;-><init>(Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BundleBasedRemoteInterface;)V

    iput-object p2, p0, LW1/c;->H:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;

    new-instance p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/modular/callback/OnEditorInterfaceReady$Params;

    invoke-direct {p0, p2}, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/modular/callback/OnEditorInterfaceReady$Params;-><init>(Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;)V

    invoke-interface {p1, p0}, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/modular/callback/IModularCallback;->onEditorInterfaceReady(Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/modular/callback/OnEditorInterfaceReady$Params;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-virtual {p0}, LW1/c;->l()F

    move-result v0

    iput v0, p0, LW1/c;->E:F

    invoke-virtual {p0}, LW1/c;->q()V

    return-void
.end method

.method public final b(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string p1, "action"

    invoke-static {p2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LW1/c;->i:Ljava/lang/String;

    const-string v0, "onCommand: action = "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sget-object v0, LH1/a;->e:LH1/a;

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p1, "samsung.android.wallpaper.doze_time_tick"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean p1, p0, LW1/c;->p:Z

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, LW1/c;->s:LH1/a;

    sget-object p2, LH1/a;->h:LH1/a;

    if-eq p1, p2, :cond_2

    if-ne p1, v0, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    const-string p1, "doze_position"

    const-class p2, Landroid/graphics/Point;

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    iget-object p2, p0, LW1/c;->i:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "handleDozeTimeTick: point = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, p3, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p2, p1, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    move p1, p2

    :goto_1
    iget-object p3, p0, LW1/c;->s:LH1/a;

    sget-object v0, LH1/a;->f:LH1/a;

    if-eq p3, v0, :cond_b

    iget-object p3, p0, LW1/c;->n:LQ1/i;

    if-eqz p3, :cond_5

    iget-object v0, p3, LQ1/i;->g:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    new-instance v1, LA0/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p3}, LA0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iget-object p3, p0, LW1/c;->I:Landroid/os/Handler;

    new-instance v0, LW1/a;

    invoke-direct {v0, p0, p2, p1}, LW1/a;-><init>(LW1/c;FF)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :sswitch_1
    const-string p1, "android.wallpaper.goingtosleep"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    iget-boolean p1, p0, LW1/c;->p:Z

    if-eqz p1, :cond_b

    iput-boolean v2, p0, LW1/c;->v:Z

    goto :goto_2

    :sswitch_2
    const-string p1, "samsung.android.wallpaper.pause"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    iget-boolean p1, p0, LW1/c;->v:Z

    if-nez p1, :cond_b

    iget-object p1, p0, LW1/c;->s:LH1/a;

    if-eq p1, v0, :cond_b

    iget-boolean p1, p0, LW1/c;->g:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, LW1/c;->u:Z

    if-eqz p1, :cond_b

    :cond_8
    invoke-virtual {p0, v1, v1}, LW1/c;->r(ZZ)V

    iget-object p1, p0, LW1/c;->I:Landroid/os/Handler;

    iget-object p2, p0, LW1/c;->J:LA0/a;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, LW1/c;->I:Landroid/os/Handler;

    iget-object p2, p0, LW1/c;->J:LA0/a;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v2, p0, LW1/c;->x:Z

    goto :goto_2

    :sswitch_3
    const-string p1, "samsung.android.wallpaper.resume"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    iput-boolean v1, p0, LW1/c;->x:Z

    iget-object p1, p0, LW1/c;->I:Landroid/os/Handler;

    iget-object p2, p0, LW1/c;->J:LA0/a;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, LW1/c;->s:LH1/a;

    if-eq p1, v0, :cond_b

    const-wide/16 p1, 0x10

    invoke-virtual {p0, p1, p2}, LW1/c;->t(J)V

    goto :goto_2

    :sswitch_4
    const-string p1, "android.wallpaper.wakingup"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    iget-boolean p1, p0, LW1/c;->p:Z

    if-eqz p1, :cond_b

    iput-boolean v1, p0, LW1/c;->v:Z

    :cond_b
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4943dbf9 -> :sswitch_4
        0x3cd396ac -> :sswitch_3
        0x5caf0b97 -> :sswitch_2
        0x69401ccd -> :sswitch_1
        0x76913345 -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p1, p0, LW1/c;->j:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LW1/c;->m(Z)V

    return-void
.end method

.method public final d()V
    .locals 1

    new-instance p0, LD3/a;

    const-string v0, "An operation is not implemented: Not yet implemented"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, LW1/c;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, LW1/c;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, LW1/c;->o:LS2/b;

    if-eqz p0, :cond_2

    iget-object p0, p0, LS2/b;->d:Ljava/lang/Object;

    check-cast p0, Landroid/widget/FrameLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    return-void

    :cond_2
    const-string p0, "viewPool"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final doFrame(J)V
    .locals 2

    iget-object p1, p0, LW1/c;->k:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object p1, p0, LW1/c;->M:LO1/c;

    sget-object p2, LH1/a;->e:LH1/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LO1/c;->getDisplayState()LH1/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iget-object v0, p0, LW1/c;->l:La2/q;

    iget-boolean v0, v0, La2/q;->h:Z

    if-eqz v0, :cond_1

    if-eq p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-boolean p2, p0, LW1/c;->t:Z

    if-nez p2, :cond_3

    if-nez p1, :cond_3

    iget-object p1, p0, LW1/c;->I:Landroid/os/Handler;

    iget-object p2, p0, LW1/c;->J:LA0/a;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, LW1/c;->o()V

    goto :goto_3

    :cond_3
    :goto_2
    iget-object p1, p0, LW1/c;->k:Landroid/view/Choreographer;

    const-wide/16 v0, 0x8

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    :goto_3
    iget-boolean p1, p0, LW1/c;->y:Z

    if-eqz p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0}, LW1/c;->q()V

    return-void
.end method

.method public final e(LH1/a;)V
    .locals 6

    iget-boolean v0, p0, LW1/c;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LW1/c;->i:Ljava/lang/String;

    iget-object v1, p0, LW1/c;->s:LH1/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDisplayStateChanged : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", prevState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LW1/c;->s:LH1/a;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, LW1/c;->I:Landroid/os/Handler;

    iget-object v1, p0, LW1/c;->J:LA0/a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    sget-object v0, LW1/b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget-object v0, p0, LW1/c;->i:Ljava/lang/String;

    iget-object v1, p0, LW1/c;->s:LH1/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onDisplayStateChanged NONE prevState="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, LW1/c;->i:Ljava/lang/String;

    iget-object v1, p0, LW1/c;->s:LH1/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleDisplayOn prevState="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, LW1/c;->u()V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, LW1/c;->t(J)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, LW1/c;->i:Ljava/lang/String;

    iget-object v3, p0, LW1/c;->s:LH1/a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleDisplayOff prevState="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, LW1/c;->o()V

    invoke-virtual {p0, v1, v2}, LW1/c;->r(ZZ)V

    invoke-virtual {p0}, LW1/c;->q()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, LW1/c;->o()V

    invoke-virtual {p0}, LW1/c;->q()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, LW1/c;->o()V

    invoke-virtual {p0}, LW1/c;->q()V

    :goto_1
    if-eqz p1, :cond_7

    iput-object p1, p0, LW1/c;->s:LH1/a;

    :cond_7
    return-void
.end method

.method public final f()V
    .locals 1

    invoke-virtual {p0}, LW1/c;->l()F

    move-result v0

    iput v0, p0, LW1/c;->E:F

    invoke-virtual {p0}, LW1/c;->q()V

    return-void
.end method

.method public final g(Z)V
    .locals 5

    iget-object v0, p0, LW1/c;->i:Ljava/lang/String;

    iget-object v1, p0, LW1/c;->s:LH1/a;

    iget-boolean v2, p0, LW1/c;->x:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onVisibilityChanged : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, LW1/c;->t:Z

    iget-boolean v0, p0, LW1/c;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LW1/c;->s:LH1/a;

    sget-object v1, LH1/a;->f:LH1/a;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, LW1/c;->u:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, LW1/c;->u()V

    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, LW1/c;->t(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LW1/c;->o()V

    iget-boolean p1, p0, LW1/c;->p:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, LW1/c;->g:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, LW1/c;->r(ZZ)V

    :cond_2
    iget-object p1, p0, LW1/c;->i:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "stopFrame"

    invoke-static {p1, v1, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, LW1/c;->k:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :goto_0
    return-void
.end method

.method public final h(II)V
    .locals 7

    iget-object v0, p0, LW1/c;->i:Ljava/lang/String;

    iget-boolean v1, p0, LW1/c;->t:Z

    iget-boolean v2, p0, LW1/c;->u:Z

    const-string v3, "onSurfaceChanged : "

    const-string v4, " , "

    const-string v5, ", isVisible="

    invoke-static {p1, v3, p2, v4, v5}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFolded="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LW1/c;->d:Landroid/content/Context;

    iget v1, p0, LW1/c;->f:I

    invoke-static {v0, v1}, LK/I;->E(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_b

    iget-object v0, p0, LW1/c;->m:LX1/i;

    const/4 v3, 0x0

    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/PointF;

    int-to-float v4, p1

    iget-object v5, p0, LW1/c;->l:La2/q;

    iget-object v5, v5, La2/q;->q:La2/k;

    iget v6, v5, La2/k;->a:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    int-to-float v6, p2

    iget v5, v5, La2/k;->b:I

    int-to-float v5, v5

    div-float/2addr v6, v5

    invoke-direct {v0, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0}, LW1/c;->p(Landroid/graphics/PointF;)V

    iget-boolean v0, p0, LW1/c;->g:Z

    const-string v4, "module_clock_color_set"

    if-eqz v0, :cond_2

    iget-object v0, p0, LW1/c;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v5, "resources"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    iput-object v0, p0, LW1/c;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, LW1/c;->s(Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, LW1/c;->d:Landroid/content/Context;

    iget v5, p0, LW1/c;->f:I

    invoke-static {v0, v5}, Lcom/samsung/android/wallpaper/live/util/WallpaperManagerHelper;->getWallpaperExtras(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v3

    :goto_2
    iput-object v0, p0, LW1/c;->C:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, LW1/c;->s(Ljava/util/ArrayList;)V

    :cond_4
    :goto_3
    iget-object v0, p0, LW1/c;->A:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, LW1/c;->m:LX1/i;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1, p2}, LX1/i;->e(II)V

    :cond_5
    iget-object v0, p0, LW1/c;->m:LX1/i;

    if-eqz v0, :cond_6

    iget-object v0, v0, LX1/i;->b:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v4, v0}, LW1/c;->k(FF)V

    :cond_6
    iget-object v0, p0, LW1/c;->o:LS2/b;

    if-eqz v0, :cond_a

    iget-object v3, v0, LS2/b;->d:Ljava/lang/Object;

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_7

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    :cond_7
    iget-object v0, v0, LS2/b;->d:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v2, v2, p1, p2}, Landroid/view/ViewGroup;->layout(IIII)V

    :cond_8
    invoke-virtual {p0, v2, v1}, LW1/c;->r(ZZ)V

    iget-boolean p1, p0, LW1/c;->t:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, LW1/c;->u:Z

    if-eqz p1, :cond_9

    invoke-virtual {p0, v1}, LW1/c;->g(Z)V

    :cond_9
    return-void

    :cond_a
    const-string p0, "viewPool"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_b
    return-void
.end method

.method public final i()Landroid/graphics/Bitmap;
    .locals 7

    const-string v0, "InterruptedException: "

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, LF3/s;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, LW1/c;->I:Landroid/os/Handler;

    new-instance v4, LS1/b;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v2, v1, v5}, LS1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x7d0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    iget-object v4, p0, LW1/c;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v3}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v1

    iget-object v0, p0, LW1/c;->i:Ljava/lang/String;

    iget-object p0, p0, LW1/c;->o:LS2/b;

    if-eqz p0, :cond_1

    iget-object p0, p0, LS2/b;->d:Ljava/lang/Object;

    check-cast p0, Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    move p0, v5

    :goto_1
    iget-object v1, v2, LF3/s;->d:Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCurrentThumbnail: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " , "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, v2, LF3/s;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_1
    const-string p0, "viewPool"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :goto_2
    monitor-exit v1

    throw p0
.end method

.method public final j(FF)V
    .locals 0

    return-void
.end method

.method public final k(FF)V
    .locals 5

    iget-object v0, p0, LW1/c;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adjustLayoutByScale : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, LW1/c;->l:La2/q;

    iget-object p0, p0, La2/q;->q:La2/k;

    iget-object p0, p0, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/f;

    iget-object v1, v0, La2/f;->n:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v2, v0, La2/f;->c:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    :cond_1
    if-eqz v1, :cond_2

    iget v2, v0, La2/f;->d:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v3, v0, La2/f;->e:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v2, v0, La2/f;->f:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    iget-object v0, v0, La2/f;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/f;

    iget-object v2, v1, La2/f;->n:Landroid/view/View;

    if-eqz v2, :cond_6

    iget v3, v1, La2/f;->c:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    :cond_6
    if-eqz v2, :cond_7

    iget v3, v1, La2/f;->d:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_8

    iget v4, v1, La2/f;->e:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_8
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_5

    iget v1, v1, La2/f;->f:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_9
    return-void
.end method

.method public final l()F
    .locals 3

    iget-object v0, p0, LW1/c;->d:Landroid/content/Context;

    iget v1, p0, LW1/c;->f:I

    invoke-static {v0, v1}, LK/I;->E(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, LW1/c;->D:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, LW1/c;->l:La2/q;

    iget-object p0, p0, La2/q;->q:La2/k;

    iget p0, p0, La2/k;->b:I

    const/16 v0, 0x2d0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x418

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x42d80000    # 108.0f

    goto :goto_0

    :cond_1
    const/high16 v2, -0x3dd00000    # -44.0f

    :cond_2
    :goto_0
    return v2
.end method

.method public final m(Z)V
    .locals 7

    iget-object v0, p0, LW1/c;->i:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "stopFrame"

    invoke-static {v0, v3, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LW1/c;->k:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    invoke-virtual {p0}, LW1/c;->o()V

    iget-object v0, p0, LW1/c;->o:LS2/b;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v3, v0, LS2/b;->d:Ljava/lang/Object;

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    instance-of v5, v1, LR1/b;

    if-eqz v5, :cond_0

    check-cast v1, LR1/b;

    iget-object v5, v1, LR1/b;->d:La2/f;

    invoke-virtual {v5}, La2/f;->a()V

    iget-object v1, v1, LR1/b;->e:Lw0/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lw0/m;

    new-instance v6, La2/q;

    invoke-direct {v6}, La2/q;-><init>()V

    invoke-direct {v5, v6}, Lw0/m;-><init>(La2/q;)V

    iput-object v5, v1, Lw0/c;->f:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    instance-of v5, v1, LR1/c;

    if-eqz v5, :cond_1

    check-cast v1, LR1/c;

    iget-object v5, v1, LR1/c;->g:La2/f;

    invoke-virtual {v5}, La2/f;->a()V

    iget-object v1, v1, LR1/c;->h:LS2/b;

    iget-object v5, v1, LS2/b;->c:Ljava/lang/Object;

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    iget-object v5, v1, LS2/b;->d:Ljava/lang/Object;

    check-cast v5, Ljava/util/EnumMap;

    invoke-virtual {v5}, Ljava/util/EnumMap;->clear()V

    iget-object v1, v1, LS2/b;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->clear()V

    :cond_1
    :goto_1
    move v1, v4

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_3
    iget-object v0, v0, LS2/b;->d:Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_4
    iget-object v0, p0, LW1/c;->l:La2/q;

    invoke-virtual {v0}, La2/q;->a()V

    iget-object v0, p0, LW1/c;->q:Lw0/c;

    if-eqz v0, :cond_5

    new-instance v1, Lw0/m;

    new-instance v3, La2/q;

    invoke-direct {v3}, La2/q;-><init>()V

    invoke-direct {v1, v3}, Lw0/m;-><init>(La2/q;)V

    iput-object v1, v0, Lw0/c;->f:Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, LW1/c;->n:LQ1/i;

    if-eqz v0, :cond_6

    iget-object v1, v0, LQ1/i;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lo1/b;->b(Landroid/content/Context;)Lo1/b;

    move-result-object v1

    iget-object v0, v0, LQ1/i;->d:Ljava/lang/Object;

    check-cast v0, LQ1/h;

    invoke-virtual {v1, v0}, Lo1/b;->h(LQ1/h;)V

    :cond_6
    iget-object v0, p0, LW1/c;->m:LX1/i;

    if-eqz v0, :cond_c

    iget-object v1, v0, LX1/i;->a:La2/q;

    iget-object v3, v1, La2/q;->q:La2/k;

    iget-object v3, v3, La2/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll5/a;

    iget-object v5, v0, LX1/i;->c:Ll5/h;

    if-eqz v5, :cond_7

    invoke-virtual {v5, v4}, Ll5/h;->d(Ll5/a;)V

    goto :goto_2

    :cond_8
    iget-object v3, v1, La2/q;->q:La2/k;

    iget-object v3, v3, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La2/f;

    iget-object v5, v4, La2/f;->B:Ll5/a;

    if-eqz v5, :cond_9

    iget-object v6, v0, LX1/i;->c:Ll5/h;

    if-eqz v6, :cond_a

    invoke-virtual {v6, v5}, Ll5/h;->d(Ll5/a;)V

    :cond_a
    iput-object v2, v4, La2/f;->B:Ll5/a;

    goto :goto_3

    :cond_b
    invoke-virtual {v1}, La2/q;->a()V

    :cond_c
    iget-boolean v0, p0, LW1/c;->g:Z

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    iget-object p1, p0, LW1/c;->H:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;->destroy()V

    :cond_d
    iput-object v2, p0, LW1/c;->m:LX1/i;

    iput-object v2, p0, LW1/c;->M:LO1/c;

    return-void
.end method

.method public final n(La2/f;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LW1/c;->q:Lw0/c;

    const-string v3, "/"

    const-string v4, "#"

    const-string v5, "ViewPool"

    const/4 v6, 0x0

    const-string v7, "viewPool"

    const/4 v8, 0x0

    if-eqz v2, :cond_6

    iget-object v9, v0, LW1/c;->o:LS2/b;

    if-eqz v9, :cond_5

    const-string v10, "container"

    invoke-static {v1, v10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v1, La2/f;->a:Ljava/lang/String;

    const-string v11, "createContainerLayout: Container.id="

    invoke-static {v11, v10}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v5, v10, v11}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v10, v9, LS2/b;->a:Ljava/lang/Object;

    check-cast v10, Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v11

    new-instance v12, LR1/b;

    invoke-direct {v12, v10, v1, v2}, LR1/b;-><init>(Landroid/content/Context;La2/f;Lw0/c;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v1, La2/f;->e:I

    int-to-float v10, v10

    iget-object v13, v9, LS2/b;->b:Ljava/lang/Object;

    check-cast v13, La2/q;

    iget-object v14, v13, La2/q;->t:Landroid/graphics/PointF;

    iget v15, v14, Landroid/graphics/PointF;->x:F

    mul-float/2addr v10, v15

    float-to-int v10, v10

    iget v15, v1, La2/f;->f:I

    int-to-float v15, v15

    iget v14, v14, Landroid/graphics/PointF;->y:F

    mul-float/2addr v15, v14

    float-to-int v14, v15

    invoke-direct {v2, v10, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v10, v1, La2/f;->c:I

    int-to-float v10, v10

    iget-object v14, v13, La2/q;->t:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    mul-float/2addr v10, v14

    invoke-virtual {v12, v10}, Landroid/view/View;->setX(F)V

    iget v10, v1, La2/f;->d:I

    int-to-float v10, v10

    iget-object v13, v13, La2/q;->t:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    mul-float/2addr v10, v13

    invoke-virtual {v12, v10}, Landroid/view/View;->setY(F)V

    iget v10, v1, La2/f;->u:F

    invoke-virtual {v12, v10}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v12, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v1, La2/f;->a:Ljava/lang/String;

    const-string v10, "container_date"

    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string v13, "createContainerLayout: date w = "

    const-string v14, ", h = "

    invoke-static {v13, v14, v2, v10}, LB/a;->m(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v5, v2, v10}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, v1, La2/f;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v12, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    iget-object v2, v1, La2/f;->h:Ljava/lang/String;

    invoke-static {v2, v4, v6}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, La2/f;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    iget-object v2, v9, LS2/b;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v10, v1, La2/f;->h:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Le0/a;->T(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v2, v1, La2/f;->B:Ll5/a;

    invoke-virtual {v12, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v1, La2/f;->B:Ll5/a;

    if-eqz v2, :cond_3

    iput-object v12, v2, Ll5/a;->u:Landroid/widget/FrameLayout;

    :cond_3
    iput-object v12, v1, La2/f;->n:Landroid/view/View;

    iget-boolean v2, v1, La2/f;->F:Z

    if-eqz v2, :cond_4

    iget-object v2, v1, La2/f;->a:Ljava/lang/String;

    const-string v10, "createContainerLayout: setOnTouchListener "

    invoke-static {v10, v2}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v5, v2, v10}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    iget-object v2, v1, La2/f;->a:Ljava/lang/String;

    iget-object v9, v9, LS2/b;->e:Ljava/lang/Object;

    check-cast v9, Ln/f;

    invoke-virtual {v9, v2, v1}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {v7}, LF3/k;->m(Ljava/lang/String;)V

    throw v8

    :cond_6
    move-object v12, v8

    :goto_1
    const-string v2, "null cannot be cast to non-null type com.samsung.android.wallpaper.live.suitcase.layout.ContainerLayout"

    const-string v9, "addViewToContainerLayout : "

    const-string v10, "containerId"

    if-eqz v12, :cond_13

    invoke-virtual/range {p1 .. p1}, La2/f;->b()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, v0, LW1/c;->n:LQ1/i;

    if-eqz v11, :cond_7

    iget-object v13, v1, La2/f;->b:La2/i;

    invoke-virtual {v11, v13, v1}, LQ1/i;->a(La2/i;La2/f;)V

    :cond_7
    iget-object v11, v0, LW1/c;->q:Lw0/c;

    if-eqz v11, :cond_8

    iget-object v11, v11, Lw0/c;->f:Ljava/lang/Object;

    check-cast v11, Lw0/m;

    if-eqz v11, :cond_8

    invoke-virtual {v11, v1, v12}, Lw0/m;->d(La2/f;Landroid/view/View;)V

    :cond_8
    iget-object v11, v0, LW1/c;->o:LS2/b;

    if-eqz v11, :cond_12

    iget-object v12, v1, La2/f;->a:Ljava/lang/String;

    invoke-static {v12, v10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "addLayoutToContentView : "

    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-array v14, v6, [Ljava/lang/Object;

    invoke-static {v5, v13, v14}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v13, v11, LS2/b;->d:Ljava/lang/Object;

    check-cast v13, Landroid/widget/FrameLayout;

    if-eqz v13, :cond_a

    iget-object v11, v11, LS2/b;->e:Ljava/lang/Object;

    check-cast v11, Ln/f;

    invoke-virtual {v11, v12}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, La2/f;

    if-eqz v11, :cond_9

    iget-object v11, v11, La2/f;->n:Landroid/view/View;

    goto :goto_2

    :cond_9
    move-object v11, v8

    :goto_2
    invoke-virtual {v13, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_a
    iget-object v11, v1, La2/f;->b:La2/i;

    sget-object v12, La2/i;->s:La2/i;

    if-eq v11, v12, :cond_b

    sget-object v12, La2/i;->t:La2/i;

    if-ne v11, v12, :cond_13

    :cond_b
    iget-object v11, v0, LW1/c;->o:LS2/b;

    if-eqz v11, :cond_11

    iget-object v12, v1, La2/f;->a:Ljava/lang/String;

    iget v13, v1, La2/f;->y:F

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "createTextClockView : id = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", container.textSize = "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v6, [Ljava/lang/Object;

    invoke-static {v5, v12, v13}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v12, v11, LS2/b;->a:Ljava/lang/Object;

    check-cast v12, Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v13

    new-instance v14, LR1/e;

    invoke-direct {v14, v12}, LR1/e;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x1

    invoke-direct {v12, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    iget v12, v1, La2/f;->y:F

    invoke-virtual {v14, v6, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v12, 0x11

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v12, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v12, 0x4

    invoke-virtual {v14, v12}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v12, v1, La2/f;->h:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v14, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    :cond_c
    iget-object v12, v1, La2/f;->h:Ljava/lang/String;

    invoke-static {v12, v4, v6}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v11, v1, La2/f;->h:Ljava/lang/String;

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v14, v11}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    :cond_d
    iget-object v11, v11, LS2/b;->c:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v1, La2/f;->h:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Le0/a;->T(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v11

    invoke-virtual {v14, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-boolean v11, v0, LW1/c;->g:Z

    if-eqz v11, :cond_e

    new-instance v11, Landroid/graphics/PointF;

    iget-object v12, v0, LW1/c;->A:Landroid/graphics/Point;

    iget v13, v12, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    iget-object v15, v0, LW1/c;->l:La2/q;

    iget-object v15, v15, La2/q;->q:La2/k;

    iget v8, v15, La2/k;->a:I

    int-to-float v8, v8

    div-float/2addr v13, v8

    iget v8, v12, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iget v12, v15, La2/k;->b:I

    int-to-float v12, v12

    div-float/2addr v8, v12

    invoke-direct {v11, v13, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iget v8, v11, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14, v8}, Landroid/view/View;->setScaleX(F)V

    iget v8, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v8}, Landroid/view/View;->setScaleY(F)V

    :cond_e
    iget-object v8, v0, LW1/c;->o:LS2/b;

    if-eqz v8, :cond_10

    iget-object v11, v1, La2/f;->a:Ljava/lang/String;

    invoke-static {v11, v10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " , textClockView"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v6, [Ljava/lang/Object;

    invoke-static {v5, v12, v13}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, v8, LS2/b;->e:Ljava/lang/Object;

    check-cast v8, Ln/f;

    invoke-virtual {v8, v11}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La2/f;

    if-eqz v8, :cond_f

    iget-object v8, v8, La2/f;->n:Landroid/view/View;

    goto :goto_4

    :cond_f
    const/4 v8, 0x0

    :goto_4
    invoke-static {v8, v2}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, LR1/b;

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v8, v0, LW1/c;->n:LQ1/i;

    if-eqz v8, :cond_13

    iget-object v11, v1, La2/f;->b:La2/i;

    const-string v12, "type"

    invoke-static {v11, v12}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, LQ1/g;

    iget-object v13, v8, LQ1/i;->a:Ljava/lang/Object;

    check-cast v13, Landroid/content/Context;

    iget-object v15, v8, LQ1/i;->b:Ljava/lang/Object;

    check-cast v15, Ln1/a;

    invoke-direct {v12, v13, v15, v14}, LQ1/g;-><init>(Landroid/content/Context;Ln1/a;LR1/e;)V

    invoke-virtual {v12, v11, v1}, LQ1/g;->a(La2/i;La2/f;)V

    invoke-virtual {v8}, LQ1/i;->b()LQ1/b;

    move-result-object v13

    iput-object v13, v12, LQ1/a;->c:LQ1/b;

    iget-object v8, v8, LQ1/i;->e:Ljava/lang/Object;

    check-cast v8, Ljava/util/EnumMap;

    invoke-virtual {v8, v11, v12}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_10
    invoke-static {v7}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_11
    move-object v0, v8

    invoke-static {v7}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object v0, v8

    invoke-static {v7}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_5
    iget-object v8, v1, La2/f;->C:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, La2/f;

    iget-object v12, v0, LW1/c;->o:LS2/b;

    if-eqz v12, :cond_1e

    iget-object v13, v0, LW1/c;->e:Ln1/a;

    invoke-virtual {v13}, Ln1/a;->p()LS2/b;

    move-result-object v13

    const-string v14, "element"

    invoke-static {v11, v14}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v14, v11, La2/f;->a:Ljava/lang/String;

    iget-object v15, v11, La2/f;->g:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v16, v8

    const-string v8, "createElementView : id="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " , src="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-array v14, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v14}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v12, LS2/b;->a:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v8

    new-instance v14, LR1/c;

    invoke-direct {v14, v6, v11, v13}, LR1/c;-><init>(Landroid/content/Context;La2/f;LS2/b;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v13, v11, La2/f;->e:I

    int-to-float v13, v13

    iget-object v15, v12, LS2/b;->b:Ljava/lang/Object;

    check-cast v15, La2/q;

    move-object/from16 v17, v7

    iget-object v7, v15, La2/q;->t:Landroid/graphics/PointF;

    move-object/from16 v18, v2

    iget v2, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v13, v2

    float-to-int v2, v13

    iget v13, v11, La2/f;->f:I

    int-to-float v13, v13

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v13, v7

    float-to-int v7, v13

    invoke-direct {v6, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v2, v11, La2/f;->c:I

    int-to-float v2, v2

    iget-object v7, v15, La2/q;->t:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v7

    invoke-virtual {v14, v2}, Landroid/view/View;->setX(F)V

    iget v2, v11, La2/f;->d:I

    int-to-float v2, v2

    iget-object v7, v15, La2/q;->t:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v7

    invoke-virtual {v14, v2}, Landroid/view/View;->setY(F)V

    invoke-virtual {v14, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v11, La2/f;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v12, LS2/b;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v6, v11, La2/f;->g:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, LB3/j;->L(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    invoke-static {v8, v2}, Le0/a;->T(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v14, v2}, LR1/c;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    iget-object v2, v11, La2/f;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_7

    :cond_15
    const/4 v2, 0x0

    iget-object v6, v11, La2/f;->h:Ljava/lang/String;

    invoke-static {v6, v4, v2}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v2, v11, La2/f;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_7

    :cond_16
    iget-object v2, v12, LS2/b;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v6, v11, La2/f;->h:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, LB3/j;->L(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17

    invoke-static {v8, v2}, Le0/a;->T(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_17
    :goto_7
    iput-object v14, v11, La2/f;->n:Landroid/view/View;

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v11, La2/f;->a:Ljava/lang/String;

    iget-object v6, v12, LS2/b;->f:Ljava/lang/Object;

    check-cast v6, Ln/f;

    invoke-virtual {v6, v2, v11}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v11, La2/f;->b:La2/i;

    sget-object v6, La2/i;->e:La2/i;

    if-eq v2, v6, :cond_19

    invoke-virtual {v11}, La2/f;->b()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v0, LW1/c;->n:LQ1/i;

    if-eqz v2, :cond_1a

    iget-object v6, v11, La2/f;->b:La2/i;

    invoke-virtual {v2, v6, v11}, LQ1/i;->a(La2/i;La2/f;)V

    goto :goto_8

    :cond_18
    iget-object v2, v0, LW1/c;->K:Ljava/util/EnumMap;

    iget-object v6, v11, La2/f;->b:La2/i;

    invoke-virtual {v2, v6, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_19
    iget-object v2, v0, LW1/c;->L:Landroid/util/ArrayMap;

    iget-object v6, v11, La2/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v6, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    :goto_8
    iget-object v2, v0, LW1/c;->q:Lw0/c;

    if-eqz v2, :cond_1b

    iget-object v2, v2, Lw0/c;->f:Ljava/lang/Object;

    check-cast v2, Lw0/m;

    if-eqz v2, :cond_1b

    invoke-virtual {v2, v11, v14}, Lw0/m;->d(La2/f;Landroid/view/View;)V

    :cond_1b
    iget-object v2, v0, LW1/c;->o:LS2/b;

    if-eqz v2, :cond_1d

    iget-object v6, v1, La2/f;->a:Ljava/lang/String;

    invoke-static {v6, v10}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v14, LR1/c;->g:La2/f;

    iget-object v7, v7, La2/f;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " , "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v11}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v2, LS2/b;->e:Ljava/lang/Object;

    check-cast v2, Ln/f;

    invoke-virtual {v2, v6}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/f;

    if-eqz v2, :cond_1c

    iget-object v2, v2, La2/f;->n:Landroid/view/View;

    move-object/from16 v6, v18

    goto :goto_9

    :cond_1c
    move-object/from16 v6, v18

    const/4 v2, 0x0

    :goto_9
    invoke-static {v2, v6}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, LR1/b;

    invoke-virtual {v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v2, v6

    move v6, v8

    move-object/from16 v8, v16

    move-object/from16 v7, v17

    goto/16 :goto_6

    :cond_1d
    invoke-static/range {v17 .. v17}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1e
    move-object/from16 v17, v7

    const/4 v0, 0x0

    invoke-static/range {v17 .. v17}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_1f
    return-void
.end method

.method public final o()V
    .locals 1

    iget-boolean v0, p0, LW1/c;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LW1/c;->w:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, LW1/c;->r:Z

    :cond_0
    return-void
.end method

.method public final onFoldStateChanged(Z)V
    .locals 1

    iput-boolean p1, p0, LW1/c;->u:Z

    iget-boolean v0, p0, LW1/c;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, LW1/c;->i:Ljava/lang/String;

    const-string v0, "onFoldStateChanged: isFolded = "

    invoke-static {v0, p1}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, LW1/c;->w:Z

    const/4 v1, 0x0

    if-nez v0, :cond_f

    instance-of v0, p1, LR1/b;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, LR1/b;

    iget-object v2, v0, LR1/b;->d:La2/f;

    iget-object v2, v2, La2/f;->D:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    if-lez v2, :cond_b

    iget-object v2, v0, LR1/b;->d:La2/f;

    iget-object v2, v2, La2/f;->D:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La2/a;

    iget-object v8, v7, La2/a;->a:Ljava/lang/String;

    const-string v9, "touch"

    invoke-static {v8, v9}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v1, v7, La2/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ll5/a;

    if-eqz p1, :cond_1

    move-object v5, p0

    check-cast v5, Ll5/a;

    :cond_1
    if-eqz v5, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v6

    add-float/2addr p1, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    sub-float/2addr p1, p0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr v0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    sub-float/2addr v0, p0

    mul-float p0, p1, p1

    mul-float p2, v0, v0

    add-float/2addr p2, p0

    sget-object p0, Lk5/c;->d:[F

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v1

    double-to-float p0, v1

    const/high16 p2, 0x34000000

    cmpg-float p2, p0, p2

    if-gez p2, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p0

    mul-float/2addr p1, p2

    mul-float/2addr v0, p2

    :goto_0
    iget p0, v7, La2/a;->c:F

    mul-float/2addr p1, p0

    mul-float/2addr v0, p0

    iget p0, v5, Ll5/a;->x:I

    if-eq p0, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ll5/a;->d()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v5, v4}, Ll5/a;->f(Z)V

    :cond_4
    iget-object p0, v5, Ll5/a;->g:Lk5/i;

    iget p2, p0, Lk5/i;->d:F

    add-float/2addr p2, p1

    iput p2, p0, Lk5/i;->d:F

    iget p1, p0, Lk5/i;->e:F

    add-float/2addr p1, v0

    iput p1, p0, Lk5/i;->e:F

    :goto_1
    iget p0, v7, La2/a;->d:F

    invoke-virtual {v5, p0}, Ll5/a;->b(F)V

    goto/16 :goto_4

    :cond_5
    iget-object v0, v7, La2/a;->b:Ljava/lang/String;

    const-string v1, "global"

    invoke-static {v0, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, LW1/c;->F:J

    sub-long/2addr v0, v2

    goto :goto_2

    :cond_6
    const-wide/16 v0, 0x0

    :goto_2
    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, LW1/c;->G:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_4

    :cond_7
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_a

    iget-object p1, p0, LW1/c;->G:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x42480000    # 50.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_a

    iget-object p1, p0, LW1/c;->G:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, LW1/c;->F:J

    iget-object p0, p0, LW1/c;->m:LX1/i;

    if-eqz p0, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, v7, La2/a;->c:F

    iget v1, v7, La2/a;->d:F

    invoke-virtual {p0, p1, p2, v0, v1}, LX1/i;->a(FFFF)V

    goto :goto_4

    :cond_8
    iget-object p0, p0, LW1/c;->l:La2/q;

    iget-object p0, p0, La2/q;->q:La2/k;

    iget-object p0, p0, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/f;

    iget-object v1, v0, La2/f;->a:Ljava/lang/String;

    iget-object v2, v7, La2/a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, La2/f;->n:Landroid/view/View;

    const-string v1, "null cannot be cast to non-null type com.samsung.android.wallpaper.live.suitcase.layout.ContainerLayout"

    invoke-static {v0, v1}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LR1/b;

    invoke-virtual {v0, p1, p2}, LR1/b;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_3

    :cond_a
    :goto_4
    return v4

    :cond_b
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Ll5/a;

    if-eqz v2, :cond_c

    move-object v5, p1

    check-cast v5, Ll5/a;

    :cond_c
    if-eqz v5, :cond_f

    iget-object p0, p0, LW1/c;->m:LX1/i;

    if-eqz p0, :cond_f

    new-instance p1, Lk5/i;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    add-float/2addr v7, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v7, v2

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr v0, p2

    invoke-direct {p1, v7, v0}, Lk5/i;-><init>(FF)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "applyForce : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "PhysicsPool"

    invoke-static {v2, p2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p2, p0, LX1/i;->g:F

    iget v0, p1, Lk5/i;->d:F

    mul-float/2addr v0, p2

    iget v2, p1, Lk5/i;->e:F

    mul-float/2addr v2, p2

    iget p2, v5, Ll5/a;->x:I

    if-eq p2, v3, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v5}, Ll5/a;->d()Z

    move-result p2

    if-nez p2, :cond_e

    invoke-virtual {v5, v4}, Ll5/a;->f(Z)V

    :cond_e
    iget-object p2, v5, Ll5/a;->g:Lk5/i;

    iget v3, p2, Lk5/i;->d:F

    add-float/2addr v3, v0

    iput v3, p2, Lk5/i;->d:F

    iget v0, p2, Lk5/i;->e:F

    add-float/2addr v0, v2

    iput v0, p2, Lk5/i;->e:F

    :goto_5
    iget p1, p1, Lk5/i;->d:F

    iget p0, p0, LX1/i;->h:F

    mul-float/2addr p1, p0

    invoke-virtual {v5, p1}, Ll5/a;->b(F)V

    :cond_f
    return v1
.end method

.method public final p(Landroid/graphics/PointF;)V
    .locals 8

    iget-boolean v0, p0, LW1/c;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, LW1/c;->i:Ljava/lang/String;

    const-string v2, "_PREVIEW"

    invoke-static {v0, v2}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LW1/c;->i:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object v0, p0, LW1/c;->d:Landroid/content/Context;

    iget v2, p0, LW1/c;->f:I

    invoke-static {v0, v2}, Lcom/samsung/android/wallpaper/live/util/WallpaperManagerHelper;->getWallpaperExtras(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "module_clock_layout"

    const-string v3, "vertical"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, LW1/c;->D:Z

    :goto_1
    new-instance v0, LX1/i;

    iget-object v2, p0, LW1/c;->l:La2/q;

    invoke-direct {v0, v2, p1}, LX1/i;-><init>(La2/q;Landroid/graphics/PointF;)V

    iput-object v0, p0, LW1/c;->m:LX1/i;

    new-instance p1, Lw0/c;

    iget-object v0, p0, LW1/c;->e:Ln1/a;

    const-string v2, "dataManager"

    invoke-static {v0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-direct {p1, v3}, Lw0/c;-><init>(I)V

    iput-object v0, p1, Lw0/c;->e:Ljava/lang/Object;

    new-instance v3, Lw0/m;

    iget-object v0, v0, Ln1/a;->b:Ljava/lang/Object;

    check-cast v0, La2/q;

    invoke-direct {v3, v0}, Lw0/m;-><init>(La2/q;)V

    iput-object v3, p1, Lw0/c;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v3, La2/i;

    invoke-direct {v0, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, LW1/c;->q:Lw0/c;

    iget-object p1, p0, LW1/c;->A:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_2

    iget-object v0, p0, LW1/c;->l:La2/q;

    iget-object v0, v0, La2/q;->q:La2/k;

    iget v4, v0, La2/k;->a:I

    iget v0, v0, La2/k;->b:I

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Point;->set(II)V

    :cond_2
    iget-object p1, p0, LW1/c;->l:La2/q;

    iget-object p1, p1, La2/q;->q:La2/k;

    iget-object p1, p1, La2/k;->k:Ljava/lang/String;

    const-string v0, "time"

    invoke-static {p1, v0}, LV4/m;->o0(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, LW1/c;->p:Z

    if-eqz p1, :cond_3

    new-instance p1, LQ1/i;

    iget-object v0, p0, LW1/c;->d:Landroid/content/Context;

    iget-object v4, p0, LW1/c;->e:Ln1/a;

    iget-object v5, p0, LW1/c;->m:LX1/i;

    invoke-static {v4, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, LQ1/i;->a:Ljava/lang/Object;

    iput-object v4, p1, LQ1/i;->b:Ljava/lang/Object;

    iput-object v5, p1, LQ1/i;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p1, LQ1/i;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p1, LQ1/i;->f:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p1, LQ1/i;->g:Ljava/lang/Object;

    iput-object p1, p0, LW1/c;->n:LQ1/i;

    iput-object p0, p1, LQ1/i;->h:Ljava/lang/Object;

    :cond_3
    iget-object p1, p0, LW1/c;->i:Ljava/lang/String;

    iget-object v0, p0, LW1/c;->l:La2/q;

    iget-object v2, v0, La2/q;->b:Ljava/lang/String;

    iget-object v3, v0, La2/q;->c:Ljava/lang/String;

    iget-object v0, v0, La2/q;->f:Ljava/lang/String;

    const-string v4, "initLayout : Content = "

    const-string v5, " , "

    const-string v6, " , SpecVersion = "

    invoke-static {v4, v2, v5, v3, v6}, LB/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, LS2/b;

    iget-object v0, p0, LW1/c;->d:Landroid/content/Context;

    iget-object v3, p0, LW1/c;->l:La2/q;

    const/4 v4, 0x1

    invoke-direct {p1, v0, v3, v4}, LS2/b;-><init>(Landroid/content/Context;La2/q;I)V

    iget-object v4, p1, LS2/b;->d:Ljava/lang/Object;

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_4

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "ViewPool"

    const-string v4, "createContentView : content view is already created"

    invoke-static {v3, v4, v0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, La2/q;->a:Ljava/lang/String;

    iput-object v5, p1, LS2/b;->c:Ljava/lang/Object;

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, v3, La2/q;->q:La2/k;

    iget v7, v6, La2/k;->a:I

    iget v6, v6, La2/k;->b:I

    invoke-direct {v0, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v3, La2/q;->q:La2/k;

    iget-object v0, v0, La2/k;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, -0x1000000

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_5
    iget-object v0, v3, La2/q;->q:La2/k;

    iget-object v0, v0, La2/k;->h:Ljava/lang/String;

    const-string v6, "#"

    invoke-static {v0, v6, v2}, LV4/u;->n0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v3, La2/q;->q:La2/k;

    iget-object v0, v0, La2/k;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p1, LS2/b;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, v3, La2/q;->q:La2/k;

    iget-object v3, v3, La2/k;->h:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Le0/a;->T(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iput-object v5, p1, LS2/b;->d:Ljava/lang/Object;

    :goto_3
    iput-object p1, p0, LW1/c;->o:LS2/b;

    iget-object p1, p0, LW1/c;->l:La2/q;

    iget-object p1, p1, La2/q;->q:La2/k;

    iget-object p1, p1, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La2/f;

    invoke-virtual {p0, v0}, LW1/c;->n(La2/f;)V

    goto :goto_4

    :cond_7
    sget-object p1, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;->d:Landroidx/recyclerview/widget/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/b;->I()Ls1/b;

    move-result-object p1

    invoke-static {p1}, Le0/a;->t(Ljava/lang/Object;)V

    iget-object p1, p0, LW1/c;->d:Landroid/content/Context;

    invoke-static {p1}, LL1/a;->getLidState(Landroid/content/Context;)I

    move-result p1

    sget v0, Lf2/g;->a:I

    if-ne p1, v0, :cond_8

    goto :goto_5

    :cond_8
    move v1, v2

    :goto_5
    iput-boolean v1, p0, LW1/c;->u:Z

    iget-object p0, p0, LW1/c;->n:LQ1/i;

    if-eqz p0, :cond_9

    new-instance p1, LQ1/h;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, LQ1/h;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LQ1/i;->d:Ljava/lang/Object;

    iget-object p1, p0, LQ1/i;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lo1/b;->b(Landroid/content/Context;)Lo1/b;

    move-result-object p1

    iget-object p0, p0, LQ1/i;->d:Ljava/lang/Object;

    check-cast p0, LQ1/h;

    invoke-virtual {p1, p0}, Lo1/b;->f(LQ1/h;)V

    :cond_9
    return-void
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, LW1/c;->I:Landroid/os/Handler;

    new-instance v1, LW1/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, LW1/a;-><init>(LW1/c;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final r(ZZ)V
    .locals 11

    iget-object v0, p0, LW1/c;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetPosition : ignorePhysics="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", exceptClock=false, needEffect="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, LW1/c;->m:LX1/i;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p1, LX1/i;->c:Ll5/h;

    if-eqz v1, :cond_0

    iget-object v1, v1, Ll5/h;->c:Ll5/a;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    iget-object v2, v1, Ll5/a;->u:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    instance-of v3, v2, LR1/b;

    if-eqz v3, :cond_3

    check-cast v2, LR1/b;

    iget-object v2, v2, LR1/b;->d:La2/f;

    iget-boolean v3, v2, La2/f;->p:Z

    if-eqz v3, :cond_1

    iget v3, v2, La2/f;->c:I

    iget v4, v2, La2/f;->d:I

    iget-object v5, v2, La2/f;->B:Ll5/a;

    if-eqz v5, :cond_3

    new-instance v6, Lk5/i;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7}, Lk5/i;-><init>(FF)V

    invoke-virtual {v5, v6}, Ll5/a;->g(Lk5/i;)V

    const/4 v6, 0x1

    iget v8, v5, Ll5/a;->x:I

    if-ne v8, v6, :cond_2

    goto :goto_1

    :cond_2
    iput v7, v5, Ll5/a;->f:F

    :goto_1
    new-instance v6, Lk5/i;

    int-to-float v3, v3

    iget-object v7, p1, LX1/i;->b:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v8

    iget v9, v2, La2/f;->e:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v9, v8

    add-float/2addr v9, v3

    sget v3, LX1/i;->l:F

    div-float/2addr v9, v3

    int-to-float v4, v4

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v7

    iget v10, v2, La2/f;->f:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    div-float/2addr v10, v8

    add-float/2addr v10, v4

    div-float/2addr v10, v3

    invoke-direct {v6, v9, v10}, Lk5/i;-><init>(FF)V

    iget v2, v2, La2/f;->u:F

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr v2, v3

    const v3, 0x4048f5c3    # 3.14f

    mul-float/2addr v2, v3

    iget-object v3, p1, LX1/i;->k:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p1, LX1/i;->j:Ljava/util/ArrayList;

    new-instance v7, LX1/e;

    invoke-direct {v7, v5, v6, v2}, LX1/e;-><init>(Ll5/a;Lk5/i;F)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_3
    :goto_2
    iget-object v1, v1, Ll5/a;->k:Ll5/a;

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    iget-object p0, p0, LW1/c;->q:Lw0/c;

    if-eqz p0, :cond_6

    const-string p1, "aod_transition_started"

    iget-object p2, p0, Lw0/c;->e:Ljava/lang/Object;

    check-cast p2, Ln1/a;

    iget-object p2, p2, Ln1/a;->b:Ljava/lang/Object;

    check-cast p2, La2/q;

    iget-object p2, p2, La2/q;->j:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-string v0, "iterator(...)"

    invoke-static {p2, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "next(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, La2/f;

    invoke-virtual {p0, p1, v0}, Lw0/c;->D(Ljava/lang/String;La2/f;)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, LW1/c;->o:LS2/b;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, LS2/b;->k()V

    :cond_6
    return-void

    :cond_7
    const-string p0, "viewPool"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v0
.end method

.method public final s(Ljava/util/ArrayList;)V
    .locals 8

    iget-object v0, p0, LW1/c;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setClockColors : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    const/4 v3, 0x0

    if-ltz v2, :cond_3

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, LW1/c;->o:LS2/b;

    if-eqz v4, :cond_2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iget-object v3, v4, LS2/b;->f:Ljava/lang/Object;

    check-cast v3, Ln/f;

    invoke-virtual {v3}, Ln/f;->entrySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ln/a;

    invoke-virtual {v3}, Ln/a;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    move-object v4, v3

    check-cast v4, Ln/d;

    invoke-virtual {v4}, Ln/d;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ln/d;->next()Ljava/lang/Object;

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La2/f;

    iget v5, v4, La2/f;->i:I

    if-ne v5, v2, :cond_0

    iget-object v4, v4, La2/f;->n:Landroid/view/View;

    if-eqz v4, :cond_0

    check-cast v4, LR1/c;

    iput v0, v4, LR1/c;->n:I

    iget-object v5, v4, LR1/c;->g:La2/f;

    iget-object v5, v5, La2/f;->j:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Landroid/graphics/BlendModeColorFilter;

    iget v6, v4, LR1/c;->n:I

    sget-object v7, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    iget-object v4, v4, LR1/c;->k:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    const-string p0, "viewPool"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-static {}, Lr3/k;->i0()V

    throw v3

    :cond_4
    return-void
.end method

.method public final setClockColors(Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/modular/editor/SetClockColors$Params;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/modular/editor/SetClockColors$Params;->clockColors:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, LW1/c;->C:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, LW1/c;->s(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public final setLayoutType(Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/modular/editor/SetLayoutType$Params;)V
    .locals 6

    iget-object v0, p0, LW1/c;->i:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/modular/editor/SetLayoutType$Params;->layoutType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string v3, "setLayoutType : "

    invoke-static {v3, v2}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, LW1/c;->o()V

    invoke-virtual {p0, v3}, LW1/c;->m(Z)V

    iget-object v0, p0, LW1/c;->e:Ln1/a;

    invoke-virtual {v0}, Ln1/a;->c()V

    iget-object v0, p0, LW1/c;->e:Ln1/a;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/modular/editor/SetLayoutType$Params;->layoutType:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    const-string v2, "horizontal"

    invoke-static {p1, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iget-object v2, v0, Ln1/a;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/preview"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ln1/a;->u(Ljava/lang/String;Z)V

    iget-object p1, p0, LW1/c;->e:Ln1/a;

    iget-object p1, p1, Ln1/a;->b:Ljava/lang/Object;

    check-cast p1, La2/q;

    iput-object p1, p0, LW1/c;->l:La2/q;

    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, LW1/c;->A:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v4, p0, LW1/c;->l:La2/q;

    iget-object v4, v4, La2/q;->q:La2/k;

    iget v5, v4, La2/k;->a:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v4, v4, La2/k;->b:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-direct {p1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, LW1/c;->p(Landroid/graphics/PointF;)V

    iget-object p1, p0, LW1/c;->m:LX1/i;

    if-eqz p1, :cond_2

    iget-object v0, p0, LW1/c;->A:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v0}, LX1/i;->e(II)V

    :cond_2
    iget-object p1, p0, LW1/c;->m:LX1/i;

    if-eqz p1, :cond_3

    iget-object p1, p1, LX1/i;->b:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, LW1/c;->k(FF)V

    :cond_3
    iget-object p1, p0, LW1/c;->o:LS2/b;

    if-eqz p1, :cond_6

    iget-object v0, p0, LW1/c;->A:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p1, LS2/b;->d:Ljava/lang/Object;

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    :cond_4
    iget-object p1, p1, LS2/b;->d:Ljava/lang/Object;

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v3, v3, v1, v0}, Landroid/view/ViewGroup;->layout(IIII)V

    :cond_5
    const/4 p1, 0x1

    invoke-virtual {p0, v3, p1}, LW1/c;->r(ZZ)V

    const-wide/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, LW1/c;->t(J)V

    invoke-virtual {p0}, LW1/c;->u()V

    return-void

    :cond_6
    const-string p0, "viewPool"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v1
.end method

.method public final t(J)V
    .locals 3

    iget-object v0, p0, LW1/c;->i:Ljava/lang/String;

    const-string v1, "startFrame : "

    invoke-static {v1, p1, p2}, Li4/b;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LW1/c;->t:Z

    iget-object v0, p0, LW1/c;->I:Landroid/os/Handler;

    iget-object v1, p0, LW1/c;->J:LA0/a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, LW1/c;->k:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object v0, p0, LW1/c;->k:Landroid/view/Choreographer;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public final u()V
    .locals 2

    iget-boolean v0, p0, LW1/c;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, LW1/c;->w:Z

    iget-object v0, p0, LW1/c;->l:La2/q;

    iget-object v0, v0, La2/q;->q:La2/k;

    iget-object v0, v0, La2/k;->k:Ljava/lang/String;

    const-string v1, "touch"

    invoke-static {v0, v1}, LV4/m;->o0(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, LW1/c;->r:Z

    :cond_0
    return-void
.end method
