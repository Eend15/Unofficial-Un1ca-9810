.class public Lcom/samsung/android/nexus/base/utils/keyFrameSet/ARGBColorKeyFrameSet;
.super Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;
.source "SourceFile"


# static fields
.field protected static final COLOR_ARGB_DIMENSION:I = 0x4

.field protected static final OFFSET_ARGB_A:I = 0x0

.field protected static final OFFSET_ARGB_B:I = 0x3

.field protected static final OFFSET_ARGB_G:I = 0x2

.field protected static final OFFSET_ARGB_R:I = 0x1


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;-><init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;)V

    return-void
.end method

.method public constructor <init>([FI[F)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;-><init>([FI[F)V

    return-void
.end method

.method public constructor <init>([FLandroid/view/animation/Interpolator;I[F)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;-><init>([FLandroid/view/animation/Interpolator;I[F)V

    return-void
.end method

.method public constructor <init>([F[Landroid/view/animation/Interpolator;I[F)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;-><init>([F[Landroid/view/animation/Interpolator;I[F)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/nexus/base/utils/keyFrameSet/ARGBColorKeyFrameSet;
    .locals 1

    .line 2
    new-instance v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ARGBColorKeyFrameSet;

    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ARGBColorKeyFrameSet;-><init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ARGBColorKeyFrameSet;->clone()Lcom/samsung/android/nexus/base/utils/keyFrameSet/ARGBColorKeyFrameSet;

    move-result-object p0

    return-object p0
.end method

.method public get(F)I
    .locals 6

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->getSectionIndex(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->getSubAnimatedFractions(FI)F

    move-result p1

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorValues:[F

    aget v2, v1, v0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorDeltas:[F

    aget v3, p0, v0

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    float-to-int v2, v3

    add-int/lit8 v3, v0, 0x1

    aget v4, v1, v3

    aget v3, p0, v3

    mul-float/2addr v3, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v4, v0, 0x2

    aget v5, v1, v4

    aget v4, p0, v4

    mul-float/2addr v4, p1

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v0, v0, 0x3

    aget v1, v1, v0

    aget p0, p0, v0

    mul-float/2addr p0, p1

    add-float/2addr p0, v1

    float-to-int p0, p0

    shl-int/lit8 p1, v2, 0x18

    shl-int/lit8 v0, v3, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v4, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public init(I[F)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v2, v1, 0x4

    new-array v3, v2, [F

    iput-object v3, v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorValues:[F

    new-array v2, v2, [F

    iput-object v2, v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorDeltas:[F

    const/4 v2, 0x0

    aget v3, p2, v2

    float-to-int v3, v3

    ushr-int/lit8 v4, v3, 0x18

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v3, v3, 0xff

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    aget v8, p2, v2

    float-to-int v8, v8

    ushr-int/lit8 v9, v8, 0x18

    shr-int/lit8 v10, v8, 0x10

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v11, v8, 0x8

    and-int/lit16 v11, v11, 0xff

    and-int/lit16 v8, v8, 0xff

    iget-object v12, v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorValues:[F

    int-to-float v13, v5

    aput v13, v12, v3

    add-int/lit8 v13, v3, 0x1

    int-to-float v14, v6

    aput v14, v12, v13

    add-int/lit8 v14, v3, 0x2

    int-to-float v15, v7

    aput v15, v12, v14

    add-int/lit8 v15, v3, 0x3

    move/from16 p1, v1

    int-to-float v1, v4

    aput v1, v12, v15

    iget-object v1, v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorDeltas:[F

    sub-int v5, v9, v5

    int-to-float v5, v5

    aput v5, v1, v3

    sub-int v5, v10, v6

    int-to-float v5, v5

    aput v5, v1, v13

    sub-int v5, v11, v7

    int-to-float v5, v5

    aput v5, v1, v14

    sub-int v4, v8, v4

    int-to-float v4, v4

    aput v4, v1, v15

    add-int/lit8 v3, v3, 0x4

    move/from16 v1, p1

    move v4, v8

    move v5, v9

    move v6, v10

    move v7, v11

    goto :goto_0

    :cond_0
    return-void
.end method
