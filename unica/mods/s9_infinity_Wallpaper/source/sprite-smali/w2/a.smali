.class public final Lw2/a;
.super Ln2/a;
.source "SourceFile"


# static fields
.field public static final E:[Ljava/lang/Float;


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public final D:Landroid/util/SizeF;

.field public final d:Ls2/b;

.field public final e:Lo2/a;

.field public final f:Lo2/b;

.field public final g:Landroid/graphics/Paint;

.field public h:F

.field public i:F

.field public j:Z

.field public k:Z

.field public l:F

.field public m:F

.field public n:Z

.field public o:F

.field public p:F

.field public final q:F

.field public final r:[Ljava/lang/Float;

.field public s:F

.field public t:Z

.field public final u:[Ljava/lang/Float;

.field public final v:[Ljava/lang/Float;

.field public w:I

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v0, -0x41000000    # -0.5f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lw2/a;->E:[Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ls2/b;Lo2/a;Lo2/b;Lh2/b;)V
    .locals 4

    invoke-direct {p0, p2}, Ln2/a;-><init>(Lo2/a;)V

    iput-object p1, p0, Lw2/a;->d:Ls2/b;

    iput-object p2, p0, Lw2/a;->e:Lo2/a;

    iput-object p3, p0, Lw2/a;->f:Lo2/b;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput-object p2, p0, Lw2/a;->g:Landroid/graphics/Paint;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lw2/a;->j:Z

    iput-boolean p1, p0, Lw2/a;->k:Z

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lw2/a;->p:F

    const/high16 p2, 0x42f00000    # 120.0f

    iput p2, p0, Lw2/a;->q:F

    const/16 p2, 0x64

    new-array p3, p2, [Ljava/lang/Float;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lw2/a;->r:[Ljava/lang/Float;

    const/16 p2, 0x18

    new-array p3, p2, [Ljava/lang/Float;

    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lw2/a;->u:[Ljava/lang/Float;

    const/16 p2, 0x3c

    new-array p3, p2, [Ljava/lang/Float;

    :goto_2
    if-ge v0, p2, :cond_2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iput-object p3, p0, Lw2/a;->v:[Ljava/lang/Float;

    const/4 p2, -0x1

    iput p2, p0, Lw2/a;->w:I

    iput-boolean p1, p0, Lw2/a;->y:Z

    iget-object p1, p0, Lw2/a;->e:Lo2/a;

    iget-object p1, p1, Lo2/a;->a:Landroid/util/SizeF;

    iput-object p1, p0, Lw2/a;->D:Landroid/util/SizeF;

    :try_start_0
    invoke-virtual {p0}, Lw2/a;->q()V

    iget-object p1, p0, Lw2/a;->e:Lo2/a;

    iget-object p1, p1, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {p0, p1}, Lw2/a;->n(Landroid/util/SizeF;)V

    iget-object p1, p0, Lw2/a;->e:Lo2/a;

    iget p1, p1, Lo2/a;->b:I

    invoke-virtual {p0, p1}, Lw2/a;->a(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SnowEffect"

    invoke-virtual {p4, p1, p0}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    const-string v0, "SnowEffect"

    invoke-virtual {p0, p1, v0}, Ln2/b;->j(ILjava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lw2/a;->d:Ls2/b;

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

    iget-object p0, p0, Lw2/a;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw2/a;->k:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lw2/a;->n:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lw2/a;->p:F

    const/4 v1, 0x0

    iput v1, p0, Lw2/a;->o:F

    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "SnowEffect"

    const-string v1, "onFadeOut"

    invoke-static {v0, v1, p0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final e()V
    .locals 4

    iget v0, p0, Lw2/a;->i:F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pause runtime "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SnowEffect"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw2/a;->j:Z

    iput-boolean v0, p0, Lw2/a;->k:Z

    iput-boolean v1, p0, Lw2/a;->n:Z

    const/4 v0, 0x0

    iput v0, p0, Lw2/a;->m:F

    iput v0, p0, Lw2/a;->l:F

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "fadeIn"

    invoke-static {v3, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lw2/a;->n:Z

    iget v0, p0, Lw2/a;->i:F

    iput v0, p0, Lw2/a;->h:F

    return-void
.end method

.method public final f()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SnowEffect"

    const-string v2, "release effect"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lw2/a;->f:Lo2/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lo2/b;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lo2/b;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final g()V
    .locals 5

    iget v0, p0, Lw2/a;->i:F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reset runtime "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SnowEffect"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw2/a;->j:Z

    iput-boolean v0, p0, Lw2/a;->k:Z

    iput-boolean v1, p0, Lw2/a;->n:Z

    const/4 v0, 0x0

    iput v0, p0, Lw2/a;->m:F

    iput v0, p0, Lw2/a;->l:F

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "fadeIn"

    invoke-static {v3, v4, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lw2/a;->n:Z

    iput v0, p0, Lw2/a;->h:F

    iput v0, p0, Lw2/a;->s:F

    iput v0, p0, Lw2/a;->i:F

    iget-object p0, p0, Lw2/a;->d:Ls2/b;

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p0

    sget-object v0, Lw2/a;->E:[Ljava/lang/Float;

    sget-object v1, LI3/e;->d:LI3/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LI3/e;->e:LI3/a;

    invoke-virtual {v1}, LI3/a;->a()Ljava/util/Random;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v1, "angle"

    invoke-virtual {p0, v1, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

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

    const-string v2, "SnowEffect"

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lw2/a;->e:Lo2/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {p0, p1}, Lw2/a;->n(Landroid/util/SizeF;)V

    return-void
.end method

.method public final i(J)V
    .locals 8

    iget-boolean v0, p0, Lw2/a;->j:Z

    const-string v1, "startTime"

    iget-object v2, p0, Lw2/a;->d:Ls2/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lw2/a;->h:F

    iput v0, p0, Lw2/a;->i:F

    iput-boolean v4, p0, Lw2/a;->j:Z

    iget v0, p0, Lw2/a;->s:F

    cmpg-float v0, v0, v3

    if-nez v0, :cond_0

    invoke-virtual {v2}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    iget v5, p0, Lw2/a;->s:F

    invoke-virtual {v0, v1, v5}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_0
    iget v0, p0, Lw2/a;->i:F

    float-to-int v5, v0

    rem-int/lit8 v5, v5, 0xf

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v5, :cond_1

    cmpl-float v0, v0, v7

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lw2/a;->t:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lw2/a;->s:F

    const/high16 v5, 0x41700000    # 15.0f

    add-float/2addr v0, v5

    iput v0, p0, Lw2/a;->s:F

    invoke-virtual {v2}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    iget v5, p0, Lw2/a;->s:F

    invoke-virtual {v0, v1, v5}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    iput-boolean v4, p0, Lw2/a;->t:Z

    iput-boolean v6, p0, Lw2/a;->y:Z

    iput-boolean v6, p0, Lw2/a;->z:Z

    goto :goto_0

    :cond_1
    if-ne v5, v6, :cond_2

    iput-boolean v6, p0, Lw2/a;->t:Z

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lw2/a;->k:Z

    iget v1, p0, Lw2/a;->q:F

    const v5, 0x3a83126f    # 0.001f

    if-eqz v0, :cond_4

    iget v0, p0, Lw2/a;->l:F

    long-to-float p1, p1

    mul-float/2addr p1, v5

    add-float/2addr v0, p1

    iput v0, p0, Lw2/a;->l:F

    cmpg-float p2, v0, v7

    if-gez p2, :cond_3

    iget p2, p0, Lw2/a;->m:F

    div-float/2addr v7, v1

    add-float/2addr v7, p2

    iput v7, p0, Lw2/a;->m:F

    iget p2, p0, Lw2/a;->i:F

    mul-float/2addr p1, v7

    add-float/2addr p1, p2

    iput p1, p0, Lw2/a;->i:F

    goto :goto_1

    :cond_3
    iput-boolean v4, p0, Lw2/a;->k:Z

    iput v3, p0, Lw2/a;->l:F

    iput v3, p0, Lw2/a;->m:F

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lw2/a;->n:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lw2/a;->o:F

    long-to-float p1, p1

    mul-float/2addr p1, v5

    add-float/2addr v0, p1

    iput v0, p0, Lw2/a;->o:F

    cmpg-float p2, v0, v7

    if-gez p2, :cond_5

    iget p2, p0, Lw2/a;->p:F

    div-float/2addr v7, v1

    sub-float/2addr p2, v7

    iput p2, p0, Lw2/a;->p:F

    iget v0, p0, Lw2/a;->i:F

    mul-float/2addr p1, p2

    add-float/2addr p1, v0

    iput p1, p0, Lw2/a;->i:F

    goto :goto_1

    :cond_5
    iput-boolean v4, p0, Lw2/a;->n:Z

    iput v3, p0, Lw2/a;->o:F

    iput v7, p0, Lw2/a;->p:F

    goto :goto_1

    :cond_6
    iget v0, p0, Lw2/a;->i:F

    long-to-float p1, p1

    mul-float/2addr p1, v5

    add-float/2addr p1, v0

    iput p1, p0, Lw2/a;->i:F

    :goto_1
    invoke-virtual {v2}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    const-string p2, "time"

    iget v0, p0, Lw2/a;->i:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    iget-object p1, p0, Ln2/a;->c:Ly2/a;

    iget p2, p1, Ly2/a;->h:I

    iget v0, p0, Lw2/a;->w:I

    if-eq p2, v0, :cond_7

    iget v0, p0, Lw2/a;->i:F

    float-to-int v0, v0

    rem-int/lit8 v0, v0, 0xf

    const/16 v1, 0x9

    if-lt v0, v1, :cond_7

    iput p2, p0, Lw2/a;->w:I

    iput-boolean v6, p0, Lw2/a;->x:Z

    :cond_7
    iget-boolean p2, p0, Lw2/a;->x:Z

    if-nez p2, :cond_8

    iget-boolean p2, p0, Lw2/a;->z:Z

    if-nez p2, :cond_8

    iget-boolean p1, p1, Ly2/a;->g:Z

    if-eqz p1, :cond_9

    :cond_8
    invoke-virtual {p0}, Lw2/a;->o()V

    iput-boolean v4, p0, Lw2/a;->x:Z

    iput-boolean v4, p0, Lw2/a;->z:Z

    iget-object p0, p0, Ln2/a;->c:Ly2/a;

    iput-boolean v4, p0, Ly2/a;->g:Z

    :cond_9
    return-void
.end method

.method public final k(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SnowEffect"

    const-string v2, ": updateWatermark"

    invoke-static {v1, v2, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lw2/a;->f:Lo2/b;

    iput-object p1, v0, Lo2/b;->b:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lw2/a;->d:Ls2/b;

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
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0, v2, v1}, Lw2/a;->p(FII)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_2

    const/4 p1, 0x3

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0, p1, v2}, Lw2/a;->p(FII)V

    :cond_2
    return-void
.end method

.method public final m(Ly2/a;)V
    .locals 3

    const-string v0, "blockTouchAreaData"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Ly2/a;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lw2/a;->A:F

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lw2/a;->B:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lw2/a;->C:F

    iput-object p1, p0, Ln2/a;->c:Ly2/a;

    return-void
.end method

.method public final n(Landroid/util/SizeF;)V
    .locals 14

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    iget-object v2, p0, Lw2/a;->f:Lo2/b;

    iget-boolean v3, v2, Lo2/b;->c:Z

    iget-object v4, v2, Lo2/b;->d:Landroid/graphics/Rect;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "adjustCropping Surface Size Width: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Height: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " hasObject: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " Fg Bound: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "SnowEffect"

    invoke-static {v4, v0, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v2, Lo2/b;->b:Landroid/graphics/Bitmap;

    const/high16 v3, 0x40000000    # 2.0f

    const-string v5, "|"

    iget-object v6, p0, Lw2/a;->d:Ls2/b;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v7

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v10, v0, v8

    div-float v11, v9, v7

    div-float v12, v9, v0

    div-float v13, v7, v8

    cmpl-float v12, v12, v13

    if-lez v12, :cond_0

    goto :goto_0

    :cond_0
    move v10, v11

    :goto_0
    mul-float/2addr v7, v10

    sub-float/2addr v9, v7

    div-float/2addr v9, v3

    mul-float/2addr v8, v10

    sub-float/2addr v0, v8

    div-float/2addr v0, v3

    invoke-virtual {v6}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v7

    const-string v8, "uvOffsetFgd"

    invoke-virtual {v7, v8, v9, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    invoke-virtual {v6}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v7

    const-string v8, "uvScaleFgd"

    invoke-virtual {v7, v8, v10, v10}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "foreground offset Left|Top: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " \nforeground scale H|V: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v2, Lo2/b;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v9, v0, v7

    div-float v10, v8, v2

    div-float v11, v8, v0

    div-float v12, v2, v7

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    goto :goto_1

    :cond_2
    move v9, v10

    :goto_1
    mul-float/2addr v2, v9

    sub-float/2addr v8, v2

    div-float/2addr v8, v3

    mul-float/2addr v7, v9

    sub-float/2addr v0, v7

    div-float/2addr v0, v3

    invoke-virtual {v6}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v2

    const-string v3, "uvOffsetBgd"

    invoke-virtual {v2, v3, v8, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    invoke-virtual {v6}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v2

    const-string v3, "uvScaleBgd"

    invoke-virtual {v2, v3, v9, v9}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "background offset Left|Top: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " \nbackground scale H|V: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v6}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    const-string v3, "screenSize"

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    invoke-virtual {v6}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    const-string v1, "screenAspectRatio"

    invoke-static {p1}, Lcom/google/android/torus/utils/extensions/SizeExtKt;->getAspectRatio(Landroid/util/SizeF;)F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    invoke-virtual {v6}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p1

    iget p0, p0, Ln2/b;->b:I

    const-string v0, "deviceAndState"

    invoke-virtual {p1, v0, p0}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    return-void
.end method

.method public final o()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Ln2/a;->c:Ly2/a;

    iget-object v1, v1, Ly2/a;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, v0, Lw2/a;->e:Lo2/a;

    iget-object v3, v2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v3}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    div-float/2addr v1, v3

    iget-object v3, v0, Ln2/a;->c:Ly2/a;

    iget-object v3, v3, Ly2/a;->c:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, v2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v4}, Landroid/util/SizeF;->getWidth()F

    move-result v4

    div-float/2addr v3, v4

    iget-object v4, v0, Ln2/a;->c:Ly2/a;

    iget v5, v4, Ly2/a;->h:I

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-boolean v5, v0, Lw2/a;->y:Z

    if-eqz v5, :cond_0

    iget-object v4, v4, Ly2/a;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v5, v2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v5}, Landroid/util/SizeF;->getHeight()F

    move-result v5

    div-float/2addr v4, v5

    iget-object v5, v0, Ln2/a;->c:Ly2/a;

    iget-object v5, v5, Ly2/a;->c:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v7, v2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v7}, Landroid/util/SizeF;->getHeight()F

    move-result v7

    div-float/2addr v5, v7

    iget-object v7, v0, Ln2/a;->c:Ly2/a;

    iget-object v7, v7, Ly2/a;->a:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iput v7, v0, Lw2/a;->B:F

    goto :goto_0

    :cond_0
    const v4, 0x3f8ccccd    # 1.1f

    iput v4, v0, Lw2/a;->B:F

    iput-boolean v6, v0, Lw2/a;->y:Z

    move v5, v4

    :goto_0
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

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v8

    int-to-float v8, v9

    iget-object v9, v2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v9}, Landroid/util/SizeF;->getHeight()F

    move-result v9

    div-float/2addr v8, v9

    iget-object v9, v0, Ln2/a;->c:Ly2/a;

    iget-object v9, v9, Ly2/a;->c:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v9

    int-to-float v9, v10

    iget-object v10, v2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v10}, Landroid/util/SizeF;->getWidth()F

    move-result v10

    div-float/2addr v9, v10

    iget-object v10, v0, Ln2/a;->c:Ly2/a;

    iget-object v10, v10, Ly2/a;->c:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v10

    int-to-float v10, v11

    iget-object v11, v2, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v11}, Landroid/util/SizeF;->getHeight()F

    move-result v11

    div-float/2addr v10, v11

    iget v11, v0, Lw2/a;->A:F

    iget v12, v0, Lw2/a;->B:F

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "getSnowFlakesOnIcons: Left icon height : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " width : "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " x : "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "  y:"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " \nRight icon height :"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "  width : "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "  x : "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "  y: "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "nowbarleft : "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " nowbartop : "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v10, v6, [Ljava/lang/Object;

    const-string v11, "SnowEffect"

    invoke-static {v11, v8, v10}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x0

    cmpl-float v10, v1, v8

    iget-object v11, v0, Lw2/a;->u:[Ljava/lang/Float;

    const/4 v12, 0x3

    const-string v14, "iconFlake"

    const-string v15, "next(...)"

    const-string v6, "iterator(...)"

    const/high16 v16, 0x41200000    # 10.0f

    const/high16 v17, 0x40400000    # 3.0f

    iget-object v13, v0, Lw2/a;->d:Ls2/b;

    if-ltz v10, :cond_1

    cmpl-float v10, v4, v8

    if-gez v10, :cond_2

    :cond_1
    cmpl-float v10, v3, v8

    if-ltz v10, :cond_9

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_9

    :cond_2
    iget-object v8, v0, Ln2/a;->c:Ly2/a;

    iget v10, v8, Ly2/a;->f:I

    iget v8, v8, Ly2/a;->i:I

    if-ne v10, v8, :cond_9

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v7, v10

    div-float/2addr v9, v10

    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    move-object/from16 v19, v2

    move/from16 v20, v7

    const/4 v2, 0x0

    :goto_1
    const/high16 v21, 0x40200000    # 2.5f

    if-ge v2, v12, :cond_4

    const/4 v12, 0x1

    int-to-float v0, v12

    move-object/from16 v22, v14

    const/16 v12, 0x5a

    invoke-virtual {v10, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    int-to-float v12, v14

    move-object/from16 v23, v13

    const/16 v14, 0xa

    int-to-float v13, v14

    div-float/2addr v12, v13

    add-float/2addr v12, v0

    mul-float v21, v21, v7

    cmpg-float v0, v20, v21

    if-gez v0, :cond_3

    add-float v0, v1, v20

    invoke-static {v4, v12}, Lp4/g;->Y(FF)F

    move-result v13

    sub-float/2addr v0, v13

    const/4 v13, 0x2

    int-to-float v13, v13

    div-float v13, v7, v13

    add-float v20, v13, v20

    goto :goto_2

    :cond_3
    add-float v21, v1, v21

    invoke-static {v4, v12}, Lp4/g;->Y(FF)F

    move-result v0

    sub-float v0, v21, v0

    :goto_2
    invoke-static {v4, v12}, Lp4/g;->w(FF)F

    move-result v13

    mul-float v14, v13, v16

    move-object/from16 v24, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    rsub-int/lit8 v14, v14, 0x64

    const/4 v15, 0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v10, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    int-to-float v14, v14

    div-float v14, v14, v16

    new-instance v15, Ly2/c;

    add-float/2addr v13, v14

    invoke-direct {v15, v0, v14, v13, v12}, Ly2/c;-><init>(FFFF)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v14, v22

    move-object/from16 v13, v23

    move-object/from16 v15, v24

    const/4 v12, 0x3

    goto :goto_1

    :cond_4
    move-object/from16 v23, v13

    move-object/from16 v22, v14

    move-object/from16 v24, v15

    move v2, v9

    move v1, v12

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_6

    const/4 v1, 0x1

    int-to-float v4, v1

    const/16 v1, 0x5a

    invoke-virtual {v10, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v1, v7

    const/16 v7, 0xa

    int-to-float v12, v7

    div-float/2addr v1, v12

    add-float/2addr v1, v4

    mul-float v4, v9, v17

    cmpg-float v4, v2, v4

    if-gez v4, :cond_5

    add-float v4, v3, v2

    invoke-static {v5, v1}, Lp4/g;->Y(FF)F

    move-result v7

    sub-float/2addr v4, v7

    add-float/2addr v2, v9

    goto :goto_4

    :cond_5
    mul-float v4, v9, v21

    add-float/2addr v4, v3

    invoke-static {v5, v1}, Lp4/g;->Y(FF)F

    move-result v7

    sub-float/2addr v4, v7

    :goto_4
    invoke-static {v5, v1}, Lp4/g;->w(FF)F

    move-result v7

    mul-float v12, v7, v16

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    rsub-int/lit8 v12, v12, 0x64

    const/4 v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    int-to-float v12, v12

    div-float v12, v12, v16

    new-instance v13, Ly2/c;

    add-float/2addr v7, v12

    invoke-direct {v13, v4, v12, v7, v1}, Ly2/c;-><init>(FFFF)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    goto :goto_3

    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v3, v24

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ly2/c;

    add-int/lit8 v4, v1, 0x1

    iget v5, v2, Ly2/c;->a:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v11, v1

    add-int/lit8 v5, v1, 0x2

    iget v7, v2, Ly2/c;->b:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v11, v4

    add-int/lit8 v4, v1, 0x3

    iget v7, v2, Ly2/c;->c:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v11, v5

    add-int/lit8 v1, v1, 0x4

    iget v2, v2, Ly2/c;->d:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v11, v4

    const/16 v2, 0x18

    if-lt v1, v2, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v24, v3

    goto :goto_5

    :cond_8
    move-object/from16 v3, v24

    :goto_6
    invoke-virtual/range {v23 .. v23}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    move-object/from16 v2, v22

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    goto :goto_7

    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v23, v13

    move-object v2, v14

    move-object v3, v15

    invoke-virtual/range {v23 .. v23}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    :goto_7
    invoke-virtual/range {v23 .. v23}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    invoke-static {v11}, Lr3/h;->t0([Ljava/lang/Float;)[F

    move-result-object v1

    const-string v2, "iconBoundary"

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    move-object/from16 v0, p0

    iget v1, v0, Lw2/a;->C:F

    float-to-int v1, v1

    iget-object v2, v0, Lw2/a;->v:[Ljava/lang/Float;

    const-string v4, "nowBarFlake"

    if-eqz v1, :cond_e

    iget-object v1, v0, Ln2/a;->c:Ly2/a;

    iget v5, v1, Ly2/a;->f:I

    iget v1, v1, Ly2/a;->i:I

    if-ne v5, v1, :cond_e

    iget v1, v0, Lw2/a;->A:F

    move-object/from16 v5, v19

    iget-object v7, v5, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v7}, Landroid/util/SizeF;->getWidth()F

    move-result v7

    div-float/2addr v1, v7

    iget v7, v0, Lw2/a;->B:F

    iget-object v8, v5, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v8}, Landroid/util/SizeF;->getHeight()F

    move-result v8

    div-float/2addr v7, v8

    iget v0, v0, Lw2/a;->C:F

    iget-object v5, v5, Lo2/a;->a:Landroid/util/SizeF;

    invoke-virtual {v5}, Landroid/util/SizeF;->getWidth()F

    move-result v5

    div-float/2addr v0, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/high16 v8, 0x41900000    # 18.0f

    div-float v8, v0, v8

    const/4 v9, 0x3

    int-to-float v9, v9

    mul-float/2addr v9, v8

    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    move v11, v9

    const/4 v9, 0x0

    :goto_8
    const/16 v12, 0xf

    if-ge v9, v12, :cond_b

    const/4 v12, 0x1

    int-to-float v13, v12

    const/16 v12, 0x5a

    invoke-virtual {v10, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    int-to-float v14, v14

    const/16 v15, 0xa

    int-to-float v12, v15

    div-float/2addr v14, v12

    add-float/2addr v14, v13

    const v12, 0x3f0ccccd    # 0.55f

    add-float/2addr v12, v7

    const/high16 v13, 0x41000000    # 8.0f

    mul-float/2addr v12, v13

    const v13, 0x3e19999a    # 0.15f

    mul-float v18, v14, v13

    const/high16 v19, 0x3f800000    # 1.0f

    add-float v18, v18, v19

    mul-float v12, v12, v18

    move/from16 p0, v14

    float-to-double v13, v12

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    const/high16 v13, 0x3f000000    # 0.5f

    sub-float/2addr v12, v13

    const v13, 0x3d0b4396    # 0.034f

    mul-float/2addr v12, v13

    sub-float v12, v1, v12

    const v13, 0x3e666667    # 0.22500001f

    div-float v13, v13, v18

    sub-float v13, v7, v13

    mul-float v13, v13, v18

    const v14, 0x3e19999a    # 0.15f

    div-float/2addr v13, v14

    add-float v13, v13, v17

    mul-float v14, v13, v16

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v14, v14

    rsub-int/lit8 v14, v14, 0x64

    const/4 v15, 0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v10, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    int-to-float v14, v14

    div-float v14, v14, v16

    new-instance v15, Ly2/c;

    add-float/2addr v12, v11

    add-float/2addr v13, v14

    move/from16 v19, v1

    move/from16 v1, p0

    invoke-direct {v15, v12, v14, v13, v1}, Ly2/c;-><init>(FFFF)V

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    int-to-float v1, v1

    mul-float/2addr v1, v8

    sub-float v1, v0, v1

    cmpg-float v1, v11, v1

    if-gez v1, :cond_a

    add-float/2addr v11, v8

    :cond_a
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v19

    goto :goto_8

    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ly2/c;

    add-int/lit8 v5, v6, 0x1

    iget v7, v1, Ly2/c;->a:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v2, v6

    add-int/lit8 v7, v6, 0x2

    iget v8, v1, Ly2/c;->b:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v2, v5

    add-int/lit8 v5, v6, 0x3

    iget v8, v1, Ly2/c;->c:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v2, v7

    add-int/lit8 v6, v6, 0x4

    iget v1, v1, Ly2/c;->d:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v5

    const/16 v1, 0x3c

    if-lt v6, v1, :cond_c

    :cond_d
    invoke-virtual/range {v23 .. v23}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    goto :goto_9

    :cond_e
    invoke-virtual/range {v23 .. v23}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    :goto_9
    invoke-virtual/range {v23 .. v23}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    invoke-static {v2}, Lr3/h;->t0([Ljava/lang/Float;)[F

    move-result-object v1

    const-string v2, "nowBarBoundary"

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    return-void
.end method

.method public final p(FII)V
    .locals 3

    const-string v0, "updateDensityUniforms bgLayerCount:"

    const-string v1, " fgLayerCount:"

    const-string v2, " speed:"

    invoke-static {p2, v0, p3, v1, v2}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " flakeSize:0.4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SnowEffect"

    invoke-static {v2, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lw2/a;->d:Ls2/b;

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    const-string v1, "bgLayerCount"

    invoke-virtual {v0, v1, p2}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p2

    const-string v0, "fgLayerCount"

    invoke-virtual {p2, v0, p3}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p2

    const-string p3, "speed"

    invoke-virtual {p2, p3, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    invoke-virtual {p0}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object p0

    const-string p1, "flakeSize"

    const p2, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method

.method public final q()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lw2/a;->f:Lo2/b;

    iget-object v2, v1, Lo2/b;->d:Landroid/graphics/Rect;

    iget-boolean v3, v1, Lo2/b;->c:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateTextureUniforms FG Bounds: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hasObject: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "SnowEffect"

    invoke-static {v5, v2, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lo2/b;->b:Landroid/graphics/Bitmap;

    const/4 v4, 0x2

    iget-object v6, v0, Lw2/a;->d:Ls2/b;

    if-eqz v2, :cond_0

    invoke-virtual {v6}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v7

    new-instance v8, Landroid/graphics/BitmapShader;

    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v8, v2, v9, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v4}, Landroid/graphics/BitmapShader;->setFilterMode(I)V

    const-string v2, "foreground"

    invoke-virtual {v7, v2, v8}, Landroid/graphics/RuntimeShader;->setInputBuffer(Ljava/lang/String;Landroid/graphics/BitmapShader;)V

    :cond_0
    iget-object v2, v1, Lo2/b;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const-string v9, "updateTextureUniforms BG Bitmap Size: "

    const-string v10, "|"

    invoke-static {v9, v10, v7, v8}, LB/a;->m(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v7

    new-instance v8, Landroid/graphics/BitmapShader;

    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v8, v2, v9, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v4}, Landroid/graphics/BitmapShader;->setFilterMode(I)V

    const-string v2, "background"

    invoke-virtual {v7, v2, v8}, Landroid/graphics/RuntimeShader;->setInputBuffer(Ljava/lang/String;Landroid/graphics/BitmapShader;)V

    :cond_1
    iget-boolean v2, v1, Lo2/b;->c:Z

    iget-object v7, v1, Lo2/b;->d:Landroid/graphics/Rect;

    iget-object v8, v0, Lw2/a;->r:[Ljava/lang/Float;

    const/high16 v9, 0x40000000    # 2.0f

    const-string v10, "stackPointCount"

    if-eqz v2, :cond_f

    if-eqz v7, :cond_f

    iget-object v1, v1, Lo2/b;->b:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_10

    iget-object v2, v0, Lw2/a;->D:Landroid/util/SizeF;

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v11

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v14, v13, v2

    div-float v15, v12, v11

    div-float v16, v12, v13

    div-float v17, v11, v2

    cmpl-float v16, v16, v17

    if-lez v16, :cond_2

    goto :goto_0

    :cond_2
    move v14, v15

    :goto_0
    mul-float/2addr v11, v14

    sub-float/2addr v12, v11

    div-float/2addr v12, v9

    mul-float/2addr v2, v14

    sub-float/2addr v13, v2

    div-float/2addr v13, v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/16 v11, 0x14

    if-le v2, v11, :cond_e

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v2, v11, :cond_e

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-gt v2, v14, :cond_e

    iget v2, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    if-gt v2, v14, :cond_e

    float-to-int v2, v12

    float-to-int v12, v13

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget v14, v7, Landroid/graphics/Rect;->top:I

    if-ge v14, v12, :cond_3

    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    mul-int/lit8 v16, v2, 0x2

    sub-int v15, v15, v16

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    mul-int/lit8 v17, v12, 0x2

    sub-int v4, v16, v17

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    const/16 v3, 0xa

    if-le v4, v3, :cond_4

    add-int/lit8 v9, v9, -0xa

    :cond_4
    iget v11, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v3

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    invoke-static {v11, v7}, LK/I;->x0(II)LK3/c;

    move-result-object v7

    invoke-static {v7, v3}, LK/I;->t0(LK3/c;I)LK3/a;

    move-result-object v7

    iget v11, v7, LK3/a;->d:I

    iget v3, v7, LK3/a;->e:I

    iget v7, v7, LK3/a;->f:I

    if-lez v7, :cond_5

    if-le v11, v3, :cond_6

    :cond_5
    if-gez v7, :cond_8

    if-gt v3, v11, :cond_8

    :cond_6
    :goto_1
    invoke-static {v11, v14, v9, v1}, Lp4/g;->e(IIILandroid/graphics/Bitmap;)I

    move-result v0

    move-object/from16 v19, v1

    const/16 v1, 0x1e

    if-le v0, v1, :cond_7

    new-instance v1, Lq3/f;

    move/from16 v20, v9

    sub-int v9, v11, v2

    int-to-float v9, v9

    move/from16 v21, v2

    int-to-float v2, v15

    div-float/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sub-int/2addr v0, v12

    int-to-float v0, v0

    int-to-float v9, v4

    div-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move/from16 v21, v2

    move/from16 v20, v9

    :goto_2
    if-eq v11, v3, :cond_8

    add-int/2addr v11, v7

    move-object/from16 v1, v19

    move/from16 v9, v20

    move/from16 v2, v21

    goto :goto_1

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_a

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq3/f;

    iget-object v7, v7, Lq3/f;->e:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lq3/f;

    iget-object v9, v9, Lq3/f;->e:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v9, 0x41200000    # 10.0f

    cmpg-float v7, v7, v9

    if-gez v7, :cond_9

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq3/f;

    iget-object v7, v7, Lq3/f;->e:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lq3/f;

    iget-object v11, v11, Lq3/f;->e:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    sub-float/2addr v7, v11

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v9

    if-gez v7, :cond_9

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v7

    if-eqz v7, :cond_9

    int-to-float v7, v3

    const/16 v11, 0x5a

    invoke-virtual {v0, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-float v11, v11

    const/16 v12, 0xa

    int-to-float v14, v12

    div-float/2addr v11, v14

    add-float/2addr v11, v7

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lq3/f;

    iget-object v7, v7, Lq3/f;->d:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lq3/f;

    iget-object v14, v14, Lq3/f;->e:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    invoke-static {v14, v11}, Lp4/g;->Y(FF)F

    move-result v14

    sub-float/2addr v7, v14

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lq3/f;

    iget-object v14, v14, Lq3/f;->e:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    invoke-static {v14, v11}, Lp4/g;->w(FF)F

    move-result v14

    mul-float v15, v14, v9

    move-object/from16 v18, v13

    float-to-double v12, v15

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    rsub-int/lit8 v12, v12, 0x64

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v9

    new-instance v9, Ly2/c;

    add-float/2addr v14, v12

    invoke-direct {v9, v7, v12, v14, v11}, Ly2/c;-><init>(FFFF)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v18

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lq3/f;

    iget-object v9, v9, Lq3/f;->d:Ljava/lang/Object;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "findPointWithContinuity : "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "ForegroundObjectUtils"

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    move-object v7, v13

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-object v13, v7

    goto/16 :goto_3

    :cond_a
    :goto_5
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "next(...)"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ly2/c;

    sget-object v4, LI3/e;->d:LI3/d;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, LI3/e;->e:LI3/a;

    invoke-virtual {v4}, LI3/a;->a()Ljava/util/Random;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    const/16 v7, 0x14

    if-ge v4, v7, :cond_b

    add-int/lit8 v4, v2, 0x1

    iget v9, v3, Ly2/c;->a:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v2

    add-int/lit8 v9, v2, 0x2

    iget v11, v3, Ly2/c;->b:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v8, v4

    add-int/lit8 v4, v2, 0x3

    iget v11, v3, Ly2/c;->c:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v8, v9

    add-int/lit8 v2, v2, 0x4

    iget v3, v3, Ly2/c;->d:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v4

    const/16 v3, 0x60

    if-le v2, v3, :cond_b

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    :cond_d
    :goto_6
    const-string v0, "Flakes Count "

    invoke-static {v2, v0}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    invoke-virtual {v0, v10, v2}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    goto :goto_7

    :cond_e
    move v1, v3

    const-string v0, "No Flakes bounds error"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    invoke-virtual {v0, v10, v1}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    goto :goto_7

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No Flakes object: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " bounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    invoke-virtual {v0, v10, v1}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    :cond_10
    :goto_7
    invoke-virtual {v6}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    invoke-static {v8}, Lr3/h;->t0([Ljava/lang/Float;)[F

    move-result-object v1

    const-string v2, "stackPoints"

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    invoke-virtual {v6}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v0

    const-string v1, "flakeDilationPeriod"

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    invoke-virtual/range {p0 .. p0}, Lw2/a;->o()V

    const/4 v0, 0x3

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v1, p0

    invoke-virtual {v1, v3, v0, v2}, Lw2/a;->p(FII)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "SnowEffect"

    return-object p0
.end method
