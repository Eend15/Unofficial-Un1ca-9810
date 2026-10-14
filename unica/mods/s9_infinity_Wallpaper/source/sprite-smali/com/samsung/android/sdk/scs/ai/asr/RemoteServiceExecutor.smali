.class Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;
.super Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteServiceManager"


# instance fields
.field private final mActionResolver:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private mService:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-wide/16 v4, 0x3c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;-><init>(Landroid/content/Context;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;->mPackageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.intellivoiceservice.ai.asr.permission.SYSTEM_BIND_SPEECH_RECOGNITION_SERVICE"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "System permission has granted : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteServiceManager"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/asr/h;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/h;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;->mActionResolver:Ljava/util/function/Supplier;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/scs/ai/asr/h;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/h;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;->mActionResolver:Ljava/util/function/Supplier;

    :goto_0
    return-void
.end method

.method public static synthetic g()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;->lambda$new$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;->lambda$new$1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$new$0()Ljava/lang/String;
    .locals 1

    const-string v0, "android.intellivoiceservice.speech.RecognitionSystemService"

    return-object v0
.end method

.method private static synthetic lambda$new$1()Ljava/lang/String;
    .locals 1

    const-string v0, "android.intellivoiceservice.speech.RecognitionService"

    return-object v0
.end method


# virtual methods
.method public beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    instance-of p1, p2, Lcom/samsung/android/sdk/scs/ai/asr/tasks/RecognitionTask;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/samsung/android/sdk/scs/ai/asr/tasks/RecognitionTask;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;->mService:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizerService;

    invoke-virtual {p2, p0}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/RecognitionTask;->active(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizerService;)V

    :cond_0
    return-void
.end method

.method public getServiceIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;->mActionResolver:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->isSIVSAvailableOSVersion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.android.intellivoiceservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.android.scs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v1, "caller_package"

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "RemoteServiceManager"

    const-string v0, "onConnected"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizerService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;->mService:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizerService;

    return-void
.end method

.method public onDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "RemoteServiceManager"

    const-string v0, "onDisconnected"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;->mService:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizerService;

    return-void
.end method
