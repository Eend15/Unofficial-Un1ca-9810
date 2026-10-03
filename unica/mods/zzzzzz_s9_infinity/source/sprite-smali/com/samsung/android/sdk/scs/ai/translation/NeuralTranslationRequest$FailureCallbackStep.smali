.class public interface abstract Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$FailureCallbackStep;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FailureCallbackStep"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/util/function/Consumer;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$BuildStep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$BuildStep;"
        }
    .end annotation
.end method
