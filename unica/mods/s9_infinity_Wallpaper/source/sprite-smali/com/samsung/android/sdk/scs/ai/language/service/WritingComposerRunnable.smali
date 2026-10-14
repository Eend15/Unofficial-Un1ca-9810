.class public Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Lcom/samsung/android/sdk/scs/ai/language/Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WritingComposerRunnable"


# instance fields
.field authHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final extraPrompt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inputParams:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;

.field mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;",
            "Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>(Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->extraPrompt:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method


# virtual methods
.method public execute()V
    .locals 11

    const-string v0, "datafile failure: "

    :try_start_0
    new-instance v9, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable$1;

    invoke-direct {v9, p0}, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable$1;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;

    iget-object v1, v1, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->inputParams:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v4, "writing_composer"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "WritingComposerRunnable"

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "writing_composer folder creation failed"

    invoke-static {v4, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v5, "writing_composer_file"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v5, p0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->inputParams:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->getData()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    const/high16 v5, 0x10000000

    invoke-static {v1, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_0
    move-object v5, v3

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_2
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;->getService()Lcom/samsung/android/sivs/ai/sdkcommon/language/n0;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->authHeader:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->inputParams:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->getInputText()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->inputParams:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->getDataMimeType()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->inputParams:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->getFormat()Lcom/samsung/android/sdk/scs/ai/language/WritingComposerFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->inputParams:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->getTone()Lcom/samsung/android/sdk/scs/ai/language/WritingComposerTone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->inputParams:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;->getOutputSentenceCount()I

    move-result v8

    iget-object v10, p0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->extraPrompt:Ljava/util/Map;

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sivs/ai/sdkcommon/language/l0;

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/sivs/ai/sdkcommon/language/l0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sivs/ai/sdkcommon/language/A;Ljava/util/Map;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_5
    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_SIVS_WRITING_COMPOSER"

    return-object p0
.end method

.method public setAppInfo(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;

    iget-object p1, p1, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerServiceExecutor;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->generateHeaderMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->authHeader:Ljava/util/Map;

    return-void
.end method

.method public setExtraPrompt(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->extraPrompt:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setInputParams(Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/WritingComposerRunnable;->inputParams:Lcom/samsung/android/sdk/scs/ai/language/WritingComposerInputParams;

    return-void
.end method
