.class public Lcom/samsung/android/sdk/scs/ai/language/Extractor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Extractor"


# instance fields
.field private final featureName:Ljava/lang/String;

.field private final mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FEATURE_SIVS_EXTRACTION"

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->featureName:Ljava/lang/String;

    const-string v0, "Extractor"

    invoke-static {v0, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/sdk/scs/ai/language/Extractor;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->lambda$release$2(Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/sdk/scs/ai/language/Extractor;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->lambda$extract$0(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/sdk/scs/ai/language/Extractor;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->lambda$release$3(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/sdk/scs/ai/language/Extractor;Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->lambda$extract$1(Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V

    return-void
.end method

.method private synthetic lambda$extract$0(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;->getService()Lcom/samsung/android/sivs/ai/sdkcommon/language/p;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->generateHeaderMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/sivs/ai/sdkcommon/language/n;

    move-object v4, p2

    move-object v6, p5

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/sivs/ai/sdkcommon/language/n;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private synthetic lambda$extract$1(Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/util/Map;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V
    .locals 8

    const-string v0, "datafile failure: "

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;

    iget-object v1, v1, Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v4, "extract_image"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "Extractor"

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "extract_image folder creation failed"

    invoke-static {v4, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v5, "extract_image_file"

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
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->getData()[B

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
    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->CLOUD:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;->getService()Lcom/samsung/android/sivs/ai/sdkcommon/language/p;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;

    invoke-direct {v0, p3}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->generateHeaderMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->getInputText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->getCategory()Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->getDataMimeType()Ljava/lang/String;

    move-result-object v4

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/n;

    move-object v6, p5

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sivs/ai/sdkcommon/language/n;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;Ljava/util/Map;)V

    goto :goto_4

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;->getService()Lcom/samsung/android/sivs/ai/sdkcommon/language/p;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;

    invoke-direct {v0, p3}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->generateHeaderMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->getInputText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;->getCategory()Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/n;

    move-object v4, v5

    move-object v5, p5

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sivs/ai/sdkcommon/language/n;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;Ljava/util/Map;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_4
    return-void

    :goto_5
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private lambda$release$2(Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;)V
    .locals 4

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;->getService()Lcom/samsung/android/sivs/ai/sdkcommon/language/p;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "com.samsung.android.sivs.ai.sdkcommon.language.IExtractionService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/n;->b:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceObserver2;->onNext(Ljava/util/List;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private synthetic lambda$release$3(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "connected: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->isConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Extractor"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->deInit()V

    return-void
.end method


# virtual methods
.method public extract(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
            "Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->extract(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;Ljava/util/Map;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public extract(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;Ljava/util/Map;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
            "Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getRequestType()Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    move-result-object v3

    .line 8
    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->CLOUD:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    if-ne v3, v0, :cond_0

    const-string v0, "FEATURE_SIVS_EXTRACTION"

    :goto_0
    move-object v6, v0

    goto :goto_1

    .line 9
    :cond_0
    const-string v0, "FEATURE_SIVS_EXTRACTION_ONDEVICE"

    goto :goto_0

    .line 10
    :goto_1
    new-instance v7, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->isStreamingMode()Z

    move-result v8

    new-instance v9, Ld1/b;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Ld1/b;-><init>(Lcom/samsung/android/sdk/scs/ai/language/Extractor;Lcom/samsung/android/sdk/scs/ai/language/ExtractionInputParams;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/util/Map;)V

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/language/service/a;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/scs/ai/language/service/a;-><init>(I)V

    invoke-direct {v7, v6, v8, v9, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;-><init>(Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Function;)V

    .line 12
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;

    invoke-interface {p0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    invoke-virtual {v7}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public extract(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->extract(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;Ljava/util/Map;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public extract(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;Ljava/util/Map;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/scs/ai/language/ExtractionCategory;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Lcom/samsung/android/sdk/scs/ai/language/Result;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->isStreamingMode()Z

    move-result v1

    new-instance v9, Ld1/b;

    const/4 v8, 0x2

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Ld1/b;-><init>(Ljava/lang/Object;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;I)V

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/language/service/a;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/scs/ai/language/service/a;-><init>(I)V

    const-string p2, "FEATURE_SIVS_EXTRACTION"

    invoke-direct {v0, p2, v1, v9, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;-><init>(Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Function;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "release: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Extractor"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;->context:Landroid/content/Context;

    const-string v1, "FEATURE_SIVS_EXTRACTION_ONDEVICE"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;

    new-instance v1, LA1/h;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, LA1/h;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/language/service/a;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/scs/ai/language/service/a;-><init>(I)V

    const-string v3, "FEATURE_SIVS_EXTRACTION"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/service/LlmServiceRunnable;-><init>(Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Function;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v0

    new-instance v1, LV2/b;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, LV2/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/Extractor;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ExtractionServiceExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->deInit()V

    :goto_0
    return-void
.end method
