.class public final synthetic Lcom/samsung/android/sdk/scs/ai/translation/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;

.field public final synthetic f:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/sdk/scs/ai/translation/d;->d:I

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/d;->e:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/translation/d;->f:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/d;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/d;->e:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/d;->f:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->c(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/d;->e:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/d;->f:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->b(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
