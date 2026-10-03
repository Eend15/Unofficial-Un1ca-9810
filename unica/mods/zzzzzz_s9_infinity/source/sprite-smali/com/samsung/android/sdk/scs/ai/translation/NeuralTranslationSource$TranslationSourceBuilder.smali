.class public Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranslationSourceBuilder"
.end annotation


# instance fields
.field appendMeta:Ljava/lang/Boolean;

.field contextCandidate:I

.field endOfContext:Z

.field fallbackLanguage:Ljava/lang/String;

.field forcePivot:Ljava/lang/Boolean;

.field formality:Ljava/lang/Boolean;

.field id:Ljava/lang/String;

.field mode:Ljava/lang/String;

.field needSentenceSplit:Z

.field requestingPackageName:Ljava/lang/String;

.field requestingSourceId:Ljava/lang/String;

.field sourceLanguage:Ljava/lang/String;

.field sourceText:Ljava/lang/String;

.field targetLanguage:Ljava/lang/String;

.field verbose:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->id:Ljava/lang/String;

    const-string v1, "en"

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->fallbackLanguage:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->verbose:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->appendMeta:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->formality:Ljava/lang/Boolean;

    const-string v2, "plain"

    iput-object v2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->mode:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->forcePivot:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->requestingPackageName:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->needSentenceSplit:Z

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->requestingSourceId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->endOfContext:Z

    iput v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->contextCandidate:I

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->sourceText:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->sourceLanguage:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->targetLanguage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendMeta(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->appendMeta:Ljava/lang/Boolean;

    return-object p0
.end method

.method public build()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;-><init>(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->sourceText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->m(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->sourceLanguage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->l(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->targetLanguage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->n(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->verbose:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->o(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->appendMeta:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->a(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->g(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->fallbackLanguage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->d(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->forcePivot:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->e(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->mode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->h(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->formality:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->f(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->requestingPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->j(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->needSentenceSplit:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->i(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->requestingSourceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->k(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->endOfContext:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->c(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Z)V

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->contextCandidate:I

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->b(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;I)V

    return-object v0
.end method

.method public contextCandidate(I)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->contextCandidate:I

    return-object p0
.end method

.method public endOfContext(Z)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->endOfContext:Z

    return-object p0
.end method

.method public fallbackLanguage(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->fallbackLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public forcePivot(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->forcePivot:Ljava/lang/Boolean;

    return-object p0
.end method

.method public formality(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->formality:Ljava/lang/Boolean;

    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public mode(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->mode:Ljava/lang/String;

    return-object p0
.end method

.method public requestingPackageName(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->requestingPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public requestingSourceId(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->requestingSourceId:Ljava/lang/String;

    return-object p0
.end method

.method public sentenceSplit(Z)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->needSentenceSplit:Z

    return-object p0
.end method

.method public verbose(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->verbose:Ljava/lang/Boolean;

    return-object p0
.end method
