.class public Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$LlmTranslationRequestBuilder;,
        Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$BuildStep;,
        Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$OnFailureCallbackStep;,
        Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$OnSuccessCallbackStep;,
        Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$ToLanguageStep;,
        Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$FromLanguageStep;,
        Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$InputTextStep;
    }
.end annotation


# instance fields
.field private fromLanguage:Ljava/util/Locale;

.field private inputTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.method public static bridge synthetic a(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->fromLanguage:Ljava/util/Locale;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->inputTextList:Ljava/util/List;

    return-void
.end method

.method public static builder()Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$InputTextStep;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$LlmTranslationRequestBuilder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest$LlmTranslationRequestBuilder;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->onFailure:Ljava/util/function/Consumer;

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->onSuccess:Ljava/util/function/Consumer;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->toLanguage:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public deregistercallback()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->onSuccess:Ljava/util/function/Consumer;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->onFailure:Ljava/util/function/Consumer;

    return-void
.end method

.method public getFromLanguage()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->fromLanguage:Ljava/util/Locale;

    return-object p0
.end method

.method public getInputTextList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->inputTextList:Ljava/util/List;

    return-object p0
.end method

.method public getOnFailure()Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->onFailure:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public getOnSuccess()Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->onSuccess:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public getToLanguage()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/LlmTranslationRequest;->toLanguage:Ljava/util/Locale;

    return-object p0
.end method
