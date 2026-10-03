.class public Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglUtils;
.super Ljava/lang/Object;
.source "WbglUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 41
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 42
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 46
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static createShortBuffer([S)Ljava/nio/ShortBuffer;
    .locals 2

    .line 30
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 31
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    const/4 p0, 0x0

    .line 35
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static createTexture(Landroid/content/Context;I)I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 73
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 74
    aget v0, v1, v2

    invoke-static {p0, p1, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglUtils;->loadTexture(Landroid/content/Context;II)V

    .line 76
    aget p0, v1, v2

    return p0
.end method

.method public static createTexture(Landroid/graphics/Bitmap;)I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 81
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 82
    aget v0, v1, v2

    invoke-static {p0, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglUtils;->loadTexture(Landroid/graphics/Bitmap;I)V

    .line 84
    aget p0, v1, v2

    return p0
.end method

.method public static getGlTextureId(I)I
    .locals 1

    const v0, 0x84c0

    add-int/2addr p0, v0

    const v0, 0x84df

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 0

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_2

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 58
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 61
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 65
    :goto_1
    throw p1

    :cond_1
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static loadTexture(Landroid/content/Context;II)V
    .locals 0

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglUtils;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 91
    invoke-static {p0, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglUtils;->loadTexture(Landroid/graphics/Bitmap;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;I)V
    .locals 2

    if-eqz p0, :cond_1

    .line 95
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xde1

    .line 97
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2801

    const v1, 0x46180400    # 9729.0f

    .line 100
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2800

    .line 101
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/4 p1, 0x0

    .line 103
    invoke-static {v0, p1, p0, p1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 104
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 106
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method
