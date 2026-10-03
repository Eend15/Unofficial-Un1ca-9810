.class public Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/TriangleShape;
.super Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;
.source "TriangleShape.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V

    return-void
.end method


# virtual methods
.method protected drawElementInner()V
    .locals 3

    .line 23
    invoke-super {p0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->drawElementInner()V

    .line 24
    iget-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget v0, v0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v1, 0x4

    const/16 v2, 0x1403

    invoke-static {v1, v0, v2, p0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method protected generateShader()Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;
    .locals 3

    .line 18
    new-instance v0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->triangle_vert_shader:I

    sget v2, Lcom/samsung/android/wallpaper/live/infinity/stock/StockRaw;->triangle_frag_shader:I

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/WbglShader;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public updateShapeData(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    .line 31
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object p1, p1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceIndexData:[S

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->generateIndexBuffer([S)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;

    .line 32
    iget-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/Shape;->mShapeData:Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;

    iget-object p1, p1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceVertexData:[F

    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;->generateVertexBuffer([F)Lcom/samsung/android/wallpaper/live/infinity/stock/wbgl/object/WbglShape;

    return-void
.end method
