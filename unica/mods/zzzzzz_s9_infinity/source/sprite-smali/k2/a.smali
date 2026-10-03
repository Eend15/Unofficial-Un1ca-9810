.class public final Lk2/a;
.super Lw3/g;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public final synthetic d:Lk2/b;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lk2/b;IILjava/lang/String;Lu3/d;)V
    .locals 0

    iput-object p1, p0, Lk2/a;->d:Lk2/b;

    iput p2, p0, Lk2/a;->e:I

    iput p3, p0, Lk2/a;->f:I

    iput-object p4, p0, Lk2/a;->g:Ljava/lang/String;

    invoke-direct {p0, p5}, Lw3/g;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lu3/d;)Lu3/d;
    .locals 6

    new-instance p1, Lk2/a;

    iget v3, p0, Lk2/a;->f:I

    iget-object v4, p0, Lk2/a;->g:Ljava/lang/String;

    iget-object v1, p0, Lk2/a;->d:Lk2/b;

    iget v2, p0, Lk2/a;->e:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lk2/a;-><init>(Lk2/b;IILjava/lang/String;Lu3/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LW4/t;

    check-cast p2, Lu3/d;

    invoke-virtual {p0, p1, p2}, Lk2/a;->create(Ljava/lang/Object;Lu3/d;)Lu3/d;

    move-result-object p0

    check-cast p0, Lk2/a;

    sget-object p1, Lq3/m;->a:Lq3/m;

    invoke-virtual {p0, p1}, Lk2/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lv3/a;->d:Lv3/a;

    invoke-static/range {p1 .. p1}, Lp4/g;->X(Ljava/lang/Object;)V

    iget-object v3, v0, Lk2/a;->d:Lk2/b;

    iget-object v4, v3, Lk2/b;->b:Li2/a;

    iget v5, v0, Lk2/a;->e:I

    invoke-virtual {v4, v5}, Li2/a;->G0(I)Ljava/lang/String;

    move-result-object v10

    iget-object v4, v3, Lk2/b;->b:Li2/a;

    invoke-virtual {v4, v5}, Li2/a;->H0(I)Ljava/lang/String;

    move-result-object v11

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "stored weather = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    const-string v14, "HandleMagicianWallpaperGenerated"

    invoke-static {v14, v6, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v15, Lq3/m;->a:Lq3/m;

    const-wide/16 v6, -0x1

    iget-object v8, v0, Lk2/a;->g:Ljava/lang/String;

    iget v9, v0, Lk2/a;->f:I

    const/16 v12, 0x96

    if-ne v9, v12, :cond_4

    const-string v9, "generatedKey = "

    invoke-static {v9, v8}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v12, v2, [Ljava/lang/Object;

    invoke-static {v14, v9, v12}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v8, :cond_0

    return-object v15

    :cond_0
    new-array v9, v1, [C

    const/16 v12, 0x5f

    aput-char v12, v9, v2

    invoke-static {v8, v9}, LV4/m;->F0(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_1

    return-object v15

    :cond_1
    const-string v12, "clear thumbnail: "

    invoke-static {v5, v12}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-array v13, v2, [Ljava/lang/Object;

    invoke-static {v14, v12, v13}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-object v13, v3, Lk2/b;->d:Ly2/d;

    iget-object v13, v13, Ly2/d;->b:Lf2/c;

    invoke-virtual {v13, v5, v12}, Lf2/c;->a(ILjava/lang/Long;)V

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "none"

    invoke-static {v12, v13}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {v12, v10}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_2
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v11}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    const-string v0, "Weather isn\'t matched. So do not update."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v14, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v15

    :cond_4
    const-string v9, ">>> Update SR BG. last = ["

    const-string v12, ", "

    const-string v13, "], gen = "

    invoke-static {v9, v10, v12, v11, v13}, LB/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Lk2/b;->f:Lh2/b;

    invoke-virtual {v9, v14, v8}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v1}, Li2/a;->K0(IZ)V

    const-string v1, "repository"

    iget-object v4, v3, Lk2/b;->c:Lp2/d;

    invoke-static {v4, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->NONE:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    iget v0, v0, Lk2/a;->e:I

    invoke-virtual {v4, v0}, Lp2/d;->c(I)Lp2/c;

    move-result-object v5

    const/16 v16, 0x0

    if-eqz v5, :cond_5

    iget-object v5, v5, Lp2/c;->b:Landroidx/recyclerview/widget/y;

    goto :goto_0

    :cond_5
    move-object/from16 v5, v16

    :goto_0
    if-eqz v5, :cond_6

    iget-object v5, v5, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/i;

    invoke-virtual {v5}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv2/a;

    if-eqz v5, :cond_6

    iget-object v1, v5, Lv2/a;->c:Landroid/graphics/Rect;

    iget-boolean v6, v5, Lv2/a;->f:Z

    iget-boolean v7, v5, Lv2/a;->g:Z

    iget-boolean v8, v5, Lv2/a;->h:Z

    iget-wide v12, v5, Lv2/a;->i:J

    iget-object v5, v5, Lv2/a;->d:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    move-object/from16 v21, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move-wide/from16 v26, v12

    goto :goto_1

    :cond_6
    move-object/from16 v21, v1

    move/from16 v23, v2

    move/from16 v24, v23

    move/from16 v25, v24

    move-wide/from16 v26, v6

    move-object/from16 v1, v16

    :goto_1
    iget-object v6, v3, Lk2/b;->a:Lj2/b;

    move v7, v0

    move-wide/from16 v8, v26

    move/from16 v12, v23

    move/from16 v13, v24

    invoke-virtual/range {v6 .. v13}, Lj2/b;->b(IJLjava/lang/String;Ljava/lang/String;ZZ)Lw0/c;

    move-result-object v3

    iget-object v5, v3, Lw0/c;->e:Ljava/lang/Object;

    move-object/from16 v19, v5

    check-cast v19, Landroid/graphics/Bitmap;

    if-nez v19, :cond_7

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Background from the SR is null."

    invoke-static {v14, v1, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    iget-object v2, v3, Lw0/c;->f:Ljava/lang/Object;

    move-object/from16 v18, v2

    check-cast v18, Landroid/graphics/Bitmap;

    if-nez v18, :cond_8

    move-object/from16 v20, v16

    goto :goto_2

    :cond_8
    move-object/from16 v20, v1

    :goto_2
    new-instance v1, Lv2/a;

    const/16 v22, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v27}, Lv2/a;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;ZZZZJ)V

    invoke-virtual {v4, v0, v1}, Lp2/d;->f(ILv2/a;)V

    :goto_3
    return-object v15
.end method
