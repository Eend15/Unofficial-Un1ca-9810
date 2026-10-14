.class Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DURATION:Ljava/time/Duration;

.field private static final TAG:Ljava/lang/String; = "SpeechRecognizerControl"

.field private static final sServiceExecutorPool:Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData<",
            "Lcom/samsung/android/sdk/scs/ai/asr_6_0/RemoteServiceExecutor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;

.field private final mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/asr_6_0/RemoteServiceExecutor;

.field private mSttTask:Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData;->isDevelop:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v1, v2}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->DEFAULT_DURATION:Ljava/time/Duration;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData$Builder;

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr_6_0/f;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/f;-><init>(I)V

    const-string v3, "Executor"

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData$Builder;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData$Builder;->setTimeout(Ljava/time/Duration;)Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData$Builder;->build()Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->sServiceExecutorPool:Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->mListener:Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;

    sget-object p2, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->sServiceExecutorPool:Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/ExpiringData;->getOrCompute(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RemoteServiceExecutor;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/asr_6_0/RemoteServiceExecutor;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/asr_6_0/RemoteServiceExecutor;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->lambda$new$1(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/asr_6_0/RemoteServiceExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Lcom/samsung/android/sdk/scs/ai/asr_6_0/RemoteServiceExecutor;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->lambda$static$0()Lcom/samsung/android/sdk/scs/ai/asr_6_0/RemoteServiceExecutor;

    move-result-object v0

    return-object v0
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

.method private static synthetic lambda$new$1(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/asr_6_0/RemoteServiceExecutor;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RemoteServiceExecutor;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RemoteServiceExecutor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic lambda$static$0()Lcom/samsung/android/sdk/scs/ai/asr_6_0/RemoteServiceExecutor;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RemoteServiceExecutor;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RemoteServiceExecutor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->mSttTask:Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/RecognitionTask;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->mSttTask:Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask;->cancel()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->mContext:Landroid/content/Context;

    const-string v1, "FEATURE_SPEECH_RECOGNITION"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->mListener:Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, -0x1

    const-string v2, "SpeechRecognizerService is UNAVAILABLE"

    invoke-interface {p0, v1, v2, v0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;->onError(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/asr_6_0/RemoteServiceExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/asr_6_0/RemoteServiceExecutor;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/IdleTask;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/IdleTask;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->mSttTask:Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->mSttTask:Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask;

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;Ljava/io/InputStream;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->init()V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->mListener:Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask;-><init>(Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;Ljava/io/InputStream;Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->mSttTask:Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognizerControl;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/asr_6_0/RemoteServiceExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
