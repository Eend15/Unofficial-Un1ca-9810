.class public Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthHeader"


# instance fields
.field private final appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    return-void
.end method

.method private getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public generateHeaderMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    if-eqz v1, :cond_0

    const-string v2, "api-key"

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getSigningKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package-signing-key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssp-app-id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssp-access-token"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssp-user-id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getServerUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssp-server-url"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getAccountType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssp-account-type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getRequestType()Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request-type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->isStreamingMode()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "streaming-mode"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p0, "package-name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AuthHeader"

    const-string p1, "SCS SDK VERSION: 4.0.32"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
