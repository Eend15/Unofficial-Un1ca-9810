.class public final synthetic LA1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LA1/a;->a:I

    iput-object p2, p0, LA1/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v3, 0x0

    iget-object v4, v0, LA1/a;->b:Ljava/lang/Object;

    const/4 v5, 0x1

    iget v0, v0, LA1/a;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "animation"

    move-object/from16 v6, p1

    invoke-static {v6, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v6

    check-cast v4, Lv1/d;

    iget-object v0, v4, Lv1/d;->G:Lx1/a;

    if-eqz v0, :cond_a

    long-to-float v6, v6

    iget-wide v7, v4, Lv1/d;->I:J

    long-to-float v7, v7

    cmpl-float v8, v6, v7

    if-ltz v8, :cond_0

    goto/16 :goto_6

    :cond_0
    iput v6, v4, Lv1/d;->H:F

    div-float v7, v6, v7

    const/high16 v8, 0x3f800000    # 1.0f

    rem-float/2addr v7, v8

    iget-wide v9, v4, Lv1/d;->J:J

    long-to-float v9, v9

    div-float v9, v6, v9

    rem-float/2addr v9, v8

    iget-wide v10, v4, Lv1/d;->K:J

    long-to-float v10, v10

    div-float v10, v6, v10

    rem-float/2addr v10, v8

    int-to-float v11, v5

    div-float/2addr v8, v11

    rem-float/2addr v7, v8

    mul-float/2addr v7, v11

    rem-float/2addr v9, v8

    mul-float/2addr v9, v11

    rem-float/2addr v10, v8

    mul-float/2addr v10, v11

    move v8, v3

    :goto_0
    const/4 v11, 0x4

    if-ge v8, v11, :cond_7

    iget-object v11, v4, Lv1/d;->v:Lv1/e;

    sget-object v12, Lv1/e;->d:Lv1/e;

    iget-object v13, v0, Lx1/a;->b:[J

    iget-object v14, v0, Lx1/a;->a:[J

    if-ne v11, v12, :cond_1

    aget-wide v11, v14, v8

    long-to-int v11, v11

    aget-wide v12, v13, v8

    long-to-int v12, v12

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    invoke-static {v12}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    sub-int/2addr v14, v13

    int-to-float v14, v14

    mul-float/2addr v14, v7

    float-to-int v14, v14

    add-int/2addr v13, v14

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v14

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v15

    sub-int/2addr v15, v14

    int-to-float v15, v15

    mul-float/2addr v15, v7

    float-to-int v15, v15

    add-int/2addr v14, v15

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v15

    invoke-static {v12}, Landroid/graphics/Color;->green(I)I

    move-result v16

    sub-int v2, v16, v15

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    add-int/2addr v15, v2

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    sub-int/2addr v11, v2

    int-to-float v11, v11

    mul-float/2addr v11, v7

    float-to-int v11, v11

    add-int/2addr v2, v11

    invoke-static {v13, v14, v15, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    move v1, v2

    move v2, v3

    move/from16 p1, v6

    goto/16 :goto_2

    :cond_1
    aget-wide v11, v14, v8

    long-to-int v2, v11

    aget-wide v11, v13, v8

    long-to-int v11, v11

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3b808081

    mul-float/2addr v12, v13

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v13

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    new-array v15, v1, [F

    aput v12, v15, v3

    aput v14, v15, v5

    const/4 v12, 0x2

    aput v2, v15, v12

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v13

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v13

    new-array v13, v1, [F

    aput v2, v13, v3

    aput v12, v13, v5

    const/4 v2, 0x2

    aput v11, v13, v2

    new-array v2, v1, [F

    mul-float v11, v7, v7

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v7

    const/high16 v14, 0x40400000    # 3.0f

    sub-float/2addr v14, v12

    mul-float/2addr v14, v11

    move v11, v3

    :goto_1
    if-ge v11, v1, :cond_2

    aget v12, v15, v11

    move-object/from16 p0, v4

    float-to-double v3, v12

    const v12, 0x4019999a    # 2.4f

    move/from16 p1, v6

    float-to-double v5, v12

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    aget v4, v13, v11

    move-object/from16 v17, v2

    float-to-double v1, v4

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1, v3, v14, v3}, Li4/b;->b(FFFF)F

    move-result v1

    float-to-double v1, v1

    const v3, 0x3ed55555

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v17, v11

    const/4 v1, 0x1

    add-int/2addr v11, v1

    move-object/from16 v4, p0

    move/from16 v6, p1

    move v5, v1

    move-object/from16 v2, v17

    const/4 v1, 0x3

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v17, v2

    move v2, v3

    move-object/from16 p0, v4

    move v1, v5

    move/from16 p1, v6

    aget v3, v17, v2

    aget v4, v17, v1

    const/4 v1, 0x2

    aget v5, v17, v1

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(FFF)I

    move-result v1

    move-object/from16 v4, p0

    :goto_2
    iget-object v3, v4, Lv1/d;->A:[J

    int-to-long v5, v1

    aput-wide v5, v3, v8

    iget-object v3, v4, Lv1/d;->i:Lv1/g;

    if-eqz v3, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v8, v1}, Lv1/g;->b(ILjava/lang/Integer;)V

    :cond_3
    const/4 v1, 0x2

    if-ne v8, v1, :cond_5

    iget-wide v5, v4, Lv1/d;->J:J

    long-to-float v3, v5

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_5

    :cond_4
    :goto_3
    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    iget-object v3, v0, Lx1/a;->d:[F

    iget-object v5, v0, Lx1/a;->c:[F

    if-ne v8, v1, :cond_6

    aget v5, v5, v8

    aget v3, v3, v8

    invoke-static {v3, v5, v9, v5}, Li4/b;->b(FFFF)F

    move-result v3

    goto :goto_4

    :cond_6
    aget v5, v5, v8

    aget v3, v3, v8

    invoke-static {v3, v5, v7, v5}, Li4/b;->b(FFFF)F

    move-result v3

    :goto_4
    iget-object v5, v4, Lv1/d;->B:[F

    aput v3, v5, v8

    iget-object v5, v4, Lv1/d;->i:Lv1/g;

    if-eqz v5, :cond_4

    iget-object v6, v5, Lv1/g;->f:[F

    aput v3, v6, v8

    iget-object v3, v5, Lv1/g;->a:Landroid/graphics/RuntimeShader;

    const-string v5, "colorPointPos"

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    goto :goto_3

    :goto_5
    add-int/2addr v8, v3

    move/from16 v6, p1

    move v5, v3

    const/4 v1, 0x3

    move v3, v2

    goto/16 :goto_0

    :cond_7
    move/from16 p1, v6

    iget-object v1, v4, Lv1/d;->u:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    sget-object v2, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;->CIRCULAR:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    if-ne v1, v2, :cond_a

    iget-wide v1, v4, Lv1/d;->K:J

    long-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_a

    iget v1, v0, Lx1/a;->f:F

    iget v2, v0, Lx1/a;->e:F

    invoke-static {v1, v2, v10, v2}, Li4/b;->b(FFFF)F

    move-result v1

    iput v1, v4, Lv1/d;->C:F

    iget-object v2, v4, Lv1/d;->i:Lv1/g;

    if-eqz v2, :cond_8

    iput v1, v2, Lv1/g;->l:F

    :cond_8
    iget v1, v0, Lx1/a;->h:F

    iget v3, v0, Lx1/a;->g:F

    invoke-static {v1, v3, v10, v3}, Li4/b;->b(FFFF)F

    move-result v1

    iput v1, v4, Lv1/d;->D:F

    if-eqz v2, :cond_9

    iput v1, v2, Lv1/g;->i:F

    :cond_9
    iget v1, v0, Lx1/a;->j:F

    iget v0, v0, Lx1/a;->i:F

    invoke-static {v1, v0, v10, v0}, Li4/b;->b(FFFF)F

    move-result v0

    iput v0, v4, Lv1/d;->E:F

    if-eqz v2, :cond_a

    iput v0, v2, Lv1/g;->j:F

    :cond_a
    :goto_6
    invoke-virtual {v4}, Lv1/d;->l()V

    return-void

    :pswitch_0
    move-object/from16 v6, p1

    check-cast v4, LC1/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v4, LC1/b;->c:I

    iget-object v1, v4, LC1/b;->f:LA1/h;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v0}, LA1/h;->accept(Ljava/lang/Object;)V

    :cond_b
    return-void

    :pswitch_1
    move-object/from16 v6, p1

    check-cast v4, LA1/f;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v4, LA1/f;->j:I

    iget-object v1, v4, LA1/f;->i:LA1/h;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, LA1/h;->accept(Ljava/lang/Object;)V

    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
