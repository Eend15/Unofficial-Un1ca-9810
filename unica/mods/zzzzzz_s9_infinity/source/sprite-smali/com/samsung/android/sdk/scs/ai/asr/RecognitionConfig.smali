.class public Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecognitionConfig"


# instance fields
.field private dictationType:Ljava/util/Set;
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

.field private locale:Ljava/util/Locale;

.field private mExtraBundle:Landroid/os/Bundle;

.field private mTargetLocale:Ljava/util/Locale;

.field private mVoiceFilterId:J

.field private sdNotifyIntervalTime:I

.field private sdRecordingType:Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

.field private serverInfo:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;

.field private serverType:I
    .annotation build Lcom/samsung/android/sivs/ai/sdkcommon/asr/SpeechRecognitionConst$ServerType;
    .end annotation
.end field

.field private speakerDiarisation:Z

.field private type:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

.field private viewType:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->dictationType:Ljava/util/Set;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->viewType:I

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enabledProgress:Z

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->mVoiceFilterId:J

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enableAudioCompression(Z)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enableCensor(Z)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enablePartialResult(Z)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enableProgress(Z)V

    return-void
.end method

.method private disableSpakerDiarisation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->type:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;->LOCAL:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->speakerDiarisation:Z

    :cond_0
    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->ignoreDictationByView()V

    return-void
.end method

.method private enableAudioCompression(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enabledAudioCompression:Z

    return-void
.end method

.method private enableCensor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->isCensored:Z

    return-void
.end method

.method private enablePartialResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enabledPartial:Z

    return-void
.end method

.method private enableProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enabledProgress:Z

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->setConnectionType(Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->setDictationTypes(Ljava/util/Set;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->setSDNotifyIntervalTime(I)V

    return-void
.end method

.method private ignoreDictationByView()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->viewType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->dictationType:Ljava/util/Set;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/DictationType;->TYPING:Lcom/samsung/android/sdk/scs/ai/asr/DictationType;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "RecognitionConfig"

    const-string v2, "ignored Dictation by View due to view type"

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->dictationType:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->setServerInfo(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->setServerType(I)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->setSpeakerDiarisation(Z)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->setTargetLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->setViewType(I)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->setVoiceFilterId(J)V

    return-void
.end method

.method private setConnectionType(Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->type:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    return-void
.end method

.method private setDictationTypes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/scs/ai/asr/DictationType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->dictationType:Ljava/util/Set;

    return-void
.end method

.method private setExtras(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->mExtraBundle:Landroid/os/Bundle;

    return-void
.end method

.method private setSDNotifyIntervalTime(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->sdNotifyIntervalTime:I

    return-void
.end method

.method private setServerInfo(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->serverInfo:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;

    return-void
.end method

.method private setServerType(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/sivs/ai/sdkcommon/asr/SpeechRecognitionConst$ServerType;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->serverType:I

    return-void
.end method

.method private setSpeakerDiarisation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->speakerDiarisation:Z

    return-void
.end method

.method private setTargetLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->mTargetLocale:Ljava/util/Locale;

    return-void
.end method

.method private setViewType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->viewType:I

    return-void
.end method

.method private setVoiceFilterId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->mVoiceFilterId:J

    return-void
.end method


# virtual methods
.method public enabledPartialResult()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enabledPartial:Z

    return p0
.end method

.method public getConnectionType()Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->type:Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    return-object p0
.end method

.method public getDictationTypes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/samsung/android/sdk/scs/ai/asr/DictationType;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->dictationType:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/h;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->mExtraBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public getSdNotifyIntervalTime()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->sdNotifyIntervalTime:I

    return p0
.end method

.method public getSdRecordingType()Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->sdRecordingType:Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    return-object p0
.end method

.method public getServerInfo()Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->serverInfo:Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerInfo;

    return-object p0
.end method

.method public getServerType()I
    .locals 0
    .annotation build Lcom/samsung/android/sivs/ai/sdkcommon/asr/SpeechRecognitionConst$ServerType;
    .end annotation

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->serverType:I

    return p0
.end method

.method public getTargetLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->mTargetLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public getVoiceFilterId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->mVoiceFilterId:J

    return-wide v0
.end method

.method public hasExtras()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->mExtraBundle:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCensored()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->isCensored:Z

    return p0
.end method

.method public isEnabledAudioCompression()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enabledAudioCompression:Z

    return p0
.end method

.method public isSpeakerDiarisation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->speakerDiarisation:Z

    return p0
.end method

.method public needProgress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->enabledProgress:Z

    return p0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->locale:Ljava/util/Locale;

    return-void
.end method

.method public setSdRecordingType(Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;->sdRecordingType:Lcom/samsung/android/sdk/scs/ai/asr/SDRecordingType;

    return-void
.end method
