.class public Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;
.super Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;
.source "Shape.java"


# static fields
.field protected static final HANDLE_GROUP_ALPHA:Ljava/lang/String; = "uGroupAlpha"

.field protected static final HANDLE_OVER_BRIGHTNESS:Ljava/lang/String; = "uOverBrightness"


# instance fields
.field protected mGroupAlphaHandle:I

.field protected mOverBrightness:F

.field protected mOverBrightnessHandle:I

.field protected mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

.field protected mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mType:I

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mOverBrightness:F

    .line 29
    iput p4, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mType:I

    .line 30
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    const-string/jumbo p2, "uGroupAlpha"

    invoke-virtual {p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->getHandle(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mGroupAlphaHandle:I

    .line 31
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    const-string/jumbo p2, "uOverBrightness"

    invoke-virtual {p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->getHandle(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mOverBrightnessHandle:I

    .line 32
    invoke-virtual {p0, p3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->updateShapeData(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V

    return-void
.end method


# virtual methods
.method protected drawElementInner()V
    .locals 4

    .line 42
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mGroupAlphaHandle:I

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object v1, v1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->groupAlpha:[F

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 43
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mOverBrightnessHandle:I

    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mOverBrightness:F

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method protected generateElementNameList()[Ljava/lang/String;
    .locals 4

    const-string p0, "aPosition"

    const-string v0, "aColor"

    const-string v1, "aGroup"

    const-string v2, "aStartTime"

    const-string v3, "aEndTime"

    .line 59
    filled-new-array {p0, v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected generateElementSizeList()[I
    .locals 0

    const/4 p0, 0x5

    new-array p0, p0, [I

    .line 48
    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3
        0x4
        0x1
        0x1
        0x1
    .end array-data
.end method

.method protected generateShader()Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVertexBuffer()Ljava/nio/FloatBuffer;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public setOverBrightness(F)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mOverBrightness:F

    return-void
.end method

.method public updateGroup([F)V
    .locals 4

    if-eqz p1, :cond_1

    .line 82
    array-length v0, p1

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget v1, v1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalVertexCnt:I

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget v1, v1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalVertexCnt:I

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x7

    .line 86
    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mVertexBuffer:Ljava/nio/FloatBuffer;

    aget v3, p1, v0

    invoke-virtual {v2, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateShapeData(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    .line 73
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object p1, p1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceIndexData:[S

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->generateIndexBuffer([S)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;

    .line 74
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object p1, p1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->generateVertexBuffer([F)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;

    return-void
.end method
