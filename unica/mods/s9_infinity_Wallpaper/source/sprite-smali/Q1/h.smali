.class public final synthetic LQ1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LQ1/h;->a:I

    iput-object p2, p0, LQ1/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo1/a;)V
    .locals 3

    iget v0, p0, LQ1/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LQ1/h;->b:Ljava/lang/Object;

    check-cast p0, Lu1/b;

    iget-object v0, p0, Lu1/b;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTimeChanged: time="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lu1/b;->d()V

    return-void

    :pswitch_0
    iget-object p0, p0, LQ1/h;->b:Ljava/lang/Object;

    check-cast p0, Ld2/h;

    iget-object v0, p0, Ld2/h;->q:Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;

    iget-object v0, v0, Lcom/samsung/android/wallpaper/live/tiltclock/TiltClockWallpaperService;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTimeChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Ld2/h;->e:Ld2/g;

    if-eqz p0, :cond_1

    iget-object v0, p0, Ld2/g;->e:Ld2/h;

    iget-object v0, v0, Ld2/h;->h:La0/b;

    if-eqz v0, :cond_0

    iput-object p1, v0, La0/b;->n:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, La0/b;->b:Z

    :cond_0
    invoke-virtual {p0}, Ld2/g;->b()V

    :cond_1
    return-void

    :pswitch_1
    iget-object p0, p0, LQ1/h;->b:Ljava/lang/Object;

    check-cast p0, LS1/a;

    invoke-virtual {p0}, LS1/a;->d()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onTimeChanged : "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ClockController"

    invoke-static {v0, p0, p1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object p0, p0, LQ1/h;->b:Ljava/lang/Object;

    check-cast p0, LQ1/i;

    iget-object v0, p0, LQ1/i;->g:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    new-instance v1, LA0/b;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2, p1}, LA0/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
