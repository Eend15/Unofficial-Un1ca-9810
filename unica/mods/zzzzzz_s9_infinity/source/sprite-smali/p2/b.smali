.class public final synthetic Lp2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public final synthetic d:LF3/q;

.field public final synthetic e:Lp2/d;

.field public final synthetic f:Lv2/b;

.field public final synthetic g:LF3/q;

.field public final synthetic h:I

.field public final synthetic i:LF3/s;


# direct methods
.method public synthetic constructor <init>(LF3/q;Lp2/d;Lv2/b;LF3/q;ILF3/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/b;->d:LF3/q;

    iput-object p2, p0, Lp2/b;->e:Lp2/d;

    iput-object p3, p0, Lp2/b;->f:Lv2/b;

    iput-object p4, p0, Lp2/b;->g:LF3/q;

    iput p5, p0, Lp2/b;->h:I

    iput-object p6, p0, Lp2/b;->i:LF3/s;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v2, p2

    check-cast v2, Landroid/graphics/Bitmap;

    const-string p1, "fg"

    invoke-static {v1, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bg"

    invoke-static {v2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lp2/b;->d:LF3/q;

    iget-boolean p1, p1, LF3/q;->d:Z

    iget-object p2, p0, Lp2/b;->f:Lv2/b;

    iget-object v0, p0, Lp2/b;->e:Lp2/d;

    const/4 v3, 0x0

    const-string v4, "WeatherEffectsRepository"

    const-string v5, "directAccessContext"

    if-eqz p1, :cond_0

    iget-object p1, v0, Lp2/d;->f:Landroid/content/Context;

    invoke-static {p1, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x10

    const-string v8, "fg_image_preview"

    invoke-static {p1, v8, v1, v6, v7}, Lp2/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "Failed to export foreground assets during wallpaper generation"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lp2/b;->g:LF3/q;

    iget-boolean p1, p1, LF3/q;->d:Z

    if-eqz p1, :cond_1

    iget-object p1, v0, Lp2/d;->f:Landroid/content/Context;

    invoke-static {p1, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x18

    const/4 v6, 0x0

    const-string v7, "bg_image_preview"

    invoke-static {p1, v7, v2, v6, v5}, Lp2/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "Failed to export background assets during wallpaper generation"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lp2/b;->h:I

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3}, Lp2/d;->d(IZ)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v11, Lv2/a;

    iget-object p0, p0, Lp2/b;->i:LF3/s;

    iget-object p0, p0, LF3/s;->d:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Landroid/graphics/Rect;

    iget-boolean v6, p2, Lv2/b;->e:Z

    iget-boolean v7, p2, Lv2/b;->f:Z

    iget-boolean v8, p2, Lv2/b;->g:Z

    iget-wide v9, p2, Lv2/b;->h:J

    iget-object v4, p2, Lv2/b;->d:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    const/4 v5, 0x1

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lv2/a;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;ZZZZJ)V

    invoke-virtual {p1, v11}, Lkotlinx/coroutines/flow/i;->j(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method
