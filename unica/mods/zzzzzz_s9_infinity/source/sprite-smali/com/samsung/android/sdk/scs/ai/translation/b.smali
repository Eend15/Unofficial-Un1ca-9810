.class public final synthetic Lcom/samsung/android/sdk/scs/ai/translation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/sdk/scs/ai/translation/b;->d:I

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/b;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/translation/b;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/b;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/b;->f:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnable$1;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/b;->e:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnable$1;->a(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnable$1;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/b;->f:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnable$1;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/b;->e:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnable$1;->b(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRunnable$1;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/b;->f:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/b;->e:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->a(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
