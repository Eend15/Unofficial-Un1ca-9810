.class public Lcom/samsung/android/nexus/base/utils/keyFrameSet/HSVColorKeyFrameSet;
.super Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;
.source "SourceFile"


# static fields
.field protected static final COLOR_HSV_DIMENSION:I = 0x3

.field protected static final OFFSET_HSV_H:I = 0x0

.field protected static final OFFSET_HSV_S:I = 0x1

.field protected static final OFFSET_HSV_V:I = 0x2


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
.method public clone()Lcom/samsung/android/nexus/base/utils/keyFrameSet/HSVColorKeyFrameSet;
    .locals 1

    .line 2
    new-instance v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/HSVColorKeyFrameSet;

    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/HSVColorKeyFrameSet;-><init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;)V

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
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/HSVColorKeyFrameSet;->clone()Lcom/samsung/android/nexus/base/utils/keyFrameSet/HSVColorKeyFrameSet;

    move-result-object p0

    return-object p0
.end method

.method public get(F)I
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->getSectionIndex(F)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->getSubAnimatedFractions(FI)F

    move-result p1

    const/4 v3, 0x3

    mul-int/2addr v2, v3

    iget-object v4, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorValues:[F

    aget v5, v4, v2

    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorDeltas:[F

    aget v6, p0, v2

    mul-float/2addr v6, p1

    add-float/2addr v6, v5

    const/4 v5, 0x0

    cmpg-float v5, v6, v5

    const/high16 v7, 0x43b40000    # 360.0f

    if-gez v5, :cond_0

    add-float/2addr v6, v7

    goto :goto_0

    :cond_0
    cmpl-float v5, v6, v7

    if-lez v5, :cond_1

    sub-float/2addr v6, v7

    :cond_1
    :goto_0
    add-int/lit8 v5, v2, 0x1

    aget v7, v4, v5

    aget v5, p0, v5

    mul-float/2addr v5, p1

    add-float/2addr v5, v7

    add-int/2addr v2, v0

    aget v4, v4, v2

    aget p0, p0, v2

    mul-float/2addr p0, p1

    add-float/2addr p0, v4

    new-array p1, v3, [F

    const/4 v2, 0x0

    aput v6, p1, v2

    aput v5, p1, v1

    aput p0, p1, v0

    const/16 p0, 0xff

    invoke-static {p0, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method public init(I[F)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    mul-int/lit8 v3, v1, 0x3

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

    invoke-static {v6, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    move v6, v5

    move v7, v6

    :goto_0
    move-object v15, v4

    move-object v4, v3

    move-object v3, v15

    if-ge v6, v1, :cond_2

    add-int/lit8 v6, v6, 0x1

    aget v8, p2, v6

    float-to-int v8, v8

    invoke-static {v8, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v8, v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorValues:[F

    aget v9, v3, v5

    aput v9, v8, v7

    add-int/lit8 v9, v7, 0x1

    aget v10, v3, v2

    aput v10, v8, v9

    add-int/lit8 v10, v7, 0x2

    const/4 v11, 0x2

    aget v12, v3, v11

    aput v12, v8, v10

    aget v8, v3, v5

    aget v12, v4, v5

    cmpl-float v13, v8, v12

    const/high16 v14, 0x43b40000    # 360.0f

    if-lez v13, :cond_0

    add-float/2addr v12, v14

    :cond_0
    sub-float/2addr v12, v8

    sub-float v8, v12, v14

    iget-object v13, v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorDeltas:[F

    neg-float v14, v8

    cmpg-float v14, v12, v14

    if-gez v14, :cond_1

    goto :goto_1

    :cond_1
    move v12, v8

    :goto_1
    aput v12, v13, v7

    aget v8, v4, v2

    aget v12, v3, v2

    sub-float/2addr v8, v12

    aput v8, v13, v9

    aget v8, v4, v11

    aget v9, v3, v11

    sub-float/2addr v8, v9

    aput v8, v13, v10

    add-int/lit8 v7, v7, 0x3

    goto :goto_0

    :cond_2
    return-void
.end method
