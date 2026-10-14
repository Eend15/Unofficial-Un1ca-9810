.class public Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/language/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private AppId:Ljava/lang/String;

.field private accessToken:Ljava/lang/String;

.field private accountType:Ljava/lang/String;

.field private apiKey:Ljava/lang/String;

.field private enableStreaming:Z

.field private requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

.field private serverUrl:Ljava/lang/String;

.field private signingKey:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->apiKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->signingKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->AppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->accessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->serverUrl:Ljava/lang/String;

    const-string v0, "B2C"

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->accountType:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->CLOUD:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->enableStreaming:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->AppId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->accountType:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->enableStreaming:Z

    return p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->serverUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->signingKey:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->userId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;I)V

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public setAccountType(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->accountType:Ljava/lang/String;

    return-object p0
.end method

.method public setApiKey(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->AppId:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestType(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    return-object p0
.end method

.method public setServerUrl(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->serverUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setSigningKey(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->signingKey:Ljava/lang/String;

    return-object p0
.end method

.method public setStreamingMode(Z)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->enableStreaming:Z

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->userId:Ljava/lang/String;

    return-object p0
.end method
