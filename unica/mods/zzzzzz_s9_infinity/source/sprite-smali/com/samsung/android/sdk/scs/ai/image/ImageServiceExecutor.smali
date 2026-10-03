.class public Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;
.super Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScsApi@ImageServiceExecutor"


# instance fields
.field private deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mImageService:Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;-><init>(Landroid/content/Context;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor$1;-><init>(Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;)Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;->mImageService:Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;

    return-object p0
.end method


# virtual methods
.method public getImageService()Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;->mImageService:Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;

    return-object p0
.end method

.method public getServiceIntent()Landroid/content/Intent;
    .locals 0

    invoke-static {}, Lcom/samsung/android/sdk/scs/base/utils/ConnectionHelper;->getVisionServiceIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "onServiceConnected"

    const-string v0, "ScsApi@ImageServiceExecutor"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;->mImageService:Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;

    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RemoteException"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceDisconnected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScsApi@ImageServiceExecutor"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;->mImageService:Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;

    return-void
.end method
