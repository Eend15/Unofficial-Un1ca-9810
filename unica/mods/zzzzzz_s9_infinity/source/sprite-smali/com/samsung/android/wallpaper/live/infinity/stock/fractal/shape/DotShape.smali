.class public Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;
.super Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;
.source "DotShape.java"


# static fields
.field private static final HANDLE_DOT_SIZE_RATIO:Ljava/lang/String; = "uPointSizeRatio"

.field private static final HANDLE_NEAR:Ljava/lang/String; = "uNear"


# instance fields
.field private mDotSizeRatio:F

.field private mDotSizeRatioHandle:I

.field private mNear:F

.field private mNearHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;FLcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;F)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V

    .line 24
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    const-string/jumbo p2, "uNear"

    invoke-virtual {p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->getHandle(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;->mNearHandle:I

    .line 25
    iput p3, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;->mNear:F

    .line 26
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mShader:Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    const-string/jumbo p2, "uPointSizeRatio"

    invoke-virtual {p1, p2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;->getHandle(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;->mDotSizeRatioHandle:I

    .line 27
    iput p5, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;->mDotSizeRatio:F

    return-void
.end method


# virtual methods
.method protected drawElementInner()V
    .locals 2

    .line 37
    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->drawElementInner()V

    .line 39
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;->mDotSizeRatioHandle:I

    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;->mDotSizeRatio:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 40
    iget v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;->mNearHandle:I

    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;->mNear:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 41
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalVertexCnt:I

    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method protected generateShader()Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;
    .locals 3

    .line 32
    new-instance v0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->dot_vert_shader:I

    sget v2, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->dot_frag_shader:I

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public setDotSizeRatio(F)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;->mDotSizeRatio:F

    return-void
.end method

.method public setNear(F)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/DotShape;->mNear:F

    return-void
.end method
