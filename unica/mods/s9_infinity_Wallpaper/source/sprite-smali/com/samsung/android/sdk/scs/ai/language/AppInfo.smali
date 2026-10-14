.class public Lcom/samsung/android/sdk/scs/ai/language/AppInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;,
        Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;,
        Lcom/samsung/android/sdk/scs/ai/language/AppInfo$AccountType;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_B2B:Ljava/lang/String; = "B2B"

.field public static final ACCOUNT_TYPE_B2C:Ljava/lang/String; = "B2C"

.field private static final TAG:Ljava/lang/String; = "AppInfo"


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final accountType:Ljava/lang/String;

.field private final apiKey:Ljava/lang/String;

.field private final appId:Ljava/lang/String;

.field private final enableStreaming:Z

.field private final requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

.field private final serverUrl:Ljava/lang/String;

.field private final signingKey:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->d(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->apiKey:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->g(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->serverUrl:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->a(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->appId:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->h(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->signingKey:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->b(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->accessToken:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->i(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->userId:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->c(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->accountType:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->f(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    .line 11
    invoke-static {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->e(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->enableStreaming:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->accountType:Ljava/lang/String;

    return-object p0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestType()Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    return-object p0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 2

    const-string v0, "B2B"

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AppInfo"

    if-eqz v0, :cond_0

    const-string p0, "B2B account is set"

    invoke-static {v1, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "B2B account is not set"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->serverUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getSigningKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->signingKey:Ljava/lang/String;

    return-object p0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public isStreamingMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->enableStreaming:Z

    return p0
.end method
