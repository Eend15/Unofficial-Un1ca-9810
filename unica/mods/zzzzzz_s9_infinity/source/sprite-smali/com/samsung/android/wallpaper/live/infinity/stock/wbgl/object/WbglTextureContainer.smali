.class public Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;
.super Ljava/lang/Object;
.source "WbglTextureContainer.java"

# interfaces
.implements Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/IWbglObject;


# static fields
.field public static final HANDLE_GLOBAL_ALPHA:Ljava/lang/String; = "uGlobalAlpha"

.field public static final HANDLE_POSITION:Ljava/lang/String; = "aPosition"

.field public static final MAX_TEXTURE_CNT:I = 0xf


# instance fields
.field protected INDICES:[S

.field protected VERTICES:[F

.field protected mContext:Landroid/content/Context;

.field protected mCurTextureCnt:I

.field protected mGlobalAlpha:F

.field private mGlobalAlphaHandle:I

.field protected mIndexBuffer:Ljava/nio/ShortBuffer;

.field protected mObjectRect:Landroid/graphics/Rect;

.field private mPositionHandle:I

.field protected mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

.field protected mTextureList:[Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;II)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 23
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->VERTICES:[F

    const/4 v0, 0x6

    new-array v0, v0, [S

    .line 30
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->INDICES:[S

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    .line 38
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 39
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mGlobalAlpha:F

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    .line 42
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    .line 49
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    .line 51
    new-instance p1, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    iget-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3, p4}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;-><init>(Landroid/content/Context;II)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    .line 53
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    const-string p2, "aPosition"

    invoke-virtual {p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->getHandle(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mPositionHandle:I

    .line 54
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    const-string/jumbo p2, "uGlobalAlpha"

    invoke-virtual {p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->getHandle(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mGlobalAlphaHandle:I

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->initVertices()V

    return-void

    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x3s
        0x0s
        0x3s
        0x2s
    .end array-data
.end method

.method private initVertices()V
    .locals 12

    .line 60
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v1, 0xa

    const/16 v2, 0x9

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->VERTICES:[F

    iget-object v9, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->left:I

    int-to-float v11, v10

    aput v11, v0, v8

    .line 62
    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v8

    aput v11, v0, v7

    .line 63
    iget v7, v9, Landroid/graphics/Rect;->right:I

    int-to-float v11, v7

    aput v11, v0, v6

    int-to-float v6, v8

    .line 64
    aput v6, v0, v5

    int-to-float v5, v10

    .line 65
    aput v5, v0, v4

    .line 66
    iget v4, v9, Landroid/graphics/Rect;->top:I

    int-to-float v5, v4

    aput v5, v0, v3

    int-to-float v3, v7

    .line 67
    aput v3, v0, v2

    int-to-float v2, v4

    .line 68
    aput v2, v0, v1

    .line 70
    invoke-static {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 72
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 73
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v8, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    invoke-virtual {v0, v7, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v7, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    invoke-virtual {v0, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v6, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 77
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 78
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->INDICES:[S

    invoke-static {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglUtils;->createShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    :cond_1
    return-void
.end method


# virtual methods
.method public addTexture(Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;)V
    .locals 2

    .line 88
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    const-string v0, "libWbgl"

    const-string v1, "We support only 15 textures"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    aput-object p1, v0, v1

    .line 94
    invoke-static {v1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglUtils;->getGlTextureId(I)I

    move-result v0

    .line 95
    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    iput v1, p1, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->glIndex:I

    .line 96
    iput v0, p1, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->glId:I

    .line 97
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    invoke-virtual {p1, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->loadHandles(Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;)V

    .line 99
    iget p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    return-void
.end method

.method public clear()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->releaseShader()V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 198
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x0

    move v1, v0

    .line 199
    :goto_0
    iget v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    if-ge v1, v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->clear()V

    .line 201
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_0
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    return-void
.end method

.method public drawElements(Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;)V
    .locals 9

    .line 159
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    invoke-virtual {v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->useProgram()V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    iget v0, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->worldMatrixHandle:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglWorld;->setupMatrices(I)V

    .line 162
    iget p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mGlobalAlphaHandle:I

    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mGlobalAlpha:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 164
    iget p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p1, 0x0

    move v0, p1

    .line 165
    :goto_0
    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    const/16 v2, 0xde1

    if-ge v0, v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    aget-object v3, v1, v0

    if-nez v3, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    aget-object v3, v1, v0

    iget v3, v3, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->rectHandle:I

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->textureRect:[F

    const/4 v4, 0x1

    invoke-static {v3, v4, v1, p1}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 169
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    aget-object v3, v1, v0

    iget v3, v3, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->alphaHandle:I

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->alpha:F

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 171
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->glId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 172
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->handle:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 173
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    aget-object v2, v1, v0

    iget v2, v2, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->textureHandle:I

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->glIndex:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 175
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->cordHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 176
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    aget-object v2, v1, v0

    iget v3, v2, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->cordHandle:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v1, v1, v0

    iget-object v8, v1, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->cordBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    iget v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mPositionHandle:I

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x4

    const/4 v1, 0x6

    const/16 v3, 0x1403

    .line 180
    iget-object v4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v3, v4}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 182
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 183
    :goto_2
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mCurTextureCnt:I

    if-ge p1, v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mTextureList:[Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->cordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 186
    :cond_2
    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mPositionHandle:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public getGlobalAlpha()F
    .locals 0

    .line 107
    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mGlobalAlpha:F

    return p0
.end method

.method public getShader()Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    return-object p0
.end method

.method public setGlobalAlpha(F)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mGlobalAlpha:F

    return-void
.end method

.method public setPosition(FFF)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->setX(F)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

    .line 112
    invoke-virtual {p0, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->setY(F)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

    .line 113
    invoke-virtual {p0, p3}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->setZ(F)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;

    return-object p0
.end method

.method public setSize(FF)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    add-float/2addr v2, p1

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 143
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    add-float/2addr v1, p1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 144
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    add-float/2addr v1, p2

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 145
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    add-float/2addr v1, p2

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 146
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 147
    iget p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object p0
.end method

.method public setX(F)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 119
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 120
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 121
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public setY(F)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 129
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public setZ(F)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 135
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 136
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 137
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public updateBoundary(Landroid/graphics/Rect;)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->mObjectRect:Landroid/graphics/Rect;

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTextureContainer;->initVertices()V

    return-object p0
.end method
