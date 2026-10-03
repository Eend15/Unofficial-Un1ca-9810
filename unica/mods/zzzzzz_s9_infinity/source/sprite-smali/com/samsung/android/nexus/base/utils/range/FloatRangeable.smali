.class public Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;
.super Lcom/samsung/android/nexus/base/utils/range/Rangeable;
.source "SourceFile"


# instance fields
.field protected mDelta:F

.field protected mMax:F

.field protected mMin:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 3
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    .line 6
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 7
    iput p2, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->set(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;
    .locals 1

    .line 2
    new-instance v0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

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
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->clone()Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    move-result-object p0

    return-object p0
.end method

.method public get()F
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    iget p0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mDelta:F

    sget-object v1, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->sRandom:Lcom/samsung/android/nexus/base/utils/random/FloatRandom;

    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/utils/random/FloatRandom;->get()F

    move-result v1

    mul-float/2addr v1, p0

    add-float p0, v1, v0

    :goto_0
    return p0
.end method

.method public getDelta()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mDelta:F

    return p0
.end method

.method public getMax()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    return p0
.end method

.method public getMin()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    return p0
.end method

.method public onRangeUpdated()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    iget v1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    sub-float v2, v0, v1

    iput v2, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mDelta:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    return-void
.end method

.method public set(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 2
    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-void
.end method

.method public set(Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V
    .locals 1

    .line 4
    iget v0, p1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    iput v0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    .line 5
    iget p1, p1, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-void
.end method

.method public setMax(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-void
.end method

.method public setMin(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-void
.end method

.method public setRange(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    iput p2, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FloatRangeable{mMin="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;->mDelta:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
