.class public final synthetic Lcom/samsung/android/sdk/scs/ai/translation/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/sdk/scs/ai/translation/c;->d:I

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/c;->e:Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/c;->d:I

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/c;->e:Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnable;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnable;->a(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnable;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->b(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
