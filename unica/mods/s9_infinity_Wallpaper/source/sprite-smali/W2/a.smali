.class public final LW2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX2/a;


# instance fields
.field public final a:LO2/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;LO2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LW2/a;->a:LO2/a;

    return-void
.end method


# virtual methods
.method public final cancel(J)V
    .locals 1

    iget-object p0, p0, LW2/a;->a:LO2/a;

    invoke-virtual {p0}, LO2/a;->d()LU0/e;

    move-result-object p0

    const-string v0, "cancel, id:"

    invoke-static {v0, p1, p2}, Li4/b;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Img2WeatherTestImpl"

    invoke-virtual {p0, v0, p1, p2}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final generate(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Consumer;)V
    .locals 17

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    move-object/from16 v2, p0

    iget-object v2, v2, LW2/a;->a:LO2/a;

    invoke-virtual {v2}, LO2/a;->d()LU0/e;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "generate: ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] start"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "Img2WeatherTestImpl"

    invoke-virtual {v3, v9, v4, v8}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, LO2/a;->a()LU0/e;

    invoke-static/range {p5 .. p5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v4, "decodeFile(...)"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, LU0/e;->u(Landroid/graphics/Bitmap;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    rem-int/lit8 v8, v4, 0x8

    const/4 v10, 0x4

    if-eqz v8, :cond_1

    if-le v8, v10, :cond_0

    rsub-int/lit8 v8, v8, 0x8

    add-int/2addr v8, v4

    goto :goto_0

    :cond_0
    sub-int v8, v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    rem-int/lit8 v12, v11, 0x8

    if-eqz v12, :cond_3

    if-le v12, v10, :cond_2

    rsub-int/lit8 v10, v12, 0x8

    add-int/2addr v10, v11

    goto :goto_1

    :cond_2
    sub-int v10, v11, v12

    goto :goto_1

    :cond_3
    move v10, v11

    :goto_1
    const/4 v12, 0x1

    if-ne v4, v8, :cond_4

    if-eq v11, v10, :cond_5

    :cond_4
    invoke-static {v3, v8, v10, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_5
    invoke-virtual {v2}, LO2/a;->d()LU0/e;

    move-result-object v13

    const-string v14, "generate, original: "

    const-string v15, "x"

    const-string v12, ", new: "

    invoke-static {v4, v14, v11, v15, v12}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v14, v7, [Ljava/lang/Object;

    invoke-virtual {v13, v9, v12, v14}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-static {v12, v13, v0}, LB/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v14}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v14, 0xa

    invoke-static {v14, v14, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v14, 0x14

    int-to-float v14, v14

    const/high16 v16, 0x40400000    # 3.0f

    mul-float v14, v14, v16

    float-to-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v14, 0x40800000    # 4.0f

    const/high16 v0, 0x3f800000    # 1.0f

    move-object/from16 p2, v6

    const/4 v6, -0x1

    invoke-virtual {v7, v14, v0, v0, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v14, 0x0

    invoke-virtual {v7, v12, v14, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/high16 v0, 0x41a00000    # 20.0f

    const/high16 v6, 0x42480000    # 50.0f

    invoke-virtual {v13, v12, v0, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, LO2/a;->d()LU0/e;

    move-result-object v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const-string v12, "generate, output: "

    invoke-static {v12, v15, v6, v7}, LB/a;->m(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    new-array v7, v14, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v6, v7}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v4, v8, :cond_6

    if-eq v11, v10, :cond_7

    :cond_6
    const/4 v0, 0x1

    invoke-static {v3, v4, v11, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_7
    invoke-virtual {v2}, LO2/a;->d()LU0/e;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p7

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] done"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v1, v4}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, LX2/b;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v3, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, LX2/b;-><init>(ILjava/io/InputStream;)V

    move-object/from16 v1, p10

    check-cast v1, LE2/a;

    invoke-virtual {v1, v0}, LE2/a;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "not provided"

    return-object p0
.end method

.method public final initialize()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final mixImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LX2/b;
    .locals 0

    const-string p0, "inputPath1"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "night"

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "rainy"

    invoke-virtual {p4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "snowy"

    invoke-virtual {p4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :cond_1
    :goto_0
    new-instance p0, LX2/b;

    new-instance p2, Ljava/io/FileInputStream;

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, LX2/b;-><init>(ILjava/io/InputStream;)V

    return-object p0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
