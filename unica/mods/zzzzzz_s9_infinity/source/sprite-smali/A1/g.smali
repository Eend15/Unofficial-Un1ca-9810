.class public final synthetic LA1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;I)V
    .locals 0

    iput p2, p0, LA1/g;->a:I

    iput-object p1, p0, LA1/g;->b:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "handleMessage: what[%d]"

    iget-object v2, p0, LA1/g;->b:Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;

    iget p0, p0, LA1/g;->a:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->w:I

    check-cast v2, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p1, Landroid/os/Message;->what:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "InfinityWallpaper"

    invoke-static {v3, v1, p0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p0, p1, Landroid/os/Message;->what:I

    const/16 p1, 0x65

    if-eq p0, p1, :cond_1

    const/16 p1, 0x66

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v2, v0}, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, v2, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->c:LC1/b;

    if-eqz p0, :cond_check_aod

    iget p0, p0, LC1/b;->g:I

    if-nez p0, :cond_check_aod

    goto :goto_0

    :cond_check_aod
    iget-object p0, v2, Lcom/samsung/android/wallpaper/live/infinity/InfinityVideoWallpaper$InfinityWallpaperEngine;->f:Lk1/b;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Lk1/b;->j(Z)V

    :cond_2
    :goto_0
    return v0

    :pswitch_0
    check-cast v2, LA1/o;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p1, Landroid/os/Message;->what:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "FoldInteractive"

    invoke-static {v3, v1, p0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p0, p1, Landroid/os/Message;->what:I

    const/16 p1, 0x6a

    if-eq p0, p1, :cond_6

    packed-switch p0, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    iget-object p0, v2, LA1/o;->h:Lk1/b;

    if-eqz p0, :cond_7

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result p0

    if-nez p0, :cond_7

    iget-object p0, v2, LA1/o;->h:Lk1/b;

    invoke-virtual {p0, v0}, Lk1/b;->j(Z)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, v2, LA1/o;->c:Lcom/samsung/android/wallpaper/live/fold/FoldInteractive;

    if-eqz p0, :cond_4

    sget-object p1, Lf2/k;->a:Ljava/lang/reflect/Method;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "userActivity: "

    invoke-static {p1, p0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "PowerUtil"

    invoke-static {v1, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    sget-object p0, Lf2/k;->a:Ljava/lang/reflect/Method;

    goto :goto_1

    :pswitch_3
    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {v2}, LA1/o;->h()V

    iget-object p0, v2, LA1/o;->e:LA1/f;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, LA1/f;->a()V

    :cond_5
    iget-object p0, v2, LA1/o;->h:Lk1/b;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v0}, Lk1/b;->j(Z)V

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, LA1/o;->f()V

    :cond_7
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
