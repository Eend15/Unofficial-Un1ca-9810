.class public final synthetic Lcom/samsung/android/sdk/scs/ai/extension/lts/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;

.field public final synthetic f:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;Ljava/util/concurrent/CompletableFuture;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/a;->d:I

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/a;->e:Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/a;->f:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/a;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/a;->f:Ljava/util/concurrent/CompletableFuture;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/a;->e:Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;

    invoke-static {p0, v0, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->d(Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;Ljava/util/concurrent/CompletableFuture;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/a;->f:Ljava/util/concurrent/CompletableFuture;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/a;->e:Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;

    invoke-static {p0, v0, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->e(Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;Ljava/util/concurrent/CompletableFuture;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/a;->f:Ljava/util/concurrent/CompletableFuture;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/a;->e:Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;

    invoke-static {p0, v0, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->a(Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;Ljava/util/concurrent/CompletableFuture;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
