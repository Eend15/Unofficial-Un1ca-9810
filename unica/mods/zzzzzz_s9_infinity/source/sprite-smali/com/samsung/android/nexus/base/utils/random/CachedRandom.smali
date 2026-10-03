.class public abstract Lcom/samsung/android/nexus/base/utils/random/CachedRandom;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final REWIND_MAX:I = 0xa

.field protected static final sRandom:Lcom/samsung/android/nexus/base/utils/random/NexusRandom;


# instance fields
.field protected mCacheSize:I

.field protected mDelta:D

.field protected mIndex:I

.field protected mIndexLimit:I

.field protected mMax:D

.field protected mMin:D

.field private mNeedRefresh:Z

.field protected mRewind:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;

    invoke-direct {v0}, Lcom/samsung/android/nexus/base/utils/random/NexusRandom;-><init>()V

    sput-object v0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->sRandom:Lcom/samsung/android/nexus/base/utils/random/NexusRandom;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x186a0

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mCacheSize:I

    const v1, 0x186a0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndexLimit:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    iput v1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mRewind:I

    iput-boolean v2, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mNeedRefresh:Z

    iput-wide p1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMin:D

    iput-wide p3, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMax:D

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->onCreate(I)V

    return-void
.end method


# virtual methods
.method public checkRefresh()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    iget v1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndexLimit:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mRewind:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mRewind:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mNeedRefresh:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mRewind:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mRewind:I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->refresh()V

    :cond_2
    return-void
.end method

.method public abstract onCreate(I)V
.end method

.method public abstract onRefreshCache(I)V
.end method

.method public refresh()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mNeedRefresh:Z

    iget-wide v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMax:D

    iget-wide v2, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMin:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mDelta:D

    iget v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mCacheSize:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->onRefreshCache(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mIndex:I

    return-void
.end method

.method public setMax(F)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMax:D

    float-to-double v2, p1

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    iput-wide v2, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMax:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mNeedRefresh:Z

    :cond_0
    return-void
.end method

.method public setMin(F)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMin:D

    float-to-double v2, p1

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    iput-wide v2, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMin:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mNeedRefresh:Z

    :cond_0
    return-void
.end method

.method public setRange(FF)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMin:D

    float-to-double v2, p1

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMax:D

    float-to-double v4, p2

    cmpl-double p1, v0, v4

    if-eqz p1, :cond_1

    :cond_0
    iput-wide v2, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMin:D

    float-to-double p1, p2

    iput-wide p1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mMax:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/nexus/base/utils/random/CachedRandom;->mNeedRefresh:Z

    :cond_1
    return-void
.end method
