.class public abstract Lcom/samsung/android/nexus/base/layer/BaseLayer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseLayer"


# instance fields
.field private mContext:Lcom/samsung/android/nexus/base/context/NexusContext;

.field private mLayerParams:Lcom/samsung/android/nexus/base/layer/NexusLayerParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public draw()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onDraw()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/BaseLayer;->mContext:Lcom/samsung/android/nexus/base/context/NexusContext;

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/nexus/base/layer/BaseLayer;->TAG:Ljava/lang/String;

    const-string v0, "Context is null."

    invoke-static {p0, v0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/context/NexusContext;->getAppContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getLayerParams()Lcom/samsung/android/nexus/base/layer/NexusLayerParams;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/BaseLayer;->mLayerParams:Lcom/samsung/android/nexus/base/layer/NexusLayerParams;

    return-object p0
.end method

.method public getNexusContext()Lcom/samsung/android/nexus/base/context/NexusContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/layer/BaseLayer;->mContext:Lcom/samsung/android/nexus/base/context/NexusContext;

    return-object p0
.end method

.method public abstract onAmbientModeChanged()V
.end method

.method public abstract onCreate()V
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public abstract onDraw()V
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract onLayerParamsChanged(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
.end method

.method public onSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public onTapEvent(IIJ)V
    .locals 0

    return-void
.end method

.method public onTouchCancelEvent(IIJ)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(IIJ)V
    .locals 0

    return-void
.end method

.method public abstract onVisibilityChanged(Ljava/lang/Boolean;)V
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setLayerParams(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/base/layer/BaseLayer;->mLayerParams:Lcom/samsung/android/nexus/base/layer/NexusLayerParams;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/layer/BaseLayer;->onLayerParamsChanged(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V

    return-void
.end method

.method public setNexusContext(Lcom/samsung/android/nexus/base/context/NexusContext;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/base/layer/BaseLayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setNexusContext(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/nexus/base/layer/BaseLayer;->mContext:Lcom/samsung/android/nexus/base/context/NexusContext;

    return-void
.end method
