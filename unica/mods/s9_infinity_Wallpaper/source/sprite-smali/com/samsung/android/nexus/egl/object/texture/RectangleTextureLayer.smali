.class public Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
.super Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;
.source "SourceFile"


# static fields
.field private static final DEFAULT_INDICES:[S

.field private static final DEFAULT_VERTICES:[F

.field public static final PIVOT_TYPE_CENTER:I = 0x0

.field public static final PIVOT_TYPE_LEFT_TOP:I = 0x1


# instance fields
.field protected mAngle:F

.field protected mObjectRect:Landroid/graphics/Rect;

.field protected mOffsetX:F

.field protected mOffsetY:F

.field protected mOffsetZ:F

.field protected mRotationMatrix:[F

.field protected mRotationX:F

.field protected mRotationY:F

.field protected mRotationZ:F

.field protected mScale:F

.field protected mZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->DEFAULT_VERTICES:[F

    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->DEFAULT_INDICES:[S

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
        0x2s
        0x3s
        0x0s
        0x3s
        0x1s
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;-><init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->DEFAULT_VERTICES:[F

    sget-object v1, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->DEFAULT_COORD:[F

    sget-object v2, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->DEFAULT_INDICES:[S

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;-><init>(Landroid/graphics/Bitmap;[F[F[S)V

    const/16 p2, 0x10

    .line 3
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationMatrix:[F

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mZ:F

    .line 5
    iput p2, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetX:F

    .line 6
    iput p2, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetY:F

    .line 7
    iput p2, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetZ:F

    .line 8
    iput p2, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mAngle:F

    .line 9
    iput p2, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationX:F

    .line 10
    iput p2, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationY:F

    .line 11
    iput p2, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationZ:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 12
    iput p2, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mScale:F

    .line 13
    iput-object p1, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    return-void
.end method

.method private applySize(FFFI)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mScale:F

    iget-object v2, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez p4, :cond_0

    sub-float v2, p2, v2

    const/high16 v16, 0x40000000    # 2.0f

    div-float v2, v2, v16

    sub-float v3, p3, v3

    div-float v3, v3, v16

    iget-object v4, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v5, v2

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    add-float/2addr v7, v2

    float-to-int v2, v7

    iput v2, v4, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    sub-float/2addr v7, v3

    float-to-int v3, v7

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v5

    iget v5, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetX:F

    add-float/2addr v4, v5

    int-to-float v2, v2

    add-float/2addr v2, v5

    int-to-float v5, v6

    iget v6, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetY:F

    add-float/2addr v5, v6

    int-to-float v3, v3

    add-float/2addr v3, v6

    add-float v6, v4, v2

    div-float v6, v6, v16

    add-float v7, v5, v3

    div-float v7, v7, v16

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v1

    div-float v2, v2, v16

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v1

    div-float v3, v3, v16

    sub-float v1, v6, v2

    float-to-int v1, v1

    add-float/2addr v6, v2

    float-to-int v2, v6

    add-float v4, v7, v3

    float-to-int v4, v4

    sub-float/2addr v7, v3

    float-to-int v3, v7

    iget-object v5, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    int-to-float v1, v1

    invoke-virtual {v5, v15, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v5, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    int-to-float v4, v4

    invoke-virtual {v5, v14, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v5, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v6, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetZ:F

    invoke-virtual {v5, v13, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v5, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    int-to-float v2, v2

    invoke-virtual {v5, v12, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v5, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v11, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v5, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetZ:F

    invoke-virtual {v4, v10, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v9, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    int-to-float v3, v3

    invoke-virtual {v1, v8, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v4, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetZ:F

    const/16 v5, 0x8

    invoke-virtual {v1, v5, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v0, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetZ:F

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_0

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    add-float v3, v3, p2

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, v3, p3

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    int-to-float v2, v2

    iget v3, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mScale:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetX:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v15, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mScale:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetY:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v14, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v2, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetZ:F

    invoke-virtual {v1, v13, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mScale:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetX:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v12, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mScale:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetY:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v11, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v2, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetZ:F

    invoke-virtual {v1, v10, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mScale:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetX:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v9, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mScale:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetY:F

    add-float/2addr v2, v3

    invoke-virtual {v1, v8, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v2, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetZ:F

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mScale:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetX:F

    add-float/2addr v2, v3

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mScale:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetY:F

    add-float/2addr v2, v3

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v0, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetZ:F

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    :goto_0
    return-void
.end method

.method private updateRotationMatrix()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationMatrix:[F

    iget v4, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mAngle:F

    iget v5, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationX:F

    iget v6, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationY:F

    iget v7, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationZ:F

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method private updateVertices()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/4 v4, 0x4

    new-array v9, v4, [F

    neg-float v5, v1

    const/4 v11, 0x0

    aput v5, v9, v11

    const/4 v12, 0x1

    aput v3, v9, v12

    const/4 v13, 0x2

    const/4 v6, 0x0

    aput v6, v9, v13

    const/4 v14, 0x3

    aput v6, v9, v14

    new-array v15, v4, [F

    aput v1, v15, v11

    aput v3, v15, v12

    aput v6, v15, v13

    aput v6, v15, v14

    new-array v10, v4, [F

    aput v5, v10, v11

    neg-float v3, v3

    aput v3, v10, v12

    aput v6, v10, v13

    aput v6, v10, v14

    new-array v8, v4, [F

    aput v1, v8, v11

    aput v3, v8, v12

    aput v6, v8, v13

    aput v6, v8, v14

    iget v1, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mAngle:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_0

    new-array v1, v4, [F

    new-array v3, v4, [F

    new-array v7, v4, [F

    new-array v6, v4, [F

    iget-object v5, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationMatrix:[F

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v5

    move-object v5, v1

    move-object/from16 v22, v6

    move/from16 v6, v18

    move-object/from16 v23, v7

    move-object/from16 v7, v19

    move-object/from16 v24, v8

    move/from16 v8, v16

    move-object/from16 v21, v10

    move/from16 v10, v17

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v5, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationMatrix:[F

    const/16 v20, 0x0

    move-object v6, v15

    move-object v15, v3

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    invoke-static/range {v15 .. v20}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v5, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationMatrix:[F

    const/16 v19, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v23

    move-object/from16 v18, v5

    move-object/from16 v20, v21

    move/from16 v21, v6

    invoke-static/range {v16 .. v21}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    iget-object v5, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationMatrix:[F

    const/16 v21, 0x0

    move-object/from16 v16, v22

    move-object/from16 v18, v5

    move-object/from16 v20, v24

    invoke-static/range {v16 .. v21}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    move-object v9, v1

    move-object/from16 v8, v22

    move-object/from16 v10, v23

    goto :goto_0

    :cond_0
    move-object/from16 v24, v8

    move-object/from16 v21, v10

    move-object v6, v15

    :goto_0
    iget-object v1, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v1

    int-to-float v1, v5

    div-float/2addr v1, v2

    iget v2, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetX:F

    add-float/2addr v3, v2

    iget v2, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetY:F

    add-float/2addr v1, v2

    iget v2, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mZ:F

    iget v5, v0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetZ:F

    add-float/2addr v2, v5

    iget-object v5, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v0, Lcom/samsung/android/nexus/egl/object/BaseObjectLayer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    aget v5, v9, v11

    add-float/2addr v5, v3

    aget v6, v9, v12

    add-float/2addr v6, v1

    aget v7, v15, v11

    add-float/2addr v7, v3

    aget v9, v15, v12

    add-float/2addr v9, v1

    aget v15, v10, v11

    add-float/2addr v15, v3

    aget v10, v10, v12

    add-float/2addr v10, v1

    aget v16, v8, v11

    add-float v16, v16, v3

    aget v3, v8, v12

    add-float/2addr v3, v1

    const/16 v1, 0xc

    new-array v1, v1, [F

    aput v5, v1, v11

    aput v6, v1, v12

    aput v2, v1, v13

    aput v7, v1, v14

    aput v9, v1, v4

    const/4 v4, 0x5

    aput v2, v1, v4

    const/4 v4, 0x6

    aput v15, v1, v4

    const/4 v4, 0x7

    aput v10, v1, v4

    const/16 v4, 0x8

    aput v2, v1, v4

    const/16 v4, 0x9

    aput v16, v1, v4

    const/16 v4, 0xa

    aput v3, v1, v4

    const/16 v3, 0xb

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
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

.method public getHeight()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getOffsetX()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetX:F

    return p0
.end method

.method public getOffsetY()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetY:F

    return p0
.end method

.method public getOffsetZ()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetZ:F

    return p0
.end method

.method public getScale()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mScale:F

    return p0
.end method

.method public getWidth()F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public init()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/nexus/egl/object/texture/TextureLayer;->init()V

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->updateRotationMatrix()V

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->updateVertices()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSensorChanged(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 2
    return-void
.end method

.method public setOffset(FFF)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetX:F

    iput p2, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetY:F

    iput p3, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetZ:F

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->updateVertices()V

    return-object p0
.end method

.method public setOffsetX(F)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetX:F

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->updateVertices()V

    return-object p0
.end method

.method public setOffsetXY(FF)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetX:F

    iput p2, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetY:F

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->updateVertices()V

    return-object p0
.end method

.method public setOffsetY(F)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetY:F

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->updateVertices()V

    return-object p0
.end method

.method public setOffsetZ(F)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mOffsetZ:F

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->updateVertices()V

    return-object p0
.end method

.method public setPosition(FFF)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    iput p1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    float-to-int p2, p2

    iput p2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    iput p3, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mZ:F

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->updateVertices()V

    return-object p0
.end method

.method public setRotation(FFFF)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mAngle:F

    iput p2, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationX:F

    iput p3, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationY:F

    iput p4, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mRotationZ:F

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->updateRotationMatrix()V

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->updateVertices()V

    return-object p0
.end method

.method public setScale(F)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->applySize(FFFI)V

    return-object p0
.end method

.method public setScale(FI)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->applySize(FFFI)V

    return-object p0
.end method

.method public setSize(FF)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mScale:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->applySize(FFFI)V

    return-object p0
.end method

.method public setSize(FFI)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
    .locals 1

    .line 2
    iget v0, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mScale:F

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->applySize(FFFI)V

    return-object p0
.end method

.method public setX(F)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    iput p1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->updateVertices()V

    return-object p0
.end method

.method public setY(F)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    float-to-int p1, p1

    iput p1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->updateVertices()V

    return-object p0
.end method

.method public setZ(F)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mZ:F

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->updateVertices()V

    return-object p0
.end method

.method public updateBoundary(Landroid/graphics/Rect;)Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->mObjectRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/object/texture/RectangleTextureLayer;->updateVertices()V

    return-object p0
.end method
