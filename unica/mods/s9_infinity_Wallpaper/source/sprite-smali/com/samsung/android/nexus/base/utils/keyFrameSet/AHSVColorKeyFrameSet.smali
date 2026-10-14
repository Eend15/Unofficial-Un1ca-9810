.class public Lcom/samsung/android/nexus/base/utils/keyFrameSet/AHSVColorKeyFrameSet;
.super Lcom/samsung/android/nexus/base/utils/keyFrameSet/HSVColorKeyFrameSet;
.source "SourceFile"


# static fields
.field protected static final COLOR_AHSV_DIMENSION:I = 0x4

.field protected static final OFFSET_AHSV_A:I = 0x0

.field protected static final OFFSET_AHSV_H:I = 0x1

.field protected static final OFFSET_AHSV_S:I = 0x2

.field protected static final OFFSET_AHSV_V:I = 0x3


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/HSVColorKeyFrameSet;-><init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;)V

    return-void
.end method

.method public constructor <init>([FI[F)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/HSVColorKeyFrameSet;-><init>([FI[F)V

    return-void
.end method

.method public constructor <init>([FLandroid/view/animation/Interpolator;I[F)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/HSVColorKeyFrameSet;-><init>([FLandroid/view/animation/Interpolator;I[F)V

    return-void
.end method

.method public constructor <init>([F[Landroid/view/animation/Interpolator;I[F)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/HSVColorKeyFrameSet;-><init>([F[Landroid/view/animation/Interpolator;I[F)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/nexus/base/utils/keyFrameSet/AHSVColorKeyFrameSet;
    .locals 1

    .line 3
    new-instance v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/AHSVColorKeyFrameSet;

    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/AHSVColorKeyFrameSet;-><init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/nexus/base/utils/keyFrameSet/HSVColorKeyFrameSet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/AHSVColorKeyFrameSet;->clone()Lcom/samsung/android/nexus/base/utils/keyFrameSet/AHSVColorKeyFrameSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/AHSVColorKeyFrameSet;->clone()Lcom/samsung/android/nexus/base/utils/keyFrameSet/AHSVColorKeyFrameSet;

    move-result-object p0

    return-object p0
.end method

.method public get(F)I
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->getSectionIndex(F)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->getSubAnimatedFractions(FI)F

    move-result p1

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorValues:[F

    aget v4, v3, v2

    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorDeltas:[F

    aget v5, p0, v2

    mul-float/2addr v5, p1

    add-float/2addr v5, v4

    float-to-int v4, v5

    const/4 v5, 0x1

    add-int/lit8 v6, v2, 0x1

    aget v7, v3, v6

    aget v6, p0, v6

    mul-float/2addr v6, p1

    add-float/2addr v6, v7

    const/4 v7, 0x0

    cmpg-float v7, v6, v7

    const/high16 v8, 0x43b40000    # 360.0f

    if-gez v7, :cond_0

    add-float/2addr v6, v8

    goto :goto_0

    :cond_0
    cmpl-float v7, v6, v8

    if-lez v7, :cond_1

    sub-float/2addr v6, v8

    :cond_1
    :goto_0
    add-int/lit8 v7, v2, 0x2

    aget v8, v3, v7

    aget v7, p0, v7

    mul-float/2addr v7, p1

    add-float/2addr v7, v8

    add-int/2addr v2, v0

    aget v3, v3, v2

    aget p0, p0, v2

    mul-float/2addr p0, p1

    add-float/2addr p0, v3

    new-array p1, v0, [F

    const/4 v0, 0x0

    aput v6, p1, v0

    aput v7, p1, v5

    aput p0, p1, v1

    invoke-static {v4, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method public init(I[F)V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    mul-int/lit8 v3, v1, 0x4

    new-array v4, v3, [F

    iput-object v4, v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorValues:[F

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorDeltas:[F

    const/4 v3, 0x3

    new-array v4, v3, [F

    new-array v3, v3, [F

    const/4 v5, 0x0

    aget v6, p2, v5

    float-to-int v6, v6

    ushr-int/lit8 v7, v6, 0x18

    invoke-static {v6, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    move v6, v5

    move v8, v6

    :goto_0
    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    if-ge v6, v1, :cond_2

    add-int/lit8 v6, v6, 0x1

    aget v9, p2, v6

    float-to-int v9, v9

    ushr-int/lit8 v10, v9, 0x18

    invoke-static {v9, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v9, v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorValues:[F

    int-to-float v11, v7

    aput v11, v9, v8

    add-int/lit8 v11, v8, 0x1

    aget v12, v3, v5

    aput v12, v9, v11

    add-int/lit8 v12, v8, 0x2

    aget v13, v3, v2

    aput v13, v9, v12

    add-int/lit8 v13, v8, 0x3

    const/4 v14, 0x2

    aget v15, v3, v14

    aput v15, v9, v13

    aget v9, v3, v5

    aget v15, v4, v5

    cmpl-float v16, v9, v15

    const/high16 v17, 0x43b40000    # 360.0f

    if-lez v16, :cond_0

    add-float v15, v15, v17

    :cond_0
    sub-float/2addr v15, v9

    sub-float v9, v15, v17

    iget-object v5, v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorDeltas:[F

    sub-int v7, v10, v7

    int-to-float v7, v7

    aput v7, v5, v8

    neg-float v7, v9

    cmpg-float v7, v15, v7

    if-gez v7, :cond_1

    goto :goto_1

    :cond_1
    move v15, v9

    :goto_1
    aput v15, v5, v11

    aget v7, v4, v2

    aget v9, v3, v2

    sub-float/2addr v7, v9

    aput v7, v5, v12

    aget v7, v4, v14

    aget v9, v3, v14

    sub-float/2addr v7, v9

    aput v7, v5, v13

    add-int/lit8 v8, v8, 0x4

    move v7, v10

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method
