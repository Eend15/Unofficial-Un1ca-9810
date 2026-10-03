.class public abstract Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;
.super Lcom/samsung/android/nexus/base/layer/BaseLayer;
.source "SourceFile"


# static fields
.field public static final HANDLE_GLOBAL_ALPHA:Ljava/lang/String; = "uGlobalAlpha"


# instance fields
.field protected mElementHandles:[I

.field protected mElementNameList:[Ljava/lang/String;

.field protected mElementSizeList:[I

.field protected mGlobalAlpha:F

.field protected mGlobalAlphaHandle:I

.field protected mIndexBuffer:Ljava/nio/ShortBuffer;

.field protected mIndexCnt:I

.field protected mIsDepthTestEnabled:Z

.field protected mNeedToReleaseShader:Z

.field protected mShader:Lcom/samsung/android/nexus/egl/core/Shader;

.field protected mStrideSize:I

.field protected mTotalElementSize:I

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;

.field protected mVertexCnt:I

.field protected mWorld:Lcom/samsung/android/nexus/egl/world/BaseWorld;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mWorld:Lcom/samsung/android/nexus/egl/world/BaseWorld;

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mNeedToReleaseShader:Z

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexCnt:I

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    iput v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexCnt:I

    iput v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mTotalElementSize:I

    iput v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mStrideSize:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mGlobalAlpha:F

    iput-boolean v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIsDepthTestEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->generateElementSizeList()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementSizeList:[I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->generateElementNameList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementNameList:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementHandles:[I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->calculateSize()V

    return-void
.end method


# virtual methods
.method public calculateSize()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementSizeList:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    iget v4, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mTotalElementSize:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mTotalElementSize:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mTotalElementSize:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mStrideSize:I

    return-void
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->clearBuffers()V

    return-void
.end method

.method public clearBuffers()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexCnt:I

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexCnt:I

    return-void
.end method

.method public abstract drawElementInner()V
.end method

.method public generateBuffers(Lcom/samsung/android/nexus/egl/data/ShapeData;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->generateVertexBuffer([F)V

    iget-object p1, p1, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexData:[S

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->generateIndexBuffer([S)V

    return-void
.end method

.method public generateElementNameList()[Ljava/lang/String;
    .locals 0

    const-string p0, "aPosition"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public generateElementSizeList()[I
    .locals 0

    const/4 p0, 0x3

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public generateIndexBuffer([S)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->createShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    array-length p1, p1

    iput p1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIndexCnt:I

    return-void
.end method

.method public generateVertexBuffer(I)V
    .locals 1

    .line 6
    iput p1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexCnt:I

    .line 7
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public generateVertexBuffer([F)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 4
    :cond_1
    array-length v0, p1

    iget v1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mTotalElementSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexCnt:I

    .line 5
    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    :cond_2
    :goto_0
    return-void
.end method

.method public getDepthTestEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIsDepthTestEnabled:Z

    return p0
.end method

.method public getGlobalAlpha()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mGlobalAlpha:F

    return p0
.end method

.method public getShader()Lcom/samsung/android/nexus/egl/core/Shader;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    return-object p0
.end method

.method public getVertexBufferData(I)F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p0

    return p0
.end method

.method public getWorld()Lcom/samsung/android/nexus/egl/world/BaseWorld;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mWorld:Lcom/samsung/android/nexus/egl/world/BaseWorld;

    return-object p0
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mWorld:Lcom/samsung/android/nexus/egl/world/BaseWorld;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/nexus/egl/world/WorldPerspective;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/context/NexusContext;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/nexus/base/context/NexusContext;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/nexus/egl/world/WorldPerspective;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mWorld:Lcom/samsung/android/nexus/egl/world/BaseWorld;

    :cond_0
    return-void
.end method

.method public loadHandles()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementNameList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementHandles:[I

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    invoke-virtual {v7, v4}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result v4

    aput v4, v5, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    const-string v1, "uGlobalAlpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/egl/core/Shader;->loadHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mGlobalAlphaHandle:I

    return-void
.end method

.method public onAmbientModeChanged()V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->init()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->clear()V

    return-void
.end method

.method public onDraw()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->onDrawElements()V

    return-void
.end method

.method public onDrawElements()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mWorld:Lcom/samsung/android/nexus/egl/world/BaseWorld;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementSizeList:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementNameList:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->prepareDrawElements()V

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIsDepthTestEnabled:Z

    const/16 v1, 0xb71

    if-eqz v0, :cond_2

    const/16 v0, 0x100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/egl/core/Shader;->useProgram()V

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mWorld:Lcom/samsung/android/nexus/egl/world/BaseWorld;

    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    invoke-virtual {v0, v2}, Lcom/samsung/android/nexus/egl/world/BaseWorld;->sendParams(Lcom/samsung/android/nexus/egl/core/Shader;)V

    iget v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mGlobalAlphaHandle:I

    if-ltz v0, :cond_3

    iget v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mGlobalAlpha:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_3
    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementSizeList:[I

    array-length v5, v4

    if-ge v2, v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementHandles:[I

    aget v5, v5, v2

    if-gez v5, :cond_4

    aget v4, v4, v2

    :goto_1
    add-int/2addr v3, v4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementSizeList:[I

    aget v7, v4, v2

    iget v10, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mStrideSize:I

    iget-object v11, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v8, 0x1406

    const/4 v9, 0x0

    move v6, v5

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v4, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementSizeList:[I

    aget v4, v4, v2

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->drawElementInner()V

    :goto_3
    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementSizeList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mElementHandles:[I

    aget v2, v2, v0

    if-gez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-boolean p0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIsDepthTestEnabled:Z

    if-eqz p0, :cond_8

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_8
    :goto_5
    return-void
.end method

.method public onLayerParamsChanged(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public prepareDrawElements()V
    .locals 0

    return-void
.end method

.method public setDepthTestEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mIsDepthTestEnabled:Z

    return-void
.end method

.method public setGlobalAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mGlobalAlpha:F

    return-void
.end method

.method public setShader(Lcom/samsung/android/nexus/egl/core/Shader;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mShader:Lcom/samsung/android/nexus/egl/core/Shader;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->loadHandles()V

    :cond_0
    return-void
.end method

.method public setVertexBufferData(IF)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public setWorld(Lcom/samsung/android/nexus/egl/world/BaseWorld;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mWorld:Lcom/samsung/android/nexus/egl/world/BaseWorld;

    return-void
.end method

.method public updateVertexBuffer([FII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
