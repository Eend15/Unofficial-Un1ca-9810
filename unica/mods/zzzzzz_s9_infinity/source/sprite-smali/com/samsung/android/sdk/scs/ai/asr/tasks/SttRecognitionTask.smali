.class public Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;
.super Lcom/samsung/android/sdk/scs/ai/asr/tasks/RecognitionTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/ai/asr/tasks/RecognitionTask<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TIMEOUT_WRITE:J

.field private static final ignoreResult:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final config:Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;

.field private final dest:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private inputStream:Ljava/io/InputStream;

.field private listener:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;

.field private mRecognizer:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TIMEOUT_WRITE:J

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->ignoreResult:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Ljava/io/InputStream;Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/RecognitionTask;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SttTask@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/io/NullOutputStream;

    invoke-direct {v2}, Lcom/samsung/android/sdk/scs/ai/asr/io/NullOutputStream;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->dest:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "create task"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->config:Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->inputStream:Ljava/io/InputStream;

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;

    new-instance p2, LA1/h;

    const/4 v1, 0x4

    invoke-direct {p2, v1, p0}, LA1/h;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v0, p3, p2}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->listener:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->lambda$writeToPipe$0(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->taskCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic c()Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->ignoreResult:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

    return-object v0
.end method

.method private configToBundle(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;)Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->hasExtras()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string v1, "locale"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->getConnectionType()Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;->getTypeInt()I

    move-result v1

    const-string v2, "connection_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "enabled_partial"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enabledPartialResult()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "enabled_audio_compression"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->isEnabledAudioCompression()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "enabled_censor"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->isCensored()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "enabled_progress"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->needProgress()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "server_type"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->getServerType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "app_server_type"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->getServerInfo()Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "enable_speaker_diarisation"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->isSpeakerDiarisation()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "sd_notify_interval_time"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->getSdNotifyIntervalTime()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->getSdRecordingType()Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;->getTypeInt()I

    move-result v1

    const-string v2, "sd_recording_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->getDictationTypes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sdk/scs/ai/asr/tasks/a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/a;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "dict_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "target_locale"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->getTargetLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "voice_filter_id"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->getVoiceFilterId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    const-string p1, "configToBundle"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/ASRLog;->secure(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private handleInternalError(Ljava/lang/Exception;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/RecognitionTask;->isCancelled()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    const-string v2, "handleInternalError :: "

    invoke-static {v2, p1}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/ASRLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/RecognitionTask;->setError(Ljava/lang/Exception;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->listener:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->parseError(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;->onError(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$writeToPipe$0(Ljava/io/OutputStream;)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/sdk/scs/ai/asr/ASRLog;->isDevelop:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    sget-wide v0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TIMEOUT_WRITE:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "close pipe by watchDog "

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/scs/ai/asr/ASRLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    sget-wide v0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TIMEOUT_WRITE:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "watch dog occurs but ignored. "

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/ASRLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :catch_0
    :goto_0
    return-void
.end method

.method private parseError(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->parseError(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private parseError(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 2
    const-string p3, "error_code"

    invoke-virtual {p0, p3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 3
    const-string p1, "error_message"

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private prepare()Z
    .locals 5

    const-string v0, "prepared : "

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->listener:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    const-string v2, "listener is not valid"

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/RecognitionTask;->mService:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizerService;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v3}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizerService;->create(Landroid/os/Bundle;)Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->mRecognizer:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizer;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    const-string v3, "prepared started"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->mRecognizer:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizer;

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->config:Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->configToBundle(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizer;->prepare(Landroid/os/Bundle;)Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->handleInternalError(Ljava/lang/Exception;)V

    return v1
.end method

.method private taskCompleted(Ljava/lang/String;)V
    .locals 4

    const-string v0, "taskCompleted : "

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/RecognitionTask;->isComplete()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/RecognitionTask;->complete(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->mRecognizer:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizer;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizer;->release()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->mRecognizer:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizer;

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->listener:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->listener:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;

    goto :goto_4

    :goto_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->handleInternalError(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->mRecognizer:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizer;

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->listener:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_1

    :goto_3
    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->mRecognizer:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizer;

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->listener:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/tasks/c;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->listener:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;

    throw p1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    const-string p1, "task already completed"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private writeToPipe(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V
    .locals 12

    const-string v0, "writeToPipe done "

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sdk/scs/ai/asr/tasks/a;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/a;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "writeToPipe started "

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/ASRLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    :try_start_0
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v4, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->create()Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v5, 0x140

    :try_start_2
    new-array v5, v5, [B

    iget-object v6, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->dest:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    move-wide v6, v1

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/RecognitionTask;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-eq v8, v3, :cond_4

    if-nez v8, :cond_1

    const-wide/16 v8, 0xa

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto/16 :goto_5

    :cond_1
    new-instance v9, Lcom/samsung/android/sdk/scs/ai/asr/tasks/b;

    invoke-direct {v9, p0, v4}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/b;-><init>(Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    sget-wide v10, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TIMEOUT_WRITE:J

    invoke-interface {p1, v9, v10, v11}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->wrapBlocking(Ljava/lang/Runnable;J)Ljava/io/Closeable;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v4, v5, v10, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v9, :cond_2

    :try_start_4
    invoke-interface {v9}, Ljava/io/Closeable;->close()V

    :cond_2
    int-to-long v8, v8

    add-long/2addr v1, v8

    sub-long v8, v1, v6

    const-wide/16 v10, 0x2710

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    iget-object v6, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeToPipe written "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p2

    if-eqz v9, :cond_3

    :try_start_5
    invoke-interface {v9}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    :try_start_6
    invoke-virtual {p2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p2

    :cond_4
    iget-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->config:Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->configToBundle(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;)Landroid/os/Bundle;

    move-result-object p2

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->mRecognizer:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizer;

    invoke-interface {v3, p2}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizer;->prepare(Landroid/os/Bundle;)Z

    const-wide/16 v5, 0xc8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p1, :cond_5

    :try_start_7
    invoke-interface {p1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    goto :goto_7

    :cond_5
    :goto_3
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->dest:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/asr/io/NullOutputStream;

    invoke-direct {p1}, Lcom/samsung/android/sdk/scs/ai/asr/io/NullOutputStream;-><init>()V

    :goto_4
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_b

    :catchall_4
    move-exception p1

    goto :goto_c

    :catch_0
    move-exception p1

    goto :goto_9

    :catch_1
    move-exception p1

    goto :goto_a

    :goto_5
    if-eqz p1, :cond_6

    :try_start_9
    invoke-interface {p1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p1

    :try_start_a
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_6
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :goto_7
    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception p2

    :try_start_c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_9
    :try_start_d
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_a
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->handleInternalError(Ljava/lang/Exception;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->dest:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/asr/io/NullOutputStream;

    invoke-direct {p1}, Lcom/samsung/android/sdk/scs/ai/asr/io/NullOutputStream;-><init>()V

    goto :goto_4

    :goto_b
    return-void

    :goto_c
    iget-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->dest:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p2, Lcom/samsung/android/sdk/scs/ai/asr/io/NullOutputStream;

    invoke-direct {p2}, Lcom/samsung/android/sdk/scs/ai/asr/io/NullOutputStream;-><init>()V

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public cancel()V
    .locals 5

    const-string v0, "dest stream closed"

    const-string v1, "input stream closed"

    const-string v2, "close dest stream has error but ignored. "

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    const-string v4, "cancel"

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/RecognitionTask;->cancel()V

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->mRecognizer:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizer;

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizer;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->handleInternalError(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->inputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_2
    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->handleInternalError(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->dest:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :goto_5
    return-void

    :goto_6
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public execute()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->prepare()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Prepare Failed!!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/RecognitionTask;->setError(Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->listener:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;->onError(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->inputStream:Ljava/io/InputStream;

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->TAG:Ljava/lang/String;

    const-string v2, "execute"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createReliablePipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->mRecognizer:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizer;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    aget-object v3, v1, v3

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->listener:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ISpeechRecognizer;->write(Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/sivs/ai/sdkcommon/asr/IRecognitionListener;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    aget-object v2, v1, v3

    const-string v4, "Start Error"

    invoke-virtual {v2, v4}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V

    :cond_2
    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->inputStream:Ljava/io/InputStream;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->writeToPipe(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->inputStream:Ljava/io/InputStream;

    goto :goto_3

    :cond_3
    :try_start_2
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Recognizer is not ready."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->handleInternalError(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->inputStream:Ljava/io/InputStream;

    throw v1
.end method

.method public release()V
    .locals 1

    const-string v0, "release"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask;->taskCompleted(Ljava/lang/String;)V

    return-void
.end method
