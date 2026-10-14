.class public Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer$FactorRangeType;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_PARTICLE_COUNT:I = 0x3e8

.field public static final FACTOR_RANGE_MAX_INITIAL:I = 0x1

.field public static final FACTOR_RANGE_MAX_STEP:I = 0x3

.field public static final FACTOR_RANGE_MIN_INITIAL:I = 0x0

.field public static final FACTOR_RANGE_MIN_STEP:I = 0x2

.field private static final FADE_ALPHA_AMOUNT:F = 0.1f

.field public static final TOTAL_FACTOR_RANGE_TYPES:I = 0x4


# instance fields
.field private mBaseFactors:[[F

.field private mCurRandomFactorIndex:I

.field private mEndPos:I

.field private mParticleData:[F

.field private mRandom:Ljava/util/Random;

.field private mRandomBufferEnabled:Z

.field private mRandomInitialFactors:[[F

.field private mRandomStepFactors:[[F

.field private mStartPos:I

.field private mStepData:[F

.field private mTestArray:[Ljava/lang/Float;

.field private mTestArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalDataSize:I

.field private mTotalFactorCount:I

.field private mTotalParticleCount:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mParticleData:[F

    .line 3
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mStepData:[F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mStartPos:I

    .line 5
    iput v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mEndPos:I

    const/4 v1, 0x4

    .line 6
    new-array v1, v1, [[F

    iput-object v1, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mBaseFactors:[[F

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mRandomBufferEnabled:Z

    .line 8
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v1, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mRandom:Ljava/util/Random;

    .line 9
    iput v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mCurRandomFactorIndex:I

    const/16 v0, 0x2710

    .line 10
    new-array v0, v0, [Ljava/lang/Float;

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTestArray:[Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(I[F[F[F[F)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 12
    iput-object p2, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mParticleData:[F

    .line 13
    iput-object p2, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mStepData:[F

    const/4 p2, 0x0

    .line 14
    iput p2, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mStartPos:I

    .line 15
    iput p2, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mEndPos:I

    const/4 p3, 0x4

    .line 16
    new-array p3, p3, [[F

    iput-object p3, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mBaseFactors:[[F

    const/4 p3, 0x1

    .line 17
    iput-boolean p3, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mRandomBufferEnabled:Z

    .line 18
    new-instance p3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p4

    invoke-direct {p3, p4, p5}, Ljava/util/Random;-><init>(J)V

    iput-object p3, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mRandom:Ljava/util/Random;

    .line 19
    iput p2, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mCurRandomFactorIndex:I

    const/16 p2, 0x2710

    .line 20
    new-array p2, p2, [Ljava/lang/Float;

    iput-object p2, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTestArray:[Ljava/lang/Float;

    .line 21
    iput p1, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalFactorCount:I

    const/16 p1, 0x3e8

    .line 22
    iput p1, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalParticleCount:I

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->generateBuffers()V

    return-void
.end method

.method private generateBuffers()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->clear()V

    iget v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalFactorCount:I

    iget v1, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalParticleCount:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalDataSize:I

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mParticleData:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mStepData:[F

    new-array v1, v0, [[F

    iput-object v1, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mRandomInitialFactors:[[F

    new-array v0, v0, [[F

    iput-object v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mRandomStepFactors:[[F

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->generateRandomFactors()V

    return-void
.end method

.method private generateInitialRandomFactor(I)F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mBaseFactors:[[F

    const/4 v1, 0x1

    aget-object v1, p0, v1

    aget v1, v1, p1

    const/4 v2, 0x0

    aget-object p0, p0, v2

    aget p0, p0, p1

    invoke-static {v1, p0, v0, p0}, Li4/b;->b(FFFF)F

    move-result p0

    return p0
.end method

.method private generateStepRandomFactor(I)F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mBaseFactors:[[F

    const/4 v1, 0x3

    aget-object v1, p0, v1

    aget v1, v1, p1

    const/4 v2, 0x2

    aget-object p0, p0, v2

    aget p0, p0, p1

    invoke-static {v1, p0, v0, p0}, Li4/b;->b(FFFF)F

    move-result p0

    return p0
.end method

.method private increaseEndPos()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mEndPos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mEndPos:I

    iget v2, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalParticleCount:I

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mEndPos:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mEndPos:I

    iget v2, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mStartPos:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->increaseStartPos(Z)V

    :cond_1
    return-void
.end method

.method private increaseStartPos(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mStartPos:I

    iget v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mEndPos:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mStartPos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mStartPos:I

    iget v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalParticleCount:I

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mStartPos:I

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mEndPos:I

    iput v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mStartPos:I

    return-void
.end method

.method public fillBuffer(Ljava/nio/FloatBuffer;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mStartPos:I

    iget v2, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mEndPos:I

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    if-le v2, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mParticleData:[F

    iget p0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalFactorCount:I

    mul-int v3, v1, p0

    sub-int v1, v2, v1

    mul-int/2addr p0, v1

    invoke-virtual {p1, v0, v3, p0}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move v0, v1

    goto :goto_0

    :cond_2
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mParticleData:[F

    iget v4, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalFactorCount:I

    mul-int v5, v1, v4

    iget v6, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalParticleCount:I

    sub-int/2addr v6, v1

    mul-int/2addr v6, v4

    invoke-virtual {p1, v3, v5, v6}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalParticleCount:I

    sub-int/2addr v3, v1

    iget-object v1, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mParticleData:[F

    iget p0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalFactorCount:I

    mul-int/2addr p0, v2

    invoke-virtual {p1, v1, v0, p0}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    add-int v0, v3, v2

    :cond_3
    :goto_0
    return v0
.end method

.method public generateParticle(I)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_3

    iget v2, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mEndPos:I

    iget v3, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalFactorCount:I

    mul-int/2addr v2, v3

    move v3, v0

    :goto_1
    iget v4, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalFactorCount:I

    if-ge v3, v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mRandomBufferEnabled:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mParticleData:[F

    add-int v5, v2, v3

    iget-object v6, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mRandomInitialFactors:[[F

    aget-object v6, v6, v3

    iget v7, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mCurRandomFactorIndex:I

    aget v6, v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mStepData:[F

    iget-object v6, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mRandomStepFactors:[[F

    aget-object v6, v6, v3

    aget v6, v6, v7

    aput v6, v4, v5

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mParticleData:[F

    add-int v5, v2, v3

    invoke-direct {p0, v3}, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->generateInitialRandomFactor(I)F

    move-result v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mStepData:[F

    invoke-direct {p0, v3}, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->generateStepRandomFactor(I)F

    move-result v6

    aput v6, v4, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->increaseEndPos()V

    iget v2, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mCurRandomFactorIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mCurRandomFactorIndex:I

    iget v3, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalParticleCount:I

    if-lt v2, v3, :cond_2

    iput v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mCurRandomFactorIndex:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public generateRandomFactors()V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mRandomBufferEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalFactorCount:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mRandomInitialFactors:[[F

    iget v3, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalParticleCount:I

    new-array v3, v3, [F

    aput-object v3, v2, v1

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalParticleCount:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mRandomInitialFactors:[[F

    aget-object v3, v3, v1

    invoke-direct {p0, v1}, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->generateInitialRandomFactor(I)F

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mRandomStepFactors:[[F

    aget-object v3, v3, v1

    invoke-direct {p0, v1}, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->generateStepRandomFactor(I)F

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onStep()V
    .locals 6

    iget v0, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mStartPos:I

    iget v1, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mEndPos:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-ge v1, v0, :cond_1

    iget v2, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalParticleCount:I

    add-int/2addr v1, v2

    :cond_1
    iget v2, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalFactorCount:I

    mul-int/2addr v0, v2

    mul-int/2addr v1, v2

    :goto_0
    if-ge v0, v1, :cond_2

    iget v2, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalDataSize:I

    rem-int v2, v0, v2

    iget-object v3, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mParticleData:[F

    aget v4, v3, v2

    iget-object v5, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mStepData:[F

    aget v5, v5, v2

    add-float/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setRandomBufferEnabled(Z)Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mRandomBufferEnabled:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->generateRandomFactors()V

    :cond_0
    return-object p0
.end method

.method public setTotalParticleCount(I)Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->mTotalParticleCount:I

    invoke-direct {p0}, Lcom/samsung/android/nexus/egl/particle/BufferedParticleContainer;->generateBuffers()V

    return-object p0
.end method
