.class Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranslationResultBuilder"
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
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->sourceLanguage:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->sourceText:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->targetText:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->id:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->verbose:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->appendMeta:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->formality:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->forcePivot:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->interimResult:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->isComplete:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public appendMeta(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->appendMeta:Ljava/lang/Boolean;

    return-object p0
.end method

.method public build()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->sourceText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->h(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->targetText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->j(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->sourceLanguage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->g(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->targetLanguage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->i(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->d(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->verbose:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->k(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->appendMeta:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->a(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->formality:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->c(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->forcePivot:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->b(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->interimResult:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->e(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->isComplete:Ljava/lang/Boolean;

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->f(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public forcePivot(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->forcePivot:Ljava/lang/Boolean;

    return-object p0
.end method

.method public formality(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->formality:Ljava/lang/Boolean;

    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public interimResult(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->interimResult:Ljava/lang/String;

    return-object p0
.end method

.method public isComplete(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->isComplete:Ljava/lang/Boolean;

    return-object p0
.end method

.method public sourceLanguage(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->sourceLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public sourceText(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->sourceText:Ljava/lang/String;

    return-object p0
.end method

.method public targetLanguage(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->targetLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public targetText(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->targetText:Ljava/lang/String;

    return-object p0
.end method

.method public verbose(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->verbose:Ljava/lang/Boolean;

    return-object p0
.end method
