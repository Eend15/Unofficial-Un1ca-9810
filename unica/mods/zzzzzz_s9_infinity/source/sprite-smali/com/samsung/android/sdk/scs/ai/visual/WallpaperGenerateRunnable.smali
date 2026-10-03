.class public Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Lcom/samsung/android/sdk/scs/ai/visual/WallpaperResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperGenerateRunnable"


# instance fields
.field private mAlphaBitmap:Landroid/graphics/Bitmap;

.field private mInputBitmap:Landroid/graphics/Bitmap;

.field private mInputBundle:Landroid/os/Bundle;

.field private mInputType:Ljava/lang/String;

.field private mPriority:I

.field private final mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;

.field private mTime:Ljava/lang/String;

.field private mWeather:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;

    return-void
.end method

.method private setResult(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->TAG:Ljava/lang/String;

    const-string v0, "generate(). retBundle is null!!"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    const/4 p1, 0x5

    const-string v0, "retBundle is null"

    invoke-static {p1, v0, p0}, LB/a;->u(ILjava/lang/String;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperResult;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperResult;-><init>()V

    const-string v1, "resultCode"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperResult;->setResult(I)V

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    sget-object p1, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "generate(). Abnormal resultCode!!! resultCode: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1f4

    if-ne v1, p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v0, Lcom/samsung/android/sdk/scs/base/ResultException;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance p1, Lcom/samsung/android/sdk/scs/base/ResultException;

    const/16 v0, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperResult;->setBundle(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    const-string v0, "execute(), mInputType : "

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->mInputBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    new-instance v1, Lcom/samsung/android/sdk/scs/base/ResultException;

    const/16 v2, 0x2bc

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->getBundle()Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "inputType"

    if-nez v1, :cond_1

    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "time"

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->mTime:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "weather"

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->mWeather:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "priority"

    iget v4, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->mPriority:I

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->mInputType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "inputBitmap"

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->mInputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "alphaBitmap"

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->mAlphaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->setBundle(Landroid/os/Bundle;)V

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "taskId"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParamUtils;->transformBitmapsInBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperServiceExecutor;->getWallpaperService()Lcom/samsung/android/visual/ai/sdkcommon/IWallpaperService;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/visual/ai/sdkcommon/IWallpaperService;->generate(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->setResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->mInputBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_WALLPAPER"

    return-object p0
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->mInputBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setInBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->mInputBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->mAlphaBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->mTime:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->mWeather:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->mPriority:I

    const-string p1, "bitmap"

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerateRunnable;->mInputType:Ljava/lang/String;

    return-void
.end method
