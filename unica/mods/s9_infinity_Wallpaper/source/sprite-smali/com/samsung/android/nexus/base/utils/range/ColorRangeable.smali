.class public abstract Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;
.super Lcom/samsung/android/nexus/base/utils/range/Rangeable;
.source "SourceFile"


# instance fields
.field protected mColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;->getClone()Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;->clone()Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;

    move-result-object p0

    return-object p0
.end method

.method public get()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;->mColor:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;->next()I

    move-result p0

    :goto_0
    return p0
.end method

.method public abstract getClone()Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;
.end method

.method public abstract next()I
.end method

.method public onRangeUpdated()V
    .locals 0

    return-void
.end method

.method public setColor(I)Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/base/utils/range/ColorRangeable;->mColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->mIsSingleValue:Z

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/utils/range/Rangeable;->update()V

    return-object p0
.end method
