.class public final LA1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM1/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LA1/i;->a:I

    iput-object p2, p0, LA1/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget v0, p0, LA1/i;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, LK1/c;

    invoke-direct {v2, p0, p1, v0, v1}, LK1/c;-><init>(LA1/i;IJ)V

    iget-object p0, p0, LA1/i;->b:Ljava/lang/Object;

    check-cast p0, LK1/d;

    iget-object p0, p0, LK1/d;->a:Landroid/os/Handler;

    const-wide/16 v0, 0x5

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "FoldInteractive"

    const-string v2, "onDeviceStateChanged: newState[%d]"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, LK/I;->Z(I)Z

    move-result v0

    iget-object p0, p0, LA1/i;->b:Ljava/lang/Object;

    check-cast p0, LA1/o;

    if-eqz v0, :cond_1

    iget-object p1, p0, LA1/o;->e:LA1/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LA1/f;->c()V

    :cond_0
    invoke-virtual {p0}, LA1/o;->f()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lf2/g;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;->getDisplayState()LH1/a;

    move-result-object p1

    sget-object v0, LH1/a;->f:LH1/a;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, LA1/o;->e:LA1/f;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LA1/f;->b(LA1/p;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
