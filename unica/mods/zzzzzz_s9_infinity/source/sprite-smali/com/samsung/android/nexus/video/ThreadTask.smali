.class public abstract Lcom/samsung/android/nexus/video/ThreadTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final WORK_DONE:I

.field mArgument:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT1;"
        }
    .end annotation
.end field

.field mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT2;"
        }
    .end annotation
.end field

.field mResultHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/nexus/video/ThreadTask;->WORK_DONE:I

    new-instance v0, Lcom/samsung/android/nexus/video/ThreadTask$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/nexus/video/ThreadTask$1;-><init>(Lcom/samsung/android/nexus/video/ThreadTask;)V

    iput-object v0, p0, Lcom/samsung/android/nexus/video/ThreadTask;->mResultHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)TT2;"
        }
    .end annotation
.end method

.method public final execute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/nexus/video/ThreadTask;->mArgument:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/ThreadTask;->onPreExecute()V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public abstract onPostExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;)V"
        }
    .end annotation
.end method

.method public abstract onPreExecute()V
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/nexus/video/ThreadTask;->mArgument:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/samsung/android/nexus/video/ThreadTask;->doInBackground(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/nexus/video/ThreadTask;->mResult:Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/nexus/video/ThreadTask;->mResultHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
