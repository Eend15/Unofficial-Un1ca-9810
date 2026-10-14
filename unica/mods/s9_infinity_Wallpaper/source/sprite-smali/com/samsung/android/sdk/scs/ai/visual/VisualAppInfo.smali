.class public Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;,
        Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$AccountType;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_B2B:Ljava/lang/String; = "B2B"

.field public static final ACCOUNT_TYPE_B2C:Ljava/lang/String; = "B2C"

.field private static final TAG:Ljava/lang/String; = "VisualAppInfo"


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final accountType:Ljava/lang/String;

.field private final apiKey:Ljava/lang/String;

.field private final appId:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final serverUrl:Ljava/lang/String;

.field private final signingKey:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->c(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->apiKey:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->f(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->serverUrl:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->d(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->appId:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->e(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->packageName:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->g(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->signingKey:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->a(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->accessToken:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->h(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->userId:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->b(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->accountType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;)V

    return-void
.end method

.method public static appInfoToBundle(Landroid/os/Bundle;Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->getApiKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "api-key"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "package-signing-key"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->getSigningKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ssp-app-id"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ssp-access-token"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ssp-user-id"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ssp-server-url"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->getServerUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->accountType:Ljava/lang/String;

    return-object p0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 2

    const-string v0, "B2B"

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "VisualAppInfo"

    if-eqz v0, :cond_0

    const-string p0, "B2B account is set"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "B2B account is not set"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->serverUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getSigningKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->signingKey:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;->userId:Ljava/lang/String;

    return-object p0
.end method
