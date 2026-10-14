.class public Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private errorString:Ljava/lang/String;

.field private isCompleted:Z

.field private isSuccess:Z

.field private isTrusted:Z

.field private manifestResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->isSuccess:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->isTrusted:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->isCompleted:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->manifestResult:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->errorString:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->errorString:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->isCompleted:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->isSuccess:Z

    return p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->isTrusted:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->manifestResult:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;I)V

    return-object v0
.end method

.method public setCompleted(Z)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->isCompleted:Z

    return-object p0
.end method

.method public setError(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->errorString:Ljava/lang/String;

    return-object p0
.end method

.method public setManifestResult(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->manifestResult:Ljava/lang/String;

    return-object p0
.end method

.method public setSuccess(Z)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->isSuccess:Z

    return-object p0
.end method

.method public setTrusted(Z)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult$Builder;->isTrusted:Z

    return-object p0
.end method
