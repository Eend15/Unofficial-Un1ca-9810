.class public Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;
.super Lcom/samsung/android/sivs/ai/sdkcommon/asr/LocaleInfo;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/asr/LocaleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultSpeaker:Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;

.field private final ttsPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final ttsSpeaker:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/LocaleInfo;-><init>(Landroid/os/Parcel;)V

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsSpeaker:Ljava/util/List;

    .line 7
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsPackage:Ljava/util/List;

    .line 8
    const-class v2, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;

    iput-object v3, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->defaultSpeaker:Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 10
    const-class p0, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageInfo;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;ILcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/LocaleInfo;-><init>(Ljava/util/Locale;Ljava/lang/String;I)V

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsSpeaker:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsPackage:Ljava/util/List;

    .line 4
    iput-object p4, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->defaultSpeaker:Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->lambda$getDefaultPackages$0(Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getDefaultPackages$0(Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageInfo;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageInfo;->getSpeakerInfo()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->defaultSpeaker:Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/LocaleInfo;->describeContents()I

    move-result p0

    return p0
.end method

.method public getDefaultPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsPackage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/scs/ai/sdkcommon/asr/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/scs/ai/sdkcommon/asr/a;-><init>(Landroid/os/Parcelable;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getDefaultSpeaker()Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->defaultSpeaker:Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;

    return-object p0
.end method

.method public getTtsPackages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsPackage:Ljava/util/List;

    return-object p0
.end method

.method public getTtsSpeakers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsSpeaker:Ljava/util/List;

    return-object p0
.end method

.method public setPackageInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsPackageInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsPackage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsPackage:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setSpeakerInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsSpeaker:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsSpeaker:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BTCLocaleInfo{localeInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultSpeaker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->defaultSpeaker:Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", speaker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsSpeaker:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsPackage:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/LocaleInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->defaultSpeaker:Lcom/samsung/android/sivs/ai/sdkcommon/tts/TtsSpeakerInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsSpeaker:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/BTCLocaleInfo;->ttsPackage:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
