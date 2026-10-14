.class public Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;

.field private accountType:Ljava/lang/String;

.field private apiKey:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private serverUrl:Ljava/lang/String;

.field private signingKey:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->apiKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->signingKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->accessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->serverUrl:Ljava/lang/String;

    const-string v0, "B2C"

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->accountType:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->accountType:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->serverUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->signingKey:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->userId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;I)V

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public setAccountType(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->accountType:Ljava/lang/String;

    return-object p0
.end method

.method public setApiKey(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setServerUrl(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->serverUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setSigningKey(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->signingKey:Ljava/lang/String;

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/VisualAppInfo$Builder;->userId:Ljava/lang/String;

    return-object p0
.end method
