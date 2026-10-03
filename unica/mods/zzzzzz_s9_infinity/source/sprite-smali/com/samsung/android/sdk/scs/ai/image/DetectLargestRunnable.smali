.class public Lcom/samsung/android/sdk/scs/ai/image/DetectLargestRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Lcom/samsung/android/sdk/scs/ai/image/Boundary;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScsApi@DetectLargestRunnable"


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mLargestBoundary:Lcom/samsung/android/sdk/scs/ai/image/Boundary;

.field mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/image/DetectLargestRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    const-string v0, "detectLargestBoundary(). Abnormal resultCode!!! resultCode: "

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/image/DetectLargestRunnable;->mUri:Landroid/net/Uri;

    const-string v2, "ScsApi@DetectLargestRunnable"

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/image/DetectLargestRunnable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const-string v0, "RESULT_MISSING_MANDATORY_FIELD!!!"

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/image/DetectLargestRunnable;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    const-string v4, "uri"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    const-string v3, "bmp"

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/image/DetectLargestRunnable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/image/DetectLargestRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;->getImageService()Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;->detectLargestBoundary(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "detectLargestBoundary(). retBundle is null!!"

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v1, Lcom/samsung/android/sdk/scs/base/ResultException;

    const-string v2, "retBundle is null"

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_2
    const-string v3, "resultCode"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1f4

    if-ne v3, v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v2, Lcom/samsung/android/sdk/scs/base/ResultException;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v1, Lcom/samsung/android/sdk/scs/base/ResultException;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :cond_4
    const-string v0, "rect"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/image/Boundary;->create()Lcom/samsung/android/sdk/scs/ai/image/Boundary;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/scs/ai/image/Boundary;->setRect(Landroid/graphics/Rect;)Lcom/samsung/android/sdk/scs/ai/image/Boundary;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/DetectLargestRunnable;->mLargestBoundary:Lcom/samsung/android/sdk/scs/ai/image/Boundary;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_3
    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_IMAGE_GET_LARGEST_BOUNDARY"

    return-object p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/image/DetectLargestRunnable;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/image/DetectLargestRunnable;->mUri:Landroid/net/Uri;

    return-void
.end method
