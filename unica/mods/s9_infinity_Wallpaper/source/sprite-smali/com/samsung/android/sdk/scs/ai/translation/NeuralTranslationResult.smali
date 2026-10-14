.class public Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;
    }
.end annotation


# instance fields
.field private appendMeta:Ljava/lang/Boolean;

.field private forcePivot:Ljava/lang/Boolean;

.field private formality:Ljava/lang/Boolean;

.field private id:Ljava/lang/String;

.field private interimResult:Ljava/lang/String;

.field private isComplete:Ljava/lang/Boolean;

.field private sourceLanguage:Ljava/lang/String;

.field private sourceText:Ljava/lang/String;

.field private targetLanguage:Ljava/lang/String;

.field private targetText:Ljava/lang/String;

.field private verbose:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->appendMeta:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->forcePivot:Ljava/lang/Boolean;

    return-void
.end method

.method public static builder()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->formality:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->id:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->interimResult:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->isComplete:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->sourceLanguage:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->sourceText:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->targetLanguage:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->targetText:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->verbose:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAppendMeta()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->appendMeta:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getForcePivot()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->forcePivot:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getFormality()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->formality:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getInterimResult()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->interimResult:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->sourceLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->sourceText:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->targetLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->targetText:Ljava/lang/String;

    return-object p0
.end method

.method public getVerbose()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->verbose:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isComplete()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->isComplete:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
