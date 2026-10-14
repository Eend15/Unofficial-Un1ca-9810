.class public Lcom/samsung/android/nexus/base/layer/LayerContainer;
.super Lcom/samsung/android/nexus/base/layer/BaseLayer;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LayerContainer"

.field public static final TAP_TYPE_MOVE:I = 0x3

.field public static final TAP_TYPE_TAP:I = 0x2

.field public static final TAP_TYPE_TOUCH:I = 0x0

.field public static final TAP_TYPE_TOUCH_CANCEL:I = 0x1


# instance fields
.field private mEffectLayer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/nexus/base/layer/BaseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsReadyToCreate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mIsReadyToCreate:Z

    sget-object v0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->TAG:Ljava/lang/String;

    const-string v1, "LayerContainer() : create LayerContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/nexus/base/context/NexusContext;

    invoke-direct {v0, p1}, Lcom/samsung/android/nexus/base/context/NexusContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->setNexusContext(Lcom/samsung/android/nexus/base/context/NexusContext;)V

    new-instance p1, Lcom/samsung/android/nexus/base/DrawRequester;

    invoke-direct {p1, p2}, Lcom/samsung/android/nexus/base/DrawRequester;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/context/NexusContext;->setDrawRequester(Lcom/samsung/android/nexus/base/DrawRequester;)V

    return-void
.end method


# virtual methods
.method public addAnimator(Lcom/samsung/android/nexus/base/animator/Animator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/context/NexusContext;->addAnimator(Lcom/samsung/android/nexus/base/animator/Animator;)V

    return-void
.end method

.method public addLayer(Lcom/samsung/android/nexus/base/layer/BaseLayer;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->TAG:Ljava/lang/String;

    const-string p1, "addLayer() : layer is NULL"

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->setNexusContext(Lcom/samsung/android/nexus/base/context/NexusContext;)V

    .line 3
    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mIsReadyToCreate:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onCreate()V

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addLayer(Lcom/samsung/android/nexus/base/layer/BaseLayer;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6
    sget-object p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->TAG:Ljava/lang/String;

    const-string p1, "addLayer() : layer is NULL"

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-ltz p2, :cond_3

    .line 7
    iget-object v1, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p2, v1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->setNexusContext(Lcom/samsung/android/nexus/base/context/NexusContext;)V

    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mIsReadyToCreate:Z

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onCreate()V

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {p0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    .line 12
    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->TAG:Ljava/lang/String;

    const-string p1, "addLayer() : index is NOT valid"

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public draw()V
    .locals 2

    const/16 v0, 0x4000

    .line 1
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onDraw()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getHeight()I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/context/NexusContext;->getHeight()I

    move-result p0

    return p0
.end method

.method public getLayer(I)Lcom/samsung/android/nexus/base/layer/BaseLayer;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getLayer() : layer is NOT found. : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLayerIndex(Lcom/samsung/android/nexus/base/layer/BaseLayer;)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getWidth()I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/context/NexusContext;->getWidth()I

    move-result p0

    return p0
.end method

.method public onAmbientModeChanged()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onAmbientModeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onCreate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->TAG:Ljava/lang/String;

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDraw()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    .line 2
    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onDraw()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 3
    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    .line 4
    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLayerParamsChanged(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 0

    return-void
.end method

.method public onSizeChanged(II)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onSizeChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTapEvent(IIJ)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onTapEvent(IIJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchCancelEvent(IIJ)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onTouchCancelEvent(IIJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(IIJ)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onTouchEvent(IIJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onVisibilityChanged(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAllLayers()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->setRenderMode(I)V

    iget-object v0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/nexus/base/layer/BaseLayer;

    invoke-virtual {v1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onDestroy()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeAnimator(Lcom/samsung/android/nexus/base/animator/Animator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/context/NexusContext;->removeAnimator(Lcom/samsung/android/nexus/base/animator/Animator;)V

    return-void
.end method

.method public removeLayer(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    sget-object p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->TAG:Ljava/lang/String;

    const-string p1, "removeLayer() : index is NOT valid"

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 6
    :cond_2
    :goto_0
    sget-object p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->TAG:Ljava/lang/String;

    const-string p1, "removeLayer() : index is OUT of range"

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public removeLayer(Lcom/samsung/android/nexus/base/layer/BaseLayer;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeLayer() : layer is NULL : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mEffectLayer:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setAmbientMode(Ljava/lang/Boolean;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAmbientMode() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/context/NexusContext;->getModeData()Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;->setAmbient(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onAmbientModeChanged()V

    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/context/NexusContext;->setFrameRate(I)V

    return-void
.end method

.method public setInterruptionFilterChanged(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setInterruptionFilterChanged() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/context/NexusContext;->getModeData()Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;->setInterruptionFilter(I)V

    return-void
.end method

.method public setProperties(Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setProperties() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/nexus/base/context/NexusContext;->getModeData()Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;->setProperties(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onAmbientModeChanged()V

    return-void
.end method

.method public setRenderMode(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setRenderMode() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/context/NexusContext;->setRenderMode(I)V

    return-void
.end method

.method public setSize(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/nexus/base/context/NexusContext;->setWidth(I)V

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/nexus/base/context/NexusContext;->setHeight(I)V

    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mIsReadyToCreate:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onCreate()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onSizeChanged(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->mIsReadyToCreate:Z

    return-void
.end method

.method public setVisibility(Ljava/lang/Boolean;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVisibility() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onVisibilityChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method public tapCommand(IIIJ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/base/layer/LayerContainer;->TAG:Ljava/lang/String;

    const-string v1, "topCommand() : "

    const-string v2, " , "

    invoke-static {p1, v1, p2, v2, v2}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onTapEvent(IIJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onTouchCancelEvent(IIJ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/samsung/android/nexus/base/layer/LayerContainer;->onTouchEvent(IIJ)V

    :goto_0
    return-void
.end method
