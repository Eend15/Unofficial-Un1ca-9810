.class public Lcom/samsung/android/nexus/egl/object/texture/TextureData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public glId:I

.field public glIndex:I

.field public handle:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glId:I

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glIndex:I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->createTexture(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    iput p2, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glIndex:I

    invoke-static {p2}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->getGlTextureId(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glId:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static isValid(Lcom/samsung/android/nexus/egl/object/texture/TextureData;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bindTexture()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    iget p0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public clear()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "glDeleteTextures handle = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)I

    return-void
.end method

.method public updateTexture(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->updateTexture(ILandroid/graphics/Bitmap;Z)V

    :cond_2
    :goto_0
    return-void
.end method
