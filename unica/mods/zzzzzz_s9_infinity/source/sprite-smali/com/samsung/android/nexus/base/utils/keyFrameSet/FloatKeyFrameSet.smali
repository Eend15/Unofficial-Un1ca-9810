.class public Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;
.super Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;
.source "SourceFile"


# instance fields
.field protected mDeltas:[F

.field protected mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->copyFrom(Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;)V

    return-void
.end method

.method public constructor <init>([FLandroid/view/animation/Interpolator;[F)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>([FLandroid/view/animation/Interpolator;)V

    .line 7
    invoke-direct {p0, p3}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->init([F)V

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>([F)V

    .line 5
    invoke-direct {p0, p2}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->init([F)V

    return-void
.end method

.method public constructor <init>([F[Landroid/view/animation/Interpolator;[F)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>([F[Landroid/view/animation/Interpolator;)V

    .line 9
    invoke-direct {p0, p3}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->init([F)V

    return-void
.end method

.method private init([F)V
    .locals 6

    iget v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget v4, p1, v3

    iget-object v5, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    aput v2, v5, v1

    iget-object v5, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    sub-float v2, v4, v2

    aput v2, v5, v1

    move v1, v3

    move v2, v4

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;
    .locals 1

    .line 2
    new-instance v0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;-><init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;)V

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
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->clone()Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    move-result-object p0

    return-object p0
.end method

.method public copyFrom(Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    iget-object v1, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    iget-object v1, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    array-length v0, p0

    invoke-static {p1, v3, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public get(F)F
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->getSectionIndex(F)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    aget v2, v2, v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->getSubAnimatedFractions(FI)F

    move-result p0

    mul-float/2addr p0, v2

    add-float/2addr p0, v1

    return p0
.end method

.method public set([FLandroid/view/animation/Interpolator;[Landroid/view/animation/Interpolator;[F)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->set([FLandroid/view/animation/Interpolator;[Landroid/view/animation/Interpolator;)V

    iget p1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    add-int/lit8 p1, p1, -0x1

    iput-object p4, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    iget-object p2, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    if-eqz p2, :cond_0

    array-length p2, p2

    if-eq p1, p2, :cond_1

    :cond_0
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    :cond_1
    const/4 p2, 0x0

    aget p3, p4, p2

    :goto_0
    if-ge p2, p1, :cond_2

    add-int/lit8 v0, p2, 0x1

    aget v1, p4, v0

    iget-object v2, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    sub-float p3, v1, p3

    aput p3, v2, p2

    move p2, v0

    move p3, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FloatKeyFrameSet{mValues="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeltas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->mDeltas:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fractionPositions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", interpolators="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
