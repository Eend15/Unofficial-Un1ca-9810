.class public Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigurationRunnable"


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

.field private configType:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

.field private inputText:Ljava/lang/String;

.field mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->authHeader:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method


# virtual methods
.method public execute()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$1;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;)V

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$2;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;)V

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$3;->$SwitchMap$com$samsung$android$sdk$scs$ai$language$service$ConfigurationRunnable$ConfigType:[I

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->configType:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;->getService()Lcom/samsung/android/sivs/ai/sdkcommon/language/g;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->authHeader:Ljava/util/Map;

    check-cast v1, Lcom/samsung/android/sivs/ai/sdkcommon/language/e;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sivs/ai/sdkcommon/language/e;->a(Ljava/util/Map;Lcom/samsung/android/sivs/ai/sdkcommon/language/B;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;->getService()Lcom/samsung/android/sivs/ai/sdkcommon/language/g;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->authHeader:Ljava/util/Map;

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->inputText:Ljava/lang/String;

    check-cast v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/e;

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/sivs/ai/sdkcommon/language/e;->c(Ljava/util/Map;Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/language/A;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;->getService()Lcom/samsung/android/sivs/ai/sdkcommon/language/g;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->authHeader:Ljava/util/Map;

    check-cast v1, Lcom/samsung/android/sivs/ai/sdkcommon/language/e;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sivs/ai/sdkcommon/language/e;->d(Ljava/util/Map;Lcom/samsung/android/sivs/ai/sdkcommon/language/B;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;->getService()Lcom/samsung/android/sivs/ai/sdkcommon/language/g;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->authHeader:Ljava/util/Map;

    check-cast v1, Lcom/samsung/android/sivs/ai/sdkcommon/language/e;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sivs/ai/sdkcommon/language/e;->b(Ljava/util/Map;Lcom/samsung/android/sivs/ai/sdkcommon/language/B;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_SIVS_CONFIGURATION"

    return-object p0
.end method

.method public setAppInfo(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;

    iget-object p1, p1, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->generateHeaderMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->authHeader:Ljava/util/Map;

    return-void
.end method

.method public setInputText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->inputText:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->configType:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    return-void
.end method
