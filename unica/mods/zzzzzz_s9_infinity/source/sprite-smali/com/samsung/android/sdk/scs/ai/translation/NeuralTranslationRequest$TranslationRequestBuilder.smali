.class public Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$TranslationRequestBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$SourceStep;
.implements Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$SuccessCallbackStep;
.implements Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$FailureCallbackStep;
.implements Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$BuildStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranslationRequestBuilder"
.end annotation


# instance fields
.field onFailure:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;",
            ">;"
        }
    .end annotation
.end field

.field onSuccess:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;",
            ">;"
        }
    .end annotation
.end field

.field source:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;-><init>(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$TranslationRequestBuilder;->source:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;->c(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$TranslationRequestBuilder;->onSuccess:Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;->b(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$TranslationRequestBuilder;->onFailure:Ljava/util/function/Consumer;

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;->a(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public onFailure(Ljava/util/function/Consumer;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$BuildStep;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$BuildStep;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$TranslationRequestBuilder;->onFailure:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public onSuccess(Ljava/util/function/Consumer;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$FailureCallbackStep;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$FailureCallbackStep;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$TranslationRequestBuilder;->onSuccess:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public source(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$SuccessCallbackStep;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$TranslationRequestBuilder;->source:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;

    return-object p0
.end method
