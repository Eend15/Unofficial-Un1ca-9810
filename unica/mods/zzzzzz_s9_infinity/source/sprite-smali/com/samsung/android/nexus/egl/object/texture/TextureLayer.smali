.class public Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;
.super Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;
.source "SourceFile"


# static fields
.field static final DEFAULT_COORD:[F

.field public static final HANDLE_TEXTURE_ALPHA_NAME:Ljava/lang/String; = "uTextureAlphaOrig"

.field public static final HANDLE_TEXTURE_COORD_NAME:Ljava/lang/String; = "aTextureCoordOrig"

.field public static final HANDLE_TEXTURE_NAME:Ljava/lang/String; = "uTextureOrig"


# instance fields
.field public alpha:F

.field public alphaHandle:I

.field public coordBuffer:Ljava/nio/FloatBuffer;

.field public coordHandle:I

.field private mCoordinates:[F

.field protected mImage:Landroid/graphics/Bitmap;

.field private mIndices:[S

.field protected mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

.field private mVertices:[F

.field public textureHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->DEFAULT_COORD:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;-><init>(Landroid/graphics/Bitmap;[F[F[S)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;[F[F[S)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordBuffer:Ljava/nio/FloatBuffer;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->alpha:F

    .line 6
    iput-object p1, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mImage:Landroid/graphics/Bitmap;

    .line 7
    iput-object p2, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mVertices:[F

    .line 8
    iput-object p3, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mCoordinates:[F

    .line 9
    iput-object p4, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mIndices:[S

    return-void
.end method


# virtual methods
.method public bindTextures()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    iget v0, v0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    iget v0, v0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->textureHandle:I

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    iget p0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glIndex:I

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public clear()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->clear()V

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->clear()V

    :cond_1
    return-void
.end method

.method public drawElementInner()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    invoke-static {v0}, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->isValid(Lcom/samsung/android/nexus/egl/object/texture/TextureData;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->sendParameters()V

    iget v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->alphaHandle:I

    iget v1, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->alpha:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->bindTextures()V

    iget v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordHandle:I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexCnt:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v4, 0x4

    invoke-static {v4, v0, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    const/16 v0, 0xde1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordHandle:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public generateBuffers(Lcom/samsung/android/nexus/egl/data/ShapeData;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->generateBuffers(Lcom/samsung/android/nexus/egl/data/ShapeData;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordData:[F

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->generateCoordBuffer([F)V

    return-void
.end method

.method public generateCoordBuffer([F)V
    .locals 1

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordBuffer:Ljava/nio/FloatBuffer;

    :cond_2
    :goto_0
    return-void
.end method

.method public generateElementNameList()[Ljava/lang/String;
    .locals 1

    const-string p0, "aPosition"

    const-string v0, "aNormal"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public generateElementSizeList()[I
    .locals 0

    const/4 p0, 0x3

    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public init()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->init()V

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/nexus/egl/core/Shader;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/nexus/R$raw;->basic_texture_vert_shader:I

    sget v3, Lcom/samsung/android/nexus/R$raw;->basic_texture_frag_shader:I

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/nexus/egl/core/Shader;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->setShader(Lcom/samsung/android/nexus/egl/core/Shader;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mVertices:[F

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->generateVertexBuffer([F)V

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mCoordinates:[F

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->generateCoordBuffer([F)V

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mIndices:[S

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->generateIndexBuffer([S)V

    :cond_1
    new-instance v0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    iget-object v1, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/nexus/egl/object/texture/TextureData;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    return-void
.end method

.method public isInvalidTextureHandle()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadHandles()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->loadHandles()V

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    const-string v1, "uTextureOrig"

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->textureHandle:I

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    const-string v1, "aTextureCoordOrig"

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->coordHandle:I

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    const-string v1, "uTextureAlphaOrig"

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->alphaHandle:I

    return-void
.end method

.method public sendParameters()V
    .locals 0

    return-void
.end method

.method public updateTexture(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->mTextureData:Lcom/samsung/android/nexus/egl/object/texture/TextureData;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->updateTexture(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
