.class Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;
.super Lcom/samsung/android/sivs/ai/sdkcommon/translation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

.field final synthetic val$translationId:Ljava/lang/String;

.field final synthetic val$translationResultHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->val$translationId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->val$translationResultHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->lambda$onFailure$3(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->lambda$onSuccess$0(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->lambda$onSuccess$1(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->lambda$onFailure$2(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V

    return-void
.end method

.method private synthetic lambda$onFailure$2(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->request:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;->getOnFailure()Ljava/util/function/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->request:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;->deRegisterCallback()V

    return-void
.end method

.method private synthetic lambda$onFailure$3(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->request:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;->getOnFailure()Ljava/util/function/Consumer;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->request:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;->getOnSuccess()Ljava/util/function/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->request:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;->deRegisterCallback()V

    return-void
.end method

.method private synthetic lambda$onSuccess$1(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->request:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;->getOnSuccess()Ljava/util/function/Consumer;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->from(I)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->val$translationId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NeuralTranslationByChunkRunnable -- ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Translation fails with error code "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@NeuralTranslator"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->mTextChunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->val$translationResultHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/translation/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/sdk/scs/ai/translation/e;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->val$translationResultHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/translation/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/sdk/scs/ai/translation/e;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "sourceLanguage"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetLanguage"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "formality"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->val$translationId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NeuralTranslationByChunkRunnable -- ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] Translate success"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ScsApi@NeuralTranslator"

    invoke-static {v4, v3}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "targetText"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iget-object v5, v5, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->mTextChunks:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sivs/ai/sdkcommon/translation/ChunkPair;

    iget-object v5, v5, Lcom/samsung/android/sivs/ai/sdkcommon/translation/ChunkPair;->e:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->builder()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->sourceLanguage(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->targetLanguage(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sourceText"

    invoke-virtual {p1, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->sourceText(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;

    move-result-object v0

    invoke-static {v3, v5}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->targetText(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->id(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;

    move-result-object v0

    const-string v1, "verbose"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->verbose(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;

    move-result-object v0

    const-string v1, "appendMeta"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->appendMeta(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->formality(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;

    move-result-object v0

    const-string v1, "forcePivot"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->forcePivot(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;

    move-result-object v0

    const-string v1, "interimResult"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->interimResult(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->mTextChunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->isComplete(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult$TranslationResultBuilder;->build()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->mTextChunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->val$translationResultHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/translation/d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/sdk/scs/ai/translation/d;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->val$translationResultHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/translation/d;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/sdk/scs/ai/translation/d;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iget-object p1, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->mTextChunks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iget-object p1, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->mTextChunks:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iget-object v0, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->mBundle:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->mTextChunks:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/ChunkPair;

    iget-object p1, p1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/ChunkPair;->d:Ljava/lang/String;

    invoke-virtual {v0, v7, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iget-object p1, p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->neuralTranslationServiceExecutor:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;->getTranslationService()Lcom/samsung/android/sivs/ai/sdkcommon/translation/f;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->mBundle:Landroid/os/Bundle;

    check-cast p1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/d;

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/d;->j(Landroid/os/Bundle;Lcom/samsung/android/sivs/ai/sdkcommon/translation/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NeuralTranslationByChunkRunnable onSuccess recursive -- Exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable$1;->this$0:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;->access$000(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationByChunkRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :cond_2
    :goto_2
    return-void
.end method
