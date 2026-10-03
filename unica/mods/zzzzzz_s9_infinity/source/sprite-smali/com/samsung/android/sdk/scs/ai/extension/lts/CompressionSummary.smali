.class Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private N:I

.field private final TAG:Ljava/lang/String;

.field private chunkedSummarySentence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dividedCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dividedCountQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dividedNQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private summarySentence:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "CompressionSummary"

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCountQueue:Ljava/util/Queue;

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedNQueue:Ljava/util/Queue;

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->summarySentence:Ljava/util/Queue;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->chunkedSummarySentence:Ljava/util/List;

    const/4 v0, 0x4

    .line 8
    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->N:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "CompressionSummary"

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->TAG:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCountQueue:Ljava/util/Queue;

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedNQueue:Ljava/util/Queue;

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->summarySentence:Ljava/util/Queue;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->chunkedSummarySentence:Ljava/util/List;

    .line 16
    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->N:I

    return-void
.end method


# virtual methods
.method public addSentence(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->summarySentence:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->summarySentence:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method

.method public balanceGroup()Ljava/util/Queue;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedNQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedNQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->N:I

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->N:I

    rem-int/2addr v2, v4

    sub-int v2, v3, v2

    int-to-double v4, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v6, v2

    iget v2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->N:I

    int-to-double v8, v2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    cmpl-double v2, v4, v6

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    iget v6, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->N:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v3, v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    if-ltz v2, :cond_4

    if-le v2, v3, :cond_2

    rem-int v4, v2, v3

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v3, -0x1

    :goto_2
    sub-int/2addr v2, v4

    move v10, v4

    move v4, v2

    move v2, v10

    goto :goto_3

    :cond_2
    neg-int v4, v2

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dividedNQueue "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedNQueue:Ljava/util/Queue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompressionSummary"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedNQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public divideAndCeil(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCountQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    if-gtz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, p1

    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    int-to-double v0, v0

    iget v2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->N:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->N:I

    if-gt p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "dividedCount"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CompressionSummary"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCountQueue:Ljava/util/Queue;

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    return-object p0
.end method

.method public getChunkedSummarySentence()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->chunkedSummarySentence:Ljava/util/List;

    return-object p0
.end method

.method public getChunkedSummarySentenceList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->chunkedSummarySentence:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedNQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCountQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->summarySentence:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "size error Text size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->summarySentence:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Q size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompressionSummary"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->chunkedSummarySentence:Ljava/util/List;

    const-string v5, ""

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v1

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->chunkedSummarySentence:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->chunkedSummarySentence:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->summarySentence:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->summarySentence:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->chunkedSummarySentence:Ljava/util/List;

    return-object p0
.end method

.method public getDividedCount()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    return-object p0
.end method

.method public getDividedNQueue()Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedNQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public getSeparateN()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->N:I

    return p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->getSummarySentence()Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummarySentence()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->summarySentence:Ljava/util/Queue;

    invoke-direct {v0, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public setChunkedSummarySentence(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->chunkedSummarySentence:Ljava/util/List;

    return-void
.end method

.method public setDividedCount(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCount:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedCountQueue:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setDividedNQueue(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/CompressionSummary;->dividedNQueue:Ljava/util/Queue;

    return-void
.end method
