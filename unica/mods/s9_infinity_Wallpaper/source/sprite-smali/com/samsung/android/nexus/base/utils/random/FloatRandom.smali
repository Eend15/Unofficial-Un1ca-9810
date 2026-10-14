.class public Lcom/samsung/android/nexus/base/utils/random/FloatRandom;
.super Lcom/samsung/android/nexus/base/utils/random/CachedRandom;
.source "SourceFile"


# instance fields
.field private mCache:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2

    float-to-double v0, p1

    float-to-double p1, p2

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;-><init>(DD)V

    return-void
.end method


# virtual methods
.method public get()F
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->checkRefresh()V

    iget-object v0, p0, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;->mCache:[F

    iget v1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    aget p0, v0, v1

    return p0
.end method

.method public onCreate(I)V
    .locals 0

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;->mCache:[F

    return-void
.end method

.method public onRefreshCache(I)V
    .locals 6

    sget-object v0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->sRandom:Lcom/samsung/android/nexus/base/utils/random/NexusRandom;

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;->mCache:[F

    iget-wide v2, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMin:D

    double-to-float v2, v2

    iget-wide v3, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMax:D

    double-to-float v3, v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mCacheSize:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->setRangedArray([FFFII)V

    return-void
.end method

.method public setMax(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->setMax(F)V

    return-void
.end method

.method public setMin(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->setMin(F)V

    return-void
.end method

.method public setRange(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->setRange(FF)V

    return-void
.end method
