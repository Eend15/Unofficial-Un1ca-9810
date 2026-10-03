.class public abstract LG2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LO2/a;

.field public final b:LC2/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;LO2/a;LC2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LG2/a;->a:LO2/a;

    iput-object p3, p0, LG2/a;->b:LC2/b;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;J)Z
    .locals 7

    const-string v0, "none"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/io/File;

    iget-object p0, p0, LG2/a;->b:LC2/b;

    invoke-virtual {p0, p1, p4, p5}, LC2/b;->g(IJ)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LG2/a;->b:LC2/b;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "extractForegroundBitmap start"

    invoke-virtual {p0, v0}, LG2/a;->d(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v2, p1, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const-string p1, "extractForegroundBitmap finished"

    invoke-virtual {p0, p1}, LG2/a;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LG2/a;->a:LO2/a;

    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object v0

    invoke-virtual {p0}, LG2/a;->c()Ljava/lang/String;

    move-result-object p0

    const-string v1, "  - "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LG2/a;->a:LO2/a;

    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object v0

    invoke-virtual {p0}, LG2/a;->c()Ljava/lang/String;

    move-result-object p0

    const-string v1, "  - "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, LU0/e;->o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LG2/a;->a:LO2/a;

    invoke-virtual {v0}, LO2/a;->d()LU0/e;

    move-result-object v0

    invoke-virtual {p0}, LG2/a;->c()Ljava/lang/String;

    move-result-object p0

    const-string v1, "  - "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, LU0/e;->y(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final g(LH2/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE2/b;)Ljava/lang/String;
    .locals 6

    const-string v0, "generateData"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputPath1"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generateImage"

    invoke-static {p6, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p6, p6, LE2/b;->a:LX2/a;

    invoke-interface {p6, p2, p3, p4, p5}, LX2/a;->mixImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LX2/b;

    move-result-object p2

    iget p3, p2, LX2/b;->a:I

    iget-object p2, p2, LX2/b;->b:Ljava/io/InputStream;

    if-eqz p2, :cond_1

    iget v1, p1, LH2/a;->c:I

    iget-wide v4, p1, LH2/a;->b:J

    iget-object v0, p0, LG2/a;->b:LC2/b;

    move-object v2, p4

    move-object v3, p5

    invoke-virtual/range {v0 .. v5}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    iget-object p6, p0, LG2/a;->a:LO2/a;

    invoke-virtual {p6}, LO2/a;->c()LG4/d;

    invoke-static {p2, p3}, LG4/d;->p(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "mixImages, save: "

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, LG2/a;->d(Ljava/lang/String;)V

    iget-object p2, p1, LH2/a;->m:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget v1, p1, LH2/a;->c:I

    iget-wide v4, p1, LH2/a;->b:J

    iget-object v0, p0, LG2/a;->b:LC2/b;

    move-object v2, p4

    move-object v3, p5

    invoke-virtual/range {v0 .. v5}, LC2/b;->e(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6}, LO2/a;->a()LU0/e;

    move-result-object p4

    invoke-virtual {p0, p3, p2}, LG2/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p4, p2, p1}, LU0/e;->w(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    const-string p1, "mixImages, save done"

    invoke-virtual {p0, p1}, LG2/a;->d(Ljava/lang/String;)V

    :cond_0
    return-object p3

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract h(LH2/a;LF2/i;LE2/b;)LG2/c;
.end method

.method public abstract i(Ljava/io/InputStream;LH2/a;LF2/i;LE2/b;)LG2/d;
.end method

.method public final j(LH2/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "generateData"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reuseImage, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LG2/a;->d(Ljava/lang/String;)V

    iget v2, p1, LH2/a;->c:I

    iget-wide v5, p1, LH2/a;->b:J

    iget-object v1, p0, LG2/a;->b:LC2/b;

    const-string v3, "none"

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iget v2, p1, LH2/a;->c:I

    iget-wide v5, p1, LH2/a;->b:J

    iget-object v1, p0, LG2/a;->b:LC2/b;

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, LG2/a;->a:LO2/a;

    invoke-virtual {v2}, LO2/a;->c()LG4/d;

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    const-wide/16 v6, 0x0

    move-object v5, v0

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v4, v3}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v0, v3}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    iget-object v0, p1, LH2/a;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v4, p1, LH2/a;->c:I

    iget-wide v7, p1, LH2/a;->b:J

    iget-object v3, p0, LG2/a;->b:LC2/b;

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v3 .. v8}, LC2/b;->e(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, LO2/a;->a()LU0/e;

    move-result-object p2

    invoke-virtual {p0, v1, v0}, LG2/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, LU0/e;->w(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    const-string p1, "reuseImage, save done"

    invoke-virtual {p0, p1}, LG2/a;->d(Ljava/lang/String;)V

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-static {v4, p0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-static {v0, p0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v3
.end method

.method public final k(Ljava/io/InputStream;LH2/a;LF2/i;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "generateData"

    invoke-static {v2, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, v2, LH2/a;->c:I

    iget-wide v9, v2, LH2/a;->b:J

    iget-object v13, v3, LF2/i;->a:Ljava/lang/String;

    iget-object v14, v3, LF2/i;->b:Ljava/lang/String;

    iget-object v5, v0, LG2/a;->b:LC2/b;

    move-object v7, v13

    move-object v8, v14

    invoke-virtual/range {v5 .. v10}, LC2/b;->f(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    iget-object v4, v0, LG2/a;->a:LO2/a;

    invoke-virtual {v4}, LO2/a;->c()LG4/d;

    invoke-static {v1, v3}, LG4/d;->p(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "saveGeneratedResult, save: "

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LG2/a;->d(Ljava/lang/String;)V

    iget-object v1, v2, LH2/a;->m:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v12, v2, LH2/a;->c:I

    iget-wide v5, v2, LH2/a;->b:J

    iget-object v11, v0, LG2/a;->b:LC2/b;

    move-wide v15, v5

    invoke-virtual/range {v11 .. v16}, LC2/b;->e(ILjava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, LO2/a;->a()LU0/e;

    move-result-object v4

    invoke-virtual {v0, v3, v1}, LG2/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v4, v1, v2}, LU0/e;->w(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    const-string v1, "saveGeneratedResult, save done"

    invoke-virtual {v0, v1}, LG2/a;->d(Ljava/lang/String;)V

    :cond_0
    return-object v3

    :cond_1
    const-string v1, "saveGeneratedResult, saving failed"

    invoke-virtual {v0, v1}, LG2/a;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
