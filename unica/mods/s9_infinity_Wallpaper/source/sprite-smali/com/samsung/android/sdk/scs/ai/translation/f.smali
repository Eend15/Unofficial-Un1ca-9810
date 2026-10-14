.class public final synthetic Lcom/samsung/android/sdk/scs/ai/translation/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/sdk/scs/ai/translation/f;->d:I

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/f;->e:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/f;->d:I

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/f;->e:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->h(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->d(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->g(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
