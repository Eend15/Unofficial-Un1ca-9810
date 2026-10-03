.class public Lcom/samsung/android/nexus/egl/utils/EglUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "EglUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, ": glError 0x"

    invoke-static {p0, v1}, Lq/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/nexus/egl/utils/EglUtils;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public static converTo3dCoordinates(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 p0, p0, 0x2

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int v1, p1, v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v2

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, p0

    sub-int/2addr v1, v0

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, p0

    sub-int/2addr p1, v0

    invoke-direct {v2, v3, v1, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public static converToScreenCoordinates(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 p0, p0, 0x2

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    new-instance v0, Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p0

    sub-int v1, p1, v1

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p0

    sub-int/2addr p1, v2

    invoke-direct {v0, v3, v1, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static createFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 1

    shl-int/lit8 p0, p0, 0x2

    .line 6
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 7
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public static createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 1
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 5
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static createShortBuffer([S)Ljava/nio/ShortBuffer;
    .locals 2

    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static createTexture(Landroid/content/Context;I)I
    .locals 4

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "glGenTextures handle = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    .line 4
    aget v0, v1, v2

    invoke-static {p0, p1, v0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->loadTexture(Landroid/content/Context;II)V

    .line 5
    aget p0, v1, v2

    return p0
.end method

.method public static createTexture(Landroid/graphics/Bitmap;)I
    .locals 4

    const/4 v0, 0x1

    .line 6
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "glGenTextures = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    .line 9
    aget v0, v1, v2

    invoke-static {p0, v0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->loadTexture(Landroid/graphics/Bitmap;I)V

    .line 10
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
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-gez p1, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    sget-object p1, Lcom/samsung/android/nexus/egl/utils/EglUtils;->TAG:Ljava/lang/String;

    const-string v1, "Bitmap load error."

    invoke-static {p1, v1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    return-object v0
.end method

.method public static loadTexture(Landroid/content/Context;II)V
    .locals 0

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2
    invoke-static {p0, p2}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->loadTexture(Landroid/graphics/Bitmap;I)V

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;I)V
    .locals 3

    if-ltz p1, :cond_1

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xde1

    .line 6
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glBindTexture handle = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    const/16 p1, 0x2801

    const v1, 0x46180400    # 9729.0f

    .line 8
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2800

    .line 9
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const v1, 0x812f

    .line 10
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 11
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 12
    const-string p1, "glTexParameteri"

    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 13
    invoke-static {v0, p1, p0, p1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 14
    const-string p0, "texImage2D"

    invoke-static {p0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    .line 15
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 16
    const-string p0, "glBindTexture : release"

    invoke-static {p0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static updateTexture(ILandroid/graphics/Bitmap;Z)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xde1

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p0, 0x0

    invoke-static {v0, p0, p1, p0}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method
