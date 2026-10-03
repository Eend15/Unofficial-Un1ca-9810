.class public LU0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM1/j;
.implements Landroidx/lifecycle/U;
.implements Lg5/a;
.implements LY/c;
.implements Lc3/a;
.implements Lc3/d;


# static fields
.field public static e:Ljava/lang/String;


# instance fields
.field public final synthetic d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1c

    iput v0, p0, LU0/e;->d:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LU0/e;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LI4/o;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, LU0/e;->d:I

    const-string v0, "storageManager"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object p0, LI4/l;->d:Ljava/lang/String;

    .line 4
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p1, 0x3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method

.method public static g(Ljava/lang/String;)Le5/m;
    .locals 17

    move-object/from16 v0, p0

    const/16 v2, 0x41

    const/4 v4, 0x1

    const-string v5, "<this>"

    invoke-static {v0, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Le5/H;->a:[B

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    :goto_0
    const/16 v6, 0x9

    const/16 v7, 0x20

    const/16 v8, 0xd

    const/16 v9, 0xa

    if-lez v5, :cond_1

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3d

    if-eq v10, v11, :cond_0

    if-eq v10, v9, :cond_0

    if-eq v10, v8, :cond_0

    if-eq v10, v7, :cond_0

    if-eq v10, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    int-to-long v10, v5

    const-wide/16 v12, 0x6

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x8

    div-long/2addr v10, v12

    long-to-int v10, v10

    new-array v11, v10, [B

    const/4 v12, 0x0

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_2
    const/16 v16, 0x0

    if-ge v12, v5, :cond_c

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v2, v1, :cond_2

    const/16 v3, 0x5b

    if-ge v1, v3, :cond_2

    sub-int/2addr v1, v2

    goto :goto_6

    :cond_2
    const/16 v3, 0x61

    if-gt v3, v1, :cond_3

    const/16 v3, 0x7b

    if-ge v1, v3, :cond_3

    add-int/lit8 v1, v1, -0x47

    goto :goto_6

    :cond_3
    const/16 v3, 0x30

    if-gt v3, v1, :cond_4

    const/16 v3, 0x3a

    if-ge v1, v3, :cond_4

    add-int/lit8 v1, v1, 0x4

    goto :goto_6

    :cond_4
    const/16 v3, 0x2b

    if-eq v1, v3, :cond_a

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_5

    goto :goto_5

    :cond_5
    const/16 v3, 0x2f

    if-eq v1, v3, :cond_9

    const/16 v3, 0x5f

    if-ne v1, v3, :cond_6

    goto :goto_4

    :cond_6
    if-eq v1, v9, :cond_8

    if-eq v1, v8, :cond_8

    if-eq v1, v7, :cond_8

    if-ne v1, v6, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v11, v16

    goto :goto_a

    :cond_8
    :goto_3
    const/4 v3, 0x3

    goto :goto_8

    :cond_9
    :goto_4
    const/16 v1, 0x3f

    goto :goto_6

    :cond_a
    :goto_5
    const/16 v1, 0x3e

    :goto_6
    shl-int/lit8 v3, v14, 0x6

    or-int/2addr v1, v3

    add-int/2addr v13, v4

    rem-int/lit8 v3, v13, 0x4

    if-nez v3, :cond_b

    add-int/lit8 v3, v15, 0x1

    shr-int/lit8 v14, v1, 0x10

    int-to-byte v14, v14

    aput-byte v14, v11, v15

    const/4 v14, 0x2

    add-int/lit8 v16, v15, 0x2

    shr-int/lit8 v14, v1, 0x8

    int-to-byte v14, v14

    aput-byte v14, v11, v3

    const/4 v3, 0x3

    add-int/2addr v15, v3

    int-to-byte v14, v1

    aput-byte v14, v11, v16

    :goto_7
    move v14, v1

    goto :goto_8

    :cond_b
    const/4 v3, 0x3

    goto :goto_7

    :goto_8
    add-int/2addr v12, v4

    goto :goto_2

    :cond_c
    const/4 v3, 0x3

    rem-int/lit8 v13, v13, 0x4

    if-eq v13, v4, :cond_7

    const/4 v0, 0x2

    if-eq v13, v0, :cond_e

    if-eq v13, v3, :cond_d

    goto :goto_9

    :cond_d
    shl-int/lit8 v1, v14, 0x6

    add-int/2addr v4, v15

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v11, v15

    add-int/2addr v15, v0

    shr-int/lit8 v0, v1, 0x8

    int-to-byte v0, v0

    aput-byte v0, v11, v4

    goto :goto_9

    :cond_e
    shl-int/lit8 v0, v14, 0xc

    add-int/2addr v4, v15

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, v11, v15

    move v15, v4

    :goto_9
    if-ne v15, v10, :cond_f

    goto :goto_a

    :cond_f
    invoke-static {v11, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    const-string v0, "copyOf(this, newSize)"

    invoke-static {v11, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    if-eqz v11, :cond_10

    new-instance v0, Le5/m;

    invoke-direct {v0, v11}, Le5/m;-><init>([B)V

    move-object/from16 v16, v0

    :cond_10
    return-object v16
.end method

.method public static h(Ljava/lang/String;)Le5/m;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lf5/b;->a(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lf5/b;->a(C)I

    move-result v3

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Le5/m;

    invoke-direct {p0, v1}, Le5/m;-><init>([B)V

    return-object p0

    :cond_1
    const-string v0, "Unexpected hex string: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i(Ljava/lang/String;)Le5/m;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le5/m;

    .line 4
    sget-object v1, LV4/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {v0, v1}, Le5/m;-><init>([B)V

    .line 6
    iput-object p0, v0, Le5/m;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static varargs l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(LU0/e;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    const-string v0, "UTF-8"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "forName(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v0, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-static {v0}, Lw0/f;->F(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1, p0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-static {p1, v0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ResourceManager"

    const-string v1, "Failed to convert stream to String"

    invoke-static {v0, v1, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, LU0/e;->e:Ljava/lang/String;

    const-string v1, "SprWallpaper|WMGC|"

    if-nez v0, :cond_0

    invoke-static {v1, p0}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static q(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "input"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string v0, "createScaledBitmap(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static r([B)Le5/m;
    .locals 8

    sget-object v0, Le5/m;->g:Le5/m;

    array-length v0, p0

    array-length v1, p0

    int-to-long v2, v1

    const/4 v1, 0x0

    int-to-long v4, v1

    int-to-long v6, v0

    invoke-static/range {v2 .. v7}, Le5/I;->e(JJJ)V

    new-instance v2, Le5/m;

    array-length v3, p0

    invoke-static {v0, v3}, Lp4/g;->p(II)V

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const-string v0, "copyOfRange(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p0}, Le5/m;-><init>([B)V

    return-object v2
.end method

.method public static t(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    if-nez p0, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_1
    :try_start_2
    const-string v2, "XmlUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readXml: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, v3}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_3
    throw p0
.end method

.method public static u(Landroid/graphics/Bitmap;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/16 v2, 0x400

    if-gt v0, v2, :cond_1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_1
    :goto_0
    if-le v0, v1, :cond_2

    int-to-float v2, v2

    int-to-float v3, v0

    :goto_1
    div-float/2addr v2, v3

    goto :goto_2

    :cond_2
    int-to-float v2, v2

    int-to-float v3, v1

    goto :goto_1

    :goto_2
    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v4, v1

    mul-float/2addr v4, v2

    float-to-int v2, v4

    if-eqz p1, :cond_4

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    int-to-float v2, v2

    div-float/2addr p1, v2

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    mul-float/2addr v2, p1

    float-to-int v2, v2

    :cond_4
    if-ne v0, v3, :cond_5

    if-eq v1, v2, :cond_6

    :cond_5
    const/4 p1, 0x1

    invoke-static {p0, v3, v2, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    :cond_6
    return-object p0
.end method

.method public static v(LU0/e;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z
    .locals 2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    .line 4
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p2, 0x64

    .line 5
    :try_start_1
    invoke-virtual {p1, p3, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    const/4 p1, 0x1

    .line 7
    :try_start_2
    invoke-static {v0, p0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-static {v0, p1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    move-object v1, p1

    move p1, p0

    move-object p0, v1

    .line 8
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return p1
.end method

.method public static x(Ll5/c;Ll5/c;)Z
    .locals 2

    iget-object p0, p0, Ll5/c;->i:LK/o;

    iget-object p1, p1, Ll5/c;->i:LK/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, LK/o;->b:I

    iget v1, p1, LK/o;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget p0, p0, LK/o;->a:I

    iget p1, p1, LK/o;->b:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget p0, p0, LU0/e;->d:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Z
    .locals 0

    iget p0, p0, LU0/e;->d:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/Class;)Landroidx/lifecycle/Q;
    .locals 0

    new-instance p0, LW/b;

    invoke-direct {p0}, LW/b;-><init>()V

    return-object p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public d(Lm5/a;)V
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p1, Lm5/a;->f:Ll5/c;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Ll5/c;->c:Ll5/a;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Ll5/a;->u:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p1, Lm5/a;->g:Ll5/c;

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p1, Ll5/c;->c:Ll5/a;

    if-eqz p1, :cond_1

    .line 8
    iget-object p0, p1, Ll5/a;->u:Landroid/widget/FrameLayout;

    :cond_1
    if-eqz v0, :cond_2

    .line 9
    check-cast v0, LR1/b;

    .line 10
    invoke-virtual {v0}, LR1/b;->a()V

    :cond_2
    if-eqz p0, :cond_3

    .line 11
    check-cast p0, LR1/b;

    .line 12
    invoke-virtual {p0}, LR1/b;->a()V

    :cond_3
    return-void
.end method

.method public e(Landroid/os/ParcelFileDescriptor;Ljava/nio/file/Path;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p3, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-virtual {p0, p1, p3}, LU0/e;->w(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 9
    const-string v1, "path"

    invoke-static {p3, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 10
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, p3, v1}, LU0/e;->v(LU0/e;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public varargs f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    const-string p0, "tag"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p3

    if-lez p0, :cond_0

    array-length p0, p3

    invoke-static {p3, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, LU0/e;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p1}, LU0/e;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public j()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public k(ILjava/io/Serializable;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p0, ""

    goto :goto_0

    :pswitch_1
    const-string p0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string p0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_3
    const-string p0, "RESULT_PARSE_EXCEPTION"

    goto :goto_0

    :pswitch_4
    const-string p0, "RESULT_IO_EXCEPTION"

    goto :goto_0

    :pswitch_5
    const-string p0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    goto :goto_0

    :pswitch_6
    const-string p0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    goto :goto_0

    :pswitch_7
    const-string p0, "RESULT_NOT_WRITABLE"

    goto :goto_0

    :pswitch_8
    const-string p0, "RESULT_UNSUPPORTED_ART_VERSION"

    goto :goto_0

    :pswitch_9
    const-string p0, "RESULT_ALREADY_INSTALLED"

    goto :goto_0

    :pswitch_a
    const-string p0, "RESULT_INSTALL_SUCCESS"

    :goto_0
    const/4 v0, 0x6

    const-string v1, "ProfileInstaller"

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v1, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public varargs o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    const-string p0, "tag"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p3

    if-lez p0, :cond_0

    array-length p0, p3

    invoke-static {p3, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, LU0/e;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p1}, LU0/e;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public s(Landroid/content/Context;ZLjava/lang/String;)Lc2/b;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filepath"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p2, "/wallpaper_land.xml"

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, LU0/e;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "/wallpaper.xml"

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, LU0/e;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    new-instance v0, Lc2/b;

    invoke-direct {v0, p1, p3}, Lc2/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0, p2, v2, v2}, Lc2/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    const-string p2, "/content.xml"

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, LU0/e;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v1, ""

    if-eqz p3, :cond_2

    move-object p3, v1

    goto :goto_1

    :cond_2
    invoke-static {p2}, La4/x;->K(Ljava/lang/String;)La1/a;

    move-result-object p3

    const-string v3, "null cannot be cast to non-null type com.samsung.android.app.dressroom.wallpaperxml.spec.wallpaper.ContentSpecNode"

    invoke-static {p3, v3}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lc1/j;

    iget-object p3, p3, Lc1/j;->e:Lb1/a;

    iget-object p3, p3, Lb1/a;->b:Ljava/lang/Object;

    const-string v3, "getValue(...)"

    invoke-static {p3, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/String;

    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "getTemplateResource: e = "

    const-string v4, "com.samsung.android.wallpaper.res"

    const-string v5, "XmlUtils"

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1, v4, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "raw"

    invoke-virtual {v7, p3, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-gtz p3, :cond_3

    const-string p0, "getTemplateResource: failed to get template resource"

    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    const-string p3, "openRawResource(...)"

    invoke-static {p1, p3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LU0/e;->m(LU0/e;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, p0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-static {v3, p0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v6, [Ljava/lang/Object;

    invoke-static {v5, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_2
    invoke-virtual {v0, v2, p2, v1}, Lc2/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public w(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "path"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    const-string v0, "_temp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, v0, v1}, LU0/e;->v(LU0/e;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public varargs y(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    const-string p0, "tag"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p3

    if-lez p0, :cond_0

    array-length p0, p3

    invoke-static {p3, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, LU0/e;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p1}, LU0/e;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
