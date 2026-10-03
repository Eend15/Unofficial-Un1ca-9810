.class public final Lu2/a;
.super Ln2/a;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:Z

.field public C:F

.field public D:F

.field public E:F

.field public final d:Lu2/b;

.field public final e:Lo2/a;

.field public final f:Lo2/b;

.field public final g:Landroid/graphics/Paint;

.field public h:F

.field public final i:[Ljava/lang/Float;

.field public final j:[F

.field public final k:[F

.field public final l:[F

.field public final m:[F

.field public n:Z

.field public o:Z

.field public p:F

.field public q:F

.field public r:Z

.field public s:F

.field public t:F

.field public u:F

.field public final v:F

.field public w:F

.field public x:Z

.field public final y:[Ljava/lang/Float;

.field public final z:[Ljava/lang/Float;


# direct methods
.method public constructor <init>(Lu2/b;Lo2/a;Lo2/b;Lh2/b;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x6

    const/4 v8, 0x1

    invoke-direct {v1, v0}, Ln2/a;-><init>(Lo2/a;)V

    move-object/from16 v9, p1

    iput-object v9, v1, Lu2/a;->d:Lu2/b;

    iput-object v0, v1, Lu2/a;->e:Lo2/a;

    move-object/from16 v0, p3

    iput-object v0, v1, Lu2/a;->f:Lo2/b;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual/range {p1 .. p1}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput-object v0, v1, Lu2/a;->g:Landroid/graphics/Paint;

    const/16 v0, 0x4b

    new-array v9, v0, [Ljava/lang/Float;

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    const/4 v12, 0x0

    if-ge v11, v0, :cond_0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v9, v11

    add-int/2addr v11, v8

    goto :goto_0

    :cond_0
    iput-object v9, v1, Lu2/a;->i:[Ljava/lang/Float;

    int-to-float v0, v6

    const v9, 0x40490fdb    # (float)Math.PI

    div-float v11, v9, v0

    mul-float/2addr v0, v9

    int-to-float v13, v5

    div-float/2addr v0, v13

    mul-float v14, v13, v9

    int-to-float v15, v4

    div-float/2addr v14, v15

    new-array v12, v7, [F

    const v16, 0x3f060a92

    aput v16, v12, v10

    const v16, 0x3f490fdb

    aput v16, v12, v8

    const v16, 0x3f860a92

    aput v16, v12, v6

    aput v11, v12, v5

    aput v0, v12, v4

    aput v14, v12, v3

    iput-object v12, v1, Lu2/a;->j:[F

    div-float v12, v9, v15

    div-float v13, v9, v13

    int-to-float v15, v3

    mul-float/2addr v15, v9

    int-to-float v9, v7

    div-float/2addr v15, v9

    new-array v9, v7, [F

    aput v12, v9, v10

    aput v13, v9, v8

    aput v11, v9, v6

    aput v0, v9, v5

    aput v14, v9, v4

    aput v15, v9, v3

    iput-object v9, v1, Lu2/a;->k:[F

    new-array v0, v7, [F

    fill-array-data v0, :array_0

    iput-object v0, v1, Lu2/a;->l:[F

    new-array v0, v7, [F

    fill-array-data v0, :array_1

    iput-object v0, v1, Lu2/a;->m:[F

    iput-boolean v8, v1, Lu2/a;->n:Z

    iput-boolean v8, v1, Lu2/a;->o:Z

    iput v2, v1, Lu2/a;->t:F

    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, v1, Lu2/a;->v:F

    const/16 v0, 0x18

    new-array v2, v0, [Ljava/lang/Float;

    move v3, v10

    :goto_1
    const/4 v4, 0x0

    if-ge v3, v0, :cond_1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v3

    add-int/2addr v3, v8

    goto :goto_1

    :cond_1
    iput-object v2, v1, Lu2/a;->y:[Ljava/lang/Float;

    new-array v2, v0, [Ljava/lang/Float;

    :goto_2
    if-ge v10, v0, :cond_2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v10

    add-int/2addr v10, v8

    goto :goto_2

    :cond_2
    iput-object v2, v1, Lu2/a;->z:[Ljava/lang/Float;

    const/4 v0, -0x1

    iput v0, v1, Lu2/a;->A:I

    :try_start_0
    iget-object v2, v1, Lu2/a;->f:Lo2/b;

    iget-object v3, v2, Lo2/b;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_4

    :try_start_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_3
    invoke-virtual {v3, v0, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    const/high16 v4, 0x40a00000    # 5.0f

    float-to-int v4, v4

    invoke-static {v0, v4}, Lcom/samsung/android/wallpaper/live/weather/effects/utils/BlurUtil;->a(Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v0

    goto :goto_5

    :goto_4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    :goto_5
    iput-object v3, v2, Lo2/b;->e:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lu2/a;->r()V

    iget-object v0, v1, Lu2/a;->e:Lo2/a;

    iget-object v0, v0, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v1, v0}, Lu2/a;->n(Landroid/util/SizeF;)V

    iget-object v0, v1, Lu2/a;->e:Lo2/a;

    iget v0, v0, Lo2/a;->b:I

    invoke-virtual {v1, v0}, Lu2/a;->a(I)I

    invoke-virtual/range {p0 .. p0}, Lu2/a;->o()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RainEffect"

    move-object/from16 v2, p4

    invoke-virtual {v2, v1, v0}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void

    nop

    :array_0
    .array-data 4
        0x3f0ccccd    # 0.55f
        0x3f59999a    # 0.85f
        0x3f666666    # 0.9f
        0x3f666666    # 0.9f
        0x3f59999a    # 0.85f
        0x3f0ccccd    # 0.55f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x3fe66666    # 1.8f
        0x3fe66666    # 1.8f
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    const-string v0, "RainEffect"

    invoke-virtual {p0, p1, v0}, Ln2/b;->j(ILjava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lu2/a;->d:Lu2/b;

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

    iget-object p0, p0, Lu2/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public final c()V
    .locals 4

    iget v0, p0, Lu2/a;->h:F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fadeout "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "RainEffect"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lu2/a;->o:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu2/a;->r:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lu2/a;->t:F

    const/4 v0, 0x0

    iput v0, p0, Lu2/a;->s:F

    return-void
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final e()V
    .locals 4

    iget v0, p0, Lu2/a;->h:F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pause runtime "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "RainEffect"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu2/a;->n:Z

    invoke-virtual {p0}, Lu2/a;->o()V

    iput-boolean v1, p0, Lu2/a;->r:Z

    iget v0, p0, Lu2/a;->h:F

    iput v0, p0, Lu2/a;->u:F

    return-void
.end method

.method public final f()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RainEffect"

    const-string v2, "release effect"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lu2/a;->f:Lo2/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lo2/b;->b:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lo2/b;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lo2/b;->e:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final g()V
    .locals 4

    iget v0, p0, Lu2/a;->h:F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reset runtime "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "RainEffect"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu2/a;->n:Z

    invoke-virtual {p0}, Lu2/a;->o()V

    iput-boolean v1, p0, Lu2/a;->r:Z

    const/4 v0, 0x0

    iput v0, p0, Lu2/a;->h:F

    iput v0, p0, Lu2/a;->u:F

    iput v0, p0, Lu2/a;->w:F

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

    const-string v2, "RainEffect"

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lu2/a;->e:Lo2/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {p0, p1}, Lu2/a;->n(Landroid/util/SizeF;)V

    return-void
.end method

.method public final i(J)V
    .locals 8

    iget-boolean v0, p0, Lu2/a;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lu2/a;->h:F

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "first update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "RainEffect"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lu2/a;->u:F

    iput v0, p0, Lu2/a;->h:F

    iput-boolean v1, p0, Lu2/a;->n:Z

    :cond_0
    iget v0, p0, Lu2/a;->h:F

    float-to-int v2, v0

    rem-int/lit8 v2, v2, 0xf

    iget-object v3, p0, Lu2/a;->d:Lu2/b;

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v2, :cond_1

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lu2/a;->x:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lu2/a;->w:F

    const/high16 v2, 0x41700000    # 15.0f

    add-float/2addr v0, v2

    iput v0, p0, Lu2/a;->w:F

    invoke-virtual {v3}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    const-string v2, "startTime"

    iget v6, p0, Lu2/a;->w:F

    invoke-virtual {v0, v2, v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    iput-boolean v1, p0, Lu2/a;->x:Z

    goto :goto_0

    :cond_1
    if-ne v2, v4, :cond_2

    iput-boolean v4, p0, Lu2/a;->x:Z

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lu2/a;->o:Z

    iget v2, p0, Lu2/a;->v:F

    const/4 v6, 0x0

    const v7, 0x3a83126f    # 0.001f

    if-eqz v0, :cond_4

    iget v0, p0, Lu2/a;->p:F

    long-to-float p1, p1

    mul-float/2addr p1, v7

    add-float/2addr v0, p1

    iput v0, p0, Lu2/a;->p:F

    cmpg-float p2, v0, v5

    if-gez p2, :cond_3

    iget p2, p0, Lu2/a;->q:F

    div-float/2addr v5, v2

    add-float/2addr v5, p2

    iput v5, p0, Lu2/a;->q:F

    iget p2, p0, Lu2/a;->h:F

    mul-float/2addr p1, v5

    add-float/2addr p1, p2

    iput p1, p0, Lu2/a;->h:F

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lu2/a;->o:Z

    iput v6, p0, Lu2/a;->p:F

    iput v6, p0, Lu2/a;->q:F

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lu2/a;->r:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lu2/a;->s:F

    long-to-float p1, p1

    mul-float/2addr p1, v7

    add-float/2addr v0, p1

    iput v0, p0, Lu2/a;->s:F

    cmpg-float p2, v0, v5

    if-gez p2, :cond_5

    iget p2, p0, Lu2/a;->t:F

    div-float/2addr v5, v2

    sub-float/2addr p2, v5

    iput p2, p0, Lu2/a;->t:F

    iget v0, p0, Lu2/a;->h:F

    mul-float/2addr p1, p2

    add-float/2addr p1, v0

    iput p1, p0, Lu2/a;->h:F

    goto :goto_1

    :cond_5
    iput-boolean v1, p0, Lu2/a;->r:Z

    iput v6, p0, Lu2/a;->s:F

    iput v5, p0, Lu2/a;->t:F

    goto :goto_1

    :cond_6
    iget v0, p0, Lu2/a;->h:F

    long-to-float p1, p1

    mul-float/2addr p1, v7

    add-float/2addr p1, v0

    iput p1, p0, Lu2/a;->h:F

    :goto_1
    invoke-virtual {v3}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    const-string p2, "time"

    iget v0, p0, Lu2/a;->h:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    iget-object p1, p0, Ln2/a;->c:Ly2/a;

    iget p2, p1, Ly2/a;->h:I

    iget v0, p0, Lu2/a;->A:I

    if-eq p2, v0, :cond_7

    iput p2, p0, Lu2/a;->A:I

    iput-boolean v4, p0, Lu2/a;->B:Z

    :cond_7
    iget-boolean p2, p0, Lu2/a;->B:Z

    if-nez p2, :cond_8

    iget-boolean p2, p1, Ly2/a;->g:Z

    if-nez p2, :cond_8

    iget-boolean p1, p1, Ly2/a;->d:Z

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lu2/a;->e:Lo2/a;

    iget-object p1, p1, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {p0, p1}, Lu2/a;->n(Landroid/util/SizeF;)V

    iput-boolean v1, p0, Lu2/a;->B:Z

    iget-object p0, p0, Ln2/a;->c:Ly2/a;

    iput-boolean v1, p0, Ly2/a;->g:Z

    iput-boolean v1, p0, Ly2/a;->d:Z

    :cond_9
    return-void
.end method

.method public final k(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RainEffect"

    const-string v2, ": updateWatermark"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lu2/a;->f:Lo2/b;

    iput-object p1, v0, Lo2/b;->b:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lu2/a;->d:Lu2/b;

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p0

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Landroid/graphics/BitmapShader;->setFilterMode(I)V

    const-string p1, "foreground"

    invoke-virtual {p0, p1, v0}, Landroid/graphics/RuntimeShader;->setInputBuffer(Ljava/lang/String;Landroid/graphics/BitmapShader;)V

    return-void
.end method

.method public final l(Ljava/lang/Integer;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateWeatherDensity density:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "RainEffect"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lu2/a;->d:Lu2/b;

    iget-boolean v0, v0, Lu2/b;->e:Z

    const v2, 0x3f99999a    # 1.2f

    const/high16 v3, 0x428c0000    # 70.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f19999a    # 0.6f

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v9, 0x42480000    # 50.0f

    if-ne v0, v6, :cond_1

    invoke-virtual {p0, v9, v5, v1}, Lu2/a;->p(FFI)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_2

    invoke-virtual {p0, v9, v4, v6}, Lu2/a;->p(FFI)V

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v8, :cond_6

    invoke-virtual {p0, v3, v2, v7}, Lu2/a;->p(FFI)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v6, :cond_4

    const/high16 v0, 0x42820000    # 65.0f

    invoke-virtual {p0, v0, v5, v1}, Lu2/a;->q(FFI)V

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_5

    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0, v0, v4, v1}, Lu2/a;->q(FFI)V

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v8, :cond_6

    const/4 p1, 0x5

    invoke-virtual {p0, v3, v2, p1}, Lu2/a;->q(FFI)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final m(Ly2/a;)V
    .locals 3

    const-string v0, "blockTouchAreaData"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Ly2/a;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lu2/a;->C:F

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lu2/a;->D:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lu2/a;->E:F

    iput-object p1, p0, Ln2/a;->c:Ly2/a;

    return-void
.end method

.method public final n(Landroid/util/SizeF;)V
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    iget-object v3, v0, Lu2/a;->f:Lo2/b;

    iget-boolean v4, v3, Lo2/b;->c:Z

    iget-object v5, v3, Lo2/b;->d:Landroid/graphics/Rect;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "adjustCropping Surface Size Width: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Height: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " hasObject: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Fg Bound: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "RainEffect"

    invoke-static {v5, v1, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v3, Lo2/b;->b:Landroid/graphics/Bitmap;

    const-string v4, "next(...)"

    const-string v6, "iterator(...)"

    const/high16 v7, 0x40000000    # 2.0f

    const-string v8, "|"

    iget-object v9, v0, Lu2/a;->d:Lu2/b;

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/util/SizeF;->getWidth()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/util/SizeF;->getHeight()F

    move-result v11

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v14, v13, v11

    div-float v15, v12, v10

    div-float v16, v12, v13

    div-float v17, v10, v11

    cmpl-float v16, v16, v17

    if-lez v16, :cond_0

    goto :goto_0

    :cond_0
    move v14, v15

    :goto_0
    mul-float/2addr v10, v14

    sub-float/2addr v12, v10

    div-float/2addr v12, v7

    mul-float/2addr v11, v14

    sub-float/2addr v13, v11

    div-float/2addr v13, v7

    invoke-virtual {v9}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v10

    const-string v11, "uvOffsetFgd"

    invoke-virtual {v10, v11, v12, v13}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    invoke-virtual {v9}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v10

    const-string v11, "uvScaleFgd"

    invoke-virtual {v10, v11, v14, v14}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "foreground offset Left|Top: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " \nforeground scale H|V: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v5, v10, v11}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v10, v0, Lu2/a;->i:[Ljava/lang/Float;

    iget-boolean v11, v9, Lu2/b;->e:Z

    const-string v14, "splashCount"

    if-nez v11, :cond_6

    iget-boolean v15, v3, Lo2/b;->c:Z

    if-eqz v15, :cond_6

    iget-object v15, v3, Lo2/b;->d:Landroid/graphics/Rect;

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v11

    const/16 v15, 0x14

    if-le v11, v15, :cond_5

    iget-object v11, v3, Lo2/b;->d:Landroid/graphics/Rect;

    invoke-static {v11}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-le v11, v15, :cond_5

    iget-object v11, v3, Lo2/b;->d:Landroid/graphics/Rect;

    invoke-static {v11}, LF3/k;->c(Ljava/lang/Object;)V

    float-to-int v12, v12

    float-to-int v13, v13

    const/16 v15, 0x19

    invoke-static {v1, v11, v15, v12, v13}, Lp4/g;->o(Landroid/graphics/Bitmap;Landroid/graphics/Rect;III)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v2, 0xf

    if-le v7, v15, :cond_1

    const/16 v7, 0x23

    invoke-static {v1, v11, v7, v12, v13}, Lp4/g;->o(Landroid/graphics/Bitmap;Landroid/graphics/Rect;III)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v2, :cond_2

    move-object/from16 v16, v1

    goto :goto_1

    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v2, :cond_2

    invoke-static {v1, v11, v2, v12, v13}, Lp4/g;->o(Landroid/graphics/Bitmap;Landroid/graphics/Rect;III)Ljava/util/ArrayList;

    move-result-object v16

    :cond_2
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ly2/b;

    add-int/lit8 v11, v2, 0x1

    iget v12, v7, Ly2/b;->a:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v2

    add-int/lit8 v12, v2, 0x2

    iget v13, v7, Ly2/b;->b:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v10, v11

    add-int/lit8 v2, v2, 0x3

    iget v7, v7, Ly2/b;->c:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v10, v12

    const/16 v7, 0x4b

    if-lt v2, v7, :cond_3

    :cond_4
    const-string v1, "Sprinkles: boundaryCount "

    invoke-static {v2, v1}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {v5, v1, v11}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v1

    invoke-virtual {v1, v14, v2}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    move v7, v2

    const-string v1, "No Sprinkles"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v1

    invoke-virtual {v1, v14, v7}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    iget-boolean v1, v3, Lo2/b;->c:Z

    iget-object v2, v3, Lo2/b;->d:Landroid/graphics/Rect;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "No Sprinkles IsIndoor: "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " object: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Bounds: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v1, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v1

    invoke-virtual {v1, v14, v2}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    :goto_2
    invoke-virtual {v9}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v1

    invoke-static {v10}, Lr3/h;->t0([Ljava/lang/Float;)[F

    move-result-object v2

    const-string v7, "foregroundBoundary"

    invoke-virtual {v1, v7, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    :cond_7
    iget-object v1, v3, Lo2/b;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v10, v1, v3

    div-float v11, v7, v2

    div-float v12, v7, v1

    div-float v13, v2, v3

    cmpl-float v12, v12, v13

    if-lez v12, :cond_8

    goto :goto_3

    :cond_8
    move v10, v11

    :goto_3
    mul-float/2addr v2, v10

    sub-float/2addr v7, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v7, v2

    mul-float/2addr v3, v10

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-virtual {v9}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v2

    const-string v3, "uvOffsetBgd"

    invoke-virtual {v2, v3, v7, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    invoke-virtual {v9}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v2

    const-string v3, "uvScaleBgd"

    invoke-virtual {v2, v3, v10, v10}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "background offset Left|Top: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " \nbackground scale H|V: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {v9}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    const-string v7, "screenSize"

    invoke-virtual {v1, v7, v2, v3}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    invoke-virtual {v9}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v1

    const-string v2, "screenAspectRatio"

    invoke-static/range {p1 .. p1}, Lcom/google/android/torus/utils/extensions/SizeExtKt;->getAspectRatio(Landroid/util/SizeF;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    invoke-virtual {v9}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v1

    const-string v2, "anglesStart"

    iget-object v3, v0, Lu2/a;->j:[F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    invoke-virtual {v9}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v1

    const-string v2, "anglesEnd"

    iget-object v3, v0, Lu2/a;->k:[F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    invoke-virtual {v9}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v1

    const-string v2, "vel"

    iget-object v3, v0, Lu2/a;->l:[F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    invoke-virtual {v9}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v1

    const-string v2, "scale"

    iget-object v3, v0, Lu2/a;->m:[F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    invoke-virtual {v9}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v1

    iget v2, v0, Ln2/b;->b:I

    const-string v3, "deviceAndState"

    invoke-virtual {v1, v3, v2}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    iget-object v1, v0, Ln2/a;->c:Ly2/a;

    iget-object v1, v1, Ly2/a;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, v0, Lu2/a;->e:Lo2/a;

    iget-object v3, v2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v3}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    div-float/2addr v1, v3

    iget-object v3, v0, Ln2/a;->c:Ly2/a;

    iget-object v3, v3, Ly2/a;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v7, v2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v7}, Landroid/util/SizeF;->getHeight()F

    move-result v7

    div-float/2addr v3, v7

    iget-object v7, v0, Ln2/a;->c:Ly2/a;

    iget-object v7, v7, Ly2/a;->b:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->right:I

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v7

    int-to-float v7, v8

    iget-object v8, v2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v8}, Landroid/util/SizeF;->getWidth()F

    move-result v8

    div-float/2addr v7, v8

    iget-object v8, v0, Ln2/a;->c:Ly2/a;

    iget-object v8, v8, Ly2/a;->b:Landroid/graphics/Rect;

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v8

    int-to-float v8, v10

    iget-object v10, v2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v10}, Landroid/util/SizeF;->getHeight()F

    move-result v10

    div-float/2addr v8, v10

    iget-object v10, v0, Ln2/a;->c:Ly2/a;

    iget-object v10, v10, Ly2/a;->c:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget-object v11, v2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v11}, Landroid/util/SizeF;->getWidth()F

    move-result v11

    div-float/2addr v10, v11

    iget-object v11, v0, Ln2/a;->c:Ly2/a;

    iget-object v11, v11, Ly2/a;->c:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    iget-object v12, v2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v12}, Landroid/util/SizeF;->getHeight()F

    move-result v12

    div-float/2addr v11, v12

    iget-object v12, v0, Ln2/a;->c:Ly2/a;

    iget-object v12, v12, Ly2/a;->c:Landroid/graphics/Rect;

    iget v13, v12, Landroid/graphics/Rect;->right:I

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v12

    int-to-float v12, v13

    iget-object v13, v2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v13}, Landroid/util/SizeF;->getWidth()F

    move-result v13

    div-float/2addr v12, v13

    iget-object v13, v0, Ln2/a;->c:Ly2/a;

    iget-object v13, v13, Ly2/a;->c:Landroid/graphics/Rect;

    iget v14, v13, Landroid/graphics/Rect;->bottom:I

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v13

    int-to-float v13, v14

    iget-object v14, v2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v14}, Landroid/util/SizeF;->getHeight()F

    move-result v14

    div-float/2addr v13, v14

    iget v14, v0, Lu2/a;->C:F

    iget v15, v0, Lu2/a;->D:F

    move-object/from16 v16, v2

    iget v2, v0, Lu2/a;->E:F

    move-object/from16 v17, v9

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v18, v4

    const-string v4, "getRainSplashOnIcons: Left icon height : "

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " width : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " x : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "  y:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " \nRight icon height :"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "  width : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "  x : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "  y: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " nowbar left : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " nowbartop : "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "  nowBar width "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v5, v2, v8}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    cmpl-float v4, v1, v2

    iget-object v5, v0, Lu2/a;->y:[Ljava/lang/Float;

    const-string v9, "iconSplash"

    const/16 v14, 0x64

    if-ltz v4, :cond_a

    cmpl-float v4, v3, v2

    if-gez v4, :cond_b

    :cond_a
    cmpl-float v4, v10, v2

    if-ltz v4, :cond_12

    cmpl-float v2, v11, v2

    if-ltz v2, :cond_12

    :cond_b
    iget-object v2, v0, Ln2/a;->c:Ly2/a;

    iget v4, v2, Ly2/a;->h:I

    if-eqz v4, :cond_12

    iget v4, v2, Ly2/a;->f:I

    iget v2, v2, Ly2/a;->i:I

    if-ne v4, v2, :cond_12

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/high16 v4, 0x40800000    # 4.0f

    div-float v19, v7, v4

    div-float v4, v12, v4

    new-instance v13, Ljava/util/Random;

    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    move/from16 v20, v19

    const/4 v8, 0x0

    :goto_4
    const v21, 0x3c23d70a    # 0.01f

    const/4 v15, 0x4

    if-ge v8, v15, :cond_d

    new-instance v15, Ly2/b;

    add-float v22, v1, v20

    move/from16 v23, v1

    add-float v1, v22, v21

    invoke-virtual {v13, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v21, 0x41200000    # 10.0f

    div-float v0, v0, v21

    invoke-direct {v15, v1, v3, v0}, Ly2/b;-><init>(FFF)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    int-to-float v1, v0

    mul-float v1, v1, v19

    sub-float v0, v7, v1

    cmpg-float v0, v20, v0

    if-gez v0, :cond_c

    add-float v20, v20, v19

    :cond_c
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    goto :goto_4

    :cond_d
    move v1, v4

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v15, :cond_f

    new-instance v3, Ly2/b;

    add-float v7, v10, v1

    add-float v7, v7, v21

    invoke-virtual {v13, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v19, 0x41200000    # 10.0f

    div-float v8, v8, v19

    invoke-direct {v3, v7, v11, v8}, Ly2/b;-><init>(FFF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    int-to-float v7, v3

    mul-float/2addr v7, v4

    sub-float v3, v12, v7

    cmpg-float v3, v1, v3

    if-gez v3, :cond_e

    add-float/2addr v1, v4

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v3, v18

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ly2/b;

    add-int/lit8 v4, v1, 0x1

    iget v7, v2, Ly2/b;->a:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v1

    add-int/lit8 v7, v1, 0x2

    iget v8, v2, Ly2/b;->b:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v4

    add-int/lit8 v1, v1, 0x3

    const v4, 0x3e4ccccd    # 0.2f

    iget v2, v2, Ly2/b;->c:F

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v7

    const/16 v2, 0x18

    if-lt v1, v2, :cond_10

    goto :goto_7

    :cond_10
    move-object/from16 v18, v3

    goto :goto_6

    :cond_11
    move-object/from16 v3, v18

    :goto_7
    invoke-virtual/range {v17 .. v17}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    invoke-virtual {v0, v9, v1}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    goto :goto_8

    :cond_12
    move-object/from16 v3, v18

    invoke-virtual/range {v17 .. v17}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    :goto_8
    invoke-virtual/range {v17 .. v17}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    invoke-static {v5}, Lr3/h;->t0([Ljava/lang/Float;)[F

    move-result-object v1

    const-string v2, "iconBoundary"

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    move-object/from16 v0, p0

    iget v1, v0, Lu2/a;->C:F

    float-to-int v2, v1

    iget-object v4, v0, Lu2/a;->z:[Ljava/lang/Float;

    const-string v5, "nowBarSplash"

    if-eqz v2, :cond_17

    iget v2, v0, Lu2/a;->E:F

    float-to-int v2, v2

    if-eqz v2, :cond_17

    iget-object v2, v0, Ln2/a;->c:Ly2/a;

    iget v2, v2, Ly2/a;->h:I

    if-eqz v2, :cond_17

    move-object/from16 v2, v16

    iget-object v7, v2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v7}, Landroid/util/SizeF;->getWidth()F

    move-result v7

    div-float/2addr v1, v7

    iget v7, v0, Lu2/a;->D:F

    iget-object v8, v2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v8}, Landroid/util/SizeF;->getHeight()F

    move-result v8

    div-float/2addr v7, v8

    iget v0, v0, Lu2/a;->E:F

    iget-object v2, v2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    div-float/2addr v0, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/high16 v8, 0x41000000    # 8.0f

    div-float v8, v0, v8

    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    move v11, v8

    const/4 v10, 0x0

    :goto_9
    const/16 v12, 0x8

    if-ge v10, v12, :cond_14

    new-instance v12, Ly2/b;

    add-float v13, v1, v11

    invoke-virtual {v9, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x41200000    # 10.0f

    div-float v15, v15, v16

    invoke-direct {v12, v13, v7, v15}, Ly2/b;-><init>(FFF)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x2

    int-to-float v13, v12

    mul-float/2addr v13, v8

    sub-float v13, v0, v13

    cmpg-float v13, v11, v13

    if-gez v13, :cond_13

    add-float/2addr v11, v8

    :cond_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ly2/b;

    add-int/lit8 v6, v2, 0x1

    iget v7, v1, Ly2/b;->a:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v4, v2

    add-int/lit8 v7, v2, 0x2

    iget v8, v1, Ly2/b;->b:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v6

    add-int/lit8 v2, v2, 0x3

    iget v1, v1, Ly2/b;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v7

    const/16 v1, 0x18

    if-lt v2, v1, :cond_15

    :cond_16
    invoke-virtual/range {v17 .. v17}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    goto :goto_a

    :cond_17
    invoke-virtual/range {v17 .. v17}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    :goto_a
    invoke-virtual/range {v17 .. v17}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    invoke-static {v4}, Lr3/h;->t0([Ljava/lang/Float;)[F

    move-result-object v1

    const-string v2, "nowBarBoundary"

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    return-void
.end method

.method public final o()V
    .locals 4

    iget v0, p0, Lu2/a;->h:F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fadeIn "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "RainEffect"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu2/a;->o:Z

    iput-boolean v1, p0, Lu2/a;->r:Z

    const/4 v0, 0x0

    iput v0, p0, Lu2/a;->q:F

    iput v0, p0, Lu2/a;->p:F

    return-void
.end method

.method public final p(FFI)V
    .locals 2

    iget-object p0, p0, Lu2/a;->d:Lu2/b;

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    const-string v1, "rainDropSize"

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    const-string v0, "rainDepth"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    const-string v0, "rainGlassEffect"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    const-string v0, "foregroundIcon"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    const-string v0, "rainSpeed"

    invoke-virtual {p1, v0, p2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    const-string p2, "rainVisible"

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p0

    const-string p1, "dripSize"

    invoke-virtual {p0, p1, p3}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    return-void
.end method

.method public final q(FFI)V
    .locals 2

    iget-object p0, p0, Lu2/a;->d:Lu2/b;

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    const-string v1, "rainDropSize"

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    const-string v0, "rainDepth"

    invoke-virtual {p1, v0, p3}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    const-string p3, "rainGlassEffect"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    const-string p3, "foregroundIcon"

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    const-string p3, "rainSpeed"

    invoke-virtual {p1, p3, p2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p0

    const-string p1, "rainVisible"

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method

.method public final r()V
    .locals 10

    iget-object v0, p0, Lu2/a;->f:Lo2/b;

    iget-object v1, v0, Lo2/b;->d:Landroid/graphics/Rect;

    iget-boolean v2, v0, Lo2/b;->c:Z

    iget-object v3, p0, Lu2/a;->d:Lu2/b;

    iget-boolean v4, v3, Lu2/b;->e:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateTextureUniforms FG Bounds: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hasObject: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isIndoorRain: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "RainEffect"

    invoke-static {v5, v1, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lo2/b;->b:Landroid/graphics/Bitmap;

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {v3}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v6

    new-instance v7, Landroid/graphics/BitmapShader;

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v7, v1, v8, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v4}, Landroid/graphics/BitmapShader;->setFilterMode(I)V

    const-string v1, "foreground"

    invoke-virtual {v6, v1, v7}, Landroid/graphics/RuntimeShader;->setInputBuffer(Ljava/lang/String;Landroid/graphics/BitmapShader;)V

    :cond_0
    iget-object v1, v0, Lo2/b;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const-string v8, "updateTextureUniforms BG Size: "

    const-string v9, "|"

    invoke-static {v8, v9, v6, v7}, LB/a;->m(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v5

    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v1, v7, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v6, v4}, Landroid/graphics/BitmapShader;->setFilterMode(I)V

    const-string v1, "background"

    invoke-virtual {v5, v1, v6}, Landroid/graphics/RuntimeShader;->setInputBuffer(Ljava/lang/String;Landroid/graphics/BitmapShader;)V

    :cond_1
    iget-object v0, v0, Lo2/b;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v3}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v1

    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v0, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    const-string v0, "blurredBackground"

    invoke-virtual {v1, v0, v4}, Landroid/graphics/RuntimeShader;->setInputBuffer(Ljava/lang/String;Landroid/graphics/BitmapShader;)V

    :cond_2
    const v0, 0x3f19999a    # 0.6f

    iget-boolean v1, v3, Lu2/b;->e:Z

    if-eqz v1, :cond_3

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p0, v1, v0, v2}, Lu2/a;->p(FFI)V

    goto :goto_0

    :cond_3
    const/high16 v1, 0x42820000    # 65.0f

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lu2/a;->q(FFI)V

    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "RainEffect"

    return-object p0
.end method
