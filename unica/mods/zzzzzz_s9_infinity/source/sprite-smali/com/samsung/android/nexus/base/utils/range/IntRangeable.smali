.class public Lcom/samsung/android/nexus/base/utils/range/IntRangeable;
.super Lcom/samsung/android/nexus/base/utils/range/Rangeable;
.source "SourceFile"


# instance fields
.field protected mDelta:I

.field protected mMax:I

.field protected mMin:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    .line 3
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    .line 6
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    .line 7
    iput p2, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/range/IntRangeable;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/IntRangeable;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/nexus/base/utils/range/IntRangeable;
    .locals 1

    .line 2
    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/IntRangeable;)V

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
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->clone()Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    move-result-object p0

    return-object p0
.end method

.method public get()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    iget p0, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mDelta:I

    int-to-float p0, p0

    sget-object v1, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->sRandom:Lcom/samsung/android/nexus/base/utils/random/FloatRandom;

    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;->get()F

    move-result v1

    mul-float/2addr v1, p0

    float-to-int p0, v1

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getDelta()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mDelta:I

    return p0
.end method

.method public getMax()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    return p0
.end method

.method public getMin()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    return p0
.end method

.method public onRangeUpdated()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    iget v1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    sub-int v2, v0, v1

    iput v2, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mDelta:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    return-void
.end method

.method public set(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    .line 2
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-void
.end method

.method public set(Lcom/samsung/android/nexus/base/utils/range/IntRangeable;)V
    .locals 1

    .line 4
    iget v0, p1, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    .line 5
    iget p1, p1, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-void
.end method

.method public setMin(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-void
.end method

.method public setRange(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    iput p2, p0, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-void
.end method
