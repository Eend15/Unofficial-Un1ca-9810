.class public Lcom/samsung/android/nexus/egl/data/ShapeData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BOUNDARY_HEADER_SIZE:I = 0x6

.field public static final IDX_BOTTOM:I = 0x2

.field public static final IDX_COLOR_A:I = 0x9

.field public static final IDX_COLOR_B:I = 0x8

.field public static final IDX_COLOR_G:I = 0x7

.field public static final IDX_COLOR_R:I = 0x6

.field public static final IDX_DIFFUSE_BLUE:I = 0x2

.field public static final IDX_DIFFUSE_GREEN:I = 0x1

.field public static final IDX_DIFFUSE_RED:I = 0x0

.field public static final IDX_FAR:I = 0x4

.field public static final IDX_HAS_COLORS:I = 0x4

.field public static final IDX_HAS_LIGHT:I = 0x5

.field public static final IDX_HAS_NORMALS:I = 0x3

.field public static final IDX_INDEX_SIZE:I = 0x0

.field public static final IDX_LEFT:I = 0x0

.field public static final IDX_NEAR:I = 0x5

.field public static final IDX_NORMAL_X:I = 0x3

.field public static final IDX_NORMAL_Y:I = 0x4

.field public static final IDX_NORMAL_Z:I = 0x5

.field public static final IDX_RIGHT:I = 0x1

.field public static final IDX_TEXTURE_COORD_SIZE:I = 0x2

.field public static final IDX_TOP:I = 0x3

.field public static final IDX_U:I = 0x0

.field public static final IDX_V:I = 0x1

.field public static final IDX_VERTEX_SIZE:I = 0x1

.field public static final IDX_X:I = 0x0

.field public static final IDX_Y:I = 0x1

.field public static final IDX_Z:I = 0x2

.field public static final LIGHT_HEADER_SIZE:I = 0x3

.field public static final OBJECT_HEADER_SIZE:I = 0x6

.field public static final TEXTURE_ELEMENT_CNT:I = 0x2


# instance fields
.field public boundaryData:[F

.field public hasColors:Z

.field public hasLight:Z

.field public hasNormals:Z

.field public indexData:[S

.field public indexDataSize:I

.field public light:Lcom/samsung/android/nexus/egl/object/Light;

.field public textureCoordData:[F

.field public textureCoordDataSize:I

.field public totalVertexCnt:I

.field public vertexData:[F

.field public vertexDataSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasLight:Z

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasNormals:Z

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasColors:Z

    .line 5
    iput v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexDataSize:I

    .line 6
    iput v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexDataSize:I

    .line 7
    iput v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordDataSize:I

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->boundaryData:[F

    .line 9
    iput-object v1, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    .line 10
    iput-object v1, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexData:[S

    .line 11
    iput-object v1, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordData:[F

    .line 12
    iput-object v1, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->light:Lcom/samsung/android/nexus/egl/object/Light;

    .line 13
    iput v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->totalVertexCnt:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/egl/data/ShapeData;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->totalVertexCnt:I

    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasLight:Z

    .line 17
    iput-boolean v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasNormals:Z

    .line 18
    iput-boolean v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasColors:Z

    .line 19
    iput v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexDataSize:I

    .line 20
    iput v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexDataSize:I

    .line 21
    iput v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordDataSize:I

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->boundaryData:[F

    .line 23
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    .line 24
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexData:[S

    .line 25
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordData:[F

    .line 26
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->light:Lcom/samsung/android/nexus/egl/object/Light;

    .line 27
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/egl/data/ShapeData;->copyFrom(Lcom/samsung/android/nexus/egl/data/ShapeData;)V

    return-void
.end method

.method private getStrideSize()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasNormals:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iget-boolean p0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasColors:Z

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x4

    :cond_1
    return v0
.end method

.method private offset(IF)Lcom/samsung/android/nexus/egl/data/ShapeData;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/data/ShapeData;->getStrideSize()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->totalVertexCnt:I

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    mul-int v3, v1, v0

    add-int/2addr v3, p1

    aget v4, v2, v3

    add-float/2addr v4, p2

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private scale(IF)Lcom/samsung/android/nexus/egl/data/ShapeData;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/data/ShapeData;->getStrideSize()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->totalVertexCnt:I

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    mul-int v3, v1, v0

    add-int/2addr v3, p1

    aget v4, v2, v3

    mul-float/2addr v4, p2

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public copyFrom(Lcom/samsung/android/nexus/egl/data/ShapeData;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/samsung/android/nexus/egl/data/ShapeData;->totalVertexCnt:I

    iput v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->totalVertexCnt:I

    iget-boolean v0, p1, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasLight:Z

    iput-boolean v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasLight:Z

    iget-boolean v0, p1, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasNormals:Z

    iput-boolean v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasNormals:Z

    iget-boolean v0, p1, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasColors:Z

    iput-boolean v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasColors:Z

    iget v0, p1, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexDataSize:I

    iput v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexDataSize:I

    iget v0, p1, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexDataSize:I

    iput v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexDataSize:I

    iget v0, p1, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordDataSize:I

    iput v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordDataSize:I

    iget-object v0, p1, Lcom/samsung/android/nexus/egl/data/ShapeData;->boundaryData:[F

    if-eqz v0, :cond_1

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->boundaryData:[F

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    if-eqz v0, :cond_2

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    :cond_2
    iget-object v0, p1, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexData:[S

    if-eqz v0, :cond_3

    invoke-virtual {v0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexData:[S

    :cond_3
    iget-object v0, p1, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordData:[F

    if-eqz v0, :cond_4

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordData:[F

    :cond_4
    iget-object p1, p1, Lcom/samsung/android/nexus/egl/data/ShapeData;->light:Lcom/samsung/android/nexus/egl/object/Light;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/nexus/egl/object/Light;->clone()Lcom/samsung/android/nexus/egl/object/Light;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->light:Lcom/samsung/android/nexus/egl/object/Light;

    :cond_5
    return-void
.end method

.method public offset(FFF)Lcom/samsung/android/nexus/egl/data/ShapeData;
    .locals 6

    .line 5
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    if-nez v0, :cond_0

    return-object p0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/data/ShapeData;->getStrideSize()I

    move-result v0

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget v2, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->totalVertexCnt:I

    if-ge v1, v2, :cond_1

    mul-int v2, v1, v0

    .line 8
    iget-object v3, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    aget v4, v3, v2

    add-float/2addr v4, p1

    aput v4, v3, v2

    add-int/lit8 v4, v2, 0x1

    .line 9
    aget v5, v3, v4

    add-float/2addr v5, p2

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x2

    .line 10
    aget v4, v3, v2

    add-float/2addr v4, p3

    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public offsetX(F)Lcom/samsung/android/nexus/egl/data/ShapeData;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/nexus/egl/data/ShapeData;->offset(IF)Lcom/samsung/android/nexus/egl/data/ShapeData;

    move-result-object p0

    return-object p0
.end method

.method public offsetY(F)Lcom/samsung/android/nexus/egl/data/ShapeData;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/nexus/egl/data/ShapeData;->offset(IF)Lcom/samsung/android/nexus/egl/data/ShapeData;

    move-result-object p0

    return-object p0
.end method

.method public offsetZ(F)Lcom/samsung/android/nexus/egl/data/ShapeData;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/nexus/egl/data/ShapeData;->offset(IF)Lcom/samsung/android/nexus/egl/data/ShapeData;

    move-result-object p0

    return-object p0
.end method

.method public scale(FFF)Lcom/samsung/android/nexus/egl/data/ShapeData;
    .locals 6

    .line 5
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    if-nez v0, :cond_0

    return-object p0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/data/ShapeData;->getStrideSize()I

    move-result v0

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget v2, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->totalVertexCnt:I

    if-ge v1, v2, :cond_1

    mul-int v2, v1, v0

    .line 8
    iget-object v3, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexData:[F

    aget v4, v3, v2

    mul-float/2addr v4, p1

    aput v4, v3, v2

    add-int/lit8 v4, v2, 0x1

    .line 9
    aget v5, v3, v4

    mul-float/2addr v5, p2

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x2

    .line 10
    aget v4, v3, v2

    mul-float/2addr v4, p3

    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public scaleX(F)Lcom/samsung/android/nexus/egl/data/ShapeData;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/nexus/egl/data/ShapeData;->scale(IF)Lcom/samsung/android/nexus/egl/data/ShapeData;

    move-result-object p0

    return-object p0
.end method

.method public scaleY(F)Lcom/samsung/android/nexus/egl/data/ShapeData;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/nexus/egl/data/ShapeData;->scale(IF)Lcom/samsung/android/nexus/egl/data/ShapeData;

    move-result-object p0

    return-object p0
.end method

.method public scaleZ(F)Lcom/samsung/android/nexus/egl/data/ShapeData;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/nexus/egl/data/ShapeData;->scale(IF)Lcom/samsung/android/nexus/egl/data/ShapeData;

    move-result-object p0

    return-object p0
.end method

.method public setDataSize([I)V
    .locals 3

    if-eqz p1, :cond_4

    array-length v0, p1

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x5

    aget v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasLight:Z

    const/4 v0, 0x3

    aget v0, p1, v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasNormals:Z

    const/4 v0, 0x4

    aget v0, p1, v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->hasColors:Z

    aget v0, p1, v1

    iput v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->indexDataSize:I

    aget v0, p1, v2

    iput v0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->vertexDataSize:I

    const/4 v0, 0x2

    aget p1, p1, v0

    iput p1, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->textureCoordDataSize:I

    :cond_4
    :goto_3
    return-void
.end method

.method public toBoundaryString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Boundary l = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->boundaryData:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", r = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->boundaryData:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", b = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->boundaryData:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", t = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->boundaryData:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", f = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->boundaryData:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", n = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/data/ShapeData;->boundaryData:[F

    const/4 v1, 0x5

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
