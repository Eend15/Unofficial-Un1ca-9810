.class public final synthetic Lcom/samsung/android/sdk/scs/ai/translation/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;


# instance fields
.field public final synthetic d:Landroid/os/Handler;

.field public final synthetic e:Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;

.field public final synthetic f:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/g;->d:Landroid/os/Handler;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/translation/g;->e:Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/translation/g;->f:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/g;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/g;->e:Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/g;->f:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->b(Landroid/os/Handler;Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method
