.class public Lcom/samsung/android/sdk/scs/ai/language/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Configuration"


# instance fields
.field private final METADATA_FUNCTION_INFO:Ljava/lang/String;

.field private final PACKAGE_LANGUAGE_PACK:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.android.offline.languagemodel"

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->PACKAGE_LANGUAGE_PACK:Ljava/lang/String;

    const-string v0, "com.samsung.android.offline.languagemodel.FUNCTION_INFO"

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->METADATA_FUNCTION_INFO:Ljava/lang/String;

    const-string v0, "Configuration"

    invoke-static {v0, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;

    return-void
.end method


# virtual methods
.method public getConfig(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->setAppInfo(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    sget-object p1, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;->APP:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->setType(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public getLlmSupportLanguage(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->setAppInfo(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    sget-object p1, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;->LLM:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->setType(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public getOndeviceCapability()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.offline.languagemodel"

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v0, "com.samsung.android.offline.languagemodel.FUNCTION_INFO"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Configuration"

    const-string v0, "language pack is not installed"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getOndeviceSafetyCheck(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;)V

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;-><init>()V

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->ONDEVICE:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setRequestType(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->build()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->setAppInfo(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;->SAFE:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->setType(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->setInputText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public getTranslateSupportLanguage()Lcom/samsung/android/sdk/scs/base/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;)V

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;->LPD:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable;->setType(Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationRunnable$ConfigType;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->getTask()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "release: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Configuration"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/ConfigurationServiceExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->deInit()V

    return-void
.end method
