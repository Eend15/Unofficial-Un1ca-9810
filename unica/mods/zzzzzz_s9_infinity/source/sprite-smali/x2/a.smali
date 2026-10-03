.class public final Lx2/a;
.super Ln2/b;
.source "SourceFile"


# instance fields
.field public final c:Lx2/b;

.field public final d:Lo2/a;

.field public final e:Lo2/b;

.field public final f:Landroid/graphics/Paint;

.field public g:F

.field public h:I

.field public final i:I

.field public j:I


# direct methods
.method public constructor <init>(Lx2/b;Lo2/a;Lo2/b;Lh2/b;)V
    .locals 0

    invoke-direct {p0, p2}, Ln2/b;-><init>(Lo2/a;)V

    iput-object p1, p0, Lx2/a;->c:Lx2/b;

    iput-object p2, p0, Lx2/a;->d:Lo2/a;

    iput-object p3, p0, Lx2/a;->e:Lo2/b;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput-object p3, p0, Lx2/a;->f:Landroid/graphics/Paint;

    const/4 p1, 0x1

    iput p1, p0, Lx2/a;->h:I

    const/4 p3, 0x3

    iput p3, p0, Lx2/a;->i:I

    iput p1, p0, Lx2/a;->j:I

    :try_start_0
    invoke-virtual {p0}, Lx2/a;->o()V

    iget-object p1, p2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {p0, p1}, Lx2/a;->m(Landroid/util/SizeF;)V

    invoke-virtual {p0}, Lx2/a;->n()V

    iget p1, p2, Lo2/a;->b:I

    invoke-virtual {p0, p1}, Lx2/a;->a(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SunnyEffect"

    invoke-virtual {p4, p1, p0}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    const-string v0, "SunnyEffect"

    invoke-virtual {p0, p1, v0}, Ln2/b;->j(ILjava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lx2/a;->c:Lx2/b;

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p0

    const-string v0, "deviceAndState"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    return p1
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx2/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "SunnyEffect"

    const-string v1, "fadeOut"

    invoke-static {v0, v1, p0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SunnyEffect"

    const-string v2, "pause"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lx2/a;->g:F

    return-void
.end method

.method public final f()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SunnyEffect"

    const-string v2, "release effect"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lx2/a;->e:Lo2/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lo2/b;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final g()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SunnyEffect"

    const-string v2, "reset"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lx2/a;->g:F

    return-void
.end method

.method public final h(Landroid/util/SizeF;)V
    .locals 4

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resize surfaceSize(wxh): ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SunnyEffect"

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lx2/a;->d:Lo2/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {p0, p1}, Lx2/a;->m(Landroid/util/SizeF;)V

    return-void
.end method

.method public final i(J)V
    .locals 1

    iget v0, p0, Lx2/a;->g:F

    long-to-float p1, p1

    const p2, 0x3a83126f    # 0.001f

    mul-float/2addr p1, p2

    add-float/2addr p1, v0

    iput p1, p0, Lx2/a;->g:F

    iget-object p1, p0, Lx2/a;->c:Lx2/b;

    invoke-virtual {p1}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    const-string p2, "time"

    iget p0, p0, Lx2/a;->g:F

    invoke-virtual {p1, p2, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method

.method public final k(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "SunnyEffect"

    const-string v0, ": updateWatermark"

    invoke-static {p1, v0, p0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final l(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public final m(Landroid/util/SizeF;)V
    .locals 9

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adjustCropping Surface Size Width: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Height: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SunnyEffect"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lx2/a;->c:Lx2/b;

    invoke-virtual {v0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v2

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v5

    const-string v6, "screenSize"

    invoke-virtual {v2, v6, v4, v5}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    iget-object p0, p0, Lx2/a;->e:Lo2/b;

    iget-object p0, p0, Lo2/b;->a:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float v5, p0, p1

    div-float v6, v4, v2

    div-float v7, v4, p0

    div-float v8, v2, p1

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    mul-float/2addr v2, v5

    sub-float/2addr v4, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v4, v2

    mul-float/2addr p1, v5

    sub-float/2addr p0, p1

    div-float/2addr p0, v2

    invoke-virtual {v0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    const-string v2, "uvOffsetsBgd"

    invoke-virtual {p1, v2, v4, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    invoke-virtual {v0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    const-string v0, "uvScaleBgd"

    invoke-virtual {p1, v0, v5, v5}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "background offset Left|Top: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " \nbackground scale H|V: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final n()V
    .locals 28

    move-object/from16 v0, p0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    iget-object v7, v0, Lx2/a;->e:Lo2/b;

    iget-object v7, v7, Lo2/b;->a:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_20

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/2addr v9, v5

    invoke-static {v7, v4, v4, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    const-string v8, "createBitmap(...)"

    invoke-static {v7, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-nez v10, :cond_1f

    sget-object v10, LX/f;->a:LX/d;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v10, LX/g;->d:LX/g;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v10, LX/g;->e:LX/g;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v10, LX/g;->f:LX/g;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v10, LX/g;->g:LX/g;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v10, LX/g;->h:LX/g;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v10, LX/g;->i:LX/g;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int/2addr v11, v10

    const/16 v10, 0x3100

    if-le v11, v10, :cond_0

    int-to-double v12, v10

    int-to-double v10, v11

    div-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    goto :goto_0

    :cond_0
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    :goto_0
    const-wide/16 v12, 0x0

    cmpg-double v12, v10, v12

    if-gtz v12, :cond_1

    move-object v10, v7

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-double v12, v12

    mul-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-static {v7, v12, v10, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    :goto_1
    new-instance v15, LX/c;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    mul-int v11, v17, v18

    new-array v14, v11, [I

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    move-object v11, v10

    move-object v12, v14

    move-object v1, v14

    move/from16 v14, v17

    move-object v2, v15

    move/from16 v15, v19

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [LX/d;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [LX/d;

    :goto_2
    invoke-direct {v2, v1, v9}, LX/c;-><init>([I[LX/d;)V

    if-eq v10, v7, :cond_3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iget-object v1, v2, LX/c;->c:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    new-instance v7, Ln/f;

    invoke-direct {v7, v4}, Ln/j;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/high16 v10, -0x80000000

    move v11, v4

    const/4 v13, 0x0

    :goto_3
    if-ge v11, v9, :cond_5

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LX/e;

    iget v15, v14, LX/e;->e:I

    if-le v15, v10, :cond_4

    move-object v13, v14

    move v10, v15

    :cond_4
    add-int/2addr v11, v6

    goto :goto_3

    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v4

    :goto_4
    const/4 v11, 0x0

    if-ge v10, v9, :cond_13

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LX/g;

    iget-object v15, v14, LX/g;->c:[F

    array-length v12, v15

    move v3, v4

    move/from16 v18, v11

    :goto_5
    if-ge v3, v12, :cond_7

    aget v19, v15, v3

    cmpl-float v20, v19, v11

    if-lez v20, :cond_6

    add-float v18, v18, v19

    :cond_6
    add-int/2addr v3, v6

    goto :goto_5

    :cond_7
    cmpl-float v3, v18, v11

    if-eqz v3, :cond_9

    array-length v3, v15

    move v12, v4

    :goto_6
    if-ge v12, v3, :cond_9

    aget v19, v15, v12

    cmpl-float v20, v19, v11

    if-lez v20, :cond_8

    div-float v19, v19, v18

    aput v19, v15, v12

    :cond_8
    add-int/2addr v12, v6

    goto :goto_6

    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v12, v4

    move/from16 v18, v11

    const/4 v15, 0x0

    :goto_7
    if-ge v12, v3, :cond_11

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v11, v19

    check-cast v11, LX/e;

    invoke-virtual {v11}, LX/e;->b()[F

    move-result-object v19

    aget v21, v19, v6

    iget-object v6, v14, LX/g;->a:[F

    aget v23, v6, v4

    cmpl-float v23, v21, v23

    if-ltz v23, :cond_10

    aget v23, v6, v5

    cmpg-float v21, v21, v23

    if-gtz v21, :cond_10

    aget v19, v19, v5

    iget-object v5, v14, LX/g;->b:[F

    aget v23, v5, v4

    cmpl-float v23, v19, v23

    if-ltz v23, :cond_10

    const/16 v21, 0x2

    aget v23, v5, v21

    cmpg-float v19, v19, v23

    if-gtz v19, :cond_10

    iget v4, v11, LX/e;->d:I

    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v11}, LX/e;->b()[F

    move-result-object v4

    move-object/from16 v23, v1

    if-eqz v13, :cond_a

    iget v1, v13, LX/e;->e:I

    move/from16 v24, v3

    goto :goto_8

    :cond_a
    move/from16 v24, v3

    const/4 v1, 0x1

    :goto_8
    iget-object v3, v14, LX/g;->c:[F

    const/16 v19, 0x0

    aget v25, v3, v19

    const/16 v20, 0x0

    cmpl-float v26, v25, v20

    const/high16 v27, 0x3f800000    # 1.0f

    const/16 v22, 0x1

    if-lez v26, :cond_b

    aget v26, v4, v22

    aget v6, v6, v22

    sub-float v26, v26, v6

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, v27, v6

    mul-float v6, v6, v25

    goto :goto_9

    :cond_b
    const/4 v6, 0x0

    :goto_9
    aget v25, v3, v22

    const/16 v20, 0x0

    cmpl-float v26, v25, v20

    const/16 v21, 0x2

    if-lez v26, :cond_c

    aget v4, v4, v21

    aget v5, v5, v22

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v27, v27, v4

    mul-float v4, v27, v25

    goto :goto_a

    :cond_c
    const/4 v4, 0x0

    :goto_a
    aget v3, v3, v21

    const/4 v5, 0x0

    cmpl-float v25, v3, v5

    if-lez v25, :cond_d

    iget v5, v11, LX/e;->e:I

    int-to-float v5, v5

    int-to-float v1, v1

    div-float/2addr v5, v1

    mul-float v1, v5, v3

    goto :goto_b

    :cond_d
    const/4 v1, 0x0

    :goto_b
    add-float/2addr v6, v4

    add-float/2addr v6, v1

    if-eqz v15, :cond_e

    cmpl-float v1, v6, v18

    if-lez v1, :cond_f

    :cond_e
    move/from16 v18, v6

    move-object v15, v11

    :cond_f
    :goto_c
    const/4 v1, 0x1

    goto :goto_d

    :cond_10
    move-object/from16 v23, v1

    move/from16 v24, v3

    goto :goto_c

    :goto_d
    add-int/2addr v12, v1

    move v6, v1

    move-object/from16 v1, v23

    move/from16 v3, v24

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v11, 0x0

    goto/16 :goto_7

    :cond_11
    move-object/from16 v23, v1

    move v1, v6

    if-eqz v15, :cond_12

    iget v3, v15, LX/e;->d:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_12
    invoke-virtual {v7, v14, v15}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v10, v1

    move v6, v1

    move-object/from16 v1, v23

    const/4 v4, 0x0

    const/4 v5, 0x2

    goto/16 :goto_4

    :cond_13
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    sget-object v1, LX/g;->i:LX/g;

    invoke-virtual {v7, v1}, Ln/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX/e;

    if-eqz v1, :cond_14

    iget v1, v1, LX/e;->d:I

    goto :goto_e

    :cond_14
    const/4 v1, 0x0

    :goto_e
    if-nez v1, :cond_16

    if-eqz v13, :cond_15

    iget v1, v13, LX/e;->d:I

    goto :goto_f

    :cond_15
    const/4 v1, 0x0

    :cond_16
    :goto_f
    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v3, 0x10

    invoke-static {v3}, LR3/f;->i(I)V

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1e

    invoke-static {v3}, LR3/f;->i(I)V

    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    long-to-int v1, v1

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v3

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float v5, v3, v5

    const/4 v6, 0x0

    cmpg-float v7, v5, v6

    const/4 v6, 0x4

    if-nez v7, :cond_17

    const/4 v1, 0x0

    const/16 v20, 0x0

    goto :goto_11

    :cond_17
    cmpg-float v7, v3, v2

    const/16 v8, 0x168

    const/high16 v9, 0x42700000    # 60.0f

    if-nez v7, :cond_18

    sub-float/2addr v4, v1

    div-float/2addr v4, v5

    const/4 v1, 0x6

    int-to-float v1, v1

    rem-float/2addr v4, v1

    mul-float/2addr v4, v9

    int-to-float v1, v8

    add-float/2addr v4, v1

    rem-float v1, v4, v1

    :goto_10
    move/from16 v20, v1

    const/4 v1, 0x0

    goto :goto_11

    :cond_18
    cmpg-float v7, v3, v4

    if-nez v7, :cond_19

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    const/4 v2, 0x2

    int-to-float v4, v2

    add-float/2addr v1, v4

    mul-float/2addr v1, v9

    int-to-float v2, v8

    add-float/2addr v1, v2

    rem-float/2addr v1, v2

    goto :goto_10

    :cond_19
    sub-float/2addr v2, v4

    div-float/2addr v2, v5

    int-to-float v1, v6

    add-float/2addr v2, v1

    mul-float/2addr v2, v9

    int-to-float v1, v8

    add-float/2addr v2, v1

    rem-float v1, v2, v1

    goto :goto_10

    :goto_11
    cmpg-float v2, v3, v1

    const/16 v4, 0x64

    if-nez v2, :cond_1a

    move v11, v1

    goto :goto_12

    :cond_1a
    div-float/2addr v5, v3

    int-to-float v1, v4

    mul-float v11, v5, v1

    :goto_12
    int-to-float v1, v4

    mul-float/2addr v3, v1

    const/4 v1, 0x3

    new-array v2, v1, [F

    const/4 v4, 0x0

    aput v20, v2, v4

    const/4 v5, 0x1

    aput v11, v2, v5

    const/4 v7, 0x2

    aput v3, v2, v7

    aget v3, v2, v4

    aget v4, v2, v5

    aget v2, v2, v7

    const/high16 v8, 0x42340000    # 45.0f

    cmpl-float v8, v3, v8

    const/high16 v9, 0x41c00000    # 24.0f

    if-lez v8, :cond_1b

    const/high16 v8, 0x42820000    # 65.0f

    cmpg-float v3, v3, v8

    if-gez v3, :cond_1b

    cmpl-float v3, v4, v9

    if-lez v3, :cond_1b

    move v1, v5

    goto :goto_13

    :cond_1b
    cmpg-float v3, v4, v9

    const/high16 v5, 0x42960000    # 75.0f

    if-gez v3, :cond_1c

    cmpl-float v3, v2, v5

    if-lez v3, :cond_1c

    move v1, v7

    goto :goto_13

    :cond_1c
    cmpl-float v3, v4, v9

    if-ltz v3, :cond_1d

    const/high16 v3, 0x424c0000    # 51.0f

    cmpg-float v3, v4, v3

    if-gez v3, :cond_1d

    const/high16 v3, 0x42480000    # 50.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1d

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1d

    goto :goto_13

    :cond_1d
    move v1, v6

    :goto_13
    iput v1, v0, Lx2/a;->h:I

    iget-object v1, v0, Lx2/a;->c:Lx2/b;

    invoke-virtual {v1}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v1

    const-string v2, "bgdColorType"

    iget v0, v0, Lx2/a;->h:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    goto :goto_14

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hexadecimal string must be 8 characters long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_14
    return-void
.end method

.method public final o()V
    .locals 6

    iget-object v0, p0, Lx2/a;->e:Lo2/b;

    iget-object v0, v0, Lo2/b;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lx2/a;->c:Lx2/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const-string v4, "updateTextureUniforms BG Size: "

    const-string v5, "|"

    invoke-static {v4, v5, v2, v3}, LB/a;->m(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "SunnyEffect"

    invoke-static {v4, v2, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v2

    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v0, v4, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroid/graphics/BitmapShader;->setFilterMode(I)V

    const-string v0, "background"

    invoke-virtual {v2, v0, v3}, Landroid/graphics/RuntimeShader;->setInputBuffer(Ljava/lang/String;Landroid/graphics/BitmapShader;)V

    :cond_0
    invoke-virtual {v1}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    const-string v2, "sunnyFlareSize"

    iget v3, p0, Lx2/a;->i:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    invoke-virtual {v1}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    const-string v2, "sunnyMoveSunX"

    iget v3, p0, Lx2/a;->j:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    invoke-virtual {v1}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    iget p0, p0, Ln2/b;->b:I

    const-string v1, "deviceAndState"

    invoke-virtual {v0, v1, p0}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "SunnyEffect"

    return-object p0
.end method
