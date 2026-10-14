.class public Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private content:Ljava/lang/String;

.field private isSuccess:Z

.field private progressCount:I

.field private progressRate:I

.field private task:Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;"
        }
    .end annotation
.end field

.field private tokenCount:I

.field private totalCount:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->progressCount:I

    .line 11
    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->progressRate:I

    .line 12
    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->tokenCount:I

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->task:Lcom/samsung/android/sdk/scs/base/tasks/Task;

    .line 14
    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->content:Ljava/lang/String;

    .line 15
    iput-boolean p3, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->isSuccess:Z

    .line 16
    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->totalCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->progressCount:I

    .line 3
    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->totalCount:I

    .line 4
    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->progressRate:I

    .line 5
    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->tokenCount:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->task:Lcom/samsung/android/sdk/scs/base/tasks/Task;

    .line 7
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->content:Ljava/lang/String;

    .line 8
    iput-boolean p2, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->isSuccess:Z

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->content:Ljava/lang/String;

    return-object p0
.end method

.method public getProgressCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->progressCount:I

    return p0
.end method

.method public getProgressRate()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->progressRate:I

    return p0
.end method

.method public getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->task:Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-object p0
.end method

.method public getTokenCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->tokenCount:I

    return p0
.end method

.method public getTotalCount()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->totalCount:I

    return p0
.end method

.method public increaseRepeatCount()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->progressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->progressCount:I

    iget v1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->totalCount:I

    if-nez v1, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->progressRate:I

    return-void
.end method

.method public isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->isSuccess:Z

    return p0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->content:Ljava/lang/String;

    return-void
.end method

.method public setProgressRate(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->progressRate:I

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->isSuccess:Z

    return-void
.end method

.method public setTask(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->task:Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-void
.end method

.method public setTokenCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->tokenCount:I

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LtsResult;->totalCount:I

    return-void
.end method
