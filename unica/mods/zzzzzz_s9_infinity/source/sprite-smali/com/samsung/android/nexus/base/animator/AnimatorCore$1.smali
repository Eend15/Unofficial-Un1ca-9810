.class Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/nexus/base/animator/AnimatorCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-static {v0}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->access$000(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-static {v2}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->access$100(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x1

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->access$002(Lcom/samsung/android/nexus/base/animator/AnimatorCore;J)J

    iget-object p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-static {p1}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->access$200(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)I

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-static {p1}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->access$200(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)I

    move-result p1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-static {p1}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->access$300(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->access$502(Lcom/samsung/android/nexus/base/animator/AnimatorCore;Z)Z

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-static {p1}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->access$300(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_1
    if-ltz p1, :cond_3

    iget-object p2, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-static {p2}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->access$300(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/nexus/base/animator/Animator;

    invoke-virtual {p2}, Lcom/samsung/android/nexus/base/animator/Animator;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/nexus/base/animator/Animator;->onTick()V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-static {p2}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->access$300(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-static {p1}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->access$400(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0, v1, v2}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    iget-object p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-static {p1}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->access$600(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)Lcom/samsung/android/nexus/base/DrawRequester;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-static {p0}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->access$600(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)Lcom/samsung/android/nexus/base/DrawRequester;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/nexus/base/DrawRequester;->invalidate()V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/nexus/base/animator/AnimatorCore$1;->this$0:Lcom/samsung/android/nexus/base/animator/AnimatorCore;

    invoke-static {p1}, Lcom/samsung/android/nexus/base/animator/AnimatorCore;->access$400(Lcom/samsung/android/nexus/base/animator/AnimatorCore;)Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0, v1, v2}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    :cond_5
    :goto_3
    return-void
.end method
