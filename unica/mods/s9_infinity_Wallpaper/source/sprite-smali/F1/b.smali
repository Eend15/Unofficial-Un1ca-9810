.class public final LF1/b;
.super Lcom/samsung/android/nexus/base/layer/LayerContainer;
.source "SourceFile"


# instance fields
.field public a:F


# virtual methods
.method public final onDraw()V
    .locals 4

    iget v0, p0, LF1/b;->a:F

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->getLayer(I)Lcom/samsung/android/nexus/base/layer/BaseLayer;

    move-result-object v3

    check-cast v3, LF1/c;

    if-eqz v3, :cond_1

    iget-object v3, v3, LF1/c;->g:LF1/a;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iput v0, v3, LF1/a;->i:F

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onDraw()V

    return-void
.end method
