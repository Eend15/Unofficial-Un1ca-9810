.class public Lcom/samsung/android/nexus/base/animator/AnimatorCore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/nexus/base/animator/AnimatorCore$RenderMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimatorCore"


# instance fields
.field private mAnimatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/nexus/base/animator/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mChoreographer:Landroid/view/Choreographer;

.field private mDrawRequester:Lcom/samsung/android/nexus/base/DrawRequester;

.field private mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mFrameRate:I

.field private mFrameStartTime:J

.field private mFrameTime:J

.field private mIsRunning:Z

.field private mRenderMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mRenderMode:I

    const/16 v1, 0x3c

    iput v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameRate:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameStartTime:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mIsRunning:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;-><init>(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)V

    iput-object v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    sget-object v1, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->TAG:Ljava/lang/String;

    const-string v2, "AnimatorCore() : create AnimatorCore"

    invoke-static {v1, v2}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameRate:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->setFrameRate(I)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mChoreographer:Landroid/view/Choreographer;

    iget v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mRenderMode:I

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->startAnimator()V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameStartTime:J

    return-wide v0
.end method

.method public static synthetic access$002(Lcom/samsung/android/nexus/base/animator/AnimatorCore;J)J
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameStartTime:J

    return-wide p1
.end method

.method public static synthetic access$100(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameTime:J

    return-wide v0
.end method

.method public static synthetic access$200(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mRenderMode:I

    return p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)Landroid/view/Choreographer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/samsung/android/nexus/base/animator/AnimatorCore;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mIsRunning:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)Lcom/samsung/android/nexus/base/DrawRequester;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mDrawRequester:Lcom/samsung/android/nexus/base/DrawRequester;

    return-object p0
.end method

.method private startAnimator()V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startAnimator() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mIsRunning:Z

    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method


# virtual methods
.method public addAnimator(Lcom/samsung/android/nexus/base/animator/Animator;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addAnimator() : animator is NULL or already contained : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/nexus/base/animator/Animator;->setAlive(Z)V

    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mIsRunning:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->startAnimator()V

    :cond_1
    sget-object p1, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addAnimator() : animator is added to AnimatorCore"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getFrameRate()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameRate:I

    return p0
.end method

.method public removeAllAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public removeAnimator(Lcom/samsung/android/nexus/base/animator/Animator;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mIsRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/nexus/base/animator/Animator;->setAlive(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    sget-object p1, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeAnimator() : animator is removed from AnimatorCore"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mAnimatorList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->TAG:Ljava/lang/String;

    const-string p1, "removeAnimator() : animator is NULL"

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setDrawRequester(Lcom/samsung/android/nexus/base/DrawRequester;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mDrawRequester:Lcom/samsung/android/nexus/base/DrawRequester;

    return-void
.end method

.method public setFrameRate(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameRate:I

    add-int/lit8 p1, p1, 0x1

    const v0, 0x3b9aca00

    div-int/2addr v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mFrameTime:J

    return-void
.end method

.method public setRenderMode(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setRenderMode() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->mRenderMode:I

    invoke-direct {p0}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->startAnimator()V

    return-void
.end method
