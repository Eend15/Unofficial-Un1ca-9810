.class public Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private final dictationType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/scs/ai/asr/DictationType;",
            ">;"
        }
    .end annotation
.end field

.field private enabledAudioCompression:Z

.field private enabledPartial:Z

.field private enabledProgress:Z

.field private isCensored:Z

.field private lid:Z

.field private locale:Ljava/util/Locale;

.field private locs:[Ljava/util/Locale;

.field private sdNotifyIntervalTime:I

.field private sdRecordingType:Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

.field private serverInfo:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;

.field private serverType:I
    .annotation build Lcom/samsung/android/sivs/ai/sdkcommon/asr/SpeechRecognitionConst$ServerType;
    .end annotation
.end field

.field private speakerDiarisation:Z

.field private targetLocale:Ljava/util/Locale;

.field private type:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

.field private viewType:I

.field private voiceFilterId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->enabledPartial:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->enabledAudioCompression:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->isCensored:Z

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;->NETWORK:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->type:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->serverType:I

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->dictationType:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->serverInfo:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;

    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->viewType:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->speakerDiarisation:Z

    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->sdNotifyIntervalTime:I

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;->TYPE_NORMAL:Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    iput-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->sdRecordingType:Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->bundle:Landroid/os/Bundle;

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->enabledProgress:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->lid:Z

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->locs:[Ljava/util/Locale;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->voiceFilterId:J

    return-void
.end method

.method public static synthetic a()Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->lambda$build$2()Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Ljava/util/stream/Stream;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->lambda$addDictationType$0(Ljava/util/stream/Stream;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/stream/Stream;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->lambda$removeDictationType$1(Ljava/util/stream/Stream;)Ljava/util/Set;

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

.method private static synthetic lambda$build$2()Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;
    .locals 1

    sget-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;->DICTATION_ASR:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getCurrentServerInfo(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;)Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;

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
.method public varargs addDictationType([Lcom/samsung/android/sdk/scs/ai/asr/DictationType;)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->dictationType:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/f;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/f;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/f;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/f;-><init>(I)V

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

.method public build()Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;-><init>(I)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->lid:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->setLocale(Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->bundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->bundle:Landroid/os/Bundle;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->bundle:Landroid/os/Bundle;

    const-string v2, "primaryLocale"

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->setLocale(Ljava/util/Locale;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->type:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->f(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->enabledPartial:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->c(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Z)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->enabledAudioCompression:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->a(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Z)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->isCensored:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->b(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Z)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->enabledProgress:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->d(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Z)V

    iget v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->serverType:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->k(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;I)V

    iget v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->viewType:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->n(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->dictationType:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->g(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Ljava/util/Set;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->serverInfo:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/h;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/scs/ai/asr/h;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->j(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->speakerDiarisation:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->l(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->targetLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->m(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->bundle:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->h(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Landroid/os/Bundle;)V

    iget v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->sdNotifyIntervalTime:I

    if-lez v1, :cond_2

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->i(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->sdRecordingType:Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->setSdRecordingType(Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->e(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->voiceFilterId:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->o(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;J)V

    return-object v0
.end method

.method public enableAudioCompression(Z)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->enabledAudioCompression:Z

    return-object p0
.end method

.method public enableCensor(Z)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->isCensored:Z

    return-object p0
.end method

.method public enableLocaleRecognition(Z)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->lid:Z

    return-object p0
.end method

.method public enablePartialResult(Z)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->enabledPartial:Z

    return-object p0
.end method

.method public enableProgress(Z)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->enabledProgress:Z

    return-object p0
.end method

.method public enableSpeakerDiarisation(Z)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->speakerDiarisation:Z

    return-object p0
.end method

.method public generateVoiceFilterId()Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->voiceFilterId:J

    return-object p0
.end method

.method public putExtras(Landroid/os/Bundle;)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->bundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->bundle:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    return-object p0
.end method

.method public varargs removeDictationType([Lcom/samsung/android/sdk/scs/ai/asr/DictationType;)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->dictationType:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/f;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/f;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/f;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/f;-><init>(I)V

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

.method public varargs setAlternativeLocales([Ljava/util/Locale;)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->locs:[Ljava/util/Locale;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->locs:[Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/f;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/scs/ai/asr/f;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/g;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/scs/ai/asr/g;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const-string v1, "preferredLocale"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->putExtras(Landroid/os/Bundle;)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;

    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->locale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->targetLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->targetLocale:Ljava/util/Locale;

    :cond_0
    return-object p0
.end method

.method public setSDNotifyIntervalTime(I)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->sdNotifyIntervalTime:I

    return-object p0
.end method

.method public setSdRecordingType(Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->sdRecordingType:Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    return-object p0
.end method

.method public setServerInfo(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->serverInfo:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;

    return-object p0
.end method

.method public setServerType(I)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/sivs/ai/sdkcommon/asr/SpeechRecognitionConst$ServerType;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->serverType:I

    return-object p0
.end method

.method public setTargetLocale(Ljava/util/Locale;)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->targetLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public setType(Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->type:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    return-object p0
.end method

.method public setViewType(I)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->viewType:I

    return-object p0
.end method

.method public setVoiceFilterId(J)Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;->voiceFilterId:J

    :cond_0
    return-object p0
.end method
