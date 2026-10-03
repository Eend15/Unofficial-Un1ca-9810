.class public abstract Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;
.super Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;
.source "SourceFile"


# instance fields
.field protected mColorDeltas:[F

.field protected mColorValues:[F


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;)V

    .line 2
    invoke-virtual {p1, p0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->copyFrom(Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;)V

    return-void
.end method

.method public constructor <init>([FI[F)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>([F)V

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->init(I[F)V

    return-void
.end method

.method public constructor <init>([FLandroid/view/animation/Interpolator;I[F)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>([FLandroid/view/animation/Interpolator;)V

    .line 6
    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->init(I[F)V

    return-void
.end method

.method public constructor <init>([F[Landroid/view/animation/Interpolator;I[F)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;-><init>([F[Landroid/view/animation/Interpolator;)V

    .line 8
    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->init(I[F)V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorValues:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorValues:[F

    iget-object v1, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorDeltas:[F

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorDeltas:[F

    iget-object v1, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorValues:[F

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorDeltas:[F

    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/ColorKeyFrameSet;->mColorDeltas:[F

    array-length v0, p0

    invoke-static {p1, v3, p0, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public abstract get(F)I
.end method

.method public abstract init(I[F)V
.end method
