.class public Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final dictationType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;",
            ">;"
        }
    .end annotation
.end field

.field private enabledAudioCompression:Z

.field private enabledPartial:Z

.field private isCensored:Z

.field private locale:Ljava/util/Locale;

.field private serverInfo:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

.field private serverType:I
    .annotation build Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechRecognitionConst$ServerType;
    .end annotation
.end field

.field private speakerDiarisation:Z

.field private type:Lcom/samsung/android/sdk/scs/ai/asr_6_0/ConnectionType;

.field private viewType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->enabledPartial:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->enabledAudioCompression:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->isCensored:Z

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr_6_0/ConnectionType;->NETWORK:Lcom/samsung/android/sdk/scs/ai/asr_6_0/ConnectionType;

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->type:Lcom/samsung/android/sdk/scs/ai/asr_6_0/ConnectionType;

    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->serverType:I

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->dictationType:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->serverInfo:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->viewType:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->speakerDiarisation:Z

    return-void
.end method

.method public static synthetic a()Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->lambda$build$2()Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Ljava/util/stream/Stream;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->lambda$addDictationType$0(Ljava/util/stream/Stream;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/stream/Stream;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->lambda$removeDictationType$1(Ljava/util/stream/Stream;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$addDictationType$0(Ljava/util/stream/Stream;)Ljava/util/Set;
    .locals 1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private static synthetic lambda$build$2()Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;
    .locals 1

    sget-object v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;->DICTATION_ASR:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/Environment;->getCurrentServerInfo(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;)Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$removeDictationType$1(Ljava/util/stream/Stream;)Ljava/util/Set;
    .locals 1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public varargs addDictationType([Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;)Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->dictationType:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr_6_0/c;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/c;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr_6_0/c;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/c;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/h;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/h;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;-><init>(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;->h(Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->type:Lcom/samsung/android/sdk/scs/ai/asr_6_0/ConnectionType;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;->f(Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;Lcom/samsung/android/sdk/scs/ai/asr_6_0/ConnectionType;)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->enabledPartial:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;->d(Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;Z)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->enabledAudioCompression:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;->b(Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;Z)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->isCensored:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;->c(Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;Z)V

    iget v1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->serverType:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;->j(Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;I)V

    iget v1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->viewType:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;->l(Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->dictationType:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;->g(Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;Ljava/util/Set;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->serverInfo:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr_6_0/f;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/f;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;->i(Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;)V

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->speakerDiarisation:Z

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;->k(Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;Z)V

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;->e(Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;->a(Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig;)V

    return-object v0
.end method

.method public enableAudioCompression(Z)Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->enabledAudioCompression:Z

    return-object p0
.end method

.method public enableCensor(Z)Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->isCensored:Z

    return-object p0
.end method

.method public enablePartialResult(Z)Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->enabledPartial:Z

    return-object p0
.end method

.method public enableSpeakerDiarisation(Z)Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->speakerDiarisation:Z

    return-object p0
.end method

.method public varargs removeDictationType([Lcom/samsung/android/sdk/scs/ai/asr_6_0/DictationType;)Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->dictationType:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr_6_0/c;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/c;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr_6_0/c;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/c;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/h;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/h;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public setServerInfo(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;)Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->serverInfo:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

    return-object p0
.end method

.method public setServerType(I)Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/scs/ai/sdkcommon/asr/SpeechRecognitionConst$ServerType;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->serverType:I

    return-object p0
.end method

.method public setType(Lcom/samsung/android/sdk/scs/ai/asr_6_0/ConnectionType;)Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->type:Lcom/samsung/android/sdk/scs/ai/asr_6_0/ConnectionType;

    return-object p0
.end method

.method public setViewType(I)Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/RecognitionConfig$Builder;->viewType:I

    return-object p0
.end method
