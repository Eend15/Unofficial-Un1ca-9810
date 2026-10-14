.class public abstract Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;
.super Ljava/lang/Object;
.source "WbglShape.java"

# interfaces
.implements Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/IWbglObject;


# static fields
.field public static final HANDLE_GLOBAL_ALPHA:Ljava/lang/String; = "uGlobalAlpha"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mElementHandles:[I

.field protected mElementNameList:[Ljava/lang/String;

.field protected mElementSizeList:[I

.field protected mGlobalAlpha:F

.field private mGlobalAlphaHandle:I

.field protected mIndexBuffer:Ljava/nio/ShortBuffer;

.field protected mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

.field protected mShapeSize:Landroid/graphics/Rect;

.field protected mStrideSize:I

.field protected mTotalElementSize:I

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 29
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mElementSizeList:[I

    .line 30
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mElementNameList:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mTotalElementSize:I

    .line 32
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mStrideSize:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 33
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mGlobalAlpha:F

    .line 39
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mShapeSize:Landroid/graphics/Rect;

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->init()V

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->calculateSize()V

    return-void
.end method


# virtual methods
.method protected calculateSize()V
    .locals 3

    const/4 v0, 0x0

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mElementSizeList:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 78
    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mTotalElementSize:I

    aget v1, v1, v0

    add-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mTotalElementSize:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mTotalElementSize:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mStrideSize:I

    return-void
.end method

.method public clear()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->releaseShader()V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 171
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method protected abstract drawElementInner()V
.end method

.method public drawElements(Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;)V
    .locals 9

    .line 125
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mElementSizeList:[I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mElementNameList:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    if-nez v0, :cond_0

    goto :goto_4

    .line 129
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->useProgram()V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    iget v0, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->worldMatrixHandle:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->setupMatrices(I)V

    .line 132
    iget p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mGlobalAlphaHandle:I

    if-ltz p1, :cond_1

    .line 133
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mGlobalAlpha:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_1
    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    .line 137
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mElementSizeList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 138
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mElementHandles:[I

    aget v2, v2, v0

    if-gez v2, :cond_2

    goto :goto_1

    .line 141
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mElementSizeList:[I

    aget v4, v3, v0

    const/16 v5, 0x1406

    const/4 v6, 0x0

    iget v7, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mStrideSize:I

    iget-object v8, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move v3, v2

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 143
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 144
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 146
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mElementSizeList:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->drawElementInner()V

    .line 151
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mElementSizeList:[I

    array-length v0, v0

    if-ge p1, v0, :cond_5

    .line 152
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mElementHandles:[I

    aget v0, v0, p1

    if-gez v0, :cond_4

    goto :goto_3

    .line 154
    :cond_4
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    return-void
.end method

.method protected generateElementNameList()[Ljava/lang/String;
    .locals 1

    const-string p0, "aPosition"

    const-string v0, "aColor"

    .line 61
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected generateElementSizeList()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 54
    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3
        0x4
    .end array-data
.end method

.method public generateIndexBuffer([S)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;
    .locals 0

    .line 84
    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglUtils;->createShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mIndexBuffer:Ljava/nio/ShortBuffer;

    return-object p0
.end method

.method protected abstract generateShader()Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;
.end method

.method public generateVertexBuffer([F)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;
    .locals 0

    .line 89
    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public getGlobalAlpha()F
    .locals 0

    .line 120
    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mGlobalAlpha:F

    return p0
.end method

.method public getShader()Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    return-object p0
.end method

.method public getVertexBufferData(I)F
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p0

    return p0
.end method

.method protected init()V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->generateShader()Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->generateElementSizeList()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mElementSizeList:[I

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->generateElementNameList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mElementNameList:[Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mElementNameList:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mElementHandles:[I

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->loadHandles()V

    return-void
.end method

.method protected loadHandles()V
    .locals 8

    .line 69
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mElementNameList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 70
    iget-object v5, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mElementHandles:[I

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    invoke-virtual {v7, v4}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->loadHandle(Ljava/lang/String;)I

    move-result v4

    aput v4, v5, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    const-string/jumbo v1, "uGlobalAlpha"

    invoke-virtual {v0, v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->loadHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mGlobalAlphaHandle:I

    return-void
.end method

.method public setGlobalAlpha(F)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mGlobalAlpha:F

    return-void
.end method

.method public setShapeSize(Landroid/graphics/Rect;)V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mShapeSize:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setVertexBufferData(IF)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    return-object p0

    .line 105
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public updateVertexBuffer([FII)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    return-object p0

    .line 96
    :cond_0
    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 98
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method
