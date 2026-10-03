.class public final LN1/h;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LN1/h;->a:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/HandlerThread;Landroid/os/Looper;I)V
    .locals 0

    .line 2
    iput p3, p0, LN1/h;->a:I

    iput-object p1, p0, LN1/h;->b:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p0, LN1/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN1/h;->b:Ljava/lang/Object;

    check-cast v0, Ld2/g;

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {v0}, Ld2/g;->a(Ld2/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    iget-object p1, v0, Ld2/g;->e:Ld2/h;

    iget-object p1, p1, Ld2/h;->q:Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;

    iget-object p1, p1, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    const-string v0, "handleMessage: e = "

    invoke-static {v0, p0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x1

    if-eq v0, p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/content/DialogInterface;

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    iget-object p0, p0, LN1/h;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/DialogInterface;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, p0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :goto_1
    return-void

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/PointF;

    iget-object p0, p0, LN1/h;->b:Ljava/lang/Object;

    check-cast p0, LN1/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, LN1/i;->d:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    cmpg-float v4, v0, v3

    const/4 v5, 0x1

    if-gez v4, :cond_3

    goto :goto_2

    :cond_3
    aget v1, v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_2
    iput v3, p1, Landroid/graphics/PointF;->y:F

    const/4 p1, 0x0

    cmpg-float p1, v3, p1

    iget-object v0, p0, LN1/i;->e:[F

    if-gez p1, :cond_4

    neg-float p1, v3

    aget v0, v0, v2

    mul-float/2addr p1, v0

    goto :goto_3

    :cond_4
    aget p1, v0, v5

    mul-float/2addr p1, v3

    :goto_3
    iget-object p0, p0, LN1/i;->g:LN1/j;

    iget-object p0, p0, Lp1/b;->d:Lcom/samsung/android/wallpaper/live/common/video/VideoController;

    iput p1, p0, Lcom/samsung/android/wallpaper/live/common/video/VideoController;->e:F

    goto :goto_4

    :cond_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
