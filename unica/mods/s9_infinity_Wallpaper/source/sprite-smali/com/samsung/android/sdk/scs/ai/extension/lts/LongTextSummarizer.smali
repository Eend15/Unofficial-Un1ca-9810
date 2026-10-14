.class public Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/ai/extension/lts/ILongTextSummarizer;


# static fields
.field private static final SEPARATE_N:I = 0x4


# instance fields
.field private final DEPTH_LEVEL:[I

.field private final TAG:Ljava/lang/String;

.field private final appinfoBuilder:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

.field private clientCallback:Lcom/samsung/android/sdk/scs/ai/extension/lts/OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/scs/ai/extension/lts/OnCompleteListener<",
            "Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;",
            ">;"
        }
    .end annotation
.end field

.field compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

.field context:Landroid/content/Context;

.field private depthLevel:I

.field private isCanceled:Z

.field isProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ltsResult:Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

.field private mMaxTokenCount:I

.field private final mSummarizer:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

.field needToaddContent:Ljava/lang/Boolean;

.field run:Ljava/util/concurrent/atomic/AtomicBoolean;

.field separatedTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/language/Summarizer;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "LongTextSummarizer"

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->run:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 5
    filled-new-array {v3, v0, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->DEPTH_LEVEL:[I

    .line 6
    iput v3, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->depthLevel:I

    .line 7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->needToaddContent:Ljava/lang/Boolean;

    .line 8
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->appinfoBuilder:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    const/16 v0, 0x400

    .line 9
    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->mMaxTokenCount:I

    .line 10
    iput-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isCanceled:Z

    .line 11
    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->mSummarizer:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    .line 12
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->context:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "LongTextSummarizer"

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->TAG:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->run:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 17
    filled-new-array {v3, v0, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->DEPTH_LEVEL:[I

    .line 18
    iput v3, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->depthLevel:I

    .line 19
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->needToaddContent:Ljava/lang/Boolean;

    .line 20
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->appinfoBuilder:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    const/16 v0, 0x400

    .line 21
    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->mMaxTokenCount:I

    .line 22
    iput-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isCanceled:Z

    .line 23
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/AiServices;->getSummarizer(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->mSummarizer:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "LongTextSummarizer"

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->run:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 29
    filled-new-array {v2, v3, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->DEPTH_LEVEL:[I

    .line 30
    iput v2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->depthLevel:I

    .line 31
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->needToaddContent:Ljava/lang/Boolean;

    .line 32
    new-instance v4, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    invoke-direct {v4}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->appinfoBuilder:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    const/16 v4, 0x400

    .line 33
    iput v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->mMaxTokenCount:I

    .line 34
    iput-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isCanceled:Z

    .line 35
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/AiServices;->getSummarizer(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->mSummarizer:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    if-eqz p3, :cond_1

    if-eq p3, v2, :cond_1

    if-eq p3, v3, :cond_0

    .line 36
    aget p3, v0, v2

    iput p3, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->depthLevel:I

    goto :goto_0

    .line 37
    :cond_0
    aget p3, v0, v2

    iput p3, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->depthLevel:I

    goto :goto_0

    .line 38
    :cond_1
    aget p3, v0, v1

    iput p3, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->depthLevel:I

    .line 39
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;Ljava/util/concurrent/CompletableFuture;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->lambda$process$0(Ljava/util/concurrent/CompletableFuture;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->lambda$process$2(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->lambda$request$3()V

    return-void
.end method

.method private callback(Lcom/samsung/android/sdk/scs/base/tasks/Task;Ljava/util/concurrent/CompletableFuture;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "LongTextSummarizer"

    if-nez v0, :cond_0

    const-string p0, "processing is stopped. do not call callback method."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/Result;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/Result;->getContent()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->addSentence(Ljava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->needToaddContent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_3

    iget v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->depthLevel:I

    if-eqz v4, :cond_2

    if-eq v4, v3, :cond_2

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->getDividedNQueue()Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v6, 0x4

    if-gt v4, v6, :cond_3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->needToaddContent:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->getDividedNQueue()Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-gt v4, v3, :cond_3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->needToaddContent:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->getDividedNQueue()Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-gt v4, v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->getDividedNQueue()Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->needToaddContent:Ljava/lang/Boolean;

    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->needToaddContent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->ltsResult:Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    invoke-virtual {v4, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->setContent(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->ltsResult:Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->increaseRepeatCount()V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->ltsResult:Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->handleCallback(Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->iterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_9

    iget p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->depthLevel:I

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->DEPTH_LEVEL:[I

    aget v6, v4, v2

    if-ne p1, v6, :cond_5

    if-eq v0, v6, :cond_7

    :cond_5
    aget v6, v4, v3

    if-ne p1, v6, :cond_6

    if-le v0, v6, :cond_7

    :cond_6
    aget v4, v4, v5

    if-ne p1, v4, :cond_8

    if-gt v0, v4, :cond_8

    :cond_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "summary : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->getSummary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->handleCallback(Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;Z)V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->getChunkedSummarySentenceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->iterator:Ljava/util/Iterator;

    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->getErrorMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->handleCallback(Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "failed: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_b
    new-instance p1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    const-string v0, "Unknown error occurred."

    invoke-direct {p1, v0, v2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->handleCallback(Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;Z)V

    const-string p0, "failed: Unknown error occurred."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;Ljava/util/concurrent/CompletableFuture;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->lambda$summarize$4(Ljava/util/concurrent/CompletableFuture;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;Ljava/util/concurrent/CompletableFuture;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->lambda$process$1(Ljava/util/concurrent/CompletableFuture;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method private static getErrorMessage(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    const-string v0, "unknown error"

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private handleCallback(Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isCanceled:Z

    if-eqz p2, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isCanceled:Z

    const-string p2, "Client Error Cancel"

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->setContent(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->clientCallback:Lcom/samsung/android/sdk/scs/ai/extension/lts/OnCompleteListener;

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/OnCompleteListener;->onError(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->clientCallback:Lcom/samsung/android/sdk/scs/ai/extension/lts/OnCompleteListener;

    invoke-interface {p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/OnCompleteListener;->onComplete()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->clientCallback:Lcom/samsung/android/sdk/scs/ai/extension/lts/OnCompleteListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/OnCompleteListener;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->context:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->separatedTextList:Ljava/util/List;

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->separatedTextList:Ljava/util/List;

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;->getChunkSenteneList(Ljava/lang/String;Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->separatedTextList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->iterator:Ljava/util/Iterator;

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    iget-object p2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->separatedTextList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->divideAndCeil(I)Ljava/util/List;

    iget p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->depthLevel:I

    iget-object p2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->getDividedCount()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->getDividedCount()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->depthLevel:I

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->balanceGroup()Ljava/util/Queue;

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->getDividedCount()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->depthLevel:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->getDividedCount()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;-><init>(ILjava/lang/String;Z)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->ltsResult:Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    return-void
.end method

.method private synthetic lambda$process$0(Ljava/util/concurrent/CompletableFuture;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->tokenCallback(Lcom/samsung/android/sdk/scs/base/tasks/Task;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method private synthetic lambda$process$1(Ljava/util/concurrent/CompletableFuture;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->tokenSeparateTextCallback(Lcom/samsung/android/sdk/scs/base/tasks/Task;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method private synthetic lambda$process$2(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "Summarize Exception : "

    const-string v3, "Token Calculation Error"

    const-string v4, "LongTextSummarizer"

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v5, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    invoke-direct {v5}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;-><init>()V

    sget-object v6, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->ONDEVICE:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setRequestType(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->build()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    move-result-object v5

    iget-object v6, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->mSummarizer:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    sget-object v9, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->BRIEFLY:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    sget-object v10, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->ARTICLE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object v7, v5

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;->getTokenCount(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/Map;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/sdk/scs/ai/extension/lts/a;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v0, v8}, Lcom/samsung/android/sdk/scs/ai/extension/lts/a;-><init>(Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;Ljava/util/concurrent/CompletableFuture;I)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    const/4 v12, 0x1

    const/4 v13, 0x0

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x78

    invoke-virtual {v0, v14, v15, v6}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v11, p2

    invoke-virtual {v11, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v6, 0x1000

    if-le v0, v6, :cond_0

    iget-object v0, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->ltsResult:Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    const-string v5, "Token Max Exceeded Error"

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->setContent(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->ltsResult:Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->setTokenCount(I)V

    iget-object v0, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->ltsResult:Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    invoke-direct {v1, v0, v12}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->handleCallback(Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;Z)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    invoke-direct {v0, v3, v13}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v0, v12}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->handleCallback(Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    int-to-double v6, v0

    iget v0, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->mMaxTokenCount:I

    add-int/lit8 v0, v0, -0x64

    int-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    const/4 v6, 0x3

    move v7, v12

    :goto_0
    add-int/lit8 v16, v6, -0x1

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    int-to-double v6, v6

    int-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v13, v7

    div-double/2addr v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "text size :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " needToSeparatedCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " before maxSeparatedTextSize : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->mMaxTokenCount:I

    sub-int v9, v8, v7

    int-to-double v13, v9

    int-to-double v10, v8

    div-double/2addr v13, v10

    int-to-double v10, v6

    mul-double/2addr v10, v13

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    sub-double v17, v17, v13

    div-double v10, v10, v17

    double-to-int v8, v10

    const-string v10, "estimatedAverageTokenCount : "

    const-string v11, " marginTokenCount : "

    const-string v15, " marginTokenRate : "

    invoke-static {v7, v10, v9, v11, v15}, LB/a;->p(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, " marginTextLength : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v0, v12

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->separatedTextList:Ljava/util/List;

    new-instance v7, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    const/4 v9, 0x4

    invoke-direct {v7, v9}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;-><init>(I)V

    iput-object v7, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    iget-object v7, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->separatedTextList:Ljava/util/List;

    move-object/from16 v13, p1

    invoke-static {v13, v7, v6, v8}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;->getChunkSenteneList(Ljava/lang/String;Ljava/util/List;II)V

    iget-object v6, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->separatedTextList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    new-instance v15, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v15}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v6, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->mSummarizer:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    sget-object v9, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->BRIEFLY:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    sget-object v10, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->ARTICLE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object v7, v5

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;->getTokenCount(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/Map;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/sdk/scs/ai/extension/lts/a;

    const/4 v8, 0x1

    invoke-direct {v7, v1, v15, v8}, Lcom/samsung/android/sdk/scs/ai/extension/lts/a;-><init>(Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;Ljava/util/concurrent/CompletableFuture;I)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    :try_start_1
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x78

    invoke-virtual {v15, v8, v9, v6}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    iget v7, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->mMaxTokenCount:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lt v7, v10, :cond_3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-gtz v6, :cond_2

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v12

    goto :goto_3

    :goto_2
    new-instance v5, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v5, v12}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->handleCallback(Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-wide/16 v8, 0x78

    const/4 v7, 0x0

    :goto_3
    move-object/from16 v11, p2

    move-wide v14, v8

    move/from16 v6, v16

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_5
    if-nez v7, :cond_8

    iget-object v0, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    iget-object v2, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->separatedTextList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->divideAndCeil(I)Ljava/util/List;

    iget v0, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->depthLevel:I

    iget-object v2, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->getDividedCount()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_6

    iget-object v0, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->getDividedCount()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->depthLevel:I

    :cond_6
    iget-object v0, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->balanceGroup()Ljava/util/Queue;

    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_4
    iget-object v2, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->getDividedCount()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->depthLevel:I

    sub-int/2addr v2, v3

    if-ge v13, v2, :cond_7

    iget-object v2, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->getDividedCount()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_7
    new-instance v2, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    const-string v3, ""

    invoke-direct {v2, v0, v3, v12}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;-><init>(ILjava/lang/String;Z)V

    iput-object v2, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->ltsResult:Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->setTokenCount(I)V

    iget-object v0, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->separatedTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->iterator:Ljava/util/Iterator;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->process()Ljava/lang/Boolean;

    :cond_8
    return-void

    :goto_5
    new-instance v5, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v5, v12}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->handleCallback(Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$request$3()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->run:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->summarize()Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->run:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private synthetic lambda$summarize$4(Ljava/util/concurrent/CompletableFuture;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->callback(Lcom/samsung/android/sdk/scs/base/tasks/Task;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method private postProcess()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->depthLevel:I

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->DEPTH_LEVEL:[I

    aget v1, v1, v2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->compressionSummary:Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->getChunkedSummarySentenceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->iterator:Ljava/util/Iterator;

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->DEPTH_LEVEL:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->depthLevel:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->request()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isProcessing : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " depthLevel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->depthLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LongTextSummarizer"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private process()Ljava/lang/Boolean;
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "separatedTextList size :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->separatedTextList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LongTextSummarizer"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->request()V

    .line 13
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private release()V
    .locals 2

    const-string v0, "LongTextSummarizer"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->run:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->thread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method private request()V
    .locals 2

    new-instance v0, LA0/a;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, LA0/a;-><init>(ILjava/lang/Object;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->thread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->run:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->thread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private summarize()Ljava/lang/Boolean;
    .locals 9

    const-string v0, "LongTextSummarizer"

    const-string v1, "summarize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->appinfoBuilder:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setStreamingMode(Z)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->ONDEVICE:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setRequestType(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->build()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    move-result-object v4

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->mSummarizer:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    iget-object v5, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->iterator:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->BRIEFLY:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    sget-object v7, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->ARTICLE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;->summarize(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/Map;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sdk/scs/ai/extension/lts/a;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v1, v5}, Lcom/samsung/android/sdk/scs/ai/extension/lts/a;-><init>(Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;Ljava/util/concurrent/CompletableFuture;I)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x78

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    invoke-static {v1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->getErrorMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->handleCallback(Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Summarize Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->release()V

    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private tokenCallback(Lcom/samsung/android/sdk/scs/base/tasks/Task;Ljava/util/concurrent/CompletableFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tokenCount : "

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "LongTextSummarizer"

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/Result;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/Result;->getContent()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "content: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TokenParser;->getToken(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    :try_start_0
    const-string v1, "count"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v5, "countMax"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_0

    const/16 p1, 0x400

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->mMaxTokenCount:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " maxCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->mMaxTokenCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    new-instance p1, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    const-string p2, "Token Calculation Error"

    invoke-direct {p1, p2, v3}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->handleCallback(Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;Z)V

    return-void

    :cond_1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    invoke-static {p2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->getErrorMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->setTask(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->handleCallback(Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "failed: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private tokenSeparateTextCallback(Lcom/samsung/android/sdk/scs/base/tasks/Task;Ljava/util/concurrent/CompletableFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tokenCount : "

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/Result;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/language/Result;->getContent()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "content: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LongTextSummarizer"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TokenParser;->getToken(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    :try_start_0
    const-string p1, "count"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    invoke-virtual {p2, v2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p2, v2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    invoke-static {p2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->getErrorMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->setTask(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->handleCallback(Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addOnCompleteListener(Lcom/samsung/android/sdk/scs/ai/extension/lts/OnCompleteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/extension/lts/OnCompleteListener<",
            "Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->clientCallback:Lcom/samsung/android/sdk/scs/ai/extension/lts/OnCompleteListener;

    return-void
.end method

.method public process(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isCanceled:Z

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance v3, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    const-string v4, ""

    invoke-direct {v3, v1, v4, v1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;-><init>(ILjava/lang/String;Z)V

    iput-object v3, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->ltsResult:Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->needToaddContent:Ljava/lang/Boolean;

    .line 6
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, LS1/b;

    const/4 v4, 0x3

    invoke-direct {v3, p0, p1, v0, v4}, LS1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return v2

    .line 8
    :cond_0
    const-string p0, "LongTextSummarizer"

    const-string p1, "Do not use this object more than once. Please recreate the instance."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isProcessing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->isCanceled:Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;->release()V

    return-void
.end method
