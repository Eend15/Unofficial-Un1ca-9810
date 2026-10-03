.class Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DURATION:Ljava/time/Duration;

.field private static final sServiceExecutorPool:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData<",
            "Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isReleased:Z

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

.field private final mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;

.field private mSttTask:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->isDevelop:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v1, v2}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->DEFAULT_DURATION:Ljava/time/Duration;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/h;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/scs/ai/asr/h;-><init>(I)V

    const-string v3, "Executor"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;->setTimeout(Ljava/time/Duration;)Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;->build()Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->sServiceExecutorPool:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpeechRecognizerControl@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->isReleased:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->mListener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->sServiceExecutorPool:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/l;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/sdk/scs/ai/asr/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->getOrCompute(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;

    const-string p0, "created"

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/ai/asr/ASRLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a()Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->lambda$static$0()Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->lambda$new$1(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;

    move-result-object p0

    return-object p0
.end method

.method private static getGlobalContext()Landroid/content/Context;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    return-object v0
.end method

.method private initInternal()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->mContext:Landroid/content/Context;

    const-string v1, "FEATURE_SPEECH_RECOGNITION"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->mListener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, -0x1

    const-string v3, "SpeechRecognizerService is UNAVAILABLE"

    invoke-interface {p0, v2, v3, v0}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;->onError(ILjava/lang/String;Landroid/os/Bundle;)V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->mListener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0xf

    const-string v3, "SpeechRecognizer is UNINITIALIZED"

    invoke-interface {p0, v2, v3, v0}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;->onError(ILjava/lang/String;Landroid/os/Bundle;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/IdleTask;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/IdleTask;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private isReleased()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->isReleased:Z

    return p0
.end method

.method private static synthetic lambda$new$1(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic lambda$static$0()Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->TAG:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->mSttTask:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/RecognitionTask;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->mSttTask:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->cancel()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->initInternal()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->mListener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "init"

    filled-new-array {v2, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/sdk/scs/ai/asr/ASRLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->isReleased:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->mSttTask:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->mSttTask:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->initInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->mListener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Ljava/io/InputStream;Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->mSttTask:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/asr/RemoteServiceExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->TAG:Ljava/lang/String;

    const-string p1, "start failed"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
