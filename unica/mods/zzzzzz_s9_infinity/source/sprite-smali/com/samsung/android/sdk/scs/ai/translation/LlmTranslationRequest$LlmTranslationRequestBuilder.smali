.class public Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$LlmTranslationRequestBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$InputTextStep;
.implements Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$FromLanguageStep;
.implements Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$ToLanguageStep;
.implements Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$OnSuccessCallbackStep;
.implements Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$OnFailureCallbackStep;
.implements Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$BuildStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LlmTranslationRequestBuilder"
.end annotation


# instance fields
.field private fromLanguage:Ljava/util/Locale;

.field private inputText:Ljava/lang/String;

.field private onFailure:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private onSuccess:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;"
        }
    .end annotation
.end field

.field private toLanguage:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$LlmTranslationRequestBuilder;->inputText:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->b(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Ljava/util/List;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$LlmTranslationRequestBuilder;->fromLanguage:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->a(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$LlmTranslationRequestBuilder;->toLanguage:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->e(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$LlmTranslationRequestBuilder;->onSuccess:Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->d(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$LlmTranslationRequestBuilder;->onFailure:Ljava/util/function/Consumer;

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->c(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public fromLanguage(Ljava/util/Locale;)Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$ToLanguageStep;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$LlmTranslationRequestBuilder;->fromLanguage:Ljava/util/Locale;

    return-object p0
.end method

.method public inputText(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$FromLanguageStep;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$LlmTranslationRequestBuilder;->inputText:Ljava/lang/String;

    return-object p0
.end method

.method public onFailure(Ljava/util/function/Consumer;)Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$BuildStep;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Exception;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$BuildStep;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$LlmTranslationRequestBuilder;->onFailure:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public onSuccess(Ljava/util/function/Consumer;)Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$OnFailureCallbackStep;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$OnFailureCallbackStep;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$LlmTranslationRequestBuilder;->onSuccess:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public toLanguage(Ljava/util/Locale;)Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$OnSuccessCallbackStep;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$LlmTranslationRequestBuilder;->toLanguage:Ljava/util/Locale;

    return-object p0
.end method
