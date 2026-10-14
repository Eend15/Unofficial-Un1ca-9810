.class public final synthetic Lcom/samsung/android/sdk/scs/ai/translation/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;

.field public final synthetic f:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/sdk/scs/ai/translation/e;->d:I

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/e;->e:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/translation/e;->f:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/e;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/e;->e:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/e;->f:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->a(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/e;->e:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/e;->f:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->d(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
