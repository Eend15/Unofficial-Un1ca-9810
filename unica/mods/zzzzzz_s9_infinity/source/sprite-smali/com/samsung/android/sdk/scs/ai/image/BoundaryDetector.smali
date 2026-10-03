.class public Lcom/samsung/android/sdk/scs/ai/image/BoundaryDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScsApi@BoundaryDetector"


# instance fields
.field private mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ScsApi@BoundaryDetector"

    const-string v1, "BoundaryDetector"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/BoundaryDetector;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/image/BoundaryDetector;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->deInit()V

    :cond_0
    return-void
.end method

.method public detect(Landroid/graphics/Bitmap;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/scs/ai/image/Boundary;",
            ">;>;"
        }
    .end annotation

    .line 6
    const-string v0, "ScsApi@BoundaryDetector"

    const-string v1, "detect(bitmap)"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/image/DetectRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/image/BoundaryDetector;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/image/DetectRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/image/DetectRunnable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 9
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/image/BoundaryDetector;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public detect(Landroid/net/Uri;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/scs/ai/image/Boundary;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "detect - Uri : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@BoundaryDetector"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/image/DetectRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/image/BoundaryDetector;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/image/DetectRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/image/DetectRunnable;->setUri(Landroid/net/Uri;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/image/BoundaryDetector;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public detectLargest(Landroid/graphics/Bitmap;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Lcom/samsung/android/sdk/scs/ai/image/Boundary;",
            ">;"
        }
    .end annotation

    .line 6
    const-string v0, "ScsApi@BoundaryDetector"

    const-string v1, "detectLargest(bitmap)"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/image/DetectLargestRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/image/BoundaryDetector;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/image/DetectLargestRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/image/DetectLargestRunnable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 9
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/image/BoundaryDetector;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public detectLargest(Landroid/net/Uri;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Lcom/samsung/android/sdk/scs/ai/image/Boundary;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "detectLargest - Uri : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@BoundaryDetector"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/image/DetectLargestRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/image/BoundaryDetector;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/image/DetectLargestRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/image/DetectLargestRunnable;->setUri(Landroid/net/Uri;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/image/BoundaryDetector;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method
