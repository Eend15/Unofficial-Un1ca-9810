.class public Lcom/samsung/android/nexus/base/utils/random/NexusRandom;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final addend:J = 0xbL

.field private static final bits:I = 0x18

.field private static final mask:J = 0xffffffffffffL

.field private static final multiplier:J = 0x5deece66dL

.field private static final nextFloatMask:F = 1.6777216E7f

.field private static seedUniquifier:J = 0x0L

.field private static final shift:I = 0x18


# instance fields
.field private seed:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seedUniquifier()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    xor-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1, p2}, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->initialScramble(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seed:J

    return-void
.end method

.method private static initialScramble(J)J
    .locals 2

    const-wide v0, 0x5deece66dL

    xor-long/2addr p0, v0

    const-wide v0, 0xffffffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private static seedUniquifier()J
    .locals 4

    sget-wide v0, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seedUniquifier:J

    const-wide v2, 0x285d320ad33fdb5L

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seedUniquifier:J

    return-wide v0
.end method


# virtual methods
.method public next(I)I
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seed:J

    const-wide v2, 0x5deece66dL

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seed:J

    rsub-int/lit8 p0, p1, 0x30

    ushr-long p0, v0, p0

    long-to-int p0, p0

    return p0
.end method

.method public nextFloat()F
    .locals 1

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->next(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x4b800000    # 1.6777216E7f

    div-float/2addr p0, v0

    return p0
.end method

.method public setRangedArray([FFFII)V
    .locals 4

    if-eqz p1, :cond_2

    if-ltz p4, :cond_2

    .line 1
    array-length v0, p1

    if-ge p4, v0, :cond_2

    add-int/2addr p5, p4

    array-length v0, p1

    if-le p5, v0, :cond_0

    goto :goto_1

    :cond_0
    sub-float/2addr p3, p2

    .line 2
    iget-wide v0, p0, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seed:J

    :goto_0
    if-ge p4, p5, :cond_1

    const-wide v2, 0x5deece66dL

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x18

    ushr-long v2, v0, v2

    long-to-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x4b800000    # 1.6777216E7f

    div-float/2addr v2, v3

    mul-float/2addr v2, p3

    add-float/2addr v2, p2

    .line 3
    aput v2, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iput-wide v0, p0, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seed:J

    :cond_2
    :goto_1
    return-void
.end method

.method public setRangedArray([IIIII)V
    .locals 4

    if-eqz p1, :cond_2

    if-ltz p4, :cond_2

    .line 5
    array-length v0, p1

    if-gt p4, v0, :cond_2

    add-int/2addr p5, p4

    array-length v0, p1

    if-le p5, v0, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr p3, p2

    int-to-float p3, p3

    .line 6
    iget-wide v0, p0, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seed:J

    :goto_0
    if-ge p4, p5, :cond_1

    const-wide v2, 0x5deece66dL

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x18

    ushr-long v2, v0, v2

    long-to-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x4b800000    # 1.6777216E7f

    div-float/2addr v2, v3

    mul-float/2addr v2, p3

    float-to-int v2, v2

    add-int/2addr v2, p2

    .line 7
    aput v2, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iput-wide v0, p0, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seed:J

    :cond_2
    :goto_1
    return-void
.end method

.method public setRangedArray([JJJII)V
    .locals 4

    if-eqz p1, :cond_2

    if-ltz p6, :cond_2

    .line 9
    array-length v0, p1

    if-gt p6, v0, :cond_2

    add-int/2addr p7, p6

    array-length v0, p1

    if-le p7, v0, :cond_0

    goto :goto_1

    :cond_0
    sub-long/2addr p4, p2

    long-to-float p4, p4

    .line 10
    iget-wide v0, p0, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seed:J

    :goto_0
    if-ge p6, p7, :cond_1

    const-wide v2, 0x5deece66dL

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    const/16 p5, 0x18

    ushr-long v2, v0, p5

    long-to-int p5, v2

    int-to-float p5, p5

    const/high16 v2, 0x4b800000    # 1.6777216E7f

    div-float/2addr p5, v2

    mul-float/2addr p5, p4

    float-to-long v2, p5

    add-long/2addr v2, p2

    .line 11
    aput-wide v2, p1, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iput-wide v0, p0, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->seed:J

    :cond_2
    :goto_1
    return-void
.end method
