.class public Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;
    }
.end annotation


# instance fields
.field private appendMeta:Ljava/lang/Boolean;

.field private contextCandidate:I

.field private endOfContext:Z

.field private fallbackLanguage:Ljava/lang/String;

.field private forcePivot:Ljava/lang/Boolean;

.field private formality:Ljava/lang/Boolean;

.field private id:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private needSentenceSplit:Z

.field private requestingPackageName:Ljava/lang/String;

.field private requestingSourceId:Ljava/lang/String;

.field private sourceLanguage:Ljava/lang/String;

.field private sourceText:Ljava/lang/String;

.field private targetLanguage:Ljava/lang/String;

.field private verbose:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->appendMeta:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->contextCandidate:I

    return-void
.end method

.method public static builder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->endOfContext:Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->fallbackLanguage:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->forcePivot:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->formality:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->id:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->mode:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->needSentenceSplit:Z

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->requestingPackageName:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->requestingSourceId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->sourceLanguage:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->sourceText:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic n(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->targetLanguage:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic o(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->verbose:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->sourceLanguage:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->sourceLanguage:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->targetLanguage:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->targetLanguage:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->sourceText:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->sourceText:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->fallbackLanguage:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->fallbackLanguage:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->verbose:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->verbose:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->appendMeta:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->appendMeta:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->formality:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->formality:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->mode:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->mode:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->forcePivot:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->forcePivot:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->requestingPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->requestingPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->needSentenceSplit:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->needSentenceSplit:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->requestingSourceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->requestingSourceId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->endOfContext:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->endOfContext:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->contextCandidate:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->contextCandidate:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAppendMeta()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->appendMeta:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getContextCandidate()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->contextCandidate:I

    return p0
.end method

.method public getEndOfContext()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->endOfContext:Z

    return p0
.end method

.method public getFallbackLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->fallbackLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getForcePivot()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->forcePivot:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getFormality()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->formality:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->mode:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestingPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->requestingPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestingSourceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->requestingSourceId:Ljava/lang/String;

    return-object p0
.end method

.method public getSentenceSplit()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->needSentenceSplit:Z

    return p0
.end method

.method public getSourceLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->sourceLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->sourceText:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->targetLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getVerbose()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->verbose:Ljava/lang/Boolean;

    return-object p0
.end method

.method public hashCode()I
    .locals 15

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->sourceLanguage:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->targetLanguage:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->sourceText:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->fallbackLanguage:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->verbose:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->appendMeta:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->formality:Ljava/lang/Boolean;

    iget-object v8, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->mode:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->forcePivot:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->requestingPackageName:Ljava/lang/String;

    iget-boolean v11, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->needSentenceSplit:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->requestingSourceId:Ljava/lang/String;

    iget-boolean v13, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->endOfContext:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->contextCandidate:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array/range {v0 .. v14}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
