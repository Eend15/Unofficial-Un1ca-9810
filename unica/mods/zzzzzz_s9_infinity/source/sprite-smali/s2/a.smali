.class public final Ls2/a;
.super Ln2/b;
.source "SourceFile"


# instance fields
.field public final c:Ls2/b;

.field public final d:Lo2/a;

.field public final e:Lo2/b;

.field public final f:Landroid/graphics/Paint;

.field public g:F

.field public h:F

.field public i:Z

.field public j:Z

.field public k:F

.field public l:F

.field public m:Z

.field public n:F

.field public o:F

.field public final p:F

.field public final q:F

.field public final r:F


# direct methods
.method public constructor <init>(Ls2/b;Lo2/a;Lo2/b;Lh2/b;)V
    .locals 2

    invoke-direct {p0, p2}, Ln2/b;-><init>(Lo2/a;)V

    iput-object p1, p0, Ls2/a;->c:Ls2/b;

    iput-object p2, p0, Ls2/a;->d:Lo2/a;

    iput-object p3, p0, Ls2/a;->e:Lo2/b;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput-object v0, p0, Ls2/a;->f:Landroid/graphics/Paint;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ls2/a;->i:Z

    iput-boolean p1, p0, Ls2/a;->j:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ls2/a;->o:F

    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Ls2/a;->p:F

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Ls2/a;->q:F

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Ls2/a;->r:F

    :try_start_0
    iget-object v0, p3, Lo2/b;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    const/high16 v1, 0x41000000    # 8.0f

    float-to-int v1, v1

    invoke-static {p1, v1}, Lcom/samsung/android/wallpaper/live/weather/effects/utils/BlurUtil;->a(Landroid/graphics/Bitmap;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p1

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iput-object v0, p3, Lo2/b;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Ls2/a;->n()V

    iget-object p1, p2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {p0, p1}, Ls2/a;->m(Landroid/util/SizeF;)V

    iget p1, p2, Lo2/a;->b:I

    invoke-virtual {p0, p1}, Ls2/a;->a(I)I

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ls2/a;->i(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FogEffect"

    invoke-virtual {p4, p1, p0}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    const-string v0, "FogEffect"

    invoke-virtual {p0, p1, v0}, Ln2/b;->j(ILjava/lang/String;)I

    move-result p1

    iget-object p0, p0, Ls2/a;->c:Ls2/b;

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

    iget-object p0, p0, Ls2/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public final c()V
    .locals 4

    iget v0, p0, Ls2/a;->g:F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFadeOut "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FogEffect"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Ls2/a;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls2/a;->m:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ls2/a;->o:F

    const/4 v0, 0x0

    iput v0, p0, Ls2/a;->n:F

    return-void
.end method

.method public final e()V
    .locals 4

    iget v0, p0, Ls2/a;->g:F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reset runTime "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FogEffect"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls2/a;->i:Z

    iput-boolean v0, p0, Ls2/a;->j:Z

    const/4 v0, 0x0

    iput v0, p0, Ls2/a;->l:F

    iput v0, p0, Ls2/a;->k:F

    iput-boolean v1, p0, Ls2/a;->m:Z

    iget v0, p0, Ls2/a;->g:F

    iput v0, p0, Ls2/a;->h:F

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 4

    iget v0, p0, Ls2/a;->g:F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reset runTime "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FogEffect"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls2/a;->i:Z

    iput-boolean v0, p0, Ls2/a;->j:Z

    const/4 v0, 0x0

    iput v0, p0, Ls2/a;->l:F

    iput v0, p0, Ls2/a;->k:F

    iput-boolean v1, p0, Ls2/a;->m:Z

    iput v0, p0, Ls2/a;->g:F

    iput v0, p0, Ls2/a;->h:F

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

    const-string v2, "FogEffect"

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Ls2/a;->d:Lo2/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {p0, p1}, Ls2/a;->m(Landroid/util/SizeF;)V

    return-void
.end method

.method public final i(J)V
    .locals 8

    iget-boolean v0, p0, Ls2/a;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Ls2/a;->g:F

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "First Update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FogEffect"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Ls2/a;->h:F

    iput v0, p0, Ls2/a;->g:F

    iput-boolean v1, p0, Ls2/a;->i:Z

    :cond_0
    iget-boolean v0, p0, Ls2/a;->j:Z

    iget v2, p0, Ls2/a;->p:F

    const v3, 0x3f666666    # 0.9f

    const v4, 0x3a83126f    # 0.001f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    iget v0, p0, Ls2/a;->k:F

    long-to-float p1, p1

    mul-float/2addr p1, v4

    mul-float/2addr v3, p1

    add-float/2addr v3, v0

    iput v3, p0, Ls2/a;->k:F

    cmpg-float p2, v3, v6

    if-gez p2, :cond_1

    iget p2, p0, Ls2/a;->l:F

    div-float v0, v6, v2

    add-float/2addr v0, p2

    iput v0, p0, Ls2/a;->l:F

    iget p2, p0, Ls2/a;->g:F

    invoke-static {p1, v7, v0, p2}, LB/a;->f(FFFF)F

    move-result p1

    iput p1, p0, Ls2/a;->g:F

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Ls2/a;->j:Z

    iput v5, p0, Ls2/a;->k:F

    iput v5, p0, Ls2/a;->l:F

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Ls2/a;->m:Z

    if-eqz v0, :cond_4

    iget v0, p0, Ls2/a;->n:F

    long-to-float p1, p1

    mul-float/2addr p1, v4

    mul-float/2addr v3, p1

    add-float/2addr v3, v0

    iput v3, p0, Ls2/a;->n:F

    cmpg-float p2, v3, v6

    if-gez p2, :cond_3

    iget p2, p0, Ls2/a;->o:F

    div-float v0, v6, v2

    sub-float/2addr p2, v0

    iput p2, p0, Ls2/a;->o:F

    iget v0, p0, Ls2/a;->g:F

    invoke-static {p1, v7, p2, v0}, LB/a;->f(FFFF)F

    move-result p1

    iput p1, p0, Ls2/a;->g:F

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Ls2/a;->m:Z

    iput v5, p0, Ls2/a;->n:F

    iput v6, p0, Ls2/a;->o:F

    goto :goto_0

    :cond_4
    iget v0, p0, Ls2/a;->g:F

    long-to-float p1, p1

    invoke-static {p1, v4, v7, v0}, LB/a;->f(FFFF)F

    move-result p1

    iput p1, p0, Ls2/a;->g:F

    :goto_0
    iget p1, p0, Ls2/a;->g:F

    const/high16 p2, 0x42900000    # 72.0f

    rem-float v0, p1, p2

    const/high16 v1, 0x42840000    # 66.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    goto :goto_1

    :cond_5
    cmpl-float v1, v0, v7

    if-lez v1, :cond_6

    const/high16 v1, 0x41000000    # 8.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    move v6, v7

    goto :goto_1

    :cond_6
    cmpl-float v1, v0, v5

    if-lez v1, :cond_7

    cmpg-float v0, v0, v7

    if-gez v0, :cond_7

    const/high16 v6, 0x40400000    # 3.0f

    goto :goto_1

    :cond_7
    move v6, v5

    :goto_1
    cmpl-float p1, p1, p2

    if-lez p1, :cond_8

    iput v5, p0, Ls2/a;->g:F

    :cond_8
    iget-object p1, p0, Ls2/a;->c:Ls2/b;

    invoke-virtual {p1}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p2

    const-string v0, "resetFog"

    invoke-virtual {p2, v0, v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    invoke-virtual {p1}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p2

    iget v0, p0, Ls2/a;->g:F

    const/high16 v1, 0x40c00000    # 6.0f

    rem-float/2addr v0, v1

    const-string v1, "resetTime"

    invoke-virtual {p2, v1, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    invoke-virtual {p1}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    iget p0, p0, Ls2/a;->g:F

    mul-float/2addr p0, v7

    const-string p2, "timeBackground"

    invoke-virtual {p1, p2, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method

.method public final k(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public final l(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public final m(Landroid/util/SizeF;)V
    .locals 9

    iget-object v0, p0, Ls2/a;->e:Lo2/b;

    iget-object v0, v0, Lo2/b;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Ls2/a;->c:Ls2/b;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v5, v0, v3

    div-float v6, v4, v2

    div-float v7, v4, v0

    div-float v8, v2, v3

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

    mul-float/2addr v3, v5

    sub-float/2addr v0, v3

    div-float/2addr v0, v2

    invoke-virtual {v1}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v2

    const-string v3, "uvOffsetBgd"

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    invoke-virtual {v1}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    const-string v2, "uvScaleBgd"

    invoke-virtual {v0, v2, v5, v5}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "FogEffect"

    const-string v3, "adjustCropping, background is null"

    invoke-static {v2, v3, v0}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v1}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    const-string v4, "screenSize"

    invoke-virtual {v0, v4, v2, v3}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    invoke-virtual {v1}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    const-string v2, "screenAspectRatio"

    invoke-static {p1}, Lcom/google/android/torus/utils/extensions/SizeExtKt;->getAspectRatio(Landroid/util/SizeF;)F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    invoke-virtual {v1}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    iget p0, p0, Ln2/b;->b:I

    const-string v0, "deviceAndState"

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    return-void
.end method

.method public final n()V
    .locals 8

    iget-object v0, p0, Ls2/a;->e:Lo2/b;

    iget-object v1, v0, Lo2/b;->a:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const-string v3, "FogEffect"

    iget-object v4, p0, Ls2/a;->c:Ls2/b;

    if-eqz v1, :cond_0

    invoke-virtual {v4}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v5

    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v1, v7, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/graphics/BitmapShader;->setFilterMode(I)V

    const-string v1, "background"

    invoke-virtual {v5, v1, v6}, Landroid/graphics/RuntimeShader;->setInputBuffer(Ljava/lang/String;Landroid/graphics/BitmapShader;)V

    goto :goto_0

    :cond_0
    const-string v1, "updateTextureUniforms, background is null"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v5}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, v0, Lo2/b;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v4}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v1

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    const-string v0, "blurredBackground"

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RuntimeShader;->setInputBuffer(Ljava/lang/String;Landroid/graphics/BitmapShader;)V

    goto :goto_1

    :cond_1
    const-string v0, "updateTextureUniforms, blurredBackground is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v4}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    const-string v1, "densityBGFactor"

    iget v2, p0, Ls2/a;->q:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    invoke-virtual {v4}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    const-string v1, "speedBGFactor"

    iget p0, p0, Ls2/a;->r:F

    invoke-virtual {v0, v1, p0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "FogEffect"

    return-object p0
.end method
