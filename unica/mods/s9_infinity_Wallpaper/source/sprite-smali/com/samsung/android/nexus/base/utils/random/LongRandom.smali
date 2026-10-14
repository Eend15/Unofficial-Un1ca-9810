.class public Lcom/samsung/android/nexus/base/utils/random/LongRandom;
.super Lcom/samsung/android/nexus/base/utils/random/CachedRandom;
.source "SourceFile"


# instance fields
.field private mCache:[J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    long-to-double p1, p1

    long-to-double p3, p3

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;-><init>(DD)V

    return-void
.end method


# virtual methods
.method public get()J
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->checkRefresh()V

    iget-object v0, p0, Lcom/samsung/android/nexus/base/utils/random/LongRandom;->mCache:[J

    iget v1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public onCreate(I)V
    .locals 0

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/samsung/android/nexus/base/utils/random/LongRandom;->mCache:[J

    return-void
.end method

.method public onRefreshCache(I)V
    .locals 8

    sget-object v0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->sRandom:Lcom/samsung/android/nexus/base/utils/random/NexusRandom;

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/random/LongRandom;->mCache:[J

    iget-wide v2, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMin:D

    double-to-long v2, v2

    iget-wide v4, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMax:D

    double-to-long v4, v4

    const/4 v6, 0x0

    iget v7, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mCacheSize:I

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->setRangedArray([JJJII)V

    return-void
.end method

.method public setMax(J)V
    .locals 0

    long-to-float p1, p1

    invoke-super {p0, p1}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->setMax(F)V

    return-void
.end method

.method public setMin(J)V
    .locals 0

    long-to-float p1, p1

    invoke-super {p0, p1}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->setMin(F)V

    return-void
.end method

.method public setRange(JJ)V
    .locals 0

    long-to-float p1, p1

    long-to-float p2, p3

    invoke-super {p0, p1, p2}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->setRange(FF)V

    return-void
.end method
