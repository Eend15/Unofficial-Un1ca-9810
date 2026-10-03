.class public Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;
.super Ljava/lang/Object;
.source "ShapeData.java"


# static fields
.field public static final GROUP_TOTAL_CNT:I = 0x5

.field public static final IDX_A:I = 0x6

.field public static final IDX_B:I = 0x5

.field public static final IDX_END_TIME:I = 0x9

.field public static final IDX_G:I = 0x4

.field public static final IDX_GROUP:I = 0x7

.field public static final IDX_R:I = 0x3

.field public static final IDX_START_TIME:I = 0x8

.field public static final IDX_X:I = 0x0

.field public static final IDX_Y:I = 0x1

.field public static final IDX_Z:I = 0x2

.field public static final TOTAL_ELEMENT_SIZE:I = 0xa


# instance fields
.field public faceIndexData:[S

.field public faceVertexData:[F

.field public groupAlpha:[F

.field public totalFaceIndexCnt:I

.field public totalVertexCnt:I

.field public vertexData:[F

.field public vertexIndexMap:[[S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 18
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalVertexCnt:I

    .line 19
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    const/4 v0, 0x5

    new-array v0, v0, [F

    .line 28
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->groupAlpha:[F

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->setGroupAlpha(F)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 18
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalVertexCnt:I

    .line 19
    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    .line 33
    invoke-virtual {p0, p1}, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->copyFrom(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    iget v0, p1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalVertexCnt:I

    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalVertexCnt:I

    .line 40
    iget v0, p1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    iput v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->totalFaceIndexCnt:I

    .line 41
    iget-object v0, p1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexData:[F

    .line 42
    iget-object v0, p1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceVertexData:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceVertexData:[F

    .line 43
    iget-object v0, p1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceIndexData:[S

    invoke-virtual {v0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->faceIndexData:[S

    .line 44
    iget-object v0, p1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->groupAlpha:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->groupAlpha:[F

    .line 45
    iget-object p1, p1, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexIndexMap:[[S

    invoke-virtual {p1}, [[S->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[S

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->vertexIndexMap:[[S

    return-void
.end method

.method public setGroupAlpha(F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/stock/fractal/shape/ShapeData;->groupAlpha:[F

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
