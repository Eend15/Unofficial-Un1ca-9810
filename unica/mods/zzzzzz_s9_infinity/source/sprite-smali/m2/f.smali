.class public final Lm2/f;
.super Lw3/g;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public d:I

.field public final synthetic e:Lm2/n;

.field public final synthetic f:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lm2/n;Landroid/graphics/Bitmap;Lu3/d;)V
    .locals 0

    iput-object p1, p0, Lm2/f;->e:Lm2/n;

    iput-object p2, p0, Lm2/f;->f:Landroid/graphics/Bitmap;

    invoke-direct {p0, p3}, Lw3/g;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lu3/d;)Lu3/d;
    .locals 1

    new-instance p1, Lm2/f;

    iget-object v0, p0, Lm2/f;->e:Lm2/n;

    iget-object p0, p0, Lm2/f;->f:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0, p0, p2}, Lm2/f;-><init>(Lm2/n;Landroid/graphics/Bitmap;Lu3/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LW4/t;

    check-cast p2, Lu3/d;

    invoke-virtual {p0, p1, p2}, Lm2/f;->create(Ljava/lang/Object;Lu3/d;)Lu3/d;

    move-result-object p0

    check-cast p0, Lm2/f;

    sget-object p1, Lq3/m;->a:Lq3/m;

    invoke-virtual {p0, p1}, Lm2/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lv3/a;->d:Lv3/a;

    iget v1, p0, Lm2/f;->d:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lp4/g;->X(Ljava/lang/Object;)V

    iput v2, p0, Lm2/f;->d:I

    const-wide/16 v3, 0x32

    invoke-static {v3, v4, p0}, LW4/u;->c(JLw3/g;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lm2/f;->e:Lm2/n;

    invoke-virtual {p1}, Lm2/n;->e()Lq2/a;

    move-result-object v0

    iget v0, v0, Lq2/a;->b:I

    invoke-virtual {p1}, Lm2/n;->e()Lq2/a;

    move-result-object v1

    iget-boolean v3, p1, Lm2/n;->b:Z

    invoke-virtual {v1, v3}, Lq2/a;->a(Z)Landroidx/recyclerview/widget/y;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v1, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/i;

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/a;

    if-eqz v1, :cond_3

    iget-wide v4, v1, Lv2/a;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    iget-object v4, p1, Lm2/n;->G:Ly2/d;

    const-string v5, "weatherThumbnailUtils"

    if-eqz v4, :cond_b

    invoke-virtual {v4, v0}, Ly2/d;->a(I)J

    move-result-wide v6

    invoke-virtual {p1}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "saveImageForThumbnail, cur="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", saved="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v4, v8, v10}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-lez v4, :cond_a

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v4, v10, v6

    if-nez v4, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-virtual {p1}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v4

    const-string v6, "saveImageForThumbnail, which="

    const-string v7, " background="

    invoke-static {v0, v6, v7}, LB/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object p0, p0, Lm2/f;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Landroid/graphics/Paint;

    const/4 v6, 0x2

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    iget-object v7, p1, Lm2/n;->a:Landroid/content/Context;

    invoke-static {v7, v0}, Lf2/e;->a(Landroid/content/Context;I)[F

    move-result-object v8

    if-eqz v8, :cond_5

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    const/4 v11, 0x3

    aget v11, v8, v11

    aget v9, v8, v9

    aget v2, v8, v2

    aget v6, v8, v6

    invoke-static {v11, v9, v2, v6}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v2

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v2, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_5
    move-object v10, v3

    :goto_2
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v6, "createBitmap(...)"

    invoke-static {v2, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    invoke-virtual {v6, p0, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p0, p1, Lm2/n;->G:Ly2/d;

    if-eqz p0, :cond_9

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Ly2/d;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "weather"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    :cond_6
    const-string v5, "Thumbnail_"

    const-string v6, ".jpg"

    invoke-static {v0, v5, v6}, LB/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v3, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_5

    :catch_1
    move-exception v2

    move-object v3, v4

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception v2

    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_7

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    :goto_4
    iget-object p0, p0, Ly2/d;->b:Lf2/c;

    invoke-virtual {p0, v0, v1}, Lf2/c;->a(ILjava/lang/Long;)V

    invoke-virtual {p1}, Lm2/n;->e()Lq2/a;

    move-result-object p0

    iget p0, p0, Lq2/a;->b:I

    invoke-static {v7, p0}, LL1/a;->semClearWallpaperThumbnailCache(Landroid/content/Context;I)V

    invoke-virtual {p1}, Lm2/n;->e()Lq2/a;

    move-result-object p0

    iget p0, p0, Lq2/a;->b:I

    invoke-static {v7, p0}, LL1/a;->semRequestWallpaperColorsAnalysis(Landroid/content/Context;I)V

    goto :goto_8

    :goto_5
    if-eqz v3, :cond_8

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_8
    :goto_6
    throw p0

    :cond_9
    invoke-static {v5}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_a
    :goto_7
    invoke-virtual {p1}, Lm2/n;->i()Ljava/lang/String;

    move-result-object p0

    const-string p1, "saveImageForThumbnail, skip!"

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :cond_b
    invoke-static {v5}, LF3/k;->m(Ljava/lang/String;)V

    throw v3
.end method
