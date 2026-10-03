.class public Lcom/samsung/android/sdk/scs/ai/suggestion/KeywordSuggester;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScsApi@KeywordSuggester"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProviderExecutor:Lcom/samsung/android/sdk/scs/ai/suggestion/SuggestionProviderExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/suggestion/KeywordSuggester;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/suggestion/SuggestionProviderExecutor;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/suggestion/SuggestionProviderExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/suggestion/KeywordSuggester;->mProviderExecutor:Lcom/samsung/android/sdk/scs/ai/suggestion/SuggestionProviderExecutor;

    return-void
.end method


# virtual methods
.method public suggest(Lcom/samsung/android/sdk/scs/ai/suggestion/KeywordSuggestionType;IZ)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/suggestion/KeywordSuggestionType;",
            "IZ)",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/scs/ai/suggestion/Keyword;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/suggestion/KeywordSuggestionRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/suggestion/KeywordSuggester;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/scs/ai/suggestion/KeywordSuggestionRunnable;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/suggestion/KeywordSuggestionType;IZ)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/suggestion/KeywordSuggester;->mProviderExecutor:Lcom/samsung/android/sdk/scs/ai/suggestion/SuggestionProviderExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method
