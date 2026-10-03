.class public Lcom/samsung/android/nexus/base/context/NexusContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NexusContext"


# instance fields
.field private mAnimatorCore:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mModeData:Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;

    invoke-direct {v0}, Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mModeData:Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mWidth:I

    iput v0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mHeight:I

    sget-object v0, Lcom/samsung/android/nexus/base/context/NexusContext;->TAG:Ljava/lang/String;

    const-string v1, "NexusContext() : create NexusContext"

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-direct {p1}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mAnimatorCore:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    return-void
.end method


# virtual methods
.method public addAnimator(Lcom/samsung/android/nexus/base/animator/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mAnimatorCore:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->addAnimator(Lcom/samsung/android/nexus/base/animator/Animator;)V

    return-void
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mHeight:I

    return p0
.end method

.method public getModeData()Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mModeData:Lcom/samsung/android/nexus/base/context/NexusContext$ModeData;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mWidth:I

    return p0
.end method

.method public removeAllAnimator()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mAnimatorCore:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->removeAllAnimator()V

    return-void
.end method

.method public removeAnimator(Lcom/samsung/android/nexus/base/animator/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mAnimatorCore:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->removeAnimator(Lcom/samsung/android/nexus/base/animator/Animator;)V

    return-void
.end method

.method public setDrawRequester(Lcom/samsung/android/nexus/base/DrawRequester;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mAnimatorCore:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->setDrawRequester(Lcom/samsung/android/nexus/base/DrawRequester;)V

    return-void
.end method

.method public setFrameRate(I)V
    .locals 2

    if-gtz p1, :cond_0

    sget-object v0, Lcom/samsung/android/nexus/base/context/NexusContext;->TAG:Ljava/lang/String;

    const-string v1, "setFrameRate() : Do NOT set a negative value."

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mAnimatorCore:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->setFrameRate(I)V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mHeight:I

    return-void
.end method

.method public setRenderMode(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/base/context/NexusContext;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setRenderMode() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mAnimatorCore:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->setRenderMode(I)V

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/nexus/base/context/NexusContext;->mWidth:I

    return-void
.end method
