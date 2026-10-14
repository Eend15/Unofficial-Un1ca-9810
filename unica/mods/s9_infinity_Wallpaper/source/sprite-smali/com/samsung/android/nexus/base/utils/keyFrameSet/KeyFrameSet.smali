.class public abstract Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field fractionPositions:[F

.field interpolator:Landroid/view/animation/Interpolator;

.field interpolators:[Landroid/view/animation/Interpolator;

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->TAG:Ljava/lang/String;

    .line 5
    iget v0, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    .line 6
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    .line 7
    iget-object v2, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object v0, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolator:Landroid/view/animation/Interpolator;

    .line 9
    iget-object p1, p1, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    if-eqz p1, :cond_0

    .line 10
    array-length p1, p1

    new-array p1, p1, [Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    .line 11
    array-length p0, p1

    invoke-static {p1, v3, p1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    :goto_0
    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->init([FLandroid/view/animation/Interpolator;[Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>([FLandroid/view/animation/Interpolator;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->init([FLandroid/view/animation/Interpolator;[Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>([F[Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->init([FLandroid/view/animation/Interpolator;[Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private validatePositionOrders([F)V
    .locals 3

    array-length p0, p1

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p0, :cond_1

    aget v2, p1, v1

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "positions are MUST Ascending"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public getSectionIndex(F)I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    aget v3, v3, v0

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    move v5, v2

    move v2, v0

    move v0, v5

    goto :goto_0

    :cond_0
    if-gez v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSectionIndex: -1 : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    aget p0, p0, v1

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method

.method public getSubAnimatedFractions(FI)F
    .locals 3

    if-gez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    aget v1, v0, p2

    add-int/lit8 v2, p2, 0x1

    aget v0, v0, v2

    sub-float/2addr p1, v1

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    if-eqz p0, :cond_2

    aget-object v0, p0, p2

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :cond_3
    return p1
.end method

.method public init([FLandroid/view/animation/Interpolator;[Landroid/view/animation/Interpolator;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->validatePositionOrders([F)V

    array-length v0, p1

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p3, :cond_1

    array-length p1, p3

    iget v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    array-length p1, p3

    new-array v0, p1, [Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    invoke-static {p3, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "interpolator length MUST be >= 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolator:Landroid/view/animation/Interpolator;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "position length MUST be >= 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set([FLandroid/view/animation/Interpolator;[Landroid/view/animation/Interpolator;)V
    .locals 1

    array-length v0, p1

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->length:I

    iput-object p1, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->fractionPositions:[F

    iput-object p3, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolators:[Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/samsung/android/nexus/base/utils/keyFrameSet/KeyFrameSet;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method
