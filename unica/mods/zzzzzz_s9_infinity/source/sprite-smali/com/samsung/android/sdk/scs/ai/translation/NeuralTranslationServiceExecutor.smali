.class Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;
.super Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScsApi@TranslationServiceExecutor"


# instance fields
.field context:Landroid/content/Context;

.field private final deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final isPublic:Z

.field translationService:Lcom/samsung/android/sivs/ai/sdkcommon/translation/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8

    .line 2
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;-><init>(Landroid/content/Context;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 3
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor$1;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;->context:Landroid/content/Context;

    .line 5
    iput-boolean p2, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;->isPublic:Z

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method


# virtual methods
.method public getServiceIntent()Landroid/content/Intent;
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;->isPublic:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/scs/base/utils/ConnectionHelper;->getTranslationServiceIntentForExternal()Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/scs/base/utils/ConnectionHelper;->getTranslationServiceIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTranslationService()Lcom/samsung/android/sivs/ai/sdkcommon/translation/f;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;->translationService:Lcom/samsung/android/sivs/ai/sdkcommon/translation/f;

    return-object p0
.end method

.method public isPublic()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;->isPublic:Z

    return p0
.end method

.method public onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    sget p1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/e;->b:I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "com.samsung.android.sivs.ai.sdkcommon.translation.INeuralTranslationService"

    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/f;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/f;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p2, p1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/d;->b:Landroid/os/IBinder;

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;->translationService:Lcom/samsung/android/sivs/ai/sdkcommon/translation/f;

    :try_start_0
    check-cast p1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/d;

    iget-object p1, p1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/d;->b:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "ScsApi@TranslationServiceExecutor"

    const-string p2, "RemoteException"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
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

    const-string v0, "ScsApi@TranslationServiceExecutor"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationServiceExecutor;->translationService:Lcom/samsung/android/sivs/ai/sdkcommon/translation/f;

    return-void
.end method
