.class public Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;
.super Ljava/lang/Object;
.source "WbglTexture.java"


# static fields
.field public static final HANDLE_TEXTURE_ALPHA_PREFIX:Ljava/lang/String; = "uTextureAlpha"

.field public static final HANDLE_TEXTURE_CORD_PREFIX:Ljava/lang/String; = "aTextureCord"

.field public static final HANDLE_TEXTURE_PREFIX:Ljava/lang/String; = "uTexture"

.field public static final HANDLE_TEXTURE_RECT_PREFIX:Ljava/lang/String; = "uTextureRect"


# instance fields
.field private CORD:[F

.field public alpha:F

.field public alphaHandle:I

.field public cordBuffer:Ljava/nio/FloatBuffer;

.field public cordHandle:I

.field public glId:I

.field public glIndex:I

.field public handle:I

.field private mAlphaHandleName:Ljava/lang/String;

.field private mCordHandleName:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNeedToClear:Z

.field private mObjectRect:Landroid/graphics/Rect;

.field private mRectHandleName:Ljava/lang/String;

.field private mTextureHandleName:Ljava/lang/String;

.field private mTextureRect:Landroid/graphics/Rect;

.field public rectHandle:I

.field public textureHandle:I

.field public textureRect:[F


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;IZ)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 18
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->CORD:[F

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->cordBuffer:Ljava/nio/FloatBuffer;

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mName:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mTextureHandleName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mCordHandleName:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mRectHandleName:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mAlphaHandleName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->glId:I

    .line 39
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->glIndex:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->alpha:F

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 41
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->textureRect:[F

    .line 52
    iput p4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->handle:I

    .line 53
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->init(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 18
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->CORD:[F

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->cordBuffer:Ljava/nio/FloatBuffer;

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mName:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mTextureHandleName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mCordHandleName:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mRectHandleName:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mAlphaHandleName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->glId:I

    .line 39
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->glIndex:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->alpha:F

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 41
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->textureRect:[F

    .line 61
    invoke-static {p4}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglUtils;->createTexture(Landroid/graphics/Bitmap;)I

    move-result p4

    iput p4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->handle:I

    .line 62
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->init(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private init(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Z)V
    .locals 0

    .line 66
    iput-boolean p4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mNeedToClear:Z

    .line 67
    iget-object p4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->CORD:[F

    invoke-static {p4}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->cordBuffer:Ljava/nio/FloatBuffer;

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->updateBoundary(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 69
    invoke-direct {p0, p3}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 2

    .line 134
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mName:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mTextureHandleName:Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aTextureCord"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mCordHandleName:Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uTextureRect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mRectHandleName:Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uTextureAlpha"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mAlphaHandleName:Ljava/lang/String;

    return-void
.end method

.method private updateTextureData()V
    .locals 8

    .line 122
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 123
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 124
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mObjectRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 125
    iget-object v3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mObjectRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    .line 128
    iget-object v5, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->cordBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v6, v4, 0x2

    iget-object v7, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->CORD:[F

    aget v7, v7, v6

    sub-float/2addr v7, v2

    mul-float/2addr v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 129
    iget-object v5, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->cordBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->CORD:[F

    aget v7, v7, v6

    sub-float/2addr v7, v3

    mul-float/2addr v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->cordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 156
    iget-boolean v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mNeedToClear:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 157
    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->handle:I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public getX()I
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getY()I
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public loadHandles(Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mTextureHandleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->loadHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->textureHandle:I

    .line 149
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mCordHandleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->loadHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->cordHandle:I

    .line 150
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mRectHandleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->loadHandle(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->rectHandle:I

    .line 151
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mAlphaHandleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->loadHandle(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->alphaHandle:I

    return-void
.end method

.method public setPosition(II)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 92
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    add-int/2addr v0, p1

    iput v0, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p2

    .line 93
    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 94
    iput p1, v2, Landroid/graphics/Rect;->left:I

    .line 95
    iput p2, v2, Landroid/graphics/Rect;->top:I

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->updateTextureData()V

    return-void
.end method

.method public setSize(II)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 109
    iget p1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->updateTextureData()V

    return-void
.end method

.method public updateBoundary(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mObjectRect:Landroid/graphics/Rect;

    .line 74
    iput-object p2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->updateTextureData()V

    return-void
.end method

.method public updateObjectBoundary(Landroid/graphics/Rect;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mObjectRect:Landroid/graphics/Rect;

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->updateTextureData()V

    return-void
.end method

.method public updateTextureBoundary(Landroid/graphics/Rect;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->mTextureRect:Landroid/graphics/Rect;

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglTexture;->updateTextureData()V

    return-void
.end method
