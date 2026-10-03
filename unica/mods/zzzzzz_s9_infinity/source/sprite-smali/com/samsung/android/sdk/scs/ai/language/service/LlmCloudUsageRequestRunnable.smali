.class public final Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Lcom/samsung/android/sdk/scs/ai/language/data/LlmCloudUsage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010$\n\u0002\u0008\n\u0018\u0000 -2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001-B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ5\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0015\u0010\u001d\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001cJ\u0015\u0010\u001e\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0015\u0010 \u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0014\u00a2\u0006\u0004\u0008 \u0010\u001fR\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010!\u001a\u0004\u0008\"\u0010#R.\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u0016\u0010\u0012\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010+R\u0016\u0010\u0013\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010+R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010,R\u0016\u0010\u0016\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010,\u00a8\u0006."
    }
    d2 = {
        "Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;",
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;",
        "Lcom/samsung/android/sdk/scs/ai/language/data/LlmCloudUsage;",
        "Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;",
        "serviceExecutor",
        "<init>",
        "(Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;)V",
        "",
        "result",
        "parseUsageData",
        "(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/data/LlmCloudUsage;",
        "getFeatureName",
        "()Ljava/lang/String;",
        "Lq3/m;",
        "execute",
        "()V",
        "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
        "appInfo",
        "domain",
        "packageName",
        "",
        "yyyymmddStart",
        "yyyymmddEnd",
        "setParams",
        "(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/lang/String;II)V",
        "setAppInfo",
        "(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V",
        "setDomain",
        "(Ljava/lang/String;)V",
        "setPackageName",
        "setYyyymmddStart",
        "(I)V",
        "setYyyymmddEnd",
        "Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;",
        "getServiceExecutor",
        "()Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;",
        "",
        "authHeader",
        "Ljava/util/Map;",
        "getAuthHeader",
        "()Ljava/util/Map;",
        "setAuthHeader",
        "(Ljava/util/Map;)V",
        "Ljava/lang/String;",
        "I",
        "Companion",
        "scs-ai-4.0.32_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable$Companion;

.field public static final TAG:Ljava/lang/String; = "UsageRunnable"


# instance fields
.field private authHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private domain:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private final serviceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;

.field private yyyymmddEnd:I

.field private yyyymmddStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable$Companion;-><init>(LF3/f;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->Companion:Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;)V
    .locals 1

    const-string v0, "serviceExecutor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;

    sget-object p1, Lr3/s;->d:Lr3/s;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->authHeader:Ljava/util/Map;

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->domain:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getMSource$p$s-1136969101(Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static final synthetic access$parseUsageData(Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/data/LlmCloudUsage;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->parseUsageData(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/data/LlmCloudUsage;

    move-result-object p0

    return-object p0
.end method

.method private final parseUsageData(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/data/LlmCloudUsage;
    .locals 9

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "remainingUsage"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string p1, "usage"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    new-instance v4, Lcom/samsung/android/sdk/scs/ai/language/data/LlmCloudUsageItem;

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "packageName"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "jsonArray.getJSONObject(\u2026.getString(\"packageName\")"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "domain"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "jsonArray.getJSONObject(i).getString(\"domain\")"

    invoke-static {v6, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "usedUsage"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/sdk/scs/ai/language/data/LlmCloudUsageItem;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/sdk/scs/ai/language/data/LlmCloudUsage;

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/scs/ai/language/data/LlmCloudUsage;-><init>(JLjava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public execute()V
    .locals 7

    :try_start_0
    new-instance v6, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable$execute$observer$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable$execute$observer$1;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;->getService()Lcom/samsung/android/sivs/ai/sdkcommon/language/k0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->authHeader:Ljava/util/Map;

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->domain:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->yyyymmddStart:I

    iget v5, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->yyyymmddEnd:I

    check-cast v0, Lcom/samsung/android/sivs/ai/sdkcommon/language/i0;

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sivs/ai/sdkcommon/language/i0;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;IILcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable$execute$observer$1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final getAuthHeader()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->authHeader:Ljava/util/Map;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_AI_GEN_USAGE"

    return-object p0
.end method

.method public final getServiceExecutor()Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;

    return-object p0
.end method

.method public final setAppInfo(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V
    .locals 1

    const-string v0, "appInfo"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->generateHeaderMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "AuthHeader(appInfo).gene\u2026(serviceExecutor.context)"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->authHeader:Ljava/util/Map;

    return-void
.end method

.method public final setAuthHeader(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->authHeader:Ljava/util/Map;

    return-void
.end method

.method public final setDomain(Ljava/lang/String;)V
    .locals 1

    const-string v0, "domain"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->domain:Ljava/lang/String;

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final setParams(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    const-string v0, "appInfo"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domain"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->serviceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestExecutor;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->generateHeaderMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "AuthHeader(appInfo).gene\u2026(serviceExecutor.context)"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->authHeader:Ljava/util/Map;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->domain:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->packageName:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->yyyymmddStart:I

    iput p5, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->yyyymmddEnd:I

    return-void
.end method

.method public final setYyyymmddEnd(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->yyyymmddEnd:I

    return-void
.end method

.method public final setYyyymmddStart(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/LlmCloudUsageRequestRunnable;->yyyymmddStart:I

    return-void
.end method
