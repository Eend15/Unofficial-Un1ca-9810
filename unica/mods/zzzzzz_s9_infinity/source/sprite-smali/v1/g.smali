.class public final Lv1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/RuntimeShader;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/BitmapShader;

.field public d:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

.field public final e:[I

.field public final f:[F

.field public final g:F

.field public final h:F

.field public i:F

.field public j:F

.field public final k:F

.field public l:F

.field public final m:F

.field public final n:F

.field public o:F

.field public p:Landroid/util/SizeF;


# direct methods
.method public constructor <init>(Landroid/util/SizeF;Landroid/content/Context;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "getAssets(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "shaders/daily_gradient_effect.agsl"

    invoke-static {v0, v1}, Lp4/g;->J(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/RuntimeShader;

    move-result-object v0

    iput-object v0, p0, Lv1/g;->a:Landroid/graphics/RuntimeShader;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iput-object v1, p0, Lv1/g;->b:Landroid/graphics/Paint;

    const/4 v2, 0x4

    new-array v3, v2, [I

    iput-object v3, p0, Lv1/g;->e:[I

    new-array v2, v2, [F

    iput-object v2, p0, Lv1/g;->f:[F

    const v2, 0x3d4ccccd    # 0.05f

    iput v2, p0, Lv1/g;->g:F

    const v3, 0x3fcccccd    # 1.6f

    iput v3, p0, Lv1/g;->h:F

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lv1/g;->i:F

    iput v4, p0, Lv1/g;->j:F

    const v5, 0x3fa66666    # 1.3f

    iput v5, p0, Lv1/g;->k:F

    iput v5, p0, Lv1/g;->m:F

    const v6, 0x3f19999a    # 0.6f

    iput v6, p0, Lv1/g;->n:F

    const/high16 v7, 0x3fc00000    # 1.5f

    iput v7, p0, Lv1/g;->o:F

    iput-object p1, p0, Lv1/g;->p:Landroid/util/SizeF;

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v8, 0x0

    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v8, Li1/e;->dithered_liner_gradient:I

    invoke-static {p2, v8, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p2, v8, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lv1/g;->c:Landroid/graphics/BitmapShader;

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Landroid/graphics/BitmapShader;->setFilterMode(I)V

    iget-object v1, p0, Lv1/g;->c:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_0

    const-string v9, "ditheringTexture"

    invoke-virtual {v0, v9, v1}, Landroid/graphics/RuntimeShader;->setInputShader(Ljava/lang/String;Landroid/graphics/Shader;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const-string v9, "ditheringTextureSize"

    invoke-virtual {v0, v9, v1, p2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    const-string p2, "iDitheringLevel"

    invoke-virtual {v0, p2, v8}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    iput v2, p0, Lv1/g;->g:F

    iput v3, p0, Lv1/g;->h:F

    iput v4, p0, Lv1/g;->i:F

    iput v4, p0, Lv1/g;->j:F

    iput v5, p0, Lv1/g;->k:F

    iput v6, p0, Lv1/g;->n:F

    iput v7, p0, Lv1/g;->o:F

    const/4 p2, 0x0

    iput p2, p0, Lv1/g;->l:F

    iput v5, p0, Lv1/g;->m:F

    sget-object p0, Lv1/f;->d:[Lv1/f;

    const-string p0, "iGradientInterpolationType"

    invoke-virtual {v0, p0, p1}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    const-string p0, "colorPosLineThickness"

    invoke-virtual {v0, p0, p2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void

    :cond_0
    const-string p0, "ditheringBitmapShader"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    iget v8, v0, Lv1/g;->m:F

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    iget-object v13, v0, Lv1/g;->p:Landroid/util/SizeF;

    invoke-virtual {v13}, Landroid/util/SizeF;->getWidth()F

    move-result v13

    iget-object v14, v0, Lv1/g;->p:Landroid/util/SizeF;

    invoke-virtual {v14}, Landroid/util/SizeF;->getHeight()F

    move-result v14

    iget-object v15, v0, Lv1/g;->a:Landroid/graphics/RuntimeShader;

    const-string v1, "iResolution"

    invoke-virtual {v15, v1, v13, v14}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    const-string v1, "animationValue"

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    new-instance v1, Landroid/graphics/PointF;

    div-float/2addr v13, v14

    invoke-direct {v1, v13, v9}, Landroid/graphics/PointF;-><init>(FF)V

    iget v13, v1, Landroid/graphics/PointF;->x:F

    iget v14, v1, Landroid/graphics/PointF;->y:F

    const-string v3, "cameraRatio"

    invoke-virtual {v15, v3, v13, v14}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v1

    const-string v1, "screenRatio"

    invoke-virtual {v15, v1, v9, v3}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    iget-object v1, v0, Lv1/g;->d:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    sget-object v3, Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;->CIRCULAR:Lcom/samsung/android/wallpaper/live/dailygradient/provider/DailyGradientWallpaperInfoContract$GradientStyle;

    if-ne v1, v3, :cond_1

    new-array v1, v12, [F

    aput v2, v1, v11

    aput v8, v1, v10

    iget v3, v0, Lv1/g;->l:F

    const v13, 0x3c8efa35

    mul-float/2addr v3, v13

    const v13, -0x4036f025

    add-float/2addr v3, v13

    iget v13, v0, Lv1/g;->n:F

    add-float/2addr v13, v8

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    move-object v3, v15

    float-to-double v14, v13

    mul-double v18, v18, v14

    iget v13, v0, Lv1/g;->o:F

    float-to-double v6, v13

    mul-double v6, v6, v18

    double-to-float v6, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v14

    float-to-double v7, v8

    add-double/2addr v4, v7

    double-to-float v4, v4

    new-array v5, v12, [F

    aput v6, v5, v11

    aput v4, v5, v10

    aget v4, v5, v11

    aget v6, v1, v11

    sub-float/2addr v4, v6

    neg-float v4, v4

    aget v6, v5, v10

    aget v1, v1, v10

    sub-float/2addr v6, v1

    neg-float v1, v6

    new-array v6, v12, [F

    aput v4, v6, v11

    aput v1, v6, v10

    aget v1, v6, v11

    mul-float/2addr v1, v1

    aget v4, v6, v10

    mul-float/2addr v4, v4

    add-float/2addr v4, v1

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v1, v7

    aget v4, v6, v11

    div-float/2addr v4, v1

    aget v6, v6, v10

    div-float/2addr v6, v1

    new-array v7, v12, [F

    aput v4, v7, v11

    aput v6, v7, v10

    aget v4, v7, v11

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    const-wide v18, 0x400921fb54442eeaL    # 3.14159265359

    div-double v13, v13, v18

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v13, v13, v18

    double-to-float v4, v13

    aget v6, v7, v10

    cmpl-float v6, v6, v2

    if-lez v6, :cond_0

    :goto_0
    add-float/2addr v4, v2

    rem-float/2addr v4, v9

    goto :goto_1

    :cond_0
    sub-float v4, v9, v4

    goto :goto_0

    :goto_1
    const/high16 v6, -0x3c4c0000    # -360.0f

    mul-float/2addr v4, v6

    iget v6, v0, Lv1/g;->j:F

    div-float v6, v9, v6

    iget v7, v0, Lv1/g;->k:F

    sub-float/2addr v7, v9

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    aget v9, v5, v11

    neg-float v9, v9

    aget v5, v5, v10

    neg-float v5, v5

    invoke-virtual {v8, v9, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v13, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    iget v4, v0, Lv1/g;->h:F

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/16 v4, 0x9

    new-array v5, v4, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v5, v11

    const/4 v9, 0x0

    aput v9, v5, v10

    const/16 v18, 0x2

    aput v9, v5, v18

    const/16 v19, 0x3

    aput v9, v5, v19

    const/16 v17, 0x4

    aput v4, v5, v17

    const/16 v19, 0x5

    aput v9, v5, v19

    const/16 v16, 0x6

    aput v1, v5, v16

    const/4 v1, 0x7

    aput v9, v5, v1

    const/16 v1, 0x8

    aput v4, v5, v1

    invoke-virtual {v15, v5}, Landroid/graphics/Matrix;->setValues([F)V

    add-float/2addr v7, v6

    invoke-virtual {v14, v7, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v1, v0, Lv1/g;->g:F

    neg-float v4, v1

    invoke-virtual {v12, v4, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v2, v1, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, v14}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v1, v12}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    invoke-virtual {v1, v1, v15}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    invoke-virtual {v1, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    invoke-virtual {v1, v1, v13}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    invoke-virtual {v1, v1, v8}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    const/16 v2, 0x9

    new-array v2, v2, [F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    aget v1, v2, v11

    aget v4, v2, v10

    const/4 v5, 0x2

    aget v5, v2, v5

    const-string v6, "circularOrbitMatCol1"

    invoke-virtual {v3, v6, v1, v4, v5}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFF)V

    const/4 v1, 0x3

    aget v1, v2, v1

    const/4 v4, 0x4

    aget v4, v2, v4

    const/4 v5, 0x5

    aget v5, v2, v5

    const-string v6, "circularOrbitMatCol2"

    invoke-virtual {v3, v6, v1, v4, v5}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFF)V

    const/4 v1, 0x6

    aget v1, v2, v1

    const/4 v4, 0x7

    aget v4, v2, v4

    const/16 v5, 0x8

    aget v2, v2, v5

    const-string v5, "circularOrbitMatCol3"

    invoke-virtual {v3, v5, v1, v4, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFF)V

    const-string v1, "circularColorPosBiasValue"

    iget v2, v0, Lv1/g;->i:F

    invoke-virtual {v3, v1, v2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    :cond_1
    iget-object v0, v0, Lv1/g;->b:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public final b(ILjava/lang/Integer;)V
    .locals 7

    iget-object v0, p0, Lv1/g;->e:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, v0, p1

    iget-object v1, p0, Lv1/g;->a:Landroid/graphics/RuntimeShader;

    add-int/lit8 p0, p1, 0x1

    const-string p2, "gradientColor"

    invoke-static {p0, p2}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aget p0, v0, p1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p0

    int-to-float p0, p0

    const p2, 0x3b808081

    mul-float v3, p0, p2

    aget p0, v0, p1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result p0

    int-to-float p0, p0

    mul-float v4, p0, p2

    aget p0, v0, p1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float v5, p0, p2

    aget p0, v0, p1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    mul-float v6, p0, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFF)V

    return-void
.end method
