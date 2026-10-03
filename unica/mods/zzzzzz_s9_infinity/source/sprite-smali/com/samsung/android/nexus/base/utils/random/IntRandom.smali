.class public Lcom/samsung/android/nexus/base/utils/random/IntRandom;
.super Lcom/samsung/android/nexus/base/utils/random/CachedRandom;
.source "SourceFile"


# instance fields
.field private mCache:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    int-to-double v0, p1

    int-to-double p1, p2

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;-><init>(DD)V

    return-void
.end method


# virtual methods
.method public get()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->checkRefresh()V

    iget-object v0, p0, Lcom/samsung/android/nexus/base/utils/random/IntRandom;->mCache:[I

    iget v1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    aget p0, v0, v1

    return p0
.end method

.method public onCreate(I)V
    .locals 0

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/samsung/android/nexus/base/utils/random/IntRandom;->mCache:[I

    return-void
.end method

.method public onRefreshCache(I)V
    .locals 6

    sget-object v0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->sRandom:Lcom/samsung/android/nexus/base/utils/random/NexusRandom;

    iget-object v1, p0, Lcom/samsung/android/nexus/base/utils/random/IntRandom;->mCache:[I

    iget-wide v2, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMin:D

    double-to-int v2, v2

    iget-wide v3, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMax:D

    double-to-int v3, v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mCacheSize:I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;->setRangedArray([IIIII)V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    int-to-float p1, p1

    invoke-super {p0, p1}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->setMax(F)V

    return-void
.end method

.method public setMin(I)V
    .locals 0

    int-to-float p1, p1

    invoke-super {p0, p1}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->setMin(F)V

    return-void
.end method

.method public setRange(II)V
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->setRange(FF)V

    return-void
.end method
